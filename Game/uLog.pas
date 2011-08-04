unit uLog;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxMemo;

type
  TfmLog = class(TForm)
    cxMemo1: TcxMemo;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmLog: TfmLog;

implementation

{$R *.dfm}

procedure TfmLog.FormCreate(Sender: TObject);
begin
  cxMemo1.Lines.Clear;
  while cxMemo1.Lines.Count < 10 do
    cxMemo1.Lines.Add('');
end;

end.
