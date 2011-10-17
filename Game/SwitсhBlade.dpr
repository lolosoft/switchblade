program SwitсhBlade;

uses
  Forms,
  SysUtils,
  uMain in 'uMain.pas' {fmMain},
  uGameEngine in 'uGameEngine.pas',
  NativeXml in '..\CommonUnits\NativeXml\NativeXml.pas',
  NativeXmlClassHelper in '..\CommonUnits\NativeXml\NativeXmlClassHelper.pas',
  uGameIntro in 'uGameIntro.pas',
  uGameMenu in 'uGameMenu.pas',
  uCommonFuncProc in 'uCommonFuncProc.pas',
  uGUIElements in 'uGUIElements.pas',
  uOptions in 'uOptions.pas',
  uLog in 'uLog.pas' {fmLog},
  uMaterials in 'uMaterials.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'SwitchBlade';

  Application.CreateForm(TfmMain, fmMain);
  Application.CreateForm(TfmLog, fmLog);
  try
    // создаем экземпляр игрового двига
    FGameEngine:= TGameEngine.Create(fmMain);
    FGameEngine.Cadencer.Enabled:= true;
    Application.Run;
  finally
    // удаляем все
    FreeAndNil(FGameEngine);
  end;
end.
