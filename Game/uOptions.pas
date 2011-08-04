unit uOptions;

interface

uses
  Windows, Classes, Graphics, SysUtils, Types, dialogs,
  VectorGeometry, GLObjects, GLHUDObjects, GLWindowsFont, GLMaterial, GLMaterialEx, GLTexture, GLCoordinates, pngimage, ddsimage,

  NativeXML,

  uCommonFuncProc, uGUIElements;

type
  TfmOptions = class(TGUIForm)
  private
    FTextFont: TGLWindowsBitmapFont;
    FLibMaterials: TGLMaterialLibrary;
    procedure CreatePanelGraphics;
    procedure CreatePanelSound;
    procedure CreatePanelControls;
    procedure CreatePanelGame;
  protected
    procedure OnFormCheckBoxMouseEnter(ACheckBox: TGUICheckBox);
    procedure OnFormCheckBoxMouseLeave(ACheckBox: TGUICheckBox);
    procedure OnFormCheckBoxClick(ACheckBox: TGUICheckBox);

    {procedure OnFormButtonMouseEnter(AButton: TGUIButton);
    procedure OnFormButtonMouseLeave(AButton: TGUIButton);
    procedure OnFormButtonClick(AButton: TGUIButton);}

    procedure OnCtrlButtonMouseEnter(AButton: TGUIButton);
    procedure OnCtrlButtonMouseLeave(AButton: TGUIButton);
    procedure OnCtrlButtonClick(AButton: TGUIButton);
  public
    lblShadersOn: TGLHUDText;
    cbShadersOn, cbVertSync, cbSoundsOn, cbMusicOn: TGUICheckBox;
    panelGraphics, panelSound, panelControls, panelGame: TGUIPanel;
    btnCtrlJump, btnCtrlLeft, btnCtrlRight, btnCtrlDown, btnCtrlUp, btnCtrlAttak: TGUIButton;

    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;

    procedure CreateControls;
    procedure SetControls;

    procedure LoadOptions(AFileName: string);
    procedure SaveOptions(AFileName: string);

    procedure Show;
    procedure Hide;

    property TextFont: TGLWindowsBitmapFont read FTextFont write FTextFont;
  end;

var
  fmOptions: TfmOptions;

const
  FORM_OPTIONS_NAME = 'fmOptions';
  PIC_BACK_FORM     = 'options_back.png';

  CAPTION_SADERS_ON = 'Шейдеры ВКЛ/ВЫКЛ';
  CAPTION_VERT_SYNC = 'Вертикальная синхронизация ВКЛ/ВЫКЛ';
  CAPTION_SOUNDS_ON = 'Звуковые эффекты ВКЛ/ВЫКЛ';
  CAPTION_MUSIC_ON  = 'Музыка ВКЛ/ВЫКЛ';

  CAPTION_BTN_CTRL_JUMP  = 'Прыжок';
  CAPTION_BTN_CTRL_LEFT  = 'Влево';
  CAPTION_BTN_CTRL_RIGHT = 'Вправо';
  CAPTION_BTN_CTRL_DOWN  = 'Вниз';
  CAPTION_BTN_CTRL_UP    = 'Вверх';
  CAPTION_BTN_CTRL_ATTAK = 'Удар';

implementation

uses uGameEngine, uMaterials;

{ TfmOptions }

constructor TfmOptions.Create(AOwner: TComponent);
begin
  inherited;
  FLibMaterials:= TGLMaterialLibrary.Create(self);
  with FLibMaterials.Materials.Add do begin
    Name:= MAT_NAME_CHECKBOX_CHECKED;
    LoadTextureFromFile(FGameEngine.Paths.Textures + PIC_CHECKBOX_CHECKED, Material.Texture);
  end;
  with FLibMaterials.Materials.Add do begin
    Name:= MAT_NAME_CHECKBOX_UNCHECKED;
    LoadTextureFromFile(FGameEngine.Paths.Textures + PIC_CHECKBOX_UNCHECKED, Material.Texture);
  end;

  Name:= FORM_OPTIONS_NAME;
  // шрифт для контролов
  FTextFont:= TGLWindowsBitmapFont.Create(self);
  with FTextFont do begin
    Font.Charset:= 204; // RUSSIAN_CHARSET
    Font.Name:=    MESS_FONT_NAME;
    Font.Size:=    12;
    Font.Quality:= fqClearType;
    Ranges.Clear;
    with Ranges.Add do begin
      StartASCII:= #32;
      StopASCII:=  #122;
    end;
    with Ranges.Add do begin
      StartASCII:= #1040;
      StopASCII:=  #1103;
    end;
    VSpace:= 0;
    HSpace:= 0;
  end;

  BeginUpdate;
  try
    Hide;
    LoadTexture(FGameEngine.Paths.Textures + PIC_BACK_FORM);
    Material.FrontProperties.Diffuse.SetColor(1,1,1);
  finally
    EndUpdate;
  end;

  CreateControls;
end;

procedure TfmOptions.CreateControls;
begin
  CreatePanelGraphics;
  CreatePanelSound;
  CreatePanelControls;
  CreatePanelGame;
end;

destructor TfmOptions.Destroy;
begin
  FreeAndNil(FTextFont);
  FreeAndNil(FLibMaterials);
  inherited;
end;

procedure TfmOptions.Hide;
begin
  Visible:= false;
end;

procedure TfmOptions.CreatePanelGame;
begin
  panelGame:= AddPanel('panelGame');
  with panelGame do begin
    Width:= 0;
    Height:= 0;
    Visible:= false;
  end;
end;

procedure TfmOptions.CreatePanelControls;
begin
  panelControls := AddPanel('panelControls');
  with panelControls do begin
    Width:= 0;
    Height:= 0;
    Visible:= false;

    btnCtrlJump:=  AddButton('btnCtrlJump');
    btnCtrlLeft:=  AddButton('btnCtrlLeft');
    btnCtrlRight:= AddButton('btnCtrlRight');
    btnCtrlDown:=  AddButton('btnCtrlDown');
    btnCtrlUp:=    AddButton('btnCtrlUp');
    btnCtrlAttak:= AddButton('btnCtrlAttak');


  end;
end;

procedure TfmOptions.CreatePanelSound;
begin
  panelSound:= AddPanel('panelSound');
  with panelSound do begin
    Width:= 0;
    Height:= 0;
    Visible:= false;
    cbSoundsOn:= AddCheckBox('cbSoundsOn');
    cbMusicOn:= AddCheckBox('cbMusicOn');
    with cbSoundsOn do begin
      SetMaterials(FGameEngine.Paths.Textures + PIC_CHECKBOX_CHECKED, FGameEngine.Paths.Textures + PIC_CHECKBOX_UNCHECKED, true);
      HUDCaption.BitmapFont:= FTextFont;
      OnCheckBoxClick:= OnFormCheckBoxClick;
      OnCheckBoxMouseEnter:= OnFormCheckBoxMouseEnter;
      OnCheckBoxMouseLeave:= OnFormCheckBoxMouseLeave;
    end;
    with cbMusicOn do begin
      SetMaterials(FGameEngine.Paths.Textures + PIC_CHECKBOX_CHECKED, FGameEngine.Paths.Textures + PIC_CHECKBOX_UNCHECKED, true);
      HUDCaption.BitmapFont:= FTextFont;
      OnCheckBoxClick:= OnFormCheckBoxClick;
      OnCheckBoxMouseEnter:= OnFormCheckBoxMouseEnter;
      OnCheckBoxMouseLeave:= OnFormCheckBoxMouseLeave;
    end;
  end;
end;

procedure TfmOptions.CreatePanelGraphics;
begin
  panelGraphics:= AddPanel('panelGraphics');
  with panelGraphics do begin
    Width:= 0;
    Height:= 0;
    cbShadersOn:= AddCheckBox('cbShadersOn');
    cbVertSync:=  AddCheckBox('cbVertSync');
    with cbShadersOn do begin
      SetMaterials(FGameEngine.Paths.Textures + PIC_CHECKBOX_CHECKED, FGameEngine.Paths.Textures + PIC_CHECKBOX_UNCHECKED, true);
      HUDCaption.BitmapFont:= FTextFont;
      OnCheckBoxClick:= OnFormCheckBoxClick;
      OnCheckBoxMouseEnter:= OnFormCheckBoxMouseEnter;
      OnCheckBoxMouseLeave:= OnFormCheckBoxMouseLeave;
    end;
    with cbVertSync do begin
      SetMaterials(FGameEngine.Paths.Textures + PIC_CHECKBOX_CHECKED, FGameEngine.Paths.Textures + PIC_CHECKBOX_UNCHECKED, true);
      HUDCaption.BitmapFont:= FTextFont;
      OnCheckBoxClick:= OnFormCheckBoxClick;
      OnCheckBoxMouseEnter:= OnFormCheckBoxMouseEnter;
      OnCheckBoxMouseLeave:= OnFormCheckBoxMouseLeave;
    end;
  end;
end;

procedure TfmOptions.LoadOptions(AFileName: string);
begin
  // загрузить из файла и настроить контролы
  if FileExists(AFileName) then begin

  end;
end;

procedure TfmOptions.OnCtrlButtonClick(AButton: TGUIButton);
begin
  // обработчик клика по кнопке переназначения клавиш

end;

procedure TfmOptions.OnCtrlButtonMouseEnter(AButton: TGUIButton);
begin
  // обработчик входа курсора в регион кнопки переназначения клавиш

end;

procedure TfmOptions.OnCtrlButtonMouseLeave(AButton: TGUIButton);
begin
  // обработчик выхода курсора из региона кнопки переназначения клавиш

end;

procedure TfmOptions.OnFormCheckBoxClick(ACheckBox: TGUICheckBox);
begin
  // обработчик клика по чек-боксу
  ACheckBox.Checked:= not ACheckBox.Checked;
end;

procedure TfmOptions.OnFormCheckBoxMouseEnter(ACheckBox: TGUICheckBox);
begin
  ACheckBox.Material.FrontProperties.Diffuse.SetColor(1, 1, 1);
end;

procedure TfmOptions.OnFormCheckBoxMouseLeave(ACheckBox: TGUICheckBox);
begin
  ACheckBox.Material.FrontProperties.Diffuse.SetColor(0.8, 0.8, 0.8);
end;

procedure TfmOptions.SaveOptions(AFileName: string);
begin
  // сохранить в файл

end;

procedure TfmOptions.SetControls;
begin
  // установить все GUI-контролы по местам
  panelGraphics.Position.SetPoint(Region.Left, Region.Top, 0);
  panelSound.Position.SetPoint(Region.Left, Region.Top, 0);
  panelControls.Position.SetPoint(Region.Left, Region.Top, 0);
  panelGame.Position.SetPoint(Region.Left, Region.Top, 0);

  // панель "Графика"
  cbShadersOn.Position.SetPoint(Region.Left + 10 + cbShadersOn.Width / 2, Region.Top + 10 + cbShadersOn.Height / 2, 0);
  cbShadersOn.Caption:= CAPTION_SADERS_ON;
  cbShadersOn.Checked:= false;

  cbVertSync.Position.SetPoint(Region.Left + 10 + cbVertSync.Width / 2, Region.Top + 15 + cbVertSync.Height / 2 + cbShadersOn.Height, 0);
  cbVertSync.Caption:= CAPTION_VERT_SYNC;
  cbVertSync.Checked:= false;

  // панель "Звук"
  cbSoundsOn.Position.SetPoint(Region.Left + 10 + cbSoundsOn.Width / 2, Region.Top + 10 + cbSoundsOn.Height / 2, 0);
  cbSoundsOn.Caption:= CAPTION_SOUNDS_ON;
  cbSoundsOn.Checked:= false;

  cbMusicOn.Position.SetPoint(Region.Left + 10 + cbMusicOn.Width / 2, Region.Top + 15 + cbMusicOn.Height / 2 + cbSoundsOn.Height, 0);
  cbMusicOn.Caption:= CAPTION_MUSIC_ON;
  cbMusicOn.Checked:= false;
end;

procedure TfmOptions.Show;
begin
  Visible:=               true;
  panelGraphics.Visible:= true;
  panelSound.Visible:=    false;
  panelControls.Visible:= false;
  panelGame.Visible:=     false;
end;

end.
