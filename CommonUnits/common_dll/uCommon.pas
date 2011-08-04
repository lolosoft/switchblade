unit uCommon;

interface

uses
  Windows, SysUtils;


function GetFileVersion(FileName: string): string;

implementation

function GetFileVersion(FileName: string): string;
var
  Info: Pointer;
  InfoSize: DWORD;
  FileInfo: PVSFixedFileInfo;
  FileInfoSize: DWORD;
  Tmp: DWORD;
  Major1, Major2, Minor1, Minor2: integer;
begin
  InfoSize := GetFileVersionInfoSize(PChar(FileName), Tmp);
  if InfoSize = 0 then
    Result:= ''
  else begin
    GetMem(Info, InfoSize);
    try
      GetFileVersionInfo(PChar(FileName), 0, InfoSize, Info);
      VerQueryValue(Info, '\', Pointer(FileInfo), FileInfoSize);
      Major1:= FileInfo.dwFileVersionMS shr 16;
      Major2:= FileInfo.dwFileVersionMS and $FFFF;
      Minor1:= FileInfo.dwFileVersionLS shr 16;
      Minor2:= FileInfo.dwFileVersionLS and $FFFF;
      Result:= IntToStr(Major1) + '.' + IntToStr(Major2) + '.' + IntToStr(Minor1) + '.' + IntToStr(Minor2);
    finally
      FreeMem(Info, FileInfoSize);
    end;
  end;
end;

end.
