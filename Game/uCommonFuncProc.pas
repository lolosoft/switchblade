unit uCommonFuncProc;

interface

uses
  Windows, SysUtils, Classes, Graphics, VectorGeometry, VectorTypes;

  function GetVersionFile(AFileName: string): string;
  function VectorToString(AVector: TVector4f): string;
  function StringToVector(AString: string): TVector4f;
  function AffineVectorToString(AVector: TAffineVector): string;
  function StringToAffineVector(AString: string): TAffineVector;
  function BoolToStr(const AValue: boolean): string;
  function StrToBool(const AValue: string): boolean;

const
  COMMON_DLL_NAME        = 'common.dll';
  FUNC_NAME_GET_VERSION  = 'GetFileVersion';

implementation

function GetVersionFile(AFileName: string): string;
var
  FDll: HWND;
  FGetVersion: function (AFileName: PWideChar): PWideChar; stdcall;
begin
  Result:= '';
  FDll:= LoadLibrary(COMMON_DLL_NAME);
  if FDll > 32 then try
    try
      FGetVersion:= GetProcAddress(FDll, FUNC_NAME_GET_VERSION);
      if @FGetVersion <> nil then
        Result:= WideCharToString(FGetVersion(PWideChar(AFileName)));
    except
      Result:= '';
    end;
  finally
    FreeLibrary(FDll);
  end;
end;

function VectorToString(AVector: TVector4f): string;
begin
  // преобразовать вектор в строку
  Result:= FloatToStr(AVector[0]) + #9 + FloatToStr(AVector[1]) + #9 + FloatToStr(AVector[2]);
end;

function StringToVector(AString: string): TVector4f;
begin
  // преобразовать строку в вектор
  Result[0]:= 0;
  Result[1]:= 0;
  Result[2]:= 0;
  Result[3]:= 0;
  with TStringList.Create do try
    Text:= StringReplace(AString, #9, #13#10, [rfReplaceAll]);
    if Count >= 4 then begin
      try
        Result[0]:= StrToFloat(Strings[0]);
      except
        Result[0]:= 0;
      end;
      try
        Result[1]:= StrToFloat(Strings[1]);
      except
        Result[1]:= 0;
      end;
      try
        Result[2]:= StrToFloat(Strings[2]);
      except
        Result[2]:= 0;
      end;
      try
        Result[3]:= StrToFloat(Strings[3]);
      except
        Result[3]:= 0;
      end;
    end;
  finally
    Free;
  end;
end;

function AffineVectorToString(AVector: TAffineVector): string;
begin
  // преобразовать вектор в строку
  Result:= FloatToStr(AVector[0]) + #9 + FloatToStr(AVector[1]) + #9 + FloatToStr(AVector[2]);
end;

function StringToAffineVector(AString: string): TAffineVector;
begin
  // преобразовать строку в вектор
  Result[0]:= 0;
  Result[1]:= 0;
  Result[2]:= 0;
  with TStringList.Create do try
    Text:= StringReplace(AString, #9, #13#10, [rfReplaceAll]);
    if Count >= 3 then begin
      try
        Result[0]:= StrToFloat(Strings[0]);
      except
        Result[0]:= 0;
      end;
      try
        Result[1]:= StrToFloat(Strings[1]);
      except
        Result[1]:= 0;
      end;
      try
        Result[2]:= StrToFloat(Strings[2]);
      except
        Result[2]:= 0;
      end;
    end;
  finally
    Free;
  end;
end;

function BoolToStr(const AValue: boolean): string;
begin
  if AValue then Result:= 'true' else Result:= 'false';
end;

function StrToBool(const AValue: string): boolean;
begin
  Result:= AnsiLowerCase(trim(AValue)) = 'true';
end;

end.
