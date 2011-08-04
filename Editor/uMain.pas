unit uMain;

interface

{$I '..\SwitchBlade.inc'}

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, Math, DB, jpeg, tga,

  dxSkinsdxBarPainter, dxSkinsdxRibbonPainter, GLObjects, dxSkinSilver,
  ImgList, cxGraphics, dxBar, cxClasses, dxRibbon, cxControls, dxSkinsCore, dxSkinscxPCPainter,
  cxLookAndFeelPainters, cxContainer, cxListBox, StdCtrls, cxMaskEdit, cxDropDownEdit, cxTrackBar,
  cxTextEdit, cxCheckBox, cxImage, cxLabel, cxCurrencyEdit, cxEdit, cxGroupBox,
  cxButtons, cxPC, dxStatusBar, dxRibbonStatusBar,
  cxStyles, dxmdaset, cxGrid, cxGridLevel, cxCustomData, cxFilter, cxData, cxDataStorage, cxButtonEdit,
  cxGridCustomTableView, cxGridTableView, cxGridCustomView, cxGridBandedTableView,
  cxLookAndFeels, cxDBData, cxGridDBTableView,

  RzForms, RzCommon, RzShellDialogs,

  GLCoordinates, GLScene, GLWin32Viewer, GLCrossPlatform, BaseClasses, GLMaterial, GLSound,
  GLCadencer, GLGraphics, GLPolyhedron, GLTexture, GLColor, VectorTypes, VectorGeometry,
  GLGraph, GLVectorFileObjects, GeometryBB, GLFile3DSSceneObjects,
  GLFile3DS, GLFileMD2, GLFileMD3, GLFileMD5, GLFileOBJ, GLFileSMD, GLState, GLTextureFormat,

  NativeXML,

  uTextures, uLevel, uRoom, cxSpinEdit, cxRadioGroup;

type
  TfmMain = class(TForm)
    FScene: TGLScene;
    dxBarManager: TdxBarManager;
    tabGeneral: TdxRibbonTab;
    dxRibbon: TdxRibbon;
    barFile: TdxBar;
    btnExit: TdxBarLargeButton;
    rzReg: TRzRegIniFile;
    rzFS: TRzFormState;
    ilButtonsLarge: TcxImageList;
    ilButtonsSmall: TcxImageList;
    barHelp: TdxBar;
    btnHelp: TdxBarLargeButton;
    btnAbout: TdxBarLargeButton;
    tabHelp: TdxRibbonTab;
    btnLoad: TdxBarLargeButton;
    btnSave: TdxBarLargeButton;
    FMaterials: TGLMaterialLibrary;
    FCadencer: TGLCadencer;
    FSounds: TGLSoundLibrary;
    cxPages: TcxPageControl;
    sheetMap: TcxTabSheet;
    sheetModels: TcxTabSheet;
    sheetMaterials: TcxTabSheet;
    FViewer: TGLSceneViewer;
    sheetShaders: TcxTabSheet;
    btnCameraRoom: TcxButton;
    btnCameraLevel: TcxButton;
    listMaterials: TcxListBox;
    barActions: TdxBar;
    btnAdd: TdxBarLargeButton;
    btnDelete: TdxBarLargeButton;
    cxGroupBox1: TcxGroupBox;
    cxTextureOffsetX: TcxCurrencyEdit;
    cxLabel1: TcxLabel;
    cxTextureOffsetY: TcxCurrencyEdit;
    cxLabel2: TcxLabel;
    cxTextureOffsetZ: TcxCurrencyEdit;
    cxLabel3: TcxLabel;
    cxGroupBox2: TcxGroupBox;
    cxTextureScaleX: TcxCurrencyEdit;
    cxLabel4: TcxLabel;
    cxTextureScaleY: TcxCurrencyEdit;
    cxLabel5: TcxLabel;
    cxTextureScaleZ: TcxCurrencyEdit;
    cxLabel6: TcxLabel;
    od: TRzOpenDialog;
    cxGroupBox3: TcxGroupBox;
    imgMaterial: TcxImage;
    cbStretchImage: TcxCheckBox;
    cxImageWidth: TcxLabel;
    cxImageHeight: TcxLabel;
    btnLoadImage: TcxButton;
    cbDisableImage: TcxCheckBox;
    cxGroupBox4: TcxGroupBox;
    cxPageControl1: TcxPageControl;
    sheetFrontProperties: TcxTabSheet;
    sheetBackProperties: TcxTabSheet;
    sheetSounds: TcxTabSheet;
    cxGroupBox5: TcxGroupBox;
    MaterialViewer: TGLSceneViewer;
    dcMaterialViewer: TGLDummyCube;
    cubeMaterialViewer: TGLCube;
    CameraMaterialViewer: TGLCamera;
    lsMaterialViewer: TGLLightSource;
    dodMaterialViewer: TGLDodecahedron;
    cxGroupBox6: TcxGroupBox;
    cxNoLighting: TcxCheckBox;
    cxIgnoreFog: TcxCheckBox;
    cbBlendingMode: TcxComboBox;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cbFaceCulling: TcxComboBox;
    cxLabel9: TcxLabel;
    cbTextureMode: TcxComboBox;
    cxLabel10: TcxLabel;
    cbImageAlpha: TcxComboBox;
    cxLabel11: TcxLabel;
    cbTextureFormat: TcxComboBox;
    cxLabel12: TcxLabel;
    cbMinFilter: TcxComboBox;
    cxLabel13: TcxLabel;
    cbMagFilter: TcxComboBox;
    cxLabel14: TcxLabel;
    cbFilteringQuality: TcxComboBox;
    cxGroupBox7: TcxGroupBox;
    tbFPDiffuseR: TcxTrackBar;
    cxFPDiffuseR: TcxCurrencyEdit;
    cxLabel15: TcxLabel;
    cxLabel16: TcxLabel;
    tbFPDiffuseG: TcxTrackBar;
    cxFPDiffuseG: TcxCurrencyEdit;
    cxLabel17: TcxLabel;
    tbFPDiffuseB: TcxTrackBar;
    cxFPDiffuseB: TcxCurrencyEdit;
    cxLabel18: TcxLabel;
    tbFPDiffuseA: TcxTrackBar;
    cxFPDiffuseA: TcxCurrencyEdit;
    cxGroupBox8: TcxGroupBox;
    tbFPAmbientR: TcxTrackBar;
    cxFPAmbientR: TcxCurrencyEdit;
    cxLabel19: TcxLabel;
    cxLabel20: TcxLabel;
    tbFPAmbientG: TcxTrackBar;
    cxFPAmbientG: TcxCurrencyEdit;
    cxLabel21: TcxLabel;
    tbFPAmbientB: TcxTrackBar;
    cxFPAmbientB: TcxCurrencyEdit;
    cxLabel22: TcxLabel;
    tbFPAmbientA: TcxTrackBar;
    cxFPAmbientA: TcxCurrencyEdit;
    cxGroupBox9: TcxGroupBox;
    tbFPEmissionR: TcxTrackBar;
    cxFPEmissionR: TcxCurrencyEdit;
    cxLabel23: TcxLabel;
    cxLabel24: TcxLabel;
    tbFPEmissionG: TcxTrackBar;
    cxFPEmissionG: TcxCurrencyEdit;
    cxLabel25: TcxLabel;
    tbFPEmissionB: TcxTrackBar;
    cxFPEmissionB: TcxCurrencyEdit;
    cxLabel26: TcxLabel;
    tbFPEmissionA: TcxTrackBar;
    cxFPEmissionA: TcxCurrencyEdit;
    cxGroupBox10: TcxGroupBox;
    tbFPSpecularR: TcxTrackBar;
    cxFPSpecularR: TcxCurrencyEdit;
    cxLabel27: TcxLabel;
    cxLabel28: TcxLabel;
    tbFPSpecularG: TcxTrackBar;
    cxFPSpecularG: TcxCurrencyEdit;
    cxLabel29: TcxLabel;
    tbFPSpecularB: TcxTrackBar;
    cxFPSpecularB: TcxCurrencyEdit;
    cxLabel30: TcxLabel;
    tbFPSpecularA: TcxTrackBar;
    cxFPSpecularA: TcxCurrencyEdit;
    cxGroupBox11: TcxGroupBox;
    tbBPDiffuseR: TcxTrackBar;
    cxBPDiffuseR: TcxCurrencyEdit;
    cxLabel31: TcxLabel;
    cxLabel32: TcxLabel;
    tbBPDiffuseG: TcxTrackBar;
    cxBPDiffuseG: TcxCurrencyEdit;
    cxLabel33: TcxLabel;
    tbBPDiffuseB: TcxTrackBar;
    cxBPDiffuseB: TcxCurrencyEdit;
    cxLabel34: TcxLabel;
    tbBPDiffuseA: TcxTrackBar;
    cxBPDiffuseA: TcxCurrencyEdit;
    cxGroupBox12: TcxGroupBox;
    tbBPAmbientR: TcxTrackBar;
    cxBPAmbientR: TcxCurrencyEdit;
    cxLabel35: TcxLabel;
    cxLabel36: TcxLabel;
    tbBPAmbientG: TcxTrackBar;
    cxBPAmbientG: TcxCurrencyEdit;
    cxLabel37: TcxLabel;
    tbBPAmbientB: TcxTrackBar;
    cxBPAmbientB: TcxCurrencyEdit;
    cxLabel38: TcxLabel;
    tbBPAmbientA: TcxTrackBar;
    cxBPAmbientA: TcxCurrencyEdit;
    cxGroupBox13: TcxGroupBox;
    tbBPEmissionR: TcxTrackBar;
    cxBPEmissionR: TcxCurrencyEdit;
    cxLabel39: TcxLabel;
    cxLabel40: TcxLabel;
    tbBPEmissionG: TcxTrackBar;
    cxBPEmissionG: TcxCurrencyEdit;
    cxLabel41: TcxLabel;
    tbBPEmissionB: TcxTrackBar;
    cxBPEmissionB: TcxCurrencyEdit;
    cxLabel42: TcxLabel;
    tbBPEmissionA: TcxTrackBar;
    cxBPEmissionA: TcxCurrencyEdit;
    cxGroupBox14: TcxGroupBox;
    tbBPSpecularR: TcxTrackBar;
    cxBPSpecularR: TcxCurrencyEdit;
    cxLabel43: TcxLabel;
    cxLabel44: TcxLabel;
    tbBPSpecularG: TcxTrackBar;
    cxBPSpecularG: TcxCurrencyEdit;
    cxLabel45: TcxLabel;
    tbBPSpecularB: TcxTrackBar;
    cxBPSpecularB: TcxCurrencyEdit;
    cxLabel46: TcxLabel;
    tbBPSpecularA: TcxTrackBar;
    cxBPSpecularA: TcxCurrencyEdit;
    cbFPPoligonMode: TcxComboBox;
    cxLabel47: TcxLabel;
    tbFPShininess: TcxTrackBar;
    cxFPShininess: TcxCurrencyEdit;
    cxLabel48: TcxLabel;
    cbBPPoligonMode: TcxComboBox;
    cxLabel49: TcxLabel;
    cxLabel50: TcxLabel;
    tbBPShininess: TcxTrackBar;
    cxBPShininess: TcxCurrencyEdit;
    cxMaterialName: TcxTextEdit;
    dcCameraLevel: TGLDummyCube;
    cameraLevel: TGLCamera;
    barStatus: TdxRibbonStatusBar;
    gridBack: TGLXYZGrid;
    dcGrid: TGLDummyCube;
    planeBack: TGLPlane;
    gridRoom: TGLXYZGrid;
    gridModelsLevel1: TcxGridLevel;
    gridModels: TcxGrid;
    cxGridViewRepository: TcxGridViewRepository;
    cxGroupBox15: TcxGroupBox;
    ModelViewer: TGLSceneViewer;
    tvModels: TcxGridBandedTableView;
    clmnModel: TcxGridBandedColumn;
    clmnFile: TcxGridBandedColumn;
    clmnScaleX: TcxGridBandedColumn;
    clmnScaleY: TcxGridBandedColumn;
    clmnScaleZ: TcxGridBandedColumn;
    clmnMaterial: TcxGridBandedColumn;
    clmnDirectionX: TcxGridBandedColumn;
    clmnDirectionY: TcxGridBandedColumn;
    clmnDirectionZ: TcxGridBandedColumn;
    clmnUpX: TcxGridBandedColumn;
    clmnUpY: TcxGridBandedColumn;
    clmnUpZ: TcxGridBandedColumn;
    cxButton1: TcxButton;
    clmnID: TcxGridBandedColumn;
    btnAutoScale: TdxBarLargeButton;
    btnRotateVertCW: TdxBarLargeButton;
    btnRotateVertCCW: TdxBarLargeButton;
    btnRotateHorizCW: TdxBarLargeButton;
    btnRotateHorizCCW: TdxBarLargeButton;
    btnResetRotation: TdxBarLargeButton;
    dcModelViewer: TGLDummyCube;
    CameraModelViewer: TGLCamera;
    dcModelViewerTarget: TGLDummyCube;
    gridModelViewer: TGLXYZGrid;
    GLLines1: TGLLines;
    GLLines2: TGLLines;
    lsModelViewer: TGLLightSource;
    clmnBiasX: TcxGridBandedColumn;
    clmnBiasY: TcxGridBandedColumn;
    clmnBiasZ: TcxGridBandedColumn;
    lsLevel: TGLLightSource;
    btnMoveFront: TdxBarLargeButton;
    btnMoveBack: TdxBarLargeButton;
    btnMoveLeft: TdxBarLargeButton;
    btnMoveRight: TdxBarLargeButton;
    btnMoveUp: TdxBarLargeButton;
    btnMoveDown: TdxBarLargeButton;
    btnResetMove: TdxBarLargeButton;
    pmAddModel: TdxRibbonPopupMenu;
    sheetMenus: TcxTabSheet;
    gridMenusLevel1: TcxGridLevel;
    gridMenus: TcxGrid;
    gbViewMenu: TcxGroupBox;
    GLSceneViewer1: TGLSceneViewer;
    btnViewMenu: TdxBarLargeButton;
    btnLoadMainMenu: TcxButton;
    btnSaveMainMenu: TcxButton;
    dcMenus: TGLDummyCube;
    tvMenuItems: TcxGridBandedTableView;
    clmnName: TcxGridBandedColumn;
    clmnFilePic: TcxGridBandedColumn;
    cxMenuFileName: TcxTextEdit;
    btnMenuRight: TcxRadioButton;
    btnMenuLeft: TcxRadioButton;
    clmnBeforeInterval: TcxGridBandedColumn;
    clmnCountFrames: TcxGridBandedColumn;
    cxIndentTop: TcxSpinEdit;
    cxLabel51: TcxLabel;
    cxLabel52: TcxLabel;
    cxIndentSide: TcxSpinEdit;
    clmnHeightMenuItem: TcxGridBandedColumn;
    clmnAnimateMenuItem: TcxGridBandedColumn;
    cxNameRoot: TcxTextEdit;
    clmnPicHeight: TcxGridBandedColumn;
    clmnPicWidth: TcxGridBandedColumn;
    procedure btnRotateHorizCWClick(Sender: TObject);
    procedure btnRotateHorizCCWClick(Sender: TObject);
    procedure btnRotateVertCWClick(Sender: TObject);
    procedure btnRotateVertCCWClick(Sender: TObject);
    procedure btnMoveBackClick(Sender: TObject);
    procedure btnMoveFrontClick(Sender: TObject);
    procedure btnMoveRightClick(Sender: TObject);
    procedure btnMoveLeftClick(Sender: TObject);
    procedure btnMoveDownClick(Sender: TObject);
    procedure btnResetMoveClick(Sender: TObject);
    procedure btnMoveUpClick(Sender: TObject);
    procedure tvModelsEditValueChanged(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem);
    procedure tvModelsFocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem,
      AFocusedItem: TcxCustomGridTableItem);
    procedure tvModelsFocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
    procedure clmnMaterialPropertiesChange(Sender: TObject);
    procedure btnResetRotationClick(Sender: TObject);
    procedure btnAutoScaleClick(Sender: TObject);
    procedure cxPagesChange(Sender: TObject);
    procedure ModelViewerMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure ModelViewerMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X,
      Y: Integer);
    procedure clmnFilePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure btnCameraRoomClick(Sender: TObject);
    procedure btnCameraLevelClick(Sender: TObject);
    procedure FViewerMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X,
      Y: Integer);
    procedure FormMouseWheel(Sender: TObject; Shift: TShiftState; WheelDelta: Integer;
      MousePos: TPoint; var Handled: Boolean);
    procedure FViewerMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure FViewerMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X,
      Y: Integer);
    procedure btnLoadImageClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure cxTextureScaleXPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
      var ErrorText: TCaption; var Error: Boolean);
    procedure cxTextureOffsetXPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
      var ErrorText: TCaption; var Error: Boolean);
    procedure btnDeleteClick(Sender: TObject);
    procedure cxMaterialNamePropertiesValidate(Sender: TObject; var DisplayValue: Variant;
      var ErrorText: TCaption; var Error: Boolean);
    procedure btnAddClick(Sender: TObject);
    procedure cbBPPoligonModePropertiesChange(Sender: TObject);
    procedure cbFPPoligonModePropertiesChange(Sender: TObject);
    procedure cbFilteringQualityPropertiesChange(Sender: TObject);
    procedure cbMinFilterPropertiesChange(Sender: TObject);
    procedure cbMagFilterPropertiesChange(Sender: TObject);
    procedure cbTextureFormatPropertiesChange(Sender: TObject);
    procedure cbImageAlphaPropertiesChange(Sender: TObject);
    procedure cbTextureModePropertiesChange(Sender: TObject);
    procedure cbFaceCullingPropertiesChange(Sender: TObject);
    procedure cbBlendingModePropertiesChange(Sender: TObject);
    procedure cxIgnoreFogClick(Sender: TObject);
    procedure cxNoLightingClick(Sender: TObject);
    procedure MaterialViewerMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure MaterialViewerMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X,
      Y: Integer);
    procedure cbDisableImageClick(Sender: TObject);
    procedure cbStretchImageClick(Sender: TObject);
    procedure listMaterialsClick(Sender: TObject);
    procedure btnLoadClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
    procedure TrakBarChange(Sender: TObject);
    procedure ColorValueChange(Sender: TObject);
    procedure clmnModelPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure btnViewMenuClick(Sender: TObject);
    procedure tvMenuItemsFilePicPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure btnLoadMainMenuClick(Sender: TObject);
    procedure btnSaveMainMenuClick(Sender: TObject);
    procedure clmnFilePicPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure clmnCountFramesPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
  private
    FPathExe, FTexturesInfoFileName, FModelsInfoFileName, FLevelInfoFileName, FMenuInfoFileName: string;
    FSelectLibMaterial: TGLLibMaterial;
    FLevel: TLevel;
    mvdx, mvdy, lvdx, lvdy, mdlv_dx, mdlv_dy: integer;
    FSelectRoom: TRoom;

    procedure ShowAllMaterials;

    procedure SetTextureOffset;
    procedure SetTextureScale;
    procedure ShowTextureOffset;
    procedure ShowTextureScale;
    procedure ShowTextureParams;
    procedure ShowMaterialParams;
    procedure ShowParamsModel;

    procedure ShowStatusLevel;
    procedure ShowStatusRoom;

    procedure AddMaterial;

    procedure CursorToWorld(ACursorPos: TPoint; var x, y: single; var AIsApply: boolean);

    function CheckPosOnRoom(APosX, APosY: single): boolean;

    procedure SetValueScale(ANumRecord: integer; X, Y, Z: Single); overload;
    procedure SetValueScale(ANumRecord: integer; AVector: TAffineVector); overload;
    procedure SetValueDirection(ANumRecord: integer; X, Y, Z: Single); overload;
    procedure SetValueDirection(ANumRecord: integer; AVector: TAffineVector); overload;
    procedure SetValueUp(ANumRecord: integer; X, Y, Z: Single); overload;
    procedure SetValueUp(ANumRecord: integer; AVector: TAffineVector); overload;
    procedure SetValueName(ANumRecord: integer; AName: string);
    procedure SetValueFile(ANumRecord: integer; AFile: string);
    procedure SetValueMaterial(ANumRecord: integer; AMaterial: string);
    procedure SetValueBias(ANumRecord: integer; X, Y, Z: Single); overload;
    procedure SetValueBias(ANumRecord: integer; AVector: TAffineVector); overload;

    procedure RestoreObjectData(AObject: TGLBaseSceneObject; ARestoreUp, ARestoreDirection, ARestoreScale, ARestorePosition: boolean);

    procedure Load3DModel(AFileName: string);

    procedure AutoScaleModel(AObject: TGLBaseSceneObject);

    function GetVectorCW: TAffineVector;
    function GetVectorCCW: TAffineVector;
    procedure RotateModel(IsVert, IsCW: boolean);

    procedure AddModelPopupMenuClick(Sender: TObject);

    procedure ClearMenu;
    procedure AddMenuItem;
    procedure DelMenuItem;

    procedure GetParamsPic(AFileName: string; var AWidth, AHeight: integer);
  public

  end;

var
  fmMain: TfmMain;

implementation

uses uGameMenu, uGameMenuItem, pngimage;

{$R *.dfm}

procedure TfmMain.AddMaterial;
begin
  FSelectLibMaterial:= FMaterials.Materials.Add;

  listMaterials.Items.Add(FSelectLibMaterial.Name);
  listMaterials.ItemIndex:= listMaterials.Count - 1;

  cubeMaterialViewer.Material.LibMaterialName:= FSelectLibMaterial.Name;
  with clmnMaterial.Properties as TcxComboBoxProperties do begin
    Items.Add(FSelectLibMaterial.Name);
  end;
  ShowMaterialParams;
end;

procedure TfmMain.btnAddClick(Sender: TObject);
var
  ANum: integer;
  ACursorPos: TPoint;
begin
  case cxPages.ActivePage.PageIndex of
    0: begin
      // карта
      if btnCameraLevel.SpeedButtonOptions.Down then begin
        // уровень
        if CheckPosOnRoom(dcCameraLevel.Position.X, dcCameraLevel.Position.Y) then begin
          Application.MessageBox('На данном месте уже есть комната.', 'Внимание', MB_ICONWARNING or MB_OK);
          Exit;
        end;
        FLevel.UnSelectAll;
        FSelectRoom:= FLevel.AddRoom;
        with FSelectRoom do begin
          SetPosition(dcCameraLevel.Position.X, dcCameraLevel.Position.Y);
          Select;
        end;
        ShowStatusLevel;
      end else begin
        // комната
        if pmAddModel.ItemLinks.Count = 0 then Exit;
        GetCursorPos(ACursorPos);
        pmAddModel.Popup(ACursorPos.X, ACursorPos.Y);

        ShowStatusRoom;
      end;
    end;
    1: begin
      // модели
      ANum:= tvModels.DataController.AppendRecord;
      tvModels.DataController.SetValue(ANum, 0, ANum);
      SetValueName(ANum, 'Модель №' + IntToStr(ANum));
      SetValueMaterial(ANum, NO_MATERIAL_STRING);
      SetValueScale(ANum, 1, 1, 1);
      SetValueDirection(ANum, 0, 0, 1);
      SetValueUp(ANum, 0, 1, 0);

      // пункт в меню для добавления моделей
      with pmAddModel.ItemLinks.AddButton do begin
        Item.Caption:= 'Модель №' + IntToStr(ANum);
        Item.OnClick:= AddModelPopupMenuClick;
      end;
    end;
    2: begin
      // материалы
      AddMaterial;
    end;
    3: begin
      // шейдеры

    end;
    4: begin
      // звуки

    end;
    5: begin
      // меню
      AddMenuItem;
    end;
  end;
end;

procedure TfmMain.AddMenuItem;
var
  ANum: integer;
  //AMenuItem: TGameMenuItem;
begin
  // добавить новый пункт меню
  ANum:= tvMenuItems.DataController.AppendRecord;
  tvMenuItems.DataController.Values[ANum, 0]:= 'MenuItem' + IntToStr(ANum + 1);
  tvMenuItems.DataController.Values[ANum, 1]:= 'Выберите файл...';
  tvMenuItems.DataController.Values[ANum, 2]:= true;
  tvMenuItems.DataController.Values[ANum, 3]:= 1;
  tvMenuItems.DataController.Values[ANum, 4]:= BEFORE_INTERVAL_DEF;
  tvMenuItems.DataController.Values[ANum, 5]:= 0;
  tvMenuItems.DataController.Values[ANum, 6]:= 0;
  tvMenuItems.DataController.Values[ANum, 7]:= 0;

  //AMenuItem:= FMainMenu.AddMenuItem;
end;

procedure TfmMain.AddModelPopupMenuClick(Sender: TObject);
begin
  // обработка выбора пункта в меню добавления модели

end;

procedure TfmMain.AutoScaleModel(AObject: TGLBaseSceneObject);
var
  FAABB: TAABB;
  FScale: single;
begin
  FAABB:= AObject.AxisAlignedBoundingBox(false);
  FScale:= abs(FAABB.max[0]);
  if FScale < abs(FAABB.max[1]) then
    FScale:= abs(FAABB.max[1]);
  if FScale < abs(FAABB.max[2]) then
    FScale:= abs(FAABB.max[2]);
  FScale:= 0.5 / FScale;
  AObject.Scale.SetVector(FScale, FScale, FScale);
end;

procedure TfmMain.btnAutoScaleClick(Sender: TObject);
begin
  if dcModelViewerTarget.Count = 0 then Exit;
  AutoScaleModel(dcModelViewerTarget.Children[0]);
  ShowParamsModel;
end;

procedure TfmMain.btnCameraLevelClick(Sender: TObject);
begin
  FViewer.Camera.Position.SetPoint(0, 0, 80);
  ShowStatusLevel;
  if FSelectRoom <> nil then
    FSelectRoom.Select;
end;

procedure TfmMain.btnCameraRoomClick(Sender: TObject);
begin
  FViewer.Camera.Position.SetPoint(0, 0, 8);
  ShowStatusRoom;
  if FSelectRoom <> nil then
    FSelectRoom.Active;
end;

procedure TfmMain.btnDeleteClick(Sender: TObject);
var
  ANum: integer;
begin
  case cxPages.ActivePage.PageIndex of
    0: begin
      // карта
      if btnCameraLevel.SpeedButtonOptions.Down then begin
        // уровень
        if FSelectRoom <> nil then
          FreeAndNil(FSelectRoom);
        FLevel.UnSelectAll;
      end else begin
        // комната

      end;
    end;
    1: begin
      // модели
      tvModels.DataController.Post;
      ANum:= tvModels.DataController.FocusedRecordIndex;
      tvModels.DataController.DeleteFocused;
      pmAddModel.ItemLinks.Delete(ANum);
    end;
    2: begin
      // материалы
      if listMaterials.Count = 0 then Exit;
      if FSelectLibMaterial = nil then Exit;
      ANum:= FMaterials.Materials.IndexOf(FSelectLibMaterial);
      cubeMaterialViewer.Material.LibMaterialName:= '';
      FMaterials.Materials.Delete(ANum);
      
      with clmnMaterial.Properties as TcxComboBoxProperties do begin
        Items.Delete(ANum + 1);
      end;
      FSelectLibMaterial:= nil;
      listMaterials.DeleteSelected;
    end;
    3: begin
      // шейдеры

    end;
    4: begin
      // звуки

    end;
    5: begin
      // меню
      DelMenuItem;
    end;
  end;
end;

procedure TfmMain.btnExitClick(Sender: TObject);
begin
  Close;
end;

procedure TfmMain.btnLoadClick(Sender: TObject);
begin
  LoadTexturesAndMaterials(FMaterials, FTexturesInfoFileName);
  ShowAllMaterials;

  FLevel.Clear;
  FLevel.LoadLevel(FLevelInfoFileName);

  ClearMenu;
end;

procedure TfmMain.btnLoadImageClick(Sender: TObject);
var
  tmpStr: string;
begin
  od.InitialDir:= FPathExe + 'textures\';
  if FSelectLibMaterial <> nil then
    if od.Execute then begin
      FSelectLibMaterial.Material.Texture.Image.LoadFromFile(od.FileName);
      FSelectLibMaterial.Material.Texture.Disabled:= false;
      tmpStr:= od.FileName;
      Delete(tmpStr, 1, Length(FPathExe + 'textures\'));
      AddTexturePath(FSelectLibMaterial.Name, tmpStr);
      ShowMaterialParams;
    end;
end;

procedure TfmMain.btnLoadMainMenuClick(Sender: TObject);
var
  tmpXMLDoc: TNativeXml;
  i, ANum, AWidth, AHeight: integer;
begin
  // открыть параметры меню
  od.InitialDir:= FPathExe + 'textures\Menus';
  od.Filter:= 'Файлы конфигурации меню (*.cfg)|*.cfg|' +
              'Все файлы (*.*)|*.*';
  if od.Execute then begin
    tvMenuItems.BeginUpdate;
    while tvMenuItems.DataController.RecordCount > 0 do
      tvMenuItems.DataController.DeleteRecord(0);
    tvMenuItems.EndUpdate;

    FMenuInfoFileName:= od.FileName;
    cxMenuFileName.Text:= FMenuInfoFileName;

    tmpXMLDoc:= TNativeXml.Create(nil);
    try
      tmpXMLDoc.LoadFromFile(od.FileName);

      if tmpXMLDoc.Root = nil then Exit;
      cxNameRoot.Text:= tmpXMLDoc.Root.Name;
      with tmpXMLDoc.Root do begin
        btnMenuLeft.Checked:=  true;
        btnMenuRight.Checked:= ReadAttributeBool('IsRightPos', true);
        cxIndentSide.Value:=   ReadAttributeInteger('Side', SIDE_DEF);
        cxIndentTop.Value:=    ReadAttributeInteger('Top', TOP_DEF);

        for i:= 0 to NodeCount - 1 do begin
          ANum:= tvMenuItems.DataController.AppendRecord;
          tvMenuItems.DataController.Values[ANum, 0]:= Nodes[i].Name;
          tvMenuItems.DataController.Values[ANum, 1]:= Nodes[i].ReadAttributeString('PicFileName', '');
          tvMenuItems.DataController.Values[ANum, 2]:= Nodes[i].ReadAttributeString('IsAnimate', 'True');
          tvMenuItems.DataController.Values[ANum, 3]:= Nodes[i].ReadAttributeInteger('CountFrames', 10);
          tvMenuItems.DataController.Values[ANum, 4]:= Nodes[i].ReadAttributeInteger('BeforeInterval', BEFORE_INTERVAL_DEF);

          GetParamsPic(od.InitialDir + '\' + tvMenuItems.DataController.Values[ANum, 1], AWidth, AHeight);
          tvMenuItems.DataController.Values[ANum, 5]:= AHeight / tvMenuItems.DataController.Values[ANum, 3];
          tvMenuItems.DataController.Values[ANum, 6]:= AWidth;
          tvMenuItems.DataController.Values[ANum, 7]:= AHeight;

        end; // for i:= 0 to NodeCount - 1 do begin
      end; // with tmpXMLDoc.Root do begin
    finally
      FreeAndNil(tmpXMLDoc);
    end;
  end; // if od.Execute then begin
end;

procedure TfmMain.btnMoveBackClick(Sender: TObject);
begin
  // Подвинуть назад
  if dcModelViewerTarget.Count = 0 then Exit;
  dcModelViewerTarget.Children[0].Move(-0.1);
  ShowParamsModel;
end;

procedure TfmMain.btnMoveDownClick(Sender: TObject);
begin
  // Подвинуть вниз
  if dcModelViewerTarget.Count = 0 then Exit;
  dcModelViewerTarget.Children[0].Lift(-0.1);
  ShowParamsModel;
end;

procedure TfmMain.btnMoveFrontClick(Sender: TObject);
begin
  // Подвинуть вперед
  if dcModelViewerTarget.Count = 0 then Exit;
  dcModelViewerTarget.Children[0].Move(0.1);
  ShowParamsModel;
end;

procedure TfmMain.btnMoveLeftClick(Sender: TObject);
begin
  // Подвинуть влево
  if dcModelViewerTarget.Count = 0 then Exit;
  dcModelViewerTarget.Children[0].Slide(-0.1);
  ShowParamsModel;
end;

procedure TfmMain.btnMoveRightClick(Sender: TObject);
begin
  // Подвинуть вправо
  if dcModelViewerTarget.Count = 0 then Exit;
  dcModelViewerTarget.Children[0].Slide(0.1);
  ShowParamsModel;
end;

procedure TfmMain.btnMoveUpClick(Sender: TObject);
begin
  // Подвинуть вверх
  if dcModelViewerTarget.Count = 0 then Exit;
  dcModelViewerTarget.Children[0].Lift(0.1);
  ShowParamsModel;
end;

procedure TfmMain.btnResetMoveClick(Sender: TObject);
begin
  // сброс движения
  if dcModelViewerTarget.Count = 0 then Exit;
  RestoreObjectData(dcModelViewerTarget.Children[0], false, false, false, true);
  ShowParamsModel;
end;

procedure TfmMain.btnResetRotationClick(Sender: TObject);
begin
  // сброс поворота
  if dcModelViewerTarget.Count = 0 then Exit;
  RestoreObjectData(dcModelViewerTarget.Children[0], true, true, false, false);
  ShowParamsModel;
end;

procedure TfmMain.btnRotateHorizCCWClick(Sender: TObject);
begin
  // поворот в горизонтальной плоскости на -90
  if dcModelViewerTarget.Count = 0 then Exit;
  RotateModel(false, false);
  ShowParamsModel;
end;

procedure TfmMain.btnRotateHorizCWClick(Sender: TObject);
begin
  // поворот в горизонтальной плоскости на -90
  if dcModelViewerTarget.Count = 0 then Exit;
  RotateModel(false, true);
  ShowParamsModel;
end;

procedure TfmMain.btnRotateVertCCWClick(Sender: TObject);
begin
  // поворот в вертикальной плоскости на -90
  if dcModelViewerTarget.Count = 0 then Exit;
  RotateModel(true, false);
  ShowParamsModel;
end;

procedure TfmMain.btnRotateVertCWClick(Sender: TObject);
begin
  // поворот в вертикальной плоскости на 90
  if dcModelViewerTarget.Count = 0 then Exit;
  RotateModel(true, true);
  ShowParamsModel;
end;

procedure TfmMain.btnSaveClick(Sender: TObject);
begin
  SaveTexturesAndMaterials(FMaterials, FTexturesInfoFileName);
  FLevel.SaveLevel(FLevelInfoFileName);
end;

procedure TfmMain.btnSaveMainMenuClick(Sender: TObject);
var
  tmpXMLDoc: TNativeXml;
  i: integer;
begin
  // сохранить параметры меню
  if not FileExists(cxMenuFileName.Text) then
    if od.Execute then
      cxMenuFileName.Text:= od.FileName;
  if not FileExists(cxMenuFileName.Text) then Exit;
  tmpXMLDoc:= TNativeXml.Create(nil);
  try
    try
      tmpXMLDoc.Root.Name:= cxNameRoot.Text;
      with tmpXMLDoc.Root do begin
        WriteAttributeBool('IsRightPos', btnMenuRight.Checked, true);
        WriteAttributeInteger('Side', trunc(cxIndentSide.Value), 0);
        WriteAttributeInteger('Top', trunc(cxIndentTop.Value), 0);

        for i:= 0 to tvMenuItems.DataController.RecordCount - 1 do begin
          with NodeNew(tvMenuItems.DataController.Values[i, 0]) do begin
            WriteAttributeString('PicFileName',     tvMenuItems.DataController.Values[i, 1]);
            WriteAttributeBool('IsAnimate',         tvMenuItems.DataController.Values[i, 2], true);
            WriteAttributeInteger('CountFrames',    tvMenuItems.DataController.Values[i, 3], 0);
            WriteAttributeInteger('BeforeInterval', tvMenuItems.DataController.Values[i, 4], 0);
          end;
        end;
      end;
      tmpXMLDoc.XmlFormat:= xfReadable;
      tmpXMLDoc.SaveToFile(cxMenuFileName.Text);
    except

    end;
  finally
    FreeAndNil(tmpXMLDoc);
  end;
end;

procedure TfmMain.btnViewMenuClick(Sender: TObject);
begin
  // просмотр меню
  
end;

procedure TfmMain.cbBlendingModePropertiesChange(Sender: TObject);
begin
  if FSelectLibMaterial <> nil then
    FSelectLibMaterial.Material.BlendingMode:= TBlendingMode(cbBlendingMode.ItemIndex);
end;

procedure TfmMain.cbBPPoligonModePropertiesChange(Sender: TObject);
begin
  if FSelectLibMaterial <> nil then
    FSelectLibMaterial.Material.PolygonMode:= TPolygonMode(cbBPPoligonMode.ItemIndex);
end;

procedure TfmMain.cbDisableImageClick(Sender: TObject);
begin
  if FSelectLibMaterial <> nil then
    FSelectLibMaterial.Material.Texture.Disabled:= cbDisableImage.Checked;
end;

procedure TfmMain.cbFaceCullingPropertiesChange(Sender: TObject);
begin
  if FSelectLibMaterial <> nil then
    FSelectLibMaterial.Material.FaceCulling:= TFaceCulling(cbFaceCulling.ItemIndex);
end;

procedure TfmMain.cbFilteringQualityPropertiesChange(Sender: TObject);
begin
  if FSelectLibMaterial <> nil then
    FSelectLibMaterial.Material.Texture.FilteringQuality:= TGLTextureFilteringQuality(cbFilteringQuality.ItemIndex);
end;

procedure TfmMain.cbFPPoligonModePropertiesChange(Sender: TObject);
begin
  if FSelectLibMaterial <> nil then
    FSelectLibMaterial.Material.PolygonMode:= TPolygonMode(cbFPPoligonMode.ItemIndex);
end;

procedure TfmMain.cbImageAlphaPropertiesChange(Sender: TObject);
begin
  if FSelectLibMaterial <> nil then
    FSelectLibMaterial.Material.Texture.ImageAlpha:= TGLTextureImageAlpha(cbImageAlpha.ItemIndex);
end;

procedure TfmMain.cbMagFilterPropertiesChange(Sender: TObject);
begin
  if FSelectLibMaterial <> nil then
    FSelectLibMaterial.Material.Texture.MagFilter:= TGLMagFilter(cbMagFilter.ItemIndex);
end;

procedure TfmMain.cbMinFilterPropertiesChange(Sender: TObject);
begin
  if FSelectLibMaterial <> nil then
    FSelectLibMaterial.Material.Texture.MinFilter:= TGLMinFilter(cbMinFilter.ItemIndex);
end;

procedure TfmMain.cbStretchImageClick(Sender: TObject);
begin
  imgMaterial.Properties.Stretch:=      cbStretchImage.Checked;
  imgMaterial.Properties.Center:=       cbStretchImage.Checked;
  imgMaterial.Properties.Proportional:= cbStretchImage.Checked;
end;

procedure TfmMain.cbTextureFormatPropertiesChange(Sender: TObject);
begin
  if FSelectLibMaterial <> nil then
    FSelectLibMaterial.Material.Texture.TextureFormat:= TGLTextureFormat(cbTextureFormat.ItemIndex);
end;

procedure TfmMain.cbTextureModePropertiesChange(Sender: TObject);
begin
  if FSelectLibMaterial <> nil then
    FSelectLibMaterial.Material.Texture.TextureMode:= TGLTextureMode(cbTextureMode.ItemIndex);
end;

function TfmMain.CheckPosOnRoom(APosX, APosY: single): boolean;
begin
  Result:= FLevel.GetRoomOnPosition(APosX, APosY) <> nil;
end;

procedure TfmMain.ClearMenu;
begin
  // очистка меню

end;

procedure TfmMain.clmnCountFramesPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
var
  AHeightPic, ANum: integer;
begin
  ANum:= tvMenuItems.DataController.FocusedRecordIndex;
  AHeightPic:= tvMenuItems.DataController.Values[ANum, 7];
  tvMenuItems.DataController.Values[ANum, 5]:= AHeightPic / DisplayValue;
end;

procedure TfmMain.clmnFilePicPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  AWidth, AHeight: integer;
begin
  od.InitialDir:= FPathExe + 'textures\Menus';
  od.Filter:= 'Все файлы (*.*)|*.*';
  if od.Execute then begin
    tvMenuItems.DataController.Values[tvMenuItems.DataController.FocusedRecordIndex, 1]:= ExtractFileName(od.FileName);
    GetParamsPic(od.FileName, AWidth, AHeight);
    tvMenuItems.DataController.Values[tvMenuItems.DataController.FocusedRecordIndex, 6]:= AWidth;
    tvMenuItems.DataController.Values[tvMenuItems.DataController.FocusedRecordIndex, 7]:= AHeight;
  end;
end;

procedure TfmMain.clmnFilePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  ANum: integer;
  AFileName: string;
begin
  od.Filter:= 'Файлы 3DS (*.3ds)|*.3ds|' +
              'Файлы 3DS (*.smd)|*.smd|' +
              'Файлы 3DS (*.md2)|*.md2|' +
              'Файлы 3DS (*.md3)|*.md3|' +
              'Файлы 3DS (*.md5)|*.md5|' +
              'Файлы 3DS (*.obj)|*.obj|' +
              'Все файлы (*.*)|*.*';
  od.InitialDir:= FPathExe + 'models\';
  if od.Execute then begin
    ANum:= tvModels.DataController.FocusedRecordIndex;
    AFileName:= copy(od.FileName, Length(FPathExe + 'models\') + 1, Length(od.FileName));
    SetValueFile(ANum, AFileName);
    SetValueMaterial(ANum, NO_MATERIAL_STRING);

    dcModelViewerTarget.BeginUpdate;
    dcModelViewerTarget.DeleteChildren;
    Load3DModel(od.FileName);
    dcModelViewerTarget.EndUpdate;
  end;
end;

procedure TfmMain.clmnMaterialPropertiesChange(Sender: TObject);
var
  ANum: integer;
  AMaterial: string;
begin
  // смена материала на модели
  ANum:= tvModels.DataController.FocusedRecordIndex;
  if tvModels.DataController.GetValue(ANum, 3) <> null then begin
    AMaterial:= tvModels.DataController.GetValue(ANum, 3);
    if AMaterial = NO_MATERIAL_STRING then
      AMaterial:= ''; 
    if dcModelViewerTarget.Count = 0 then Exit;
    if dcModelViewerTarget.Children[0] is TGLActor then
      with dcModelViewerTarget.Children[0] as TGLActor do begin
        Material.LibMaterialName:= AMaterial;
      end;
    if dcModelViewerTarget.Children[0] is TGLFreeForm then
      with dcModelViewerTarget.Children[0] as TGLFreeForm do begin
        Material.LibMaterialName:= AMaterial;
      end;
  end;
end;

procedure TfmMain.clmnModelPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
  if tvModels.DataController.FocusedRecordIndex <> -1 then
    if tvModels.DataController.Values[tvModels.DataController.FocusedRecordIndex, 1] <> null then ;
      pmAddModel.ItemLinks[tvModels.DataController.FocusedRecordIndex].Item.Caption:= DisplayValue;
end;

procedure TfmMain.ColorValueChange(Sender: TObject);
var
  i: integer;
  FcxTrackBar: TcxTrackBar;
begin
  FcxTrackBar:= nil;
  for i:= 0 to ComponentCount - 1 do
    if Components[i] is TcxTrackBar then
      if TcxTrackBar(Components[i]).Tag = TcxCurrencyEdit(Sender).Tag then begin
        FcxTrackBar:= TcxTrackBar(Components[i]);
        Break;
      end;
  FcxTrackBar.LockChangeEvents(true);
  if FcxTrackBar <> nil then begin
    FcxTrackBar.Position:= trunc(TcxCurrencyEdit(Sender).Value);
    if FSelectLibMaterial <> nil then
      case FcxTrackBar.Tag of
        1: FSelectLibMaterial.Material.FrontProperties.Diffuse.Red:=    FcxTrackBar.Position / 1000;
        2: FSelectLibMaterial.Material.FrontProperties.Diffuse.Green:=  FcxTrackBar.Position / 1000;
        3: FSelectLibMaterial.Material.FrontProperties.Diffuse.Blue:=   FcxTrackBar.Position / 1000;
        4: FSelectLibMaterial.Material.FrontProperties.Diffuse.Alpha:=  FcxTrackBar.Position / 1000;

        5: FSelectLibMaterial.Material.FrontProperties.Ambient.Red:=    FcxTrackBar.Position / 1000;
        6: FSelectLibMaterial.Material.FrontProperties.Ambient.Green:=  FcxTrackBar.Position / 1000;
        7: FSelectLibMaterial.Material.FrontProperties.Ambient.Blue:=   FcxTrackBar.Position / 1000;
        8: FSelectLibMaterial.Material.FrontProperties.Ambient.Alpha:=  FcxTrackBar.Position / 1000;

        9: FSelectLibMaterial.Material.FrontProperties.Emission.Red:=   FcxTrackBar.Position / 1000;
       10: FSelectLibMaterial.Material.FrontProperties.Emission.Green:= FcxTrackBar.Position / 1000;
       11: FSelectLibMaterial.Material.FrontProperties.Emission.Blue:=  FcxTrackBar.Position / 1000;
       12: FSelectLibMaterial.Material.FrontProperties.Emission.Alpha:= FcxTrackBar.Position / 1000;

       13: FSelectLibMaterial.Material.FrontProperties.Specular.Red:=   FcxTrackBar.Position / 1000;
       14: FSelectLibMaterial.Material.FrontProperties.Specular.Green:= FcxTrackBar.Position / 1000;
       15: FSelectLibMaterial.Material.FrontProperties.Specular.Blue:=  FcxTrackBar.Position / 1000;
       16: FSelectLibMaterial.Material.FrontProperties.Specular.Alpha:= FcxTrackBar.Position / 1000;

       17: FSelectLibMaterial.Material.BackProperties.Diffuse.Red:=     FcxTrackBar.Position / 1000;
       18: FSelectLibMaterial.Material.BackProperties.Diffuse.Green:=   FcxTrackBar.Position / 1000;
       19: FSelectLibMaterial.Material.BackProperties.Diffuse.Blue:=    FcxTrackBar.Position / 1000;
       20: FSelectLibMaterial.Material.BackProperties.Diffuse.Alpha:=   FcxTrackBar.Position / 1000;

       21: FSelectLibMaterial.Material.BackProperties.Ambient.Red:=     FcxTrackBar.Position / 1000;
       22: FSelectLibMaterial.Material.BackProperties.Ambient.Green:=   FcxTrackBar.Position / 1000;
       23: FSelectLibMaterial.Material.BackProperties.Ambient.Blue:=    FcxTrackBar.Position / 1000;
       24: FSelectLibMaterial.Material.BackProperties.Ambient.Alpha:=   FcxTrackBar.Position / 1000;

       25: FSelectLibMaterial.Material.BackProperties.Emission.Red:=    FcxTrackBar.Position / 1000;
       26: FSelectLibMaterial.Material.BackProperties.Emission.Green:=  FcxTrackBar.Position / 1000;
       27: FSelectLibMaterial.Material.BackProperties.Emission.Blue:=   FcxTrackBar.Position / 1000;
       28: FSelectLibMaterial.Material.BackProperties.Emission.Alpha:=  FcxTrackBar.Position / 1000;

       29: FSelectLibMaterial.Material.BackProperties.Specular.Red:=    FcxTrackBar.Position / 1000;
       30: FSelectLibMaterial.Material.BackProperties.Specular.Green:=  FcxTrackBar.Position / 1000;
       31: FSelectLibMaterial.Material.BackProperties.Specular.Blue:=   FcxTrackBar.Position / 1000;
       32: FSelectLibMaterial.Material.BackProperties.Specular.Alpha:=  FcxTrackBar.Position / 1000;

       33: FSelectLibMaterial.Material.FrontProperties.Shininess:= FcxTrackBar.Position;
       34: FSelectLibMaterial.Material.BackProperties.Shininess:=  FcxTrackBar.Position;
      end;
  end;
  FcxTrackBar.LockChangeEvents(false);
end;

procedure TfmMain.cxTextureOffsetXPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
  var ErrorText: TCaption; var Error: Boolean);
begin
  SetTextureOffset;
end;

procedure TfmMain.cxTextureScaleXPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
  var ErrorText: TCaption; var Error: Boolean);
begin
  SetTextureScale;
end;

procedure TfmMain.DelMenuItem;
begin

end;

procedure TfmMain.FormCreate(Sender: TObject);
begin
  rzFS.RestoreState;
  FPathExe:= ExtractFilePath(ParamStr(0));
  FTexturesInfoFileName:= FPathExe + 'textures\textures.cfg';
  FModelsInfoFileName:=   FPathExe + 'models\models.cfg';
  FLevelInfoFileName:=    FPathExe + 'game.dat';
  FSelectLibMaterial:= nil;

  FLevel:= TLevel(FScene.Objects.AddNewChild(TLevel));
  FLevel.LibMaterials:= FMaterials;

  gridBack.Position.SetPoint(-ROOM_WIDTH / 2, ROOM_HEIGHT / 2, -0.5);
  gridBack.XSamplingScale.Step:= ROOM_WIDTH;
  gridBack.XSamplingScale.Max:= ROOMS_X * ROOM_WIDTH;
  gridBack.YSamplingScale.Step:= ROOM_HEIGHT;
  gridBack.YSamplingScale.Min:= -ROOMS_Y * ROOM_HEIGHT;

  planeBack.Width:= ROOMS_X * ROOM_WIDTH;
  planeBack.Height:= ROOMS_Y * ROOM_HEIGHT;
  planeBack.Position.SetPoint((ROOMS_X - 1) * ROOM_WIDTH / 2, (1 - ROOMS_Y) * ROOM_HEIGHT / 2, -0.501);

  //while tvModels.DataController.RecordCount > 0 do tvModels.DataController.DeleteRecord(0);
  ClearMenu;
  cxPages.ActivePage:= sheetMap;
  cxPagesChange(Sender);

  FMainMenu:= CreateGameMenu(dcMenus);
  FMainMenu.MoveLast;
  FMainMenu.Hide;
end;

procedure TfmMain.FormDestroy(Sender: TObject);
begin
  rzFS.SaveState;
  FreeAndNil(FMainMenu);
  FreeAndNil(FLevel);
end;

procedure TfmMain.FormMouseWheel(Sender: TObject; Shift: TShiftState; WheelDelta: Integer;
  MousePos: TPoint; var Handled: Boolean);
begin
  FViewer.Camera.AdjustDistanceToTarget(Power(1.1, WheelDelta/120));
end;

procedure TfmMain.FViewerMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X,
  Y: Integer);
begin
  lvdx:= x; lvdy:= y;
end;

procedure TfmMain.FViewerMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
  if ssRight in Shift then begin
    FViewer.Camera.MoveAroundTarget(lvdy - y, lvdx - x);
    lvdx:= x; lvdy:= y;
  end;
end;

procedure TfmMain.FViewerMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X,
  Y: Integer);
var
  tmpCursor: TPoint;
  FWorldX, FWorldY: Single;
  FIsApply: boolean;
  FRoomX, FRoomY: integer;
  tmpRoom: TRoom;
begin
  if Button = TMouseButton(mbLeft) then begin
    tmpCursor:= point(x, y);
    CursorToWorld(tmpCursor, FWorldX, FWorldY, FIsApply);
    if FIsApply then begin
      FLevel.GetRoomCoords(FWorldX, FWorldY, FRoomX, FRoomY);
    end else begin
      FRoomX:= -1;
      FRoomY:= -1;
    end;
    if btnCameraLevel.SpeedButtonOptions.Down then begin
      // уровень
      if FIsApply then begin
        dcCameraLevel.Position.SetPoint(FRoomX * ROOM_WIDTH, -FRoomY * ROOM_HEIGHT, 0);
        tmpRoom:= FLevel.GetRoomOnPosition(FRoomX * ROOM_WIDTH, -FRoomY * ROOM_HEIGHT);
        FLevel.UnSelectAll;
        if tmpRoom <> nil then begin
          FSelectRoom:= tmpRoom;
          FSelectRoom.Select;
        end;
      end;
      ShowStatusLevel;
    end else begin
      // комната

      ShowStatusRoom;
    end;
  end;
end;

procedure TfmMain.GetParamsPic(AFileName: string; var AWidth, AHeight: integer);
var
  tmpExt: string;
begin
  tmpExt:= AnsiLowerCase(ExtractFileExt(AFileName));
  AWidth:=  0;
  AHeight:= 0;
  if not FileExists(AFileName) then Exit;

  if tmpExt = '.bmp' then begin
    with TBitmap.Create do try
      LoadFromFile(AFileName);
      AWidth:= Width;
      AHeight:= Height;
    finally
      Free;
    end;
  end;
  if tmpExt = '.jpg' then begin
    with TJPEGImage.Create do try
      LoadFromFile(AFileName);
      AWidth:= Width;
      AHeight:= Height;
    finally
      Free;
    end;
  end;
  if tmpExt = '.png' then begin
    with TPNGObject.Create do try
      LoadFromFile(AFileName);
      AWidth:= Width;
      AHeight:= Height;
    finally
      Free;
    end;
  end;
end;

function TfmMain.GetVectorCCW: TAffineVector;
begin
  Result[0]:= 0; Result[1]:= 0; Result[2]:= 1;
  if dcModelViewerTarget.Count = 0 then Exit;
  Result:= VectorCrossProduct(dcModelViewerTarget.Children[0].Up.AsAffineVector,
                              dcModelViewerTarget.Children[0].Direction.AsAffineVector);
end;

function TfmMain.GetVectorCW: TAffineVector;
begin
  Result[0]:= 0; Result[1]:= 0; Result[2]:= 1;
  if dcModelViewerTarget.Count = 0 then Exit;
  Result:= VectorCrossProduct(dcModelViewerTarget.Children[0].Direction.AsAffineVector,
                              dcModelViewerTarget.Children[0].Up.AsAffineVector);
end;

procedure TfmMain.listMaterialsClick(Sender: TObject);
begin
  cbStretchImage.Checked:= false;

  imgMaterial.Properties.Stretch:=      false;
  imgMaterial.Properties.Center:=       false;
  imgMaterial.Properties.Proportional:= false;

  FSelectLibMaterial:= FMaterials.Materials.GetLibMaterialByName(listMaterials.Items[listMaterials.ItemIndex]);
  cubeMaterialViewer.Material.LibMaterialName:= FSelectLibMaterial.Name;

  ShowMaterialParams;
end;

procedure TfmMain.Load3DModel(AFileName: string);
var
  FExt: string;
  FActor: TGLActor;
  //FFreeForm: TGLFile3DSFreeForm;
  FFreeForm: TGLFreeForm;
begin
  FExt:= AnsiLowerCase(ExtractFileExt(AFileName));
  if FExt = '.3ds' then begin
    //FFreeForm:= TGLFile3DSFreeForm(dcModelViewerTarget.AddNewChild(TGLFile3DSFreeForm));
    FFreeForm:= TGLFreeForm(dcModelViewerTarget.AddNewChild(TGLFreeForm));
    FFreeForm.LoadFromFile(AFileName);
    FFreeForm.Material.MaterialLibrary:= FMaterials;
    FFreeForm.Material.LibMaterialName:= '';
    FFreeForm.ShowAxes:= true;
    AutoScaleModel(FFreeForm);
  end else
  if FExt = '.smd' then begin
    FActor:= TGLActor(dcModelViewerTarget.AddNewChild(TGLActor));
    FActor.LoadFromFile(AFileName);
    AutoScaleModel(FActor);
  end else
  if FExt = '.md2' then begin

  end else
  if FExt = '.md3' then begin

  end else
  if FExt = '.md5' then begin

  end else
  if FExt = '.obj' then begin

  end else Exit;
  ShowParamsModel;
end;

procedure TfmMain.MaterialViewerMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState;
  X, Y: Integer);
begin
  mvdx:= x; mvdy:= y;
end;

procedure TfmMain.MaterialViewerMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
  if ssLeft in Shift then begin
    CameraMaterialViewer.MoveAroundTarget(mvdy - y, mvdx - x);
    mvdx:= x; mvdy:= y;
  end;
end;

procedure TfmMain.ModelViewerMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X,
  Y: Integer);
begin
  mdlv_dx:= x; mdlv_dy:= y;
end;

procedure TfmMain.ModelViewerMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
  if ssLeft in Shift then begin
    CameraModelViewer.MoveAroundTarget(mdlv_dy - y, mdlv_dx - x);
    mdlv_dx:= x; mdlv_dy:= y;
  end;
end;

procedure TfmMain.RestoreObjectData(AObject: TGLBaseSceneObject; ARestoreUp, ARestoreDirection, ARestoreScale, ARestorePosition: boolean);
begin
  // восстановить стандартные параметры загруженного объекта
  if ARestoreUp then
    AObject.Up.SetVector(0, 1, 0);
  if ARestoreDirection then
    AObject.Direction.SetVector(0, 0, 1);
  if ARestoreScale then
    AObject.Scale.SetVector(1, 1, 1);
  if ARestorePosition then
    AObject.Position.SetPoint(0, 0, 0);
end;

procedure TfmMain.RotateModel(IsVert, IsCW: boolean);
var
  FUp, FDirection: TVector3f;
begin
  if dcModelViewerTarget.Count = 0 then Exit;

  if IsVert then begin
    if IsCW then begin
      FDirection[0]:= -1 * dcModelViewerTarget.Children[0].Up.X;
      FDirection[1]:= -1 * dcModelViewerTarget.Children[0].Up.Y;
      FDirection[2]:= -1 * dcModelViewerTarget.Children[0].Up.Z;
      FUp:= dcModelViewerTarget.Children[0].Direction.AsAffineVector;
    end else begin
      FUp[0]:= -1 * dcModelViewerTarget.Children[0].Direction.X;
      FUp[1]:= -1 * dcModelViewerTarget.Children[0].Direction.Y;
      FUp[2]:= -1 * dcModelViewerTarget.Children[0].Direction.Z;
      FDirection:= dcModelViewerTarget.Children[0].Up.AsAffineVector;
    end;
  end else begin
    FUp:= dcModelViewerTarget.Children[0].Up.AsAffineVector;
    if IsCW then begin
      FDirection:= GetVectorCW;
    end else begin
      FDirection:= GetVectorCCW;
    end;
  end;
  dcModelViewerTarget.Children[0].Direction.SetVector(FDirection);
  dcModelViewerTarget.Children[0].Up.SetVector(FUp);
end;

procedure TfmMain.cxIgnoreFogClick(Sender: TObject);
begin
  if FSelectLibMaterial <> nil then
    if cxIgnoreFog.Checked then
      FSelectLibMaterial.Material.MaterialOptions:= FSelectLibMaterial.Material.MaterialOptions + [moIgnoreFog]
    else
      FSelectLibMaterial.Material.MaterialOptions:= FSelectLibMaterial.Material.MaterialOptions - [moIgnoreFog];
end;

procedure TfmMain.cxMaterialNamePropertiesValidate(Sender: TObject; var DisplayValue: Variant;
  var ErrorText: TCaption; var Error: Boolean);
var
  ANumMaterial: integer;
begin
  if FSelectLibMaterial <> nil then begin
    if FSelectLibMaterial.Name = DisplayValue then Exit; 
    DisplayValue:= trim(DisplayValue);
    if DisplayValue = '' then Exit;
    if FMaterials.Materials.GetLibMaterialByName(DisplayValue) <> nil then begin
      Error:= true;
      ErrorText:= 'Материал с таким именем уже существует. Используйте другое имя материала.';
    end;
    if not Error then begin
      with clmnMaterial.Properties as TcxComboBoxProperties do begin
        ANumMaterial:= Items.IndexOf(FSelectLibMaterial.Name);
        Items[ANumMaterial]:= DisplayValue;
      end;
      FSelectLibMaterial.Name:= DisplayValue;
      listMaterials.Items[listMaterials.ItemIndex]:= DisplayValue;
    end;
  end;
end;

procedure TfmMain.cxNoLightingClick(Sender: TObject);
begin
  if FSelectLibMaterial <> nil then
    if cxNoLighting.Checked then
      FSelectLibMaterial.Material.MaterialOptions:= FSelectLibMaterial.Material.MaterialOptions + [moNoLighting]
    else
      FSelectLibMaterial.Material.MaterialOptions:= FSelectLibMaterial.Material.MaterialOptions - [moNoLighting];
end;

procedure TfmMain.cxPagesChange(Sender: TObject);
begin
  // смена закладки
  dxRibbon.BeginUpdate;
  case cxPages.ActivePageIndex of
    0: begin
      // карта
      lsMaterialViewer.Diffuse.Color:= clrBlack;
      lsModelViewer.Diffuse.Color:= clrBlack;
      lsLevel.Diffuse.Color:= clrWhite;
      btnAutoScale.Visible:=      ivNever;
      btnRotateHorizCCW.Visible:= ivNever;
      btnRotateHorizCW.Visible:=  ivNever;
      btnRotateVertCW.Visible:=   ivNever;
      btnRotateVertCCW.Visible:=  ivNever;
      btnResetRotation.Visible:=  ivNever;
      btnMoveFront.Visible:=  ivNever;
      btnMoveBack.Visible:=   ivNever;
      btnMoveLeft.Visible:=   ivNever;
      btnMoveRight.Visible:=  ivNever;
      btnMoveUp.Visible:=     ivNever;
      btnMoveDown.Visible:=   ivNever;
      btnResetMove.Visible:=  ivNever;
      btnViewMenu.Visible:=  ivNever;
    end;
    1: begin
      // модели
      lsMaterialViewer.Diffuse.Color:= clrBlack;
      lsModelViewer.Diffuse.Color:= clrWhite;
      lsLevel.Diffuse.Color:= clrBlack;
      btnAutoScale.Visible:=      ivAlways;
      btnRotateHorizCCW.Visible:= ivAlways;
      btnRotateHorizCW.Visible:=  ivAlways;
      btnRotateVertCW.Visible:=   ivAlways;
      btnRotateVertCCW.Visible:=  ivAlways;
      btnResetRotation.Visible:=  ivAlways;
      btnMoveFront.Visible:=  ivAlways;
      btnMoveBack.Visible:=   ivAlways;
      btnMoveLeft.Visible:=   ivAlways;
      btnMoveRight.Visible:=  ivAlways;
      btnMoveUp.Visible:=     ivAlways;
      btnMoveDown.Visible:=   ivAlways;
      btnResetMove.Visible:=  ivAlways;
      btnViewMenu.Visible:=  ivNever;
    end;
    2: begin
      // материалы
      lsMaterialViewer.Diffuse.Color:= clrWhite;
      lsModelViewer.Diffuse.Color:= clrBlack;
      lsLevel.Diffuse.Color:= clrBlack;
      btnAutoScale.Visible:=      ivNever;
      btnRotateHorizCCW.Visible:= ivNever;
      btnRotateHorizCW.Visible:=  ivNever;
      btnRotateVertCW.Visible:=   ivNever;
      btnRotateVertCCW.Visible:=  ivNever;
      btnResetRotation.Visible:=  ivNever;
      btnMoveFront.Visible:=  ivNever;
      btnMoveBack.Visible:=   ivNever;
      btnMoveLeft.Visible:=   ivNever;
      btnMoveRight.Visible:=  ivNever;
      btnMoveUp.Visible:=     ivNever;
      btnMoveDown.Visible:=   ivNever;
      btnResetMove.Visible:=  ivNever;
      btnViewMenu.Visible:=  ivNever;
    end;
    3: begin
      // шейдеры
      btnAutoScale.Visible:=      ivNever;
      btnRotateHorizCCW.Visible:= ivNever;
      btnRotateHorizCW.Visible:=  ivNever;
      btnRotateVertCW.Visible:=   ivNever;
      btnRotateVertCCW.Visible:=  ivNever;
      btnResetRotation.Visible:=  ivNever;
      btnMoveFront.Visible:=  ivNever;
      btnMoveBack.Visible:=   ivNever;
      btnMoveLeft.Visible:=   ivNever;
      btnMoveRight.Visible:=  ivNever;
      btnMoveUp.Visible:=     ivNever;
      btnMoveDown.Visible:=   ivNever;
      btnResetMove.Visible:=  ivNever;
      btnViewMenu.Visible:=  ivNever;
    end;
    4: begin
      // звуки
      btnAutoScale.Visible:=      ivNever;
      btnRotateHorizCCW.Visible:= ivNever;
      btnRotateHorizCW.Visible:=  ivNever;
      btnRotateVertCW.Visible:=   ivNever;
      btnRotateVertCCW.Visible:=  ivNever;
      btnResetRotation.Visible:=  ivNever;
      btnMoveFront.Visible:=  ivNever;
      btnMoveBack.Visible:=   ivNever;
      btnMoveLeft.Visible:=   ivNever;
      btnMoveRight.Visible:=  ivNever;
      btnMoveUp.Visible:=     ivNever;
      btnMoveDown.Visible:=   ivNever;
      btnResetMove.Visible:=  ivNever;
      btnViewMenu.Visible:=  ivNever;
    end;
    5: begin
      // меню
      btnAutoScale.Visible:=      ivNever;
      btnRotateHorizCCW.Visible:= ivNever;
      btnRotateHorizCW.Visible:=  ivNever;
      btnRotateVertCW.Visible:=   ivNever;
      btnRotateVertCCW.Visible:=  ivNever;
      btnResetRotation.Visible:=  ivNever;
      btnMoveFront.Visible:=  ivNever;
      btnMoveBack.Visible:=   ivNever;
      btnMoveLeft.Visible:=   ivNever;
      btnMoveRight.Visible:=  ivNever;
      btnMoveUp.Visible:=     ivNever;
      btnMoveDown.Visible:=   ivNever;
      btnResetMove.Visible:=  ivNever;
      btnViewMenu.Visible:=   ivAlways;
    end;
  end;
  dxRibbon.EndUpdate;
end;

procedure TfmMain.CursorToWorld(ACursorPos: TPoint; var x, y: single; var AIsApply: boolean);
var
  rayStart, rayDir: TVector;
  FPoint, FNormal: TVector;
begin
  x:= 0;
  y:= 0;
  SetVector(rayStart, FViewer.Buffer.ScreenToWorld(ACursorPos.X, FViewer.Height - ACursorPos.Y));
  SetVector(rayDir, FViewer.Buffer.ScreenToVector(ACursorPos.X, FViewer.Height - ACursorPos.Y));

  rayStart:= VectorSubtract(rayStart, VectorMake(planeBack.AbsolutePosition[0],
                                                 planeBack.AbsolutePosition[1],
                                                 planeBack.AbsolutePosition[2]));

  AIsApply:= planeBack.RayCastIntersect(rayStart, rayDir, @FPoint, @FNormal);
  if AIsApply then begin
    x:= FPoint[0];
    y:= FPoint[1];
  end;
end;

procedure TfmMain.SetTextureOffset;
begin
  if FSelectLibMaterial <> nil then begin
    FSelectLibMaterial.TextureOffset.X:= cxTextureOffsetX.Value;
    FSelectLibMaterial.TextureOffset.Y:= cxTextureOffsetY.Value;
    FSelectLibMaterial.TextureOffset.Z:= cxTextureOffsetZ.Value;
  end;
end;

procedure TfmMain.SetTextureScale;
begin
  if FSelectLibMaterial <> nil then begin
    FSelectLibMaterial.TextureScale.X:= cxTextureScaleX.Value;
    FSelectLibMaterial.TextureScale.Y:= cxTextureScaleY.Value;
    FSelectLibMaterial.TextureScale.Z:= cxTextureScaleZ.Value;
  end;
end;

procedure TfmMain.SetValueBias(ANumRecord: integer; X, Y, Z: Single);
begin
  tvModels.DataController.SetValue(ANumRecord, 13, X);
  tvModels.DataController.SetValue(ANumRecord, 14, Y);
  tvModels.DataController.SetValue(ANumRecord, 15, Z);
end;

procedure TfmMain.SetValueBias(ANumRecord: integer; AVector: TAffineVector);
begin
  SetValueBias(ANumRecord, AVector[0], AVector[1], AVector[2]);
end;

procedure TfmMain.SetValueDirection(ANumRecord: integer; AVector: TAffineVector);
begin
  SetValueDirection(ANumRecord, AVector[0], AVector[1], AVector[2]);
end;

procedure TfmMain.SetValueFile(ANumRecord: integer; AFile: string);
begin
  tvModels.DataController.SetValue(ANumRecord, 2, AFile);
end;

procedure TfmMain.SetValueMaterial(ANumRecord: integer; AMaterial: string);
begin
  tvModels.DataController.SetValue(ANumRecord, 3, AMaterial);
end;

procedure TfmMain.SetValueName(ANumRecord: integer; AName: string);
begin
  tvModels.DataController.SetValue(ANumRecord, 1, AName);
end;

procedure TfmMain.SetValueDirection(ANumRecord: integer; X, Y, Z: Single);
begin
  tvModels.DataController.SetValue(ANumRecord, 7, X);
  tvModels.DataController.SetValue(ANumRecord, 8, Y);
  tvModels.DataController.SetValue(ANumRecord, 9, Z);
end;

procedure TfmMain.SetValueScale(ANumRecord: integer; X, Y, Z: Single);
begin
  tvModels.DataController.SetValue(ANumRecord, 4, X);
  tvModels.DataController.SetValue(ANumRecord, 5, Y);
  tvModels.DataController.SetValue(ANumRecord, 6, Z);
end;

procedure TfmMain.SetValueScale(ANumRecord: integer; AVector: TAffineVector);
begin
  SetValueScale(ANumRecord, AVector[0], AVector[1], AVector[2]);
end;

procedure TfmMain.SetValueUp(ANumRecord: integer; AVector: TAffineVector);
begin
  SetValueUp(ANumRecord, AVector[0], AVector[1], AVector[2]);
end;

procedure TfmMain.SetValueUp(ANumRecord: integer; X, Y, Z: Single);
begin
  tvModels.DataController.SetValue(ANumRecord, 10, X);
  tvModels.DataController.SetValue(ANumRecord, 11, Y);
  tvModels.DataController.SetValue(ANumRecord, 12, Z);
end;

procedure TfmMain.ShowAllMaterials;
var
  i: integer;
begin
  listMaterials.Clear;
  TcxComboBoxProperties(clmnMaterial.Properties).Items.Clear;
  TcxComboBoxProperties(clmnMaterial.Properties).Items.Add(NO_MATERIAL_STRING);
  for i:= 0 to FMaterials.Materials.Count - 1 do begin
    listMaterials.Items.Add(FMaterials.Materials[i].Name);
    with clmnMaterial.Properties as TcxComboBoxProperties do begin
      Items.Add(FMaterials.Materials[i].Name);
    end;
  end;
  listMaterials.ItemIndex:= -1;
  FSelectLibMaterial:= nil;
end;

procedure TfmMain.ShowMaterialParams;
begin
  if FSelectLibMaterial <> nil then begin
    imgMaterial.Picture.Assign(FSelectLibMaterial.Material.Texture.Image.AsBitmap);

    cxImageWidth.Caption:=  Format('Ширина: %d', [FSelectLibMaterial.Material.Texture.Image.AsBitmap.Width]);
    cxImageHeight.Caption:= Format('Высота: %d', [FSelectLibMaterial.Material.Texture.Image.AsBitmap.Height]);

    cbDisableImage.Checked:= FSelectLibMaterial.Material.Texture.Disabled;
    cxMaterialName.Text:= FSelectLibMaterial.Name;

    cxNoLighting.Checked:= moNoLighting in FSelectLibMaterial.Material.MaterialOptions;
    cxIgnoreFog.Checked:=  moIgnoreFog  in FSelectLibMaterial.Material.MaterialOptions;

    ShowTextureScale;
    ShowTextureOffset;
    ShowTextureParams;
  end;
end;

procedure TfmMain.ShowParamsModel;
var
  ANum: integer;
begin
  if dcModelViewerTarget.Count = 0 then Exit;
  ANum:= tvModels.DataController.FocusedRecordIndex;
  tvModels.BeginUpdate;
  SetValueScale(ANum, dcModelViewerTarget.Children[0].Scale.AsAffineVector);
  SetValueDirection(ANum, dcModelViewerTarget.Children[0].Direction.AsAffineVector);
  SetValueUp(ANum, dcModelViewerTarget.Children[0].Up.AsAffineVector);
  SetValueBias(ANum, dcModelViewerTarget.Children[0].Position.AsAffineVector);
  tvModels.EndUpdate;
end;

procedure TfmMain.ShowStatusLevel;
begin
  if Assigned(FSelectRoom) then
    barStatus.Panels[0].Text:= Format('Комнат: %d    Текущая №%d    ', [FLevel.Count, FSelectRoom.Index + 1])
  else
    barStatus.Panels[0].Text:= Format('Комнат: %d    Нет выбранных комнат.    ', [FLevel.Count])
end;

procedure TfmMain.ShowStatusRoom;
begin
  if Assigned(FSelectRoom) then
    barStatus.Panels[0].Text:= Format('Комната: %d    Объект №%d    ', [FSelectRoom.Index + 1, -1])
  else
    barStatus.Panels[0].Text:= 'Бля ошибка';
end;

procedure TfmMain.ShowTextureOffset;
begin
  if FSelectLibMaterial <> nil then begin
    cxTextureOffsetX.Value:= FSelectLibMaterial.TextureOffset.X;
    cxTextureOffsetY.Value:= FSelectLibMaterial.TextureOffset.Y;
    cxTextureOffsetZ.Value:= FSelectLibMaterial.TextureOffset.Z;
  end;
end;

procedure TfmMain.ShowTextureParams;
begin
  if FSelectLibMaterial <> nil then begin
    cbBlendingMode.ItemIndex:=     integer(FSelectLibMaterial.Material.BlendingMode);
    cbFaceCulling.ItemIndex:=      integer(FSelectLibMaterial.Material.FaceCulling);
    cbTextureMode.ItemIndex:=      integer(FSelectLibMaterial.Material.Texture.TextureMode);
    cbImageAlpha.ItemIndex:=       integer(FSelectLibMaterial.Material.Texture.ImageAlpha);
    cbTextureFormat.ItemIndex:=    integer(FSelectLibMaterial.Material.Texture.TextureFormat);
    cbMinFilter.ItemIndex:=        integer(FSelectLibMaterial.Material.Texture.MinFilter);
    cbMagFilter.ItemIndex:=        integer(FSelectLibMaterial.Material.Texture.MagFilter);
    cbFilteringQuality.ItemIndex:= integer(FSelectLibMaterial.Material.Texture.FilteringQuality);
    cbFPPoligonMode.ItemIndex:=    integer(FSelectLibMaterial.Material.PolygonMode);
    cbBPPoligonMode.ItemIndex:=    integer(FSelectLibMaterial.Material.PolygonMode);

    //Diffuse
    cxFPDiffuseR.Value:= FSelectLibMaterial.Material.FrontProperties.Diffuse.Red * 1000;
    cxFPDiffuseG.Value:= FSelectLibMaterial.Material.FrontProperties.Diffuse.Green * 1000;
    cxFPDiffuseB.Value:= FSelectLibMaterial.Material.FrontProperties.Diffuse.Green * 1000;
    cxFPDiffuseA.Value:= FSelectLibMaterial.Material.FrontProperties.Diffuse.Alpha * 1000;

    cxBPDiffuseR.Value:= FSelectLibMaterial.Material.BackProperties.Diffuse.Red * 1000;
    cxBPDiffuseG.Value:= FSelectLibMaterial.Material.BackProperties.Diffuse.Green * 1000;
    cxBPDiffuseB.Value:= FSelectLibMaterial.Material.BackProperties.Diffuse.Green * 1000;
    cxBPDiffuseA.Value:= FSelectLibMaterial.Material.BackProperties.Diffuse.Alpha * 1000;

    //Ambient
    cxFPAmbientR.Value:= FSelectLibMaterial.Material.FrontProperties.Ambient.Red * 1000;
    cxFPAmbientG.Value:= FSelectLibMaterial.Material.FrontProperties.Ambient.Green * 1000;
    cxFPAmbientB.Value:= FSelectLibMaterial.Material.FrontProperties.Ambient.Green * 1000;
    cxFPAmbientA.Value:= FSelectLibMaterial.Material.FrontProperties.Ambient.Alpha * 1000;

    cxBPAmbientR.Value:= FSelectLibMaterial.Material.BackProperties.Ambient.Red * 1000;
    cxBPAmbientG.Value:= FSelectLibMaterial.Material.BackProperties.Ambient.Green * 1000;
    cxBPAmbientB.Value:= FSelectLibMaterial.Material.BackProperties.Ambient.Green * 1000;
    cxBPAmbientA.Value:= FSelectLibMaterial.Material.BackProperties.Ambient.Alpha * 1000;

    //Emission
    cxFPEmissionR.Value:= FSelectLibMaterial.Material.FrontProperties.Emission.Red * 1000;
    cxFPEmissionG.Value:= FSelectLibMaterial.Material.FrontProperties.Emission.Green * 1000;
    cxFPEmissionB.Value:= FSelectLibMaterial.Material.FrontProperties.Emission.Green * 1000;
    cxFPEmissionA.Value:= FSelectLibMaterial.Material.FrontProperties.Emission.Alpha * 1000;

    cxBPEmissionR.Value:= FSelectLibMaterial.Material.BackProperties.Emission.Red * 1000;
    cxBPEmissionG.Value:= FSelectLibMaterial.Material.BackProperties.Emission.Green * 1000;
    cxBPEmissionB.Value:= FSelectLibMaterial.Material.BackProperties.Emission.Green * 1000;
    cxBPEmissionA.Value:= FSelectLibMaterial.Material.BackProperties.Emission.Alpha * 1000;

    //Specular
    cxFPSpecularR.Value:= FSelectLibMaterial.Material.FrontProperties.Specular.Red * 1000;
    cxFPSpecularG.Value:= FSelectLibMaterial.Material.FrontProperties.Specular.Green * 1000;
    cxFPSpecularB.Value:= FSelectLibMaterial.Material.FrontProperties.Specular.Green * 1000;
    cxFPSpecularA.Value:= FSelectLibMaterial.Material.FrontProperties.Specular.Alpha * 1000;

    cxBPSpecularR.Value:= FSelectLibMaterial.Material.BackProperties.Specular.Red * 1000;
    cxBPSpecularG.Value:= FSelectLibMaterial.Material.BackProperties.Specular.Green * 1000;
    cxBPSpecularB.Value:= FSelectLibMaterial.Material.BackProperties.Specular.Green * 1000;
    cxBPSpecularA.Value:= FSelectLibMaterial.Material.BackProperties.Specular.Alpha * 1000;

    //Shininess
    cxFPShininess.Value:= integer(FSelectLibMaterial.Material.FrontProperties.Shininess);
    cxBPShininess.Value:= integer(FSelectLibMaterial.Material.BackProperties.Shininess);
  end;
end;

procedure TfmMain.ShowTextureScale;
begin
  if FSelectLibMaterial <> nil then begin
    cxTextureScaleX.Value:= FSelectLibMaterial.TextureScale.X;
    cxTextureScaleY.Value:= FSelectLibMaterial.TextureScale.Y;
    cxTextureScaleZ.Value:= FSelectLibMaterial.TextureScale.Z;
  end;
end;

procedure TfmMain.TrakBarChange(Sender: TObject);
var
  i: integer;
  FcxValue: TcxCurrencyEdit;
begin
  FcxValue:= nil;
  for i:= 0 to ComponentCount - 1 do
    if Components[i] is TcxCurrencyEdit then
      if TcxCurrencyEdit(Components[i]).Tag = TcxTrackBar(Sender).Tag then begin
        FcxValue:= TcxCurrencyEdit(Components[i]);
        Break;
      end;
  FcxValue.LockChangeEvents(true);
  if FcxValue <> nil then begin
    FcxValue.Value:= TcxTrackBar(Sender).Position;
    if FSelectLibMaterial <> nil then
      case FcxValue.Tag of
        1: FSelectLibMaterial.Material.FrontProperties.Diffuse.Red:=    FcxValue.Value / 1000;
        2: FSelectLibMaterial.Material.FrontProperties.Diffuse.Green:=  FcxValue.Value / 1000;
        3: FSelectLibMaterial.Material.FrontProperties.Diffuse.Blue:=   FcxValue.Value / 1000;
        4: FSelectLibMaterial.Material.FrontProperties.Diffuse.Alpha:=  FcxValue.Value / 1000;

        5: FSelectLibMaterial.Material.FrontProperties.Ambient.Red:=    FcxValue.Value / 1000;
        6: FSelectLibMaterial.Material.FrontProperties.Ambient.Green:=  FcxValue.Value / 1000;
        7: FSelectLibMaterial.Material.FrontProperties.Ambient.Blue:=   FcxValue.Value / 1000;
        8: FSelectLibMaterial.Material.FrontProperties.Ambient.Alpha:=  FcxValue.Value / 1000;

        9: FSelectLibMaterial.Material.FrontProperties.Emission.Red:=   FcxValue.Value / 1000;
       10: FSelectLibMaterial.Material.FrontProperties.Emission.Green:= FcxValue.Value / 1000;
       11: FSelectLibMaterial.Material.FrontProperties.Emission.Blue:=  FcxValue.Value / 1000;
       12: FSelectLibMaterial.Material.FrontProperties.Emission.Alpha:= FcxValue.Value / 1000;

       13: FSelectLibMaterial.Material.FrontProperties.Specular.Red:=   FcxValue.Value / 1000;
       14: FSelectLibMaterial.Material.FrontProperties.Specular.Green:= FcxValue.Value / 1000;
       15: FSelectLibMaterial.Material.FrontProperties.Specular.Blue:=  FcxValue.Value / 1000;
       16: FSelectLibMaterial.Material.FrontProperties.Specular.Alpha:= FcxValue.Value / 1000;

       17: FSelectLibMaterial.Material.BackProperties.Diffuse.Red:=     FcxValue.Value / 1000;
       18: FSelectLibMaterial.Material.BackProperties.Diffuse.Green:=   FcxValue.Value / 1000;
       19: FSelectLibMaterial.Material.BackProperties.Diffuse.Blue:=    FcxValue.Value / 1000;
       20: FSelectLibMaterial.Material.BackProperties.Diffuse.Alpha:=   FcxValue.Value / 1000;

       21: FSelectLibMaterial.Material.BackProperties.Ambient.Red:=     FcxValue.Value / 1000;
       22: FSelectLibMaterial.Material.BackProperties.Ambient.Green:=   FcxValue.Value / 1000;
       23: FSelectLibMaterial.Material.BackProperties.Ambient.Blue:=    FcxValue.Value / 1000;
       24: FSelectLibMaterial.Material.BackProperties.Ambient.Alpha:=   FcxValue.Value / 1000;

       25: FSelectLibMaterial.Material.BackProperties.Emission.Red:=    FcxValue.Value / 1000;
       26: FSelectLibMaterial.Material.BackProperties.Emission.Green:=  FcxValue.Value / 1000;
       27: FSelectLibMaterial.Material.BackProperties.Emission.Blue:=   FcxValue.Value / 1000;
       28: FSelectLibMaterial.Material.BackProperties.Emission.Alpha:=  FcxValue.Value / 1000;

       29: FSelectLibMaterial.Material.BackProperties.Specular.Red:=    FcxValue.Value / 1000;
       30: FSelectLibMaterial.Material.BackProperties.Specular.Green:=  FcxValue.Value / 1000;
       31: FSelectLibMaterial.Material.BackProperties.Specular.Blue:=   FcxValue.Value / 1000;
       32: FSelectLibMaterial.Material.BackProperties.Specular.Alpha:=  FcxValue.Value / 1000;

       33: FSelectLibMaterial.Material.FrontProperties.Shininess:= trunc(FcxValue.Value);
       34: FSelectLibMaterial.Material.BackProperties.Shininess:=  trunc(FcxValue.Value);
      end;
  end;
  FcxValue.LockChangeEvents(false);
end;

procedure TfmMain.tvMenuItemsFilePicPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  // выбор файла картинки для пункта меню
  if od.Execute then begin

  end;
end;

procedure TfmMain.tvModelsEditValueChanged(Sender: TcxCustomGridTableView;
  AItem: TcxCustomGridTableItem);
begin
  ///showmessage('EditValueChanged');
end;

procedure TfmMain.tvModelsFocusedItemChanged(Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
begin
  //showmessage('FocusedItemChanged');
end;

procedure TfmMain.tvModelsFocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  //showmessage('FocusedRecordChanged');
end;

end.
