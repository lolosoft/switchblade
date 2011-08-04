unit uGameMenu;

interface

uses
  Windows, Classes, Graphics, SysUtils, Types, dialogs,
  VectorGeometry, GLObjects, GLHUDObjects, GLWindowsFont, GLMaterial, GLMaterialEx, GLTexture, GLCoordinates,pngimage,

  NativeXML,

  uCommonFuncProc;

type
  TAlignMenuItems = (amiLeft, amiCenter, amiRight);
  TGameMenu     = class;
  TGameMenuItem = class;
  TGameMenuEvent = procedure(AGameMenu: TGameMenu) of object;
  TGameMenuItemEvent = procedure(AGameMenuItem: TGameMenuItem) of object;

  // класс-контейнер для все меню игры
  TGameMenuContainer = class(TGLDummyCube)
  private
    FActiveMenu:   TGameMenu;
    FExtElements,
    FMenuList:     TGLDummyCube;
    FMenuCaptionFont, FMenuItemFont: TGLWindowsBitmapFont;
    FLibMaterials: TGLMaterialLibraryEx;

    function GetMenu(AIndex: integer): TGameMenu; overload;
    function GetMenu(AMenuName: string): TGameMenu; overload;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;

    procedure DoGameMenuContainerProgress(const deltaTime: double; ALastCurPos, ACurPos: TPoint);
    procedure DoGameMenuContainerMouseClick(AIsDblClick: boolean; ACurPos: TPoint);

    procedure HideAllMenu;
    procedure ActivateMenu(AIndex: integer); overload;
    procedure ActivateMenu(AMenuName: string); overload;
    procedure ActivateMenu(AGameMenu: TGameMenu); overload;

    function LoadFromFile(AFileName: string): boolean;
    function SaveToFile(AFileName: string): boolean;

    function AddGameMenu(AName: string): TGameMenu;
    procedure DelGameMenu(AIndex: integer); overload;
    procedure DelGameMenu(AMenuName: string); overload;

    property MenuItemFont:    TGLWindowsBitmapFont read FMenuItemFont    write FMenuItemFont;
    property MenuCaptionFont: TGLWindowsBitmapFont read FMenuCaptionFont write FMenuCaptionFont;
    property LibMaterials:    TGLMaterialLibraryEx read FLibMaterials    write FLibMaterials;
    property ActiveMenu:      TGameMenu            read FActiveMenu;
    property ExtElementsDC:   TGLDummyCube         read FExtElements;
    property MenuList[Index: integer]: TGameMenu   read GetMenu;
  end;

  // класс игрового меню
  TGameMenu = class(TGLDummyCube)
  private
    FOnShow: TGameMenuEvent;
    FSpeedAlpha,
    FAccelerateAlpha:  single;
    FSelectedMenuItem: TGameMenuItem;
    FMenuItemsInterval,
    FAddToSideLeft,
    FAddToSideRight,
    FAddToSideTop,
    FAddToSideBottom,
    FTopPosLine,
    FAlignPosLine:     integer;
    FAlign:            TAlignMenuItems;
    FMenuItems:        TGLDummyCube;
    FOwnerContainer:   TGameMenuContainer;
    FCaption:          TGLHUDText;

    function GetMenuItemByIndex(AIndex: integer): TGameMenuItem;
    function GetMenuItemByName(AItemName: string): TGameMenuItem;

    procedure SetAddToSideLeft(const Value: integer);
    procedure SetAddToSideRight(const Value: integer);
    procedure SetAddToSideTop(const Value: integer);
    procedure SetAddToSideBottom(const Value: integer);

    procedure SetAlign(const Value: TAlignMenuItems);
    procedure SetAlignPosLine(const Value: integer);
    procedure SetTopPosLine(const Value: integer);

    procedure SetMenuItemsInterval(const Value: integer);

    procedure SetPositionMenuItems;
    procedure SetSizeMenuItems;

    function GetCaption: string;
    procedure SetCaption(const Value: string);
  public
    constructor Create(AOwner: TComponent); override;

    procedure DoGameMenuProgress(const deltaTime: double; ALastCurPos, ACurPos: TPoint);
    procedure DoGameMenuMouseClick(AIsDblClick: boolean; ACurPos: TPoint);
    procedure AssignEventsToAllItems(AOnClick, AOnDblClick, AOnMouseEnter, AOnMouseLeave: TGameMenuItemEvent);
    procedure UnselectAll;

    function AddMenuItem(AName: string; ACaption: string = ''): TGameMenuItem;
    procedure DelGameMenuItem(AIndex: integer); overload;
    procedure DelGameMenuItem(AItemName: string); overload;

    function LoadFromXMLFile(AFileName: string): boolean;
    function SaveToXMLFile(AFileName: string): boolean;
    function LoadFromXMLNode(ANode: TXMLNode): boolean;
    function SaveToXMLNode(ANode: TXMLNode): boolean;

    // контейнер-владелец
    property OwnerContainer: TGameMenuContainer       read FOwnerContainer;
    // пункты меню
    property MenuItems[Index: integer]: TGameMenuItem read GetMenuItemByIndex;

    // вертикальная линия, отностилеьно которой выравниваются пункты меню
    property AlignPosLine: integer                    read FAlignPosLine      write SetAlignPosLine      default 340;
    // горизонтальная линия, от нее начинают выстраиваться пункты меню
    property TopPosLine: integer                      read FTopPosLine        write SetTopPosLine        default 100;
    // по какой стороне выравнивать пункты меню
    property Align: TAlignMenuItems                   read FAlign             write SetAlign             default amiRight;

    // добавочные значения к габаритам
    property AddToSideLeft: integer                   read FAddToSideLeft     write SetAddToSideLeft     default 0;
    property AddToSideRight: integer                  read FAddToSideRight    write SetAddToSideRight    default 0;
    property AddToSideTop: integer                    read FAddToSideTop      write SetAddToSideTop      default 0;
    property AddToSideBottom: integer                 read FAddToSideBottom   write SetAddToSideBottom   default 0;

    // интервал м/у пунктами меню
    property MenuItemsInterval: integer               read FMenuItemsInterval write SetMenuItemsInterval default 10;

    property SelectedMenuItem: TGameMenuItem          read FSelectedMenuItem;

    // скорость увеличения/уменьшения прозрачности
    property SpeedAlpha: single                       read FSpeedAlpha        write FSpeedAlpha;
    // ускорение увеличения/уменьшения прозрачности
    property AccelerateAlpha: single                  read FAccelerateAlpha   write FAccelerateAlpha;

    // заголовок меню
    property Caption: string                          read GetCaption         write SetCaption;
    property HUDCaption: TGLHUDText                   read FCaption;

    property OnShow: TGameMenuEvent                   read FOnShow            write FOnShow;
  end;

  // класс для пункта меню
  TGameMenuItem = class(TGLHUDSprite)
  private
    // меняя знак с "+" на "-" управляем прозрачностью материала
    FdxAplha: integer;
    FCurrSpeedAlpha, FMenuSpeedAlpha, FMenuAccelerateAlpha: single;
    FOnClick, FOnDblClick, FOnMouseEnter, FOnMouseLeave: TGameMenuItemEvent;
    FCaptionWidth, FCaptionHeight: integer;
    FText: TGLHUDText;
    FOwnerMenu: TGameMenu;
    function GetMenuItemRegion: TRect;

    function GetCaption: string;
    procedure SetCaption(const Value: string);

    procedure DoMouseEvent(AIsMouseEnter: boolean);
    procedure DoMouseClick(AIsDblClick: boolean);

    function IsCursorInRegion(ACurPos: TPoint): boolean;
  public
    constructor Create(AOwner: TComponent); override;

    procedure DoGameMenuItemProgress(const deltaTime: double; ALastCurPos, ACurPos: TPoint);
    procedure DoGameMenuItemMouseClick(AIsDblClick: boolean; ACurPos: TPoint);

    function LoadFromXMLFile(AFileName: string): boolean;
    function SaveToXMLFile(AFileName: string): boolean;
    function LoadFromXMLNode(ANode: TXMLNode): boolean;
    function SaveToXMLNode(ANode: TXMLNode): boolean;

    procedure SetPos(APos: TPoint);
    function GetPos: TPoint;

    procedure PrepareMaterial;
    procedure Click;

    // регион, охватываемый пунктом меню в оконных координатах
    property Region: TRect                    read GetMenuItemRegion;
    // меню-владелец
    property OwnerMenu: TGameMenu             read FOwnerMenu;
    // кэпшн
    property Caption: string                  read GetCaption         write SetCaption;
    // компонент для кэпшена
    property HUDText: TGLHUDText              read FText;
    // габариты кэпшена
    property CaptionWidth: integer            read FCaptionWidth;
    property CaptionHeight: integer           read FCaptionHeight;

    property OnMouseEnter: TGameMenuItemEvent read FOnMouseEnter      write FOnMouseEnter;
    property OnMouseLeave: TGameMenuItemEvent read FOnMouseLeave      write FOnMouseLeave;
    property OnClick: TGameMenuItemEvent      read FOnClick           write FOnClick;
    property OnDblClick: TGameMenuItemEvent   read FOnDblClick        write FOnDblClick;
  end;

var
  FGameMenuContainer: TGameMenuContainer;

implementation

uses uGameEngine;

{ TGameMenuContainer }

function TGameMenuContainer.AddGameMenu(AName: string): TGameMenu;
var
  FName: string;
begin
  // добавить новове меню
  //Result:= TGameMenu(FMenuList.AddNewChild(TGameMenu));
  Result:= TGameMenu.Create(Self);

  if not Assigned(FActiveMenu) then begin
    FActiveMenu:= Result;
    FActiveMenu.Visible:= true;
  end;

  Result.Parent:= FMenuList;
  Result.MoveLast;
  try
    if trim(AName) <> '' then
      FName:= trim(StringReplace(AName, ' ', '_', [rfReplaceAll]))
    else repeat
      FName:= 'GameMenu_' + IntToStr(Random(99999999));
    until FindComponent(FName) = nil;
    Result.Name:= FName;
  except
    Result.Name:= '';
  end;
end;

constructor TGameMenuContainer.Create(AOwner: TComponent);
begin
  inherited;
  FExtElements:=  TGLDummyCube(AddNewChild(TGLDummyCube));
  FMenuList:=     TGLDummyCube(AddNewChild(TGLDummyCube));

  // фонт для пунктов меню
  FMenuItemFont:= TGLWindowsBitmapFont.Create(Self);
  with FMenuItemFont do begin
    Ranges.Clear;
    with Ranges.Add do begin
      StartASCII:= #32;
      StopASCII:=  #122;
    end;
    with Ranges.Add do begin
      StartASCII:= #1040;
      StopASCII:=  #1103;
    end;
    Font.Name:=    MESS_FONT_NAME;
    Font.Size:=    14;
    Font.Quality:= fqClearType;
    Font.Charset:= 204; // RUSSIAN_CHARSET
    HSpace:= 0;
    VSpace:= 0;
  end;

  // фонт для заголовка меню
  FMenuCaptionFont:= TGLWindowsBitmapFont.Create(Self);
  with FMenuCaptionFont do begin
    Ranges.Clear;
    with Ranges.Add do begin
      StartASCII:= #32;
      StopASCII:=  #122;
    end;
    with Ranges.Add do begin
      StartASCII:= #1040;
      StopASCII:=  #1103;
    end;
    Font.Name:=    CAPTION_FONT_NAME;
    Font.Size:=    20;
    Font.Quality:= fqClearType;
    Font.Charset:= 204; // RUSSIAN_CHARSET
    HSpace:= 0;
    VSpace:= 0;
  end;

  // библиотека материалов
  FLibMaterials:= TGLMaterialLibraryEx.Create(Self);
end;

procedure TGameMenuContainer.DelGameMenu(AIndex: integer);
var
  FGameMenu: TGameMenu;
begin
  // удалить меню по индексу
  FGameMenu:= GetMenu(AIndex);
  if Assigned(FGameMenu) then
    FreeAndNil(FGameMenu);
end;

procedure TGameMenuContainer.DelGameMenu(AMenuName: string);
var
  FGameMenu: TGameMenu;
begin
  // удалить меню по имени
  FGameMenu:= GetMenu(AMenuName);
  if Assigned(FGameMenu) then
    FreeAndNil(FGameMenu);
end;

destructor TGameMenuContainer.Destroy;
begin
  FreeAndNil(FLibMaterials);
  FreeAndNil(FMenuItemFont);
  FreeAndNil(FMenuCaptionFont);
  inherited;
end;

procedure TGameMenuContainer.DoGameMenuContainerProgress(const deltaTime: double; ALastCurPos, ACurPos: TPoint);
begin
  if Visible then begin
    if Assigned(FActiveMenu) and FActiveMenu.Visible then begin
      FActiveMenu.DoGameMenuProgress(deltaTime, ALastCurPos, ACurPos);
    end;
  end;
end;

procedure TGameMenuContainer.DoGameMenuContainerMouseClick(AIsDblClick: boolean; ACurPos: TPoint);
var
  i: integer;
begin
  // передать клик или двойной клик мышью в подчиненные меню
  if Visible then
    for i:= 0 to FMenuList.Count - 1 do
      if MenuList[i] <> nil then
        MenuList[i].DoGameMenuMouseClick(AIsDblClick, ACurPos);
end;

function TGameMenuContainer.GetMenu(AIndex: integer): TGameMenu;
begin
  // получить меню из списка меню по индексу
  Result:= nil;
  if (AIndex >= 0) and (AIndex < FMenuList.Count) and (FMenuList.Children[AIndex] is TGameMenu) then
    Result:= TGameMenu(FMenuList.Children[AIndex]);
end;

function TGameMenuContainer.GetMenu(AMenuName: string): TGameMenu;
var
  i: integer;
begin
  // получить меню из списка меню по имени
  Result:= nil;
  for i:= 0 to FMenuList.Count - 1 do
    if (FMenuList.Children[i] is TGameMenu) and (TGameMenu(FMenuList.Children[i]).Name = AMenuName) then begin
      Result:= TGameMenu(FMenuList.Children[i]);
      break;
    end;
end;

procedure TGameMenuContainer.HideAllMenu;
var
  i: integer;
begin
  // спрятать все меню
  for i:= 0 to FMenuList.Count - 1 do
    if MenuList[i] <> nil then
      MenuList[i].Visible:= false;
end;

function TGameMenuContainer.LoadFromFile(AFileName: string): boolean;
var
  i: integer;
begin
  // загрузить всЕ меню из XML-файла
  Result:= false;
  if FileExists(AFileName) then with TNativeXml.Create(self) do try
    LoadFromFile(AFileName);
    for i:= 0 to Root.NodeCount - 1 do begin
      AddGameMenu(string(Root.Nodes[i].Name)).LoadFromXMLNode(Root.Nodes[i]);
    end;
    Result:= true;
  finally
    Free;
  end else
    MessageBox(0, pchar('Не найден файл конфигурации списка меню'#13#13 + AFileName), 'Ошибка', MB_OK or MB_ICONERROR);
end;

function TGameMenuContainer.SaveToFile(AFileName: string): boolean;
var
  i: integer;
  FGameMenu: TGameMenu;
begin
  // сохранить конфигурацию в XML-файл
  Result:= false;
  with TNativeXml.Create(self) do try
    XmlFormat:= xfReadable;
    VersionString:=  '1.0';
    EncodingString:= 'windows-1251';
    Root.Name:= 'Root';

    for i:= 0 to FMenuList.Count - 1 do
      if FMenuList.Children[i] is TGameMenu then begin
        FGameMenu:= TGameMenu(FMenuList.Children[i]);
        if FGameMenu.Name <> '' then
          Result:= FGameMenu.SaveToXMLNode(Root.NodeNew(UTF8String(FGameMenu.Name)))
        else
          Result:= FGameMenu.SaveToXMLNode(Root.NodeNew(UTF8String('GameMenu' + IntToStr(i))));
      end;
    if Result then
      SaveToFile(AFileName);
  finally
    Free;
  end;
end;

procedure TGameMenuContainer.ActivateMenu(AIndex: integer);
begin
  // показать меню c индексом AIndex
  ActivateMenu(GetMenu(AIndex));
end;

procedure TGameMenuContainer.ActivateMenu(AMenuName: string);
begin
  // показать меню c именем AMenuName
  ActivateMenu(GetMenu(AMenuName));
end;

procedure TGameMenuContainer.ActivateMenu(AGameMenu: TGameMenu);
begin
  if Assigned(AGameMenu) then begin
    if Assigned(FActiveMenu) then begin
      FActiveMenu.Visible:= false;
      FActiveMenu.UnselectAll;
    end;
    AGameMenu.Visible:= true;
    FActiveMenu:= AGameMenu;

    if AGameMenu.Index = 0 then
      if AGameMenu.MenuItems[0] <> nil then
        AGameMenu.MenuItems[0].Visible:= FGameEngine.IsGameStarted;

    if Assigned(AGameMenu.OnShow) then
      AGameMenu.OnShow(AGameMenu);
  end;
end;

{ TGameMenu }

function TGameMenu.AddMenuItem(AName, ACaption: string): TGameMenuItem;
var
  FName: string;
  y: integer;
begin
  Result:= TGameMenuItem.Create(Self);
  Result.Parent:= FMenuItems;
  Result.MoveLast;

  try
    if trim(AName) <> '' then
      FName:= trim(StringReplace(AName, ' ', '_', [rfReplaceAll]))
    else repeat
      FName:= 'GameMenuItem_' + IntToStr(Random(99999999));
    until FindComponent(FName) = nil;
    Result.Name:= FName;
  except
  end;

  Result.Caption:= ACaption;

  Result.Width:= Result.CaptionWidth + AddToSideLeft + AddToSideRight;
  Result.Height:= Result.CaptionHeight + AddToSideTop + AddToSideBottom;

  y:= TopPosLine + trunc(Result.Height) div 2 + Result.Index * (trunc(Result.Height) + FMenuItemsInterval) + AddToSideTop div 2 - AddToSideBottom div 2;
  case FAlign of
    amiLeft:   Result.SetPos(point(AlignPosLine + trunc(Result.Width) div 2 + AddToSideLeft div 2 - AddToSideRight div 2, y));
    amiCenter: Result.SetPos(point(AlignPosLine + AddToSideLeft div 2 - AddToSideRight div 2, y));
    amiRight:  Result.SetPos(point(AlignPosLine - trunc(Result.Width) div 2 + AddToSideLeft div 2 - AddToSideRight div 2, y));
  end; //case FAlign of

  Result.HUDText.Position.SetPoint(Result.Position.X + AddToSideLeft div 2 - AddToSideRight div 2 -  Result.CaptionWidth div 2,
                                   Result.Position.Y + AddToSideTop div 2 - AddToSideBottom div 2 - Result.CaptionHeight div 2, 0);
  Result.PrepareMaterial;
end;

procedure TGameMenu.AssignEventsToAllItems(AOnClick, AOnDblClick, AOnMouseEnter, AOnMouseLeave: TGameMenuItemEvent);
var
  i: integer;
begin
  // присвоить события всем пунктам меню
  for i:= 0 to FMenuItems.Count - 1 do
    if MenuItems[i] <> nil then begin
      MenuItems[i].OnClick:=      AOnClick;
      MenuItems[i].OnDblClick:=   AOnClick;
      MenuItems[i].OnMouseEnter:= AOnMouseEnter;
      MenuItems[i].OnMouseLeave:= AOnMouseLeave;
    end;
end;

constructor TGameMenu.Create(AOwner: TComponent);
begin
  inherited;
  FSpeedAlpha:=        0.5;
  FAccelerateAlpha:=   0.1;
  FMenuItemsInterval:= 20;
  FTopPosLine:=        100;
  FAlignPosLine:=      340;
  Visible:=            false;
  FCaption:=           TGLHUDText(AddNewChild(TGLHUDText));
  FMenuItems:=         TGLDummyCube(AddNewChild(TGLDummyCube));
  if AOwner is TGameMenuContainer then begin
    FOwnerContainer:= TGameMenuContainer(AOwner);
    if Assigned(FOwnerContainer.MenuCaptionFont) then
      FCaption.BitmapFont:= FOwnerContainer.MenuCaptionFont;
  end else
    FOwnerContainer:= nil;
end;

procedure TGameMenu.DelGameMenuItem(AIndex: integer);
var
  FGameMenuItem: TGameMenuItem;
begin
  // удалить пункт меню по индексу
  FGameMenuItem:= GetMenuItemByIndex(AIndex);
  if Assigned(FGameMenuItem) then begin
    FreeAndNil(FGameMenuItem);
    SetPositionMenuItems;
  end;
end;

procedure TGameMenu.DelGameMenuItem(AItemName: string);
var
  FGameMenuItem: TGameMenuItem;
begin
  // удалить пункт меню по имени       
  FGameMenuItem:= GetMenuItemByName(AItemName);
  if Assigned(FGameMenuItem) then begin
    FreeAndNil(FGameMenuItem);
    SetPositionMenuItems;
  end;
end;

procedure TGameMenu.DoGameMenuProgress(const deltaTime: double; ALastCurPos, ACurPos: TPoint);
var
  i: integer;
begin
  // прогресс для каденсера
  if Visible then begin
    for i:= 0 to FMenuItems.Count - 1 do
      if MenuItems[i] <> nil then
        MenuItems[i].DoGameMenuItemProgress(deltaTime, ALastCurPos, ACurPos);
  end;
end;

procedure TGameMenu.DoGameMenuMouseClick(AIsDblClick: boolean; ACurPos: TPoint);
var
  i: integer;
begin
  // передать  клик и двойно клик в пункты меню
  if Visible then
    for i:= 0 to FMenuItems.Count - 1 do
      if MenuItems[i] <> nil then
        MenuItems[i].DoGameMenuItemMouseClick(AIsDblClick, ACurPos);
end;

function TGameMenu.GetCaption: string;
begin
  // получить заголовок меню
  Result:= FCaption.Text;
end;

function TGameMenu.GetMenuItemByIndex(AIndex: integer): TGameMenuItem;
begin
  // получить меню из списка пункт меню по индексу
  Result:= nil;
  if (AIndex >= 0) and (AIndex < FMenuItems.Count) and (FMenuItems.Children[AIndex] is TGameMenuItem) then
    Result:= TGameMenuItem(FMenuItems.Children[AIndex]);
end;

function TGameMenu.GetMenuItemByName(AItemName: string): TGameMenuItem;
var
  i: integer;
begin
  // получить меню из списка пункт меню по имени
  Result:= nil;
  for i:= 0 to FMenuItems.Count - 1 do
    if (FMenuItems.Children[i] is TGameMenuItem) and (TGameMenuItem(FMenuItems.Children[i]).Name = AItemName) then begin
      Result:= TGameMenuItem(FMenuItems.Children[i]);
      break;
    end;
end;

function TGameMenu.LoadFromXMLFile(AFileName: string): boolean;   
begin
  // загрузить меню из XML-файла
  Result:= false;
  if FileExists(AFileName) then with TNativeXml.Create(self) do try
    try
      LoadFromFile(AFileName);
      Result:= LoadFromXMLNode(Root);
    except
      on E: Exception do MessageBox(0, pchar('Ошибка при загрузке из XML-файла конфигурации меню'#13#13 + AFileName + #13#13 + E.Message), 'Ошибка', MB_OK or MB_ICONERROR);
    end;
  finally
    Free;
  end else
    MessageBox(0, pchar('Не найден файл конфигурации меню'#13#13 + AFileName), 'Ошибка', MB_OK or MB_ICONERROR);
end;

function TGameMenu.LoadFromXMLNode(ANode: TXMLNode): boolean;
var
  i: integer;
begin
  // загрузить меню из XML-узла
  Result:= true;
  if Assigned(ANode) then with ANode do try
    if NodeByName('MenuParams') <> nil then with NodeByName('MenuParams') do begin
      if NodeByName('Caption') <> nil then           with NodeByName('Caption') do            Caption:=           ValueUnicode;
      if NodeByName('Align') <> nil then             with NodeByName('Align') do              Align:=             TAlignMenuItems(ValueAsInteger);
      if NodeByName('AlignPosLine') <> nil then      with NodeByName('AlignPosLine')  do      AlignPosLine:=      ValueAsInteger;
      if NodeByName('TopPosLine') <> nil then        with NodeByName('TopPosLine')  do        TopPosLine:=        ValueAsInteger;
      if NodeByName('AddToSideLeft') <> nil then     with NodeByName('AddToSideLeft')  do     AddToSideLeft:=     ValueAsInteger;
      if NodeByName('AddToSideRight') <> nil then    with NodeByName('AddToSideRight')  do    AddToSideRight:=    ValueAsInteger;
      if NodeByName('AddToSideTop') <> nil then      with NodeByName('AddToSideTop')  do      AddToSideTop:=      ValueAsInteger;
      if NodeByName('AddToSideBottom') <> nil then   with NodeByName('AddToSideBottom')  do   AddToSideBottom:=   ValueAsInteger;
      if NodeByName('MenuItemsInterval') <> nil then with NodeByName('MenuItemsInterval')  do MenuItemsInterval:= ValueAsInteger;
    end;
    if NodeByName('MenuItems') <> nil then with NodeByName('MenuItems') do begin
      for i:= 0 to NodeCount - 1 do
        if Result then
          Result:= AddMenuItem(string(Nodes[i].Name)).LoadFromXMLNode(Nodes[i])
        else
          break;
    end;
  except
    on E: Exception do MessageBox(0, pchar('Ошибка при загрузке из XML-узла конфигурации меню'#13#13 + string(ANode.Name) + #13#13 + E.Message), 'Ошибка', MB_OK or MB_ICONERROR);
  end;
end;

function TGameMenu.SaveToXMLFile(AFileName: string): boolean;
begin
  // сохранить меню в XML-файл
  with TNativeXml.Create(self) do try
    XmlFormat:= xfReadable;
    VersionString:=  '1.0';
    EncodingString:= 'windows-1251';
    Root.Name:= 'Root';
    Result:= SaveToXMLNode(Root);
    if Result then
      SaveToFile(AFileName);
  finally
    Free;
  end;
end;

function TGameMenu.SaveToXMLNode(ANode: TXMLNode): boolean;
var
  i: integer;
  FItem: TGameMenuItem;
begin
  // сохранить меню в XML-узел
  Result:= false;
  if Assigned(ANode) then with ANode do try
    with NodeNew('MenuParams') do begin
      with NodeNew('Caption') do           ValueUnicode:=   Caption;
      with NodeNew('Align') do             ValueAsInteger:= integer(Align);
      with NodeNew('AlignPosLine') do      ValueAsInteger:= AlignPosLine;
      with NodeNew('TopPosLine') do        ValueAsInteger:= TopPosLine;
      with NodeNew('AddToSideLeft') do     ValueAsInteger:= AddToSideLeft;
      with NodeNew('AddToSideRight') do    ValueAsInteger:= AddToSideRight;
      with NodeNew('AddToSideTop') do      ValueAsInteger:= AddToSideTop;
      with NodeNew('AddToSideBottom') do   ValueAsInteger:= AddToSideBottom;
      with NodeNew('MenuItemsInterval') do ValueAsInteger:= MenuItemsInterval;
    end;
    with NodeNew('MenuItems') do begin
      for i:= 0 to FMenuItems.Count - 1 do
        if FMenuItems.Children[i] is TGameMenuItem then begin
          FItem:= TGameMenuItem(FMenuItems.Children[i]);
          if FItem.Name <> '' then
            FItem.SaveToXMLNode(NodeNew(UTF8String(FItem.Name)))
          else
            FItem.SaveToXMLNode(NodeNew(UTF8String('Item' + IntToStr(i))));
      end;
    end;
    Result:= true;
  except
    on E: Exception do MessageBox(0, pchar('Ошибка при записи узла конфигурации пункта меню'#13#13 + string(ANode.Name) + #13#13 + E.Message), 'Ошибка', MB_OK or MB_ICONERROR);
  end;
end;

procedure TGameMenu.SetPositionMenuItems;
var
  i, n, y: Integer;
begin
  // установить позицию пунктам меню
  n:= 0;
  for i := 0 to FMenuItems.Count - 1 do
    if FMenuItems.Children[i] is TGameMenuItem then with TGameMenuItem(FMenuItems.Children[i]) do begin
      y:= FTopPosLine + n * (trunc(Height) + FMenuItemsInterval);
      case FAlign of
        amiLeft:   SetPos(point(FAlignPosLine + trunc(Width) div 2, y));
        amiCenter: SetPos(point(FAlignPosLine, y));
        amiRight:  SetPos(point(FAlignPosLine - trunc(Width) div 2, y));
      end;
      Inc(n);
    end;
end;

procedure TGameMenu.SetSizeMenuItems;
var
  i: Integer;
begin
  // установить габариты пунктам меню
  for i := 0 to FMenuItems.Count - 1 do
    if FMenuItems.Children[i] is TGameMenuItem then
      with TGameMenuItem(FMenuItems.Children[i]) do begin
        Width:=  CaptionWidth + AddToSideLeft + AddToSideRight;
        Height:= CaptionHeight + AddToSideTop + AddToSideBottom;
      end;
end;

procedure TGameMenu.SetTopPosLine(const Value: integer);
begin
  // установить "верхнюю линию" FTopPosLine, от которой вниз строятся пункты меню
  if FTopPosLine <> Value then begin
    FTopPosLine:= Value;
    SetPositionMenuItems;
  end;
end;

procedure TGameMenu.UnselectAll;
var
  i: integer;
begin
  // сделать неактивными все пункты меню
  if Visible then
    for i:= 0 to FMenuItems.Count - 1 do
      if MenuItems[i] <> nil then
        MenuItems[i].Material.FrontProperties.Diffuse.Alpha:= 0;
end;

procedure TGameMenu.SetAddToSideBottom(const Value: integer);
begin
  if FAddToSideBottom <> Value then begin
    FAddToSideBottom:= Value;
    SetSizeMenuItems;
    SetPositionMenuItems;
  end;
end;

procedure TGameMenu.SetAddToSideLeft(const Value: integer);
begin
  if FAddToSideLeft <> Value then begin
    FAddToSideLeft:= Value;
    SetSizeMenuItems;
    SetPositionMenuItems;
  end;
end;

procedure TGameMenu.SetAddToSideRight(const Value: integer);
begin
  if FAddToSideRight <> Value then begin
    FAddToSideRight:= Value;
    SetSizeMenuItems;
    SetPositionMenuItems;
  end;
end;

procedure TGameMenu.SetAddToSideTop(const Value: integer);
begin
  if FAddToSideTop <> Value then begin
    FAddToSideTop:= Value;
    SetSizeMenuItems;
    SetPositionMenuItems;
  end;
end;

procedure TGameMenu.SetAlign(const Value: TAlignMenuItems);
begin
  // установить пункт относительно вертикальной линии FAlignPosLine
  if FAlign <> Value then begin
    FAlign:= Value;
    SetPositionMenuItems;
  end;
end;

procedure TGameMenu.SetAlignPosLine(const Value: integer);
begin
  // установить "линию" FAlignPosLine, относительно которой строятся пункты меню
  if FAlignPosLine <> Value then begin
    FAlignPosLine:= Value;
    SetPositionMenuItems;
  end;
end;

procedure TGameMenu.SetCaption(const Value: string);
begin
  // установить заголовок меню
  FCaption.Text:= Value;

end;

procedure TGameMenu.SetMenuItemsInterval(const Value: integer);
begin
  // установить интервал между пунктами меню
  if FMenuItemsInterval <> Value then begin
    FMenuItemsInterval:= Value;
    SetPositionMenuItems;
  end;
end;

{ TCustomGameMenuItem }

procedure TGameMenuItem.Click;
begin
  DoMouseClick(false);
end;

constructor TGameMenuItem.Create(AOwner: TComponent);
begin
  inherited;
  FdxAplha:= -1;

  Width:=  0;
  Height:= 0;

  FCaptionWidth:=  0;
  FCaptionHeight:= 0;

  FText:= TGLHUDText(Self.AddNewChild(TGLHUDText));
  if AOwner is TGameMenu then begin
    FOwnerMenu:= TGameMenu(AOwner);
    if Assigned(FOwnerMenu.OwnerContainer) then begin
      FMenuSpeedAlpha:=      FOwnerMenu.SpeedAlpha;
      FMenuAccelerateAlpha:= FOwnerMenu.AccelerateAlpha;
      if Assigned(FOwnerMenu.OwnerContainer.MenuItemFont) then begin
        FText.BitmapFont:= FOwnerMenu.OwnerContainer.MenuItemFont;
        FText.ModulateColor.AsWinColor:= TGLWindowsBitmapFont(FText.BitmapFont).Font.Color;
      end;
      if Assigned(FOwnerMenu.OwnerContainer.LibMaterials) then
        Material.MaterialLibrary:= FOwnerMenu.OwnerContainer.LibMaterials;
    end;
  end else begin
    FOwnerMenu:= nil;
    FMenuSpeedAlpha:=      0.5;
    FMenuAccelerateAlpha:= 0.1;
  end;
  FCurrSpeedAlpha:= FMenuSpeedAlpha;
end;

procedure TGameMenuItem.DoGameMenuItemMouseClick(AIsDblClick: boolean; ACurPos: TPoint);
begin
  // проверка и генерация события клика или двойного клика
  if Visible and IsCursorInRegion(ACurPos) then
    DoMouseClick(AIsDblClick);
end;

procedure TGameMenuItem.DoGameMenuItemProgress(const deltaTime: double; ALastCurPos, ACurPos: TPoint);
var
  FIsLastCurInRegion, FIsCurInRegion: boolean;
begin
  // прогресс пункта меню
  if Visible then begin
    FIsLastCurInRegion:= IsCursorInRegion(ALastCurPos);
    FIsCurInRegion:=     IsCursorInRegion(ACurPos);
    if Assigned(FOwnerMenu) then
      FMenuAccelerateAlpha:= FOwnerMenu.AccelerateAlpha
    else
      FMenuAccelerateAlpha:= 0.1;

    if not PointsEqual(ALastCurPos, ACurPos) then begin
      // курсор изменил положение с предыдущего раза
      if not FIsLastCurInRegion and FIsCurInRegion then
        DoMouseEvent(true)
      else
      if FIsLastCurInRegion and not FIsCurInRegion then
        DoMouseEvent(false);
    end;

    // чтобы уж наверняка
    if not FIsCurInRegion and (FdxAplha = 1) and (Material.FrontProperties.Diffuse.Alpha > 0) then
      FdxAplha:= -1;
    if FIsCurInRegion and (FdxAplha = -1) and (Material.FrontProperties.Diffuse.Alpha = 0) then
      FdxAplha:= 1;

    if FdxAplha = 1 then begin
      if Material.FrontProperties.Diffuse.Alpha < 1 then begin
        Material.FrontProperties.Diffuse.Alpha:= Material.FrontProperties.Diffuse.Alpha + FdxAplha * FCurrSpeedAlpha * deltaTime;
        if Material.FrontProperties.Diffuse.Alpha > 1 then
          Material.FrontProperties.Diffuse.Alpha:= 1;
        FCurrSpeedAlpha:= FCurrSpeedAlpha + FMenuAccelerateAlpha;
      end;
    end else begin
      if Material.FrontProperties.Diffuse.Alpha > 0 then begin
        Material.FrontProperties.Diffuse.Alpha:= Material.FrontProperties.Diffuse.Alpha + FdxAplha * FCurrSpeedAlpha * deltaTime;
        if Material.FrontProperties.Diffuse.Alpha < 0 then
          Material.FrontProperties.Diffuse.Alpha:= 0;
        FCurrSpeedAlpha:= FCurrSpeedAlpha + FMenuAccelerateAlpha;
      end;
    end;
  end;
end;

procedure TGameMenuItem.DoMouseClick(AIsDblClick: boolean);
begin
  if AIsDblClick then begin
    if Assigned(FOnDblClick) then
      FOnDblClick(Self);
  end else begin
    if Assigned(FOnClick) then
      FOnClick(Self);
  end;
end;

procedure TGameMenuItem.DoMouseEvent(AIsMouseEnter: boolean);
begin
  FCurrSpeedAlpha:= FMenuSpeedAlpha;
  if AIsMouseEnter then begin
    FdxAplha:= 1;
    if Assigned(FOnMouseEnter) then
      FOnMouseEnter(Self);
  end else begin
    FdxAplha:= -1;
    if Assigned(FOnMouseLeave) then
      FOnMouseLeave(Self);
  end;
end;

function TGameMenuItem.GetCaption: string;
begin
  // получить Caption для пункта меню
  Result:= FText.Text;
end;

function TGameMenuItem.GetMenuItemRegion: TRect;
begin
  // получить регион занимаемый пунктом меню
  Result.Left:=   trunc(Position.X - Width / 2);
  Result.Right:=  trunc(Result.Left + Width);
  Result.Top:=    trunc(Position.Y - Height / 2);
  Result.Bottom:= trunc(Result.Top + Height);
end;

function TGameMenuItem.GetPos: TPoint;
begin
  // позиция пункта меню
  Result.X:= trunc(Position.X);
  Result.Y:= trunc(Position.Y);
end;

function TGameMenuItem.IsCursorInRegion(ACurPos: TPoint): boolean;
begin
  // проверить курсор на нахождение в регионе пункта меню
  Result:= (ACurPos.X >= Region.Left) and (ACurPos.X <= Region.Right) and (ACurPos.Y >= Region.Top) and (ACurPos.Y <= Region.Bottom);
end;

function TGameMenuItem.LoadFromXMLFile(AFileName: string): boolean;
begin
  // загрузить данные о пункте меню из XML-файла
  Result:= false;
  if FileExists(AFileName) then with TNativeXml.Create(self) do try
    try
      LoadFromFile(AFileName);
      Result:= LoadFromXMLNode(Root);
    except
      on E: Exception do MessageBox(0, pchar('Ошибка при загрузке из XML-файла конфигурации пункта меню'#13#13 + AFileName + #13#13 + E.Message), 'Ошибка', MB_OK or MB_ICONERROR);
    end;
  finally
    Free;
  end else
    MessageBox(0, pchar('Не найден файл конфигурации пункта меню'#13#13 + AFileName), 'Ошибка', MB_OK or MB_ICONERROR);
end;

function TGameMenuItem.LoadFromXMLNode(ANode: TXMLNode): boolean;
begin
  // загрузить данные о пункте меню из XML-узла
  Result:= false;
  if Assigned(ANode) then with ANode do try
    if NodeByName('Caption') <> nil then
      Caption:= NodeByName('Caption').ValueUnicode
    else
      Caption:= '';
    Result:= true;
  except
    on E: Exception do MessageBox(0, pchar('Ошибка при загрузке из XML-узела конфигурации пункта меню'#13#13 + string(ANode.Name) + #13#13 + E.Message), 'Ошибка', MB_OK or MB_ICONERROR);
  end;
end;

procedure TGameMenuItem.PrepareMaterial;
var
  tmpBMP: TBitmap;
begin
  // подготовить материал
  if Material.Texture.Image.AsBitmap <> nil then
    Material.Texture.Image.AsBitmap.Free;

  tmpBMP:= TBitmap.Create;
  tmpBMP.Width:=  trunc(Width);
  tmpBMP.Height:= trunc(Height);
  tmpBMP.Canvas.Brush.Color:= clBlack;
  tmpBMP.Canvas.FillRect(bounds(0,0,trunc(Width),trunc(Height)));
  if Assigned(OwnerMenu) and Assigned(OwnerMenu.OwnerContainer) and Assigned (OwnerMenu.OwnerContainer.MenuItemFont) then
    tmpBMP.Canvas.Pen.Color:= OwnerMenu.OwnerContainer.MenuItemFont.Font.Color;

  // делаю толстую линию внизу, т.к. текстура почемуто съезжает на пиксель вниз
  tmpBMP.Canvas.MoveTo(0, tmpBMP.Height - 1);
  tmpBMP.Canvas.LineTo(tmpBMP.Width, tmpBMP.Height - 1);
  tmpBMP.Canvas.MoveTo(0, tmpBMP.Height - 2);
  tmpBMP.Canvas.LineTo(tmpBMP.Width, tmpBMP.Height - 2);

  try
    BeginUpdate;
    Material.Texture.Image.Assign(tmpBMP);

    Material.BlendingMode:=        bmTransparency;
    Material.MaterialOptions:=     [moNoLighting];
    Material.Texture.ImageAlpha:=  tiaSuperBlackTransparent;
    Material.Texture.Disabled:=    false;
    // если поставить tmReplace, то нельзя будет регулировать Diffuse.Alpha
    Material.Texture.TextureMode:= tmModulate;
    Material.Texture.MagFilter:=   maNearest;
    Material.Texture.MinFilter:=   miNearest;
    // чтобы цвет был максимальным (не полутемным) Diffuse нужно сделать белым
    Material.FrontProperties.Diffuse.SetColor(1, 1, 1, 0);
  finally
    EndUpdate;
    FreeAndNil(tmpBMP);
  end;
end;

function TGameMenuItem.SaveToXMLFile(AFileName: string): boolean;
begin
  // сохранить данные о пункте меню в XML-файл
  with TNativeXml.Create(self) do try
    XmlFormat:= xfReadable;
    VersionString:=  '1.0';
    EncodingString:= 'windows-1251';
    Root.Name:= 'Root';
    Result:= SaveToXMLNode(Root);
    if Result then
      SaveToFile(AFileName);
  finally
    Free;
  end;
end;

function TGameMenuItem.SaveToXMLNode(ANode: TXMLNode): boolean;
begin
  // сохранить данные о пункте меню в XML-узел
  Result:= false;
  if Assigned(ANode) then with ANode do try
    with NodeNew('Caption') do  ValueUnicode:= Caption;
    Result:= true;
  except
    on E: Exception do MessageBox(0, pchar('Ошибка при сохранении в XML-узел конфигурации пункта меню'#13#13 + Caption + #13#13 + E.Message), 'Ошибка', MB_OK or MB_ICONERROR);
  end;
end;

procedure TGameMenuItem.SetCaption(const Value: string);
var
  tmpBMP: TBitmap;
begin
  // установить Caption для пункта меню и настроить ширину спрайта в зависимоти от ширины текста
  tmpBMP:= TBitmap.Create;
  try
    if Assigned(FText.BitmapFont) then
      tmpBMP.Canvas.Font.Assign(TGLWindowsBitmapFont(FText.BitmapFont).Font);

    FText.Text:= Value;

    FCaptionWidth:= tmpBMP.Canvas.TextWidth(Value);
    FCaptionHeight:= tmpBMP.Canvas.TextHeight(Value);

    tmpBMP.Width:=  FCaptionWidth;
    tmpBMP.Height:= FCaptionHeight;

    Width:=  tmpBMP.Width;
    if (trunc(Width) mod 2) <> 0 then
      Width:= Width + 1;
    Height:= tmpBMP.Height;

    FText.Position.SetPoint(Region.Left, Region.Top, 0);

    PrepareMaterial;
  finally
    FreeAndNil(tmpBMP);
  end;
end;

procedure TGameMenuItem.SetPos(APos: TPoint);
begin
  // установить позицию
  Position.SetPoint(APos.X, APos.Y, 0);
  FText.Position.SetPoint(Region.Left, Region.Top, 0);
end;

end.
