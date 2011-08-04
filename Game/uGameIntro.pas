unit uGameIntro;

interface

uses
  Windows, Classes, Graphics, SysUtils, Types,
  GLObjects, GLHUDObjects, GLMaterial, GLTexture, pngimage, ddsimage;

type
  TGameIntro = class(TGLDummyCube)
  private
    FBackSprite, FTextSprite: TGLHUDSprite;
    FOnEndIntro: TNotifyEvent;
    FMultiplier, FAcselearteBlink, FAcselerateBright, FSpeedBlink, FSpeedBright, FWaitTime: single;
    FIsBlink: boolean;

    procedure FillBackSprite(ATopLeft, AWidthHeight: TPoint);
    procedure FillTextSprite(AFileName: string);

    procedure DoEndIntro;

    function CaptureScreenRect(ARect: TRect): TBitmap;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure DoProgressIntro(const deltaTime: double);

    property OnEndIntro: TNotifyEvent read FOnEndIntro       write FOnEndIntro;
    property Multiplier: single       read FMultiplier       write FMultiplier;
    property SpeedBright: single      read FSpeedBright      write FSpeedBright;
    property SpeedBlink: single       read FSpeedBlink       write FSpeedBlink;
    property AcselerateBlink: single  read FAcselearteBlink  write FAcselearteBlink;
    property AcselerateBright: single read FAcselerateBright write FAcselerateBright;
    property WaitTime: single         read FWaitTime         write FWaitTime;
  end;

var
  FGameIntro: TGameIntro;

const
  INTRO_FILE_NAME = 'intro.png';


// скопипастил отседа
// http://www.delphisources.ru/pages/faq/base/copy_screen_to_form.html
// функцию CaptureScreenRect


implementation

uses uGameEngine, uMain, uMaterials;

{ TGameIntro }

function TGameIntro.CaptureScreenRect(ARect: TRect): TBitmap;
var
  FScreenDC: HDC;
begin
  // получить картинку раб.стола в регионе ARect
  Result:= TBitmap.Create;
  with Result, ARect do begin
    Width:= Right - Left;
    Height:= Bottom - Top;
    FScreenDC:= GetDC(0);
    try
      BitBlt(Canvas.Handle, 0, 0, Width, Height, FScreenDC, Left, Top, SRCCOPY);
    finally
      ReleaseDC(0, FScreenDC);
    end;
  end;
end;

constructor TGameIntro.Create(AOwner: TComponent);
begin
  inherited;
  FMultiplier:= 0.02;
  FSpeedBlink:= 1;
  FSpeedBright:= 1;
  FAcselearteBlink:= 0.03;
  FAcselerateBright:= 2;
  FWaitTime:= 1;
  FIsBlink:= true;

  Visible:= false;
  // спрайт с изображением раб столя под окном
  FBackSprite:=  TGLHUDSprite(AddNewChild(TGLHUDSprite));
  FillBackSprite(point(TGameEngine(AOwner).MainForm.Left, TGameEngine(AOwner).MainForm.Top), point(TGameEngine(AOwner).MainForm.Width, TGameEngine(AOwner).MainForm.Height));

  // спрайт с надписью названия игры
  FTextSprite:= TGLHUDSprite(AddNewChild(TGLHUDSprite));
  if FileExists(TGameEngine(AOwner).Paths.Textures + INTRO_FILE_NAME) then
    FillTextSprite(TGameEngine(AOwner).Paths.Textures + INTRO_FILE_NAME);
end;

destructor TGameIntro.Destroy;
begin
  Visible:= false;
  DeleteChildren;
  inherited;
end;

procedure TGameIntro.DoEndIntro;
begin
  // конец заставки
  Visible:= false;
  if Assigned(FOnEndIntro) then
    FOnEndIntro(Self);
end;

procedure TGameIntro.DoProgressIntro(const deltaTime: double);
begin
  // прогресс для каденсера
  if Visible then begin
    if FIsBlink then begin
      // уменьшение прозрачности
      FTextSprite.Material.FrontProperties.Diffuse.Alpha:= FTextSprite.Material.FrontProperties.Diffuse.Alpha + deltaTime * FMultiplier * FSpeedBlink;
      FSpeedBlink:= FSpeedBlink + FAcselearteBlink;
      if FTextSprite.Material.FrontProperties.Diffuse.Alpha > 1 then
        FIsBlink:= false;
    end else begin
      // увеличение яркости
      FTextSprite.Material.Texture.ImageBrightness:= FTextSprite.Material.Texture.ImageBrightness + deltaTime * FMultiplier * FSpeedBright;
      FSpeedBright:= FSpeedBright + FAcselerateBright;
      if FTextSprite.Material.Texture.ImageBrightness > 1 then
        if FWaitTime <= 0 then
          DoEndIntro
        else
          FWaitTime:= FWaitTime - deltaTime * 0.5;
    end;
  end;
end;

procedure TGameIntro.FillTextSprite(AFileName: string);
begin
  // настроить спрайт с надписью. Замутил возможность использовать DDS или PNG
  try
    FTextSprite.BeginUpdate;
    LoadTextureFromFile(AFileName, FTextSprite.Material.Texture);

    FTextSprite.Material.BlendingMode:=            bmTransparency;
    FTextSprite.Material.MaterialOptions:=         [moNoLighting];
    FTextSprite.Material.Texture.MagFilter:=       maNearest;
    FTextSprite.Material.Texture.Disabled:=        false;
    FTextSprite.Material.Texture.TextureMode:=     tmModulate;
    FTextSprite.Material.Texture.ImageBrightness:= 0;
    if FIsBlink then
      Material.FrontProperties.Diffuse.SetColor(1, 1, 1, 0)
    else
      Material.FrontProperties.Diffuse.SetColor(1, 1, 1, 1);
    FTextSprite.Width:=  FTextSprite.Material.Texture.Image.Width;
    FTextSprite.Height:= FTextSprite.Material.Texture.Image.Height;
    FTextSprite.Position.SetPoint(FBackSprite.Position.AsAffineVector);
  finally
    FTextSprite.EndUpdate;
  end;
end;

procedure TGameIntro.FillBackSprite(ATopLeft, AWidthHeight: TPoint);
var
  FTempBMP: TBitmap;
begin
  // прицепить материал у спрайта из изображения десктопа под формой
  FBackSprite.BeginUpdate;
  FBackSprite.Width:=  AWidthHeight.X;
  FBackSprite.Height:= AWidthHeight.Y;
  FBackSprite.Position.SetPoint(AWidthHeight.X div 2, AWidthHeight.Y div 2, 0);

  FBackSprite.Material.MaterialOptions:=     [moNoLighting];
  FBackSprite.Material.Texture.MagFilter:=   maNearest;
  FBackSprite.Material.Texture.MinFilter:=   miNearest;
  FBackSprite.Material.Texture.TextureMode:= tmReplace;
  try
    // копируем кусок экрана под формой во временую битмапу
    FTempBMP:= CaptureScreenRect(Bounds(ATopLeft.X, ATopLeft.Y, AWidthHeight.X, AWidthHeight.Y));

    FBackSprite.Material.Texture.Image.Assign(FTempBMP);
    FBackSprite.Material.Texture.Disabled:= false;
  finally
    FreeAndNil(FTempBMP);
    FBackSprite.EndUpdate;
  end;
end;

end.
