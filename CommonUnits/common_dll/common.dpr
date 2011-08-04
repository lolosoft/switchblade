library common;

uses
  Windows{, SYsUtils};

{$R *.res}

procedure CvtIntW;
{ IN:
    EAX:  The integer value to be converted to text
    ESI:  Ptr to the right-hand side of the widechar output buffer:  LEA ESI, WStrBuf[32]
    ECX:  Base for conversion: 0 for signed decimal, 10 or 16 for unsigned
    EDX:  Precision: zero padded minimum field width
  OUT:
    ESI:  Ptr to start of converted widechar text (not start of buffer)
    ECX:  Character length of converted text
}
asm  // StackAlignSafe
        OR      CL,CL
        JNZ     @CvtLoop
@C1:    OR      EAX,EAX
        JNS     @C2
        NEG     EAX
        CALL    @C2
        MOV     AX,'-'
        MOV     [ESI-2],AX
        SUB     ESI, 2
        INC     ECX
        RET
@C2:    MOV     ECX,10

@CvtLoop:
        PUSH    EDX
        PUSH    ESI
@D1:    XOR     EDX,EDX
        DIV     ECX
        ADD     DX,'0'
        SUB     ESI,2
        CMP     DX,'0'+10
        JB      @D2
        ADD     DX,('A'-'0')-10
@D2:    MOV     [ESI],DX
        OR      EAX,EAX
        JNE     @D1
        POP     ECX
        POP     EDX
        SUB     ECX,ESI
        SHR     ECX, 1
        SUB     EDX,ECX
        JBE     @D5
        ADD     ECX,EDX
        SUB     ESI,EDX
        MOV     AX,'0'
        SUB     ESI,EDX
        JMP     @z
@zloop: MOV     [ESI+EDX*2],AX
@z:     DEC     EDX
        JNZ     @zloop
        MOV     [ESI],AX
@D5:
end;

function IntToStr(Value: Integer): string;
//  FmtStr(Result, '%d', [Value]);
asm //StackAligned
        PUSH    ESI
        MOV     ESI, ESP
        SUB     ESP, 16 * SizeOf(Char)
        XOR     ECX, ECX       // base: 0 for signed decimal
        PUSH    EDX            // result ptr
        XOR     EDX, EDX       // zero filled field width: 0 for no leading zeros

{$IFDEF ALIGN_STACK}
        SUB     ESP, 4
{$ENDIF ALIGN_STACK}
        CALL    CvtIntW
{$IFDEF ALIGN_STACK}
        ADD     ESP, 4
{$ENDIF ALIGN_STACK}

        MOV     EDX, ESI
        POP     EAX            // result ptr

{$IFDEF ALIGN_STACK}
        SUB     ESP, 8
{$ENDIF ALIGN_STACK}
        CALL    System.@UStrFromPWCharLen
{$IFDEF ALIGN_STACK}
        ADD     ESP, 8
{$ENDIF ALIGN_STACK}
        ADD     ESP, 16 * SizeOf(Char)
        POP     ESI
end;

function GetFileVersion(AFileName: PWideChar): PWideChar; stdcall;
var
  Info: Pointer;
  InfoSize: DWORD;
  FileInfo: PVSFixedFileInfo;
  FileInfoSize: DWORD;
  Tmp: DWORD;
  Major1, Major2, Minor1, Minor2: integer;

begin
  InfoSize := GetFileVersionInfoSize(AFileName, Tmp);
  if InfoSize = 0 then
    Result:= PWideChar('')
  else begin
    GetMem(Info, InfoSize);
    try
      GetFileVersionInfo(AFileName, 0, InfoSize, Info);
      VerQueryValue(Info, '\', Pointer(FileInfo), FileInfoSize);
      Major1:= FileInfo.dwFileVersionMS shr 16;
      Major2:= FileInfo.dwFileVersionMS and $FFFF;
      Minor1:= FileInfo.dwFileVersionLS shr 16;
      Minor2:= FileInfo.dwFileVersionLS and $FFFF;
      Result:= PWideChar(WideString(IntToStr(Major1) + '.' + IntToStr(Major2) + '.' + IntToStr(Minor1) + '.' + IntToStr(Minor2)));
    finally
      FreeMem(Info, FileInfoSize);
    end;
  end;
end;

exports
  GetFileVersion;

begin
end.
