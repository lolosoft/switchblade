program EditorSwitchBlade;



uses
  Forms,
  uMain in 'uMain.pas' {fmMain},
  uTextures in '..\_OLD\uTextures.pas',
  uLevel in '..\_OLD\uLevel.pas',
  uRoom in '..\_OLD\uRoom.pas',
  uGameUnits in '..\_OLD\uGameUnits.pas',
  uGameMenu in '..\_OLD\uGameMenu.pas',
  uGameMenuItem in '..\_OLD\uGameMenuItem.pas',
  NativeXml in '..\CommonUnits\NativeXml\NativeXml.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Редактор Switch Blade';
  Application.CreateForm(TfmMain, fmMain);
  Application.Run;
end.
