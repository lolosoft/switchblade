unit uGUIElements;

interface

uses
  Windows, Classes, Graphics, SysUtils, Types, dialogs,
  GLScene, GLObjects, GLHUDObjects, GLBitmapFont, GLWindowsFont, GLMaterial, GLMaterialEx, GLTexture, GLCoordinates,
  VectorGeometry, pngimage, ddsimage,

  NativeXML,

  uCommonFuncProc;

type
  TCustomGUIElement = class;
  TGUIForm          = class;
  TGUIPanel         = class;
  TGUIButton        = class;
  TGUICheckBox      = class;

  TGUIElementEvent  = procedure(AGUIElement: TCustomGUIElement) of object;
  TGUIFormEvent     = procedure(AGUIForm: TGUIForm) of object;
  TGUIPanelEvent    = procedure(AGUIPanel: TGUIPanel) of object;
  TGUIButtonEvent   = procedure(AGUIButton: TGUIButton) of object;
  TGUICheckBoxEvent = procedure(AGUICheckBox: TGUICheckBox) of object;

  TCustomGUIElement = class(TGLHUDSprite)
  private
    FChildsForEvents: TList;
    FEnabled,
    FEventsWithChilds: boolean;
    FOnClick, FOnMouseEnter, FOnMouseLeave: TGUIElementEvent;

    procedure DoMouseCustomGUIElementEvent(AIsMouseEnter: boolean);
    procedure DoMouseCustomGUIElementClick;

    function IsCursorInRegion(ACurPos: TPoint): boolean;
    function GetRegion: TRect;
    function GetElementByIndex(AIndex: integer): TCustomGUIElement;

    function GetValidName(APrefix: string = ''): string;
    function GetParentGUIElement: TCustomGUIElement;

    function GetChildForEventsByIndex(AIndex: integer): TGLBaseSceneObject;
    function GetChildForEventsByName(AName: string): TGLBaseSceneObject;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;

    procedure DoGUIElementProgress(const deltaTime: double; ALastCurPos, ACurPos: TPoint);
    procedure DoGUIElementMouseClick(ACurPos: TPoint);

    function AddChildForEvents(AChildIndex: integer): integer; overload;
    function AddChildForEvents(AChildElement: TGLBaseSceneObject): integer; overload;
    function AddChildForEvents(AChildName: string): integer; overload;
    procedure DelChildForEvents(AChildIndex: integer); overload;
    procedure DelChildForEvents(AChildElement: TGLBaseSceneObject); overload;
    procedure DelChildForEvents(AChildName: string); overload;

    procedure Click;
    // загрузить текстуру из файла ANeedApplySize - подогнать под размер текстуры
    procedure LoadTexture(AFileName: string; ANeedApplySize: boolean = true);
    function LoadTextureEx(AFileName: string): integer;
    // регион, охватываемый GUI-элементом в оконных координатах
    property Region: TRect                            read GetRegion;
    property Enabled: boolean                         read FEnabled                 write FEnabled;
    // реагировать на курсор совместно с чилдами
    property EventsWithChilds: boolean                read FEventsWithChilds        write FEventsWithChilds;

    property OnClick: TGUIElementEvent                read FOnClick                 write FOnClick;
    property OnMouseEnter: TGUIElementEvent           read FOnMouseEnter            write FOnMouseEnter;
    property OnMouseLeave: TGUIElementEvent           read FOnMouseLeave            write FOnMouseLeave;
    property Items[Index: integer]: TCustomGUIElement read GetElementByIndex;
    property ParentGUIElement: TCustomGUIElement      read GetParentGUIElement;

    property ChildsForEvents[Index: integer]: TGLBaseSceneObject read GetChildForEventsByIndex;
  end;

  TGUIForm   = class(TCustomGUIElement)
  private
    FOnFormClick, FOnFormMouseEnter, FOnFormMouseLeave: TGUIFormEvent;

    procedure OnCustomClick(AGUIElement: TCustomGUIElement);
    procedure OnCustomEnter(AGUIElement: TCustomGUIElement);
    procedure OnCustomLeave(AGUIElement: TCustomGUIElement);
  public
    constructor Create(AOwner: TComponent); override;

    function AddPanel(AName: string = ''): TGUIPanel;
    function AddButton(AName: string = ''): TGUIButton;
    function AddCheckBox(AName: string = ''): TGUICheckBox;

    property OnFormClick:      TGUIFormEvent            read FOnFormClick           write FOnFormClick;
    property OnFormMouseEnter: TGUIFormEvent            read FOnFormMouseEnter      write FOnFormMouseEnter;
    property OnFormMouseLeave: TGUIFormEvent            read FOnFormMouseLeave      write FOnFormMouseLeave;
  end;


  TGUIPanel  = class(TCustomGUIElement)
    private
    FOnPanelClick, FOnPanelMouseEnter, FOnPanelMouseLeave: TGUIPanelEvent;

    procedure OnCustomClick(AGUIElement: TCustomGUIElement);
    procedure OnCustomEnter(AGUIElement: TCustomGUIElement);
    procedure OnCustomLeave(AGUIElement: TCustomGUIElement);
  public
    constructor Create(AOwner: TComponent); override;

    function AddPanel(AName: string = ''): TGUIPanel;
    function AddButton(AName: string = ''): TGUIButton;
    function AddCheckBox(AName: string = ''): TGUICheckBox;

    property OnPanelClick:      TGUIPanelEvent          read FOnPanelClick           write FOnPanelClick;
    property OnPanelMouseEnter: TGUIPanelEvent          read FOnPanelMouseEnter      write FOnPanelMouseEnter;
    property OnPanelMouseLeave: TGUIPanelEvent          read FOnPanelMouseLeave      write FOnPanelMouseLeave;
  end;

  TGUIButton = class(TCustomGUIElement)
  private
    FOnButtonClick, FOnButtonMouseEnter, FOnButtonMouseLeave: TGUIButtonEvent;

    procedure OnCustomClick(AGUIElement: TCustomGUIElement);
    procedure OnCustomEnter(AGUIElement: TCustomGUIElement);
    procedure OnCustomLeave(AGUIElement: TCustomGUIElement);
  public
    constructor Create(AOwner: TComponent); override;

    property OnButtonClick:      TGUIButtonEvent        read FOnButtonClick           write FOnButtonClick;
    property OnButtonMouseEnter: TGUIButtonEvent        read FOnButtonMouseEnter      write FOnButtonMouseEnter;
    property OnButtonMouseLeave: TGUIButtonEvent        read FOnButtonMouseLeave      write FOnButtonMouseLeave;
  end;

  TGUICheckBox = class(TCustomGUIElement)
  private
    FHUDCaption: TGLHUDText;
    FMateterialNameChecked, FMateterialNameUnChecked: string;
    FOnCheckBoxClick, FOnCheckBoxMouseEnter, FOnCheckBoxMouseLeave: TGUICheckBoxEvent;

    procedure OnCustomClick(AGUIElement: TCustomGUIElement);
    procedure OnCustomEnter(AGUIElement: TCustomGUIElement);
    procedure OnCustomLeave(AGUIElement: TCustomGUIElement);

    function GetChecked: boolean;
    procedure SetChecked(const Value: boolean);
    function GetCaption: string;
    procedure SetCaption(const Value: string);
  public
    constructor Create(AOwner: TComponent); override;

    // установить материалы дл€ Checked и UnChecked состо€ний
    // AIsPicFiles - указывает, что нужно загрузить из файлов текстур
    procedure SetMaterials(AMaterialChecked, AMaterialUnchecked: string; AIsPicFiles: boolean = false);
    procedure SetPosHUDCaption;

    property OnCheckBoxClick: TGUICheckBoxEvent         read FOnCheckBoxClick         write FOnCheckBoxClick;
    property OnCheckBoxMouseEnter: TGUICheckBoxEvent    read FOnCheckBoxMouseEnter    write FOnCheckBoxMouseEnter;
    property OnCheckBoxMouseLeave: TGUICheckBoxEvent    read FOnCheckBoxMouseLeave    write FOnCheckBoxMouseLeave;

    property Checked: boolean                           read GetChecked               write SetChecked;
    property Caption: string                            read GetCaption               write SetCaption;
    property HUDCaption: TGLHUDText                     read FHUDCaption              write FHUDCaption;
    property MateterialNameChecked: string              read FMateterialNameChecked   write FMateterialNameChecked;
    property MateterialNameUnChecked: string            read FMateterialNameUnChecked write FMateterialNameUnChecked;
  end;


const
  PIC_CHECKBOX_CHECKED        = 'checkbox_checked.png';
  MAT_NAME_CHECKBOX_CHECKED   = 'checkbox_checked';
  PIC_CHECKBOX_UNCHECKED      = 'checkbox_unchecked.png';
  MAT_NAME_CHECKBOX_UNCHECKED = 'checkbox_unchecked';

implementation

uses uLog, uGameEngine, uMaterials;

{ TCustomGUIElement }

function TCustomGUIElement.AddChildForEvents(AChildIndex: integer): integer;
begin
  // добавить чилда по индексу к региону, на который генерируютс€ событи€
  Result:= -1;
  if (Count > 0) and (AChildIndex >= 0) and (AChildIndex < Count) and (Children[AChildIndex] is TCustomGUIElement) then
    Result:= FChildsForEvents.Add(Children[AChildIndex]);
end;

function TCustomGUIElement.AddChildForEvents(AChildElement: TGLBaseSceneObject): integer;
begin
  // добавить чилда по ссылке к региону, на который генерируютс€ событи€
  Result:= -1;
  if Assigned(AChildElement) then
    Result:= FChildsForEvents.Add(AChildElement);
end;

function TCustomGUIElement.AddChildForEvents(AChildName: string): integer;
var
  i: integer;
begin
  // добавить чилда к региону, на который генерируютс€ событи€
  Result:= -1;
  for i:= 0 to Count - 1 do
    if Children[i].Name = AChildName then
      Result:= FChildsForEvents.Add(Children[i]);
end;

procedure TCustomGUIElement.Click;
begin
  DoMouseCustomGUIElementClick;
end;

constructor TCustomGUIElement.Create(AOwner: TComponent);
begin
  inherited;
  FChildsForEvents:=  TList.Create;
  FEventsWithChilds:= false;
end;

procedure TCustomGUIElement.DelChildForEvents(AChildIndex: integer);
begin
  if (FChildsForEvents.Count > 0) and (AChildIndex >= 0) and (AChildIndex < FChildsForEvents.Count) then
    FChildsForEvents.Delete(AChildIndex);
end;

procedure TCustomGUIElement.DelChildForEvents(AChildElement: TGLBaseSceneObject);
var
  i: integer;
begin
  for i:= 0 to FChildsForEvents.Count - 1 do
    if FChildsForEvents[i] = AChildElement then begin
      FChildsForEvents.Delete(i);
      break;
    end;
end;

procedure TCustomGUIElement.DelChildForEvents(AChildName: string);
var
  i: integer;
begin
  for i:= 0 to FChildsForEvents.Count - 1 do
    if TGLBaseSceneObject(FChildsForEvents[i]).Name = AChildName then begin
      FChildsForEvents.Delete(i);
      break;
    end;
end;

destructor TCustomGUIElement.Destroy;
begin
  FreeAndNil(FChildsForEvents);
  inherited;
end;

procedure TCustomGUIElement.DoGUIElementMouseClick(ACurPos: TPoint);
var
  i: integer;
begin
  // обработч€ик дл€ проверки клика на GUI-элементе
  if Visible and Enabled then begin
    if (Width > 0) and (Height > 0) and IsCursorInRegion(ACurPos) then
      DoMouseCustomGUIElementClick;
    for i:= 0 to Count - 1 do
      if Items[i] <> nil then
        Items[i].DoGUIElementMouseClick(ACurPos);
  end;
end;

procedure TCustomGUIElement.DoGUIElementProgress(const deltaTime: double; ALastCurPos, ACurPos: TPoint);
var
  FIsLastCurInRegion, FIsCurInRegion: boolean;
  i: integer;
begin
  // прогресс дл€ каденсера
  if Visible then begin
    if (Width > 0) and (Height > 0) then begin
      FIsLastCurInRegion:= IsCursorInRegion(ALastCurPos);
      FIsCurInRegion:=     IsCursorInRegion(ACurPos);

      if not PointsEqual(ALastCurPos, ACurPos) then begin
        // курсор изменил положение с предыдущего раза
        if not FIsLastCurInRegion and FIsCurInRegion then
          DoMouseCustomGUIElementEvent(true)
        else
        if FIsLastCurInRegion and not FIsCurInRegion then
          DoMouseCustomGUIElementEvent(false);
      end;
    end;

    // передал подчиненному элементу
    for i:= 0 to Count - 1 do
      if Items[i] <> nil then
        Items[i].DoGUIElementProgress(deltaTime, ALastCurPos, ACurPos);
  end;
end;

procedure TCustomGUIElement.DoMouseCustomGUIElementClick;
begin
  // вызвать обработчик
  if Enabled and Assigned(FOnClick)then
    FOnClick(self);
end;

procedure TCustomGUIElement.DoMouseCustomGUIElementEvent(AIsMouseEnter: boolean);
begin
  // вызвать обработчик
  if AIsMouseEnter then begin
    if Assigned(FOnMouseEnter) then
      FOnMouseEnter(Self);
  end else begin
    if Assigned(FOnMouseLeave) then
      FOnMouseLeave(Self);
  end;
end;

function TCustomGUIElement.GetChildForEventsByIndex(AIndex: integer): TGLBaseSceneObject;
begin
  Result:= nil;
  if (FChildsForEvents.Count > 0) and (AIndex >= 0) and (AIndex < FChildsForEvents.Count) then
    Result:= TGLBaseSceneObject(FChildsForEvents[AIndex]);
end;

function TCustomGUIElement.GetChildForEventsByName(AName: string): TGLBaseSceneObject;
var
  i: integer;
begin
  Result:= nil;
  for i:= 0 to FChildsForEvents.Count - 1 do
    if Assigned(FChildsForEvents[i]) then
      if TCustomGUIElement(FChildsForEvents[i]).Name = AName then begin
        Result:= TGLBaseSceneObject(FChildsForEvents[i]);
        break;
      end;
end;

function TCustomGUIElement.GetElementByIndex(AIndex: integer): TCustomGUIElement;
begin
  // получить элемент по индексу
  Result:= nil;
  if (Count > 0) and (AIndex >= 0) and (AIndex < Count) and (Children[AIndex] is TCustomGUIElement) then
    Result:= TCustomGUIElement(Children[AIndex]);
end;

function TCustomGUIElement.GetParentGUIElement: TCustomGUIElement;
begin
  Result:= nil;
  if Parent is TCustomGUIElement then
    Result:= TCustomGUIElement(Parent);
end;

function TCustomGUIElement.GetRegion: TRect;
begin
  // получить регион занимаемый GUI-элементом
  Result.Left:=   trunc(Position.X - Width / 2);
  Result.Right:=  trunc(Result.Left + Width);
  Result.Top:=    trunc(Position.Y - Height / 2);
  Result.Bottom:= trunc(Result.Top + Height);
end;

function TCustomGUIElement.GetValidName(APrefix: string): string;
var
  n: integer;
  FName: string;
begin
  // получить уникальное им€ дл€ компонента
  Result:= '';
  try
    if trim(APrefix) <> '' then begin
      FName:= StringReplace(trim(APrefix), ' ', '_', [rfReplaceAll]);
    end else
      FName:= 'CustomGUIElement';
    n:= 0;
    repeat
      Inc(n);
      Result:= FName + IntToStr(n);
    until FindComponent(Result) = nil;
  except
  end;
end;

function TCustomGUIElement.IsCursorInRegion(ACurPos: TPoint): boolean;
var
  i: integer;
  tmpRegion: TRect;
begin
  // проверить курсор на нахождение в регионе GUI-элемента
  Result:= false;
  if FEventsWithChilds then begin
    for i:= 0 to FChildsForEvents.Count - 1 do
      if Assigned(FChildsForEvents[i]) then begin
        tmpRegion:= Bounds(-1,-1,-1,-1);
        if (TGLBaseSceneObject(FChildsForEvents[i]) is TCustomGUIElement) then
          tmpRegion:= TCustomGUIElement(TGLBaseSceneObject(FChildsForEvents[i])).Region
        else begin
          if (TGLBaseSceneObject(FChildsForEvents[i]) is TGLHUDText) then with TGLBaseSceneObject(FChildsForEvents[i]) as TGLHUDText do begin
            if (Text <> '') and Assigned(BitmapFont) then
              if BitmapFont is TGLWindowsBitmapFont then begin
                tmpRegion:= Bounds(trunc(TGLBaseSceneObject(FChildsForEvents[i]).Position.X),
                                   trunc(TGLBaseSceneObject(FChildsForEvents[i]).Position.Y),
                                   FGameEngine.GetTextWidth(Text, TGLWindowsBitmapFont(BitmapFont).Font),
                                   FGameEngine.GetTextHeight(Text, TGLWindowsBitmapFont(BitmapFont).Font));
              end else
              if BitmapFont is TGLBitmapFont then begin
                tmpRegion:= Bounds(trunc(TGLBaseSceneObject(FChildsForEvents[i]).Position.X),
                                   trunc(TGLBaseSceneObject(FChildsForEvents[i]).Position.Y),
                                   TGLBitmapFont(BitmapFont).TextWidth(Text),
                                   TGLBitmapFont(BitmapFont).CharHeight);
              end; // if BitmapFont is TGLBitmapFont then begin
          end else
          if (TGLBaseSceneObject(FChildsForEvents[i]) is TGLHUDSprite) then begin
            tmpRegion:= Bounds(trunc(TGLHUDSprite(TGLBaseSceneObject(FChildsForEvents[i])).Position.X - TGLHUDSprite(TGLBaseSceneObject(FChildsForEvents[i])).Width / 2),
                               trunc(TGLHUDSprite(TGLBaseSceneObject(FChildsForEvents[i])).Position.Y - TGLHUDSprite(TGLBaseSceneObject(FChildsForEvents[i])).Height / 2),
                               trunc(TGLHUDSprite(TGLBaseSceneObject(FChildsForEvents[i])).Width),
                               trunc(TGLHUDSprite(TGLBaseSceneObject(FChildsForEvents[i])).Height));
          end;
        end;
        // проверка вхождени€ курсора в регион чилда
        Result:= (ACurPos.X >= tmpRegion.Left) and (ACurPos.X <= tmpRegion.Right) and (ACurPos.Y >= tmpRegion.Top) and (ACurPos.Y <= tmpRegion.Bottom);
        if Result then break;
      end; // if Assigned(FChildsForEvents[i]) then begin
    if not Result then
      Result:= (ACurPos.X >= Region.Left) and (ACurPos.X <= Region.Right) and (ACurPos.Y >= Region.Top) and (ACurPos.Y <= Region.Bottom);
  end else
    Result:= (ACurPos.X >= Region.Left) and (ACurPos.X <= Region.Right) and (ACurPos.Y >= Region.Top) and (ACurPos.Y <= Region.Bottom);
end;

procedure TCustomGUIElement.LoadTexture(AFileName: string; ANeedApplySize: boolean);
begin
  // загрузить текстуру из файла
  if FileExists(AFileName) then try
    BeginUpdate;
    LoadTextureFromFile(AFileName, Material.Texture);

    Material.BlendingMode:=        bmTransparency;
    Material.MaterialOptions:=     [moNoLighting];
    //Material.Texture.MagFilter:=   maNearest;
    Material.Texture.TextureMode:= tmModulate;
    if ANeedApplySize then begin
      Width:=  Material.Texture.Image.Width;
      Height:= Material.Texture.Image.Height;
    end;
  finally
    EndUpdate;
  end;
end;

function TCustomGUIElement.LoadTextureEx(AFileName: string): integer;
begin
  // загрузить доп текстуру в материал
  Result:= -1;
  if FileExists(AFileName) then try
    BeginUpdate;
    with Material.TextureEx.Add do begin
      LoadTextureFromFile(AFileName, Texture);
      Texture.MagFilter:=   maNearest;
      Texture.TextureMode:= tmModulate;
      Result:= Index;
    end;
  finally
    EndUpdate;
  end;
end;

{ TGUIForm }

function TGUIForm.AddButton(AName: string): TGUIButton;
begin
  Result:=        TGUIButton(AddNewChild(TGUIButton));
  Result.Parent:= Self;
  if trim(AName) <> '' then
    Result.Name:= AName;
end;

function TGUIForm.AddCheckBox(AName: string): TGUICheckBox;
begin
  Result:=        TGUICheckBox(AddNewChild(TGUICheckBox));
  Result.Parent:= Self;
  if trim(AName) <> '' then
    Result.Name:= AName;
end;

function TGUIForm.AddPanel(AName: string): TGUIPanel;
begin
  Result:=        TGUIPanel(AddNewChild(TGUIPanel));
  Result.Parent:= Self;
  if trim(AName) <> '' then
    Result.Name:= AName;
end;

constructor TGUIForm.Create(AOwner: TComponent);
begin
  inherited;
  // присваиваем внутренним обработчикам событий перенаправл€тели
  Material.FrontProperties.Diffuse.SetColor(0.8, 0.8, 0.8);
  Enabled:=      true;
  Visible:=      true;
  OnClick:=      OnCustomClick;
  OnMouseEnter:= OnCustomEnter;
  OnMouseLeave:= OnCustomLeave;
end;

procedure TGUIForm.OnCustomClick(AGUIElement: TCustomGUIElement);
begin
  // перенаправл€ем обработчик
  if Assigned(OnFormClick) then
    OnFormClick(self);
end;

procedure TGUIForm.OnCustomEnter(AGUIElement: TCustomGUIElement);
begin
  // перенаправл€ем обработчик
  if Assigned(OnFormMouseEnter) then
    OnFormMouseEnter(self);
end;

procedure TGUIForm.OnCustomLeave(AGUIElement: TCustomGUIElement);
begin
  // перенаправл€ем обработчик
  if Assigned(OnFormMouseLeave) then
    OnFormMouseLeave(self);
end;

{ TGUIPanel }

function TGUIPanel.AddButton(AName: string): TGUIButton;
begin
  Result:=        TGUIButton(AddNewChild(TGUIButton));
  Result.Parent:= Self;
  if trim(AName) <> '' then
    Result.Name:= AName;
end;

function TGUIPanel.AddCheckBox(AName: string): TGUICheckBox;
begin
  Result:=        TGUICheckBox(AddNewChild(TGUICheckBox));
  Result.Parent:= Self;
  if trim(AName) <> '' then
    Result.Name:= AName;
end;

function TGUIPanel.AddPanel(AName: string): TGUIPanel;
begin
  Result:=        TGUIPanel(AddNewChild(TGUIPanel));
  Result.Parent:= Self;
  if trim(AName) <> '' then
    Result.Name:= AName;
end;

constructor TGUIPanel.Create(AOwner: TComponent);
begin
  inherited;
  Enabled:=      true;
  Visible:=      true;
  OnClick:=      OnCustomClick;
  OnMouseEnter:= OnCustomEnter;
  OnMouseLeave:= OnCustomLeave;
end;

procedure TGUIPanel.OnCustomClick(AGUIElement: TCustomGUIElement);
begin
  // перенаправл€ем обработчик
  if Assigned(OnPanelClick) then
    OnPanelClick(self);
end;

procedure TGUIPanel.OnCustomEnter(AGUIElement: TCustomGUIElement);
begin
  // перенаправл€ем обработчик
  if Assigned(OnMouseEnter) then
    OnPanelMouseEnter(self);
end;

procedure TGUIPanel.OnCustomLeave(AGUIElement: TCustomGUIElement);
begin
  // перенаправл€ем обработчик
  if Assigned(OnMouseLeave) then
    OnPanelMouseLeave(self);
end;

{ TGUIButton }

constructor TGUIButton.Create(AOwner: TComponent);
begin
  inherited;
  Enabled:=      true;
  Visible:=      true;
  OnClick:=      OnCustomClick;
  OnMouseEnter:= OnCustomEnter;
  OnMouseLeave:= OnCustomLeave;
end;

procedure TGUIButton.OnCustomClick(AGUIElement: TCustomGUIElement);
begin
  // перенаправл€ем обработчик
  if Assigned(OnButtonClick) then
    OnButtonClick(self);
end;

procedure TGUIButton.OnCustomEnter(AGUIElement: TCustomGUIElement);
begin
  // перенаправл€ем обработчик
  if Assigned(OnButtonMouseEnter) then
    OnButtonMouseEnter(self);
end;

procedure TGUIButton.OnCustomLeave(AGUIElement: TCustomGUIElement);
begin
  // перенаправл€ем обработчик
  if Assigned(OnButtonMouseLeave) then
    OnButtonMouseLeave(self);
end;

{ TGUICheckBox }

constructor TGUICheckBox.Create(AOwner: TComponent);
begin
  inherited;
  Enabled:=                  true;
  Visible:=                  true;
  OnClick:=                  OnCustomClick;
  OnMouseEnter:=             OnCustomEnter;
  OnMouseLeave:=             OnCustomLeave;

  FHUDCaption:=              TGLHUDText(AddNewChild(TGLHUDText));
  FHUDCaption.Parent:=       self;

  EventsWithChilds:= (AddChildForEvents(FHUDCaption) >= 0);
end;

function TGUICheckBox.GetCaption: string;
begin
  Result:= FHUDCaption.Text;
end;

function TGUICheckBox.GetChecked: boolean;
begin
  if Assigned(Material.MaterialLibrary) then
    Result:= (Material.LibMaterialName = FMateterialNameChecked)
  else
    Result:= not Material.TextureEx.Items[0].Texture.Disabled;
end;

procedure TGUICheckBox.OnCustomClick(AGUIElement: TCustomGUIElement);
begin
  // перенаправл€ем обработчик
  if Assigned(OnCheckBoxClick) then
    OnCheckBoxClick(self);
end;

procedure TGUICheckBox.OnCustomEnter(AGUIElement: TCustomGUIElement);
begin
  // перенаправл€ем обработчик
  if Assigned(OnCheckBoxMouseEnter) then
    OnCheckBoxMouseEnter(self);
end;

procedure TGUICheckBox.OnCustomLeave(AGUIElement: TCustomGUIElement);
begin
  // перенаправл€ем обработчик
  if Assigned(OnCheckBoxMouseLeave) then
    OnCheckBoxMouseLeave(self);
end;

procedure TGUICheckBox.SetCaption(const Value: string);
begin
  FHUDCaption.Text:= Value;
  SetPosHUDCaption;
end;

procedure TGUICheckBox.SetChecked(const Value: boolean);
begin
  // если подключена ћатЋиба, то переключаем материал иначе тексутру
  BeginUpdate;
  try
    if Assigned(Material.MaterialLibrary) then begin
      if Value then
        Material.LibMaterialName:= FMateterialNameChecked
      else
        Material.LibMaterialName:= FMateterialNameUnChecked
    end else
      Material.TextureEx.Items[0].Texture.Disabled:= not Value;
  finally
    EndUpdate;
  end;
end;

procedure TGUICheckBox.SetMaterials(AMaterialChecked, AMaterialUnchecked: string; AIsPicFiles: boolean);
begin
  if AIsPicFiles then begin
    Material.MaterialLibrary:= nil;
    if FileExists(AMaterialChecked) and FileExists(AMaterialUnchecked) then begin
      LoadTexture(AMaterialChecked);
      LoadTextureEx(AMaterialUnchecked);
    end;
  end else
  if Assigned(Material.MaterialLibrary) then begin
    FMateterialNameChecked:=   AMaterialChecked;
    FMateterialNameUnChecked:= AMaterialUnchecked;
  end;
end;

procedure TGUICheckBox.SetPosHUDCaption;
begin
  // установить текст справа от чекбокса
  FHUDCaption.Position.SetPoint(Position.X + Width / 2, Position.Y - FGameEngine.GetTextHeight(Caption, TGLWindowsBitmapFont(FHUDCaption.BitmapFont).Font) / 2, 0);
end;

end.
