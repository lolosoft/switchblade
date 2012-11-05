object fmMain: TfmMain
  Left = 251
  Top = 81
  Caption = #1056#1077#1076#1072#1082#1090#1086#1088' Switch Blade'
  ClientHeight = 606
  ClientWidth = 792
  Color = clBtnFace
  Constraints.MinHeight = 633
  Constraints.MinWidth = 800
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnMouseWheel = FormMouseWheel
  PixelsPerInch = 96
  TextHeight = 13
  object dxRibbon: TdxRibbon
    Left = 0
    Top = 0
    Width = 792
    Height = 116
    BarManager = dxBarManager
    ColorSchemeName = 'Silver'
    Contexts = <>
    TabOrder = 0
    TabStop = False
    object tabGeneral: TdxRibbonTab
      Active = True
      Caption = #1043#1083#1072#1074#1085#1072#1103
      Groups = <
        item
          ToolbarName = 'barFile'
        end
        item
        end
        item
          ToolbarName = 'barActions'
        end>
      Index = 0
    end
    object tabHelp: TdxRibbonTab
      Caption = #1055#1086#1084#1086#1097#1100
      Groups = <
        item
          ToolbarName = 'barHelp'
        end>
      Index = 1
    end
  end
  object cxPages: TcxPageControl
    Left = 0
    Top = 116
    Width = 792
    Height = 467
    Align = alClient
    TabOrder = 5
    Properties.ActivePage = sheetMaterials
    Properties.Style = 11
    LookAndFeel.Kind = lfStandard
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Silver'
    OnChange = cxPagesChange
    ClientRectBottom = 461
    ClientRectLeft = 3
    ClientRectRight = 786
    ClientRectTop = 26
    object sheetMap: TcxTabSheet
      Caption = #1050#1072#1088#1090#1072
      ImageIndex = 0
      DesignSize = (
        783
        435)
      object FViewer: TGLSceneViewer
        Left = 3
        Top = 3
        Width = 720
        Height = 430
        Camera = cameraLevel
        Buffer.ContextOptions = [roDoubleBuffer, roStencilBuffer, roRenderToWindow]
        Buffer.AntiAliasing = aa4xHQ
        FieldOfView = 153.816207885742200000
        Anchors = [akLeft, akTop, akRight, akBottom]
        OnMouseDown = FViewerMouseDown
        OnMouseMove = FViewerMouseMove
        OnMouseUp = FViewerMouseUp
        TabOrder = 0
      end
      object btnCameraRoom: TcxButton
        Left = 727
        Top = 23
        Width = 54
        Height = 20
        Anchors = [akTop, akRight]
        Caption = #1050#1086#1084#1085#1072#1090#1072
        LookAndFeel.Kind = lfFlat
        LookAndFeel.SkinName = 'Silver'
        SpeedButtonOptions.GroupIndex = 1
        SpeedButtonOptions.CanBeFocused = False
        TabOrder = 1
        TabStop = False
        OnClick = btnCameraRoomClick
      end
      object btnCameraLevel: TcxButton
        Left = 727
        Top = 2
        Width = 54
        Height = 20
        Anchors = [akTop, akRight]
        Caption = #1059#1088#1086#1074#1077#1085#1100
        LookAndFeel.Kind = lfFlat
        LookAndFeel.SkinName = 'Silver'
        SpeedButtonOptions.GroupIndex = 1
        SpeedButtonOptions.CanBeFocused = False
        SpeedButtonOptions.Down = True
        TabOrder = 2
        TabStop = False
        OnClick = btnCameraLevelClick
      end
    end
    object sheetModels: TcxTabSheet
      Caption = #1052#1086#1076#1077#1083#1080
      ImageIndex = 1
      DesignSize = (
        783
        435)
      object gridModels: TcxGrid
        Left = 0
        Top = 0
        Width = 426
        Height = 435
        Anchors = [akLeft, akTop, akBottom]
        TabOrder = 0
        LookAndFeel.SkinName = 'Silver'
        object gridModelsLevel1: TcxGridLevel
          GridView = tvModels
        end
      end
      object cxGroupBox15: TcxGroupBox
        Left = 428
        Top = 0
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = #1055#1088#1086#1089#1084#1086#1090#1088
        Style.LookAndFeel.SkinName = 'Silver'
        StyleDisabled.LookAndFeel.SkinName = 'Silver'
        StyleFocused.LookAndFeel.SkinName = 'Silver'
        StyleHot.LookAndFeel.SkinName = 'Silver'
        TabOrder = 1
        Transparent = True
        Height = 408
        Width = 355
        object ModelViewer: TGLSceneViewer
          Left = 3
          Top = 15
          Width = 349
          Height = 383
          Camera = CameraModelViewer
          FieldOfView = 148.022491455078100000
          Align = alClient
          OnMouseDown = ModelViewerMouseDown
          OnMouseMove = ModelViewerMouseMove
          TabOrder = 0
        end
      end
      object cxButton1: TcxButton
        Left = 428
        Top = 410
        Width = 75
        Height = 25
        Anchors = [akLeft, akBottom]
        Caption = #1055#1088#1086#1089#1084#1086#1090#1088
        LookAndFeel.SkinName = 'Silver'
        TabOrder = 2
      end
    end
    object sheetMaterials: TcxTabSheet
      Caption = #1052#1072#1090#1077#1088#1080#1072#1083#1099
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      DesignSize = (
        783
        435)
      object listMaterials: TcxListBox
        Left = 1
        Top = 0
        Width = 201
        Height = 435
        Anchors = [akLeft, akTop, akBottom]
        ItemHeight = 13
        Style.LookAndFeel.SkinName = 'Silver'
        StyleDisabled.LookAndFeel.SkinName = 'Silver'
        StyleFocused.LookAndFeel.SkinName = 'Silver'
        StyleHot.LookAndFeel.SkinName = 'Silver'
        TabOrder = 0
        OnClick = listMaterialsClick
      end
      object cxGroupBox1: TcxGroupBox
        Left = 558
        Top = 0
        TabStop = True
        Caption = 'TextureOffset'
        Style.LookAndFeel.SkinName = 'Silver'
        Style.TextStyle = [fsUnderline]
        StyleDisabled.LookAndFeel.SkinName = 'Silver'
        StyleFocused.LookAndFeel.SkinName = 'Silver'
        StyleHot.LookAndFeel.SkinName = 'Silver'
        TabOrder = 1
        Transparent = True
        Height = 86
        Width = 107
        object cxTextureOffsetX: TcxCurrencyEdit
          Left = 12
          Top = 16
          EditValue = 0.000000000000000000
          Properties.Alignment.Horz = taRightJustify
          Properties.DecimalPlaces = 8
          Properties.DisplayFormat = ',0.00000000'
          Properties.OnValidate = cxTextureOffsetXPropertiesValidate
          Style.BorderStyle = ebsUltraFlat
          Style.Edges = [bLeft, bTop, bRight, bBottom]
          Style.LookAndFeel.SkinName = 'Silver'
          StyleDisabled.LookAndFeel.SkinName = 'Silver'
          StyleFocused.LookAndFeel.SkinName = 'Silver'
          StyleHot.LookAndFeel.SkinName = 'Silver'
          TabOrder = 0
          Width = 90
        end
        object cxLabel1: TcxLabel
          Left = 3
          Top = 17
          Caption = 'X'
          Style.LookAndFeel.SkinName = 'Silver'
          StyleDisabled.LookAndFeel.SkinName = 'Silver'
          StyleFocused.LookAndFeel.SkinName = 'Silver'
          StyleHot.LookAndFeel.SkinName = 'Silver'
          Transparent = True
        end
        object cxTextureOffsetY: TcxCurrencyEdit
          Left = 12
          Top = 37
          EditValue = 0.000000000000000000
          Properties.Alignment.Horz = taRightJustify
          Properties.DecimalPlaces = 8
          Properties.DisplayFormat = ',0.00000000'
          Properties.OnValidate = cxTextureOffsetXPropertiesValidate
          Style.LookAndFeel.SkinName = 'Silver'
          StyleDisabled.LookAndFeel.SkinName = 'Silver'
          StyleFocused.LookAndFeel.SkinName = 'Silver'
          StyleHot.LookAndFeel.SkinName = 'Silver'
          TabOrder = 2
          Width = 90
        end
        object cxLabel2: TcxLabel
          Left = 3
          Top = 38
          Caption = 'Y'
          Style.LookAndFeel.SkinName = 'Silver'
          StyleDisabled.LookAndFeel.SkinName = 'Silver'
          StyleFocused.LookAndFeel.SkinName = 'Silver'
          StyleHot.LookAndFeel.SkinName = 'Silver'
          Transparent = True
        end
        object cxTextureOffsetZ: TcxCurrencyEdit
          Left = 12
          Top = 58
          EditValue = 0.000000000000000000
          Properties.Alignment.Horz = taRightJustify
          Properties.DecimalPlaces = 8
          Properties.DisplayFormat = ',0.00000000'
          Properties.OnValidate = cxTextureOffsetXPropertiesValidate
          Style.LookAndFeel.SkinName = 'Silver'
          StyleDisabled.LookAndFeel.SkinName = 'Silver'
          StyleFocused.LookAndFeel.SkinName = 'Silver'
          StyleHot.LookAndFeel.SkinName = 'Silver'
          TabOrder = 4
          Width = 90
        end
        object cxLabel3: TcxLabel
          Left = 3
          Top = 59
          Caption = 'Z'
          Style.LookAndFeel.SkinName = 'Silver'
          StyleDisabled.LookAndFeel.SkinName = 'Silver'
          StyleFocused.LookAndFeel.SkinName = 'Silver'
          StyleHot.LookAndFeel.SkinName = 'Silver'
          Transparent = True
        end
      end
      object cxGroupBox2: TcxGroupBox
        Left = 673
        Top = 0
        TabStop = True
        Caption = 'TextureScale'
        Style.LookAndFeel.SkinName = 'Silver'
        Style.TextStyle = [fsUnderline]
        StyleDisabled.LookAndFeel.SkinName = 'Silver'
        StyleFocused.LookAndFeel.SkinName = 'Silver'
        StyleHot.LookAndFeel.SkinName = 'Silver'
        TabOrder = 2
        Transparent = True
        Height = 86
        Width = 107
        object cxTextureScaleX: TcxCurrencyEdit
          Left = 11
          Top = 15
          EditValue = 1.000000000000000000
          Properties.Alignment.Horz = taRightJustify
          Properties.DecimalPlaces = 8
          Properties.DisplayFormat = ',0.00000000'
          Properties.OnValidate = cxTextureScaleXPropertiesValidate
          Style.LookAndFeel.SkinName = 'Silver'
          StyleDisabled.LookAndFeel.SkinName = 'Silver'
          StyleFocused.LookAndFeel.SkinName = 'Silver'
          StyleHot.LookAndFeel.SkinName = 'Silver'
          TabOrder = 0
          Width = 91
        end
        object cxLabel4: TcxLabel
          Left = 2
          Top = 16
          Caption = 'X'
          Style.LookAndFeel.SkinName = 'Silver'
          StyleDisabled.LookAndFeel.SkinName = 'Silver'
          StyleFocused.LookAndFeel.SkinName = 'Silver'
          StyleHot.LookAndFeel.SkinName = 'Silver'
          Transparent = True
        end
        object cxTextureScaleY: TcxCurrencyEdit
          Left = 11
          Top = 36
          EditValue = 1.000000000000000000
          Properties.Alignment.Horz = taRightJustify
          Properties.DecimalPlaces = 8
          Properties.DisplayFormat = ',0.00000000'
          Properties.OnValidate = cxTextureScaleXPropertiesValidate
          Style.LookAndFeel.SkinName = 'Silver'
          StyleDisabled.LookAndFeel.SkinName = 'Silver'
          StyleFocused.LookAndFeel.SkinName = 'Silver'
          StyleHot.LookAndFeel.SkinName = 'Silver'
          TabOrder = 2
          Width = 91
        end
        object cxLabel5: TcxLabel
          Left = 2
          Top = 37
          Caption = 'Y'
          Style.LookAndFeel.SkinName = 'Silver'
          StyleDisabled.LookAndFeel.SkinName = 'Silver'
          StyleFocused.LookAndFeel.SkinName = 'Silver'
          StyleHot.LookAndFeel.SkinName = 'Silver'
          Transparent = True
        end
        object cxTextureScaleZ: TcxCurrencyEdit
          Left = 11
          Top = 57
          EditValue = 1.000000000000000000
          Properties.Alignment.Horz = taRightJustify
          Properties.DecimalPlaces = 8
          Properties.DisplayFormat = ',0.00000000'
          Properties.OnValidate = cxTextureScaleXPropertiesValidate
          Style.LookAndFeel.SkinName = 'Silver'
          StyleDisabled.LookAndFeel.SkinName = 'Silver'
          StyleFocused.LookAndFeel.SkinName = 'Silver'
          StyleHot.LookAndFeel.SkinName = 'Silver'
          TabOrder = 4
          Width = 91
        end
        object cxLabel6: TcxLabel
          Left = 2
          Top = 58
          Caption = 'Z'
          Style.LookAndFeel.SkinName = 'Silver'
          StyleDisabled.LookAndFeel.SkinName = 'Silver'
          StyleFocused.LookAndFeel.SkinName = 'Silver'
          StyleHot.LookAndFeel.SkinName = 'Silver'
          Transparent = True
        end
      end
      object cxGroupBox3: TcxGroupBox
        Left = 206
        Top = 0
        Caption = #1058#1077#1082#1089#1090#1091#1088#1072
        Style.LookAndFeel.SkinName = 'Silver'
        StyleDisabled.LookAndFeel.SkinName = 'Silver'
        StyleFocused.LookAndFeel.SkinName = 'Silver'
        StyleHot.LookAndFeel.SkinName = 'Silver'
        TabOrder = 3
        Transparent = True
        Height = 258
        Width = 346
        object imgMaterial: TcxImage
          Left = 3
          Top = 16
          TabStop = False
          Properties.Center = False
          Properties.Proportional = False
          Properties.ShowFocusRect = False
          Style.LookAndFeel.SkinName = 'Silver'
          StyleDisabled.LookAndFeel.SkinName = 'Silver'
          StyleFocused.LookAndFeel.SkinName = 'Silver'
          StyleHot.LookAndFeel.SkinName = 'Silver'
          TabOrder = 0
          Height = 164
          Width = 164
        end
        object cbStretchImage: TcxCheckBox
          Left = 172
          Top = 70
          Caption = #1042#1087#1080#1089#1072#1090#1100' '#1082#1072#1088#1090#1080#1085#1082#1091
          Style.LookAndFeel.SkinName = 'Silver'
          StyleDisabled.LookAndFeel.SkinName = 'Silver'
          StyleFocused.LookAndFeel.SkinName = 'Silver'
          StyleHot.LookAndFeel.SkinName = 'Silver'
          TabOrder = 1
          Transparent = True
          OnClick = cbStretchImageClick
          Width = 121
        end
        object cxImageWidth: TcxLabel
          Left = 263
          Top = 40
          Caption = #1064#1080#1088#1080#1085#1072': 0'
          Style.LookAndFeel.SkinName = 'Silver'
          StyleDisabled.LookAndFeel.SkinName = 'Silver'
          StyleFocused.LookAndFeel.SkinName = 'Silver'
          StyleHot.LookAndFeel.SkinName = 'Silver'
          Transparent = True
        end
        object cxImageHeight: TcxLabel
          Left = 266
          Top = 56
          Caption = #1042#1099#1089#1086#1090#1072': 0'
          Style.LookAndFeel.SkinName = 'Silver'
          StyleDisabled.LookAndFeel.SkinName = 'Silver'
          StyleFocused.LookAndFeel.SkinName = 'Silver'
          StyleHot.LookAndFeel.SkinName = 'Silver'
          Transparent = True
        end
        object btnLoadImage: TcxButton
          Left = 173
          Top = 42
          Width = 87
          Height = 25
          Caption = #1054#1090#1082#1088#1099#1090#1100
          LookAndFeel.SkinName = 'Silver'
          TabOrder = 4
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          OnClick = btnLoadImageClick
        end
        object cbDisableImage: TcxCheckBox
          Left = 172
          Top = 88
          Caption = #1047#1072#1087#1088#1077#1090#1080#1090#1100' (Disabled)'
          Style.LookAndFeel.SkinName = 'Silver'
          StyleDisabled.LookAndFeel.SkinName = 'Silver'
          StyleFocused.LookAndFeel.SkinName = 'Silver'
          StyleHot.LookAndFeel.SkinName = 'Silver'
          TabOrder = 5
          Transparent = True
          OnClick = cbDisableImageClick
          Width = 127
        end
        object cxGroupBox6: TcxGroupBox
          Left = 173
          Top = 108
          TabStop = True
          Caption = 'MaterialOptions'
          Style.Edges = [bLeft, bTop, bRight, bBottom]
          Style.LookAndFeel.Kind = lfUltraFlat
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Silver'
          Style.TextStyle = [fsUnderline]
          Style.TransparentBorder = True
          StyleDisabled.LookAndFeel.Kind = lfUltraFlat
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Silver'
          StyleFocused.LookAndFeel.Kind = lfUltraFlat
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Silver'
          StyleHot.LookAndFeel.Kind = lfUltraFlat
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Silver'
          TabOrder = 6
          Transparent = True
          Height = 37
          Width = 168
          object cxNoLighting: TcxCheckBox
            Left = -1
            Top = 13
            Caption = 'moNoLighting'
            Style.LookAndFeel.SkinName = 'Silver'
            StyleDisabled.LookAndFeel.SkinName = 'Silver'
            StyleFocused.LookAndFeel.SkinName = 'Silver'
            StyleHot.LookAndFeel.SkinName = 'Silver'
            TabOrder = 0
            Transparent = True
            OnClick = cxNoLightingClick
            Width = 87
          end
          object cxIgnoreFog: TcxCheckBox
            Left = 83
            Top = 13
            Caption = 'moIgnoreFog'
            Style.LookAndFeel.SkinName = 'Silver'
            StyleDisabled.LookAndFeel.SkinName = 'Silver'
            StyleFocused.LookAndFeel.SkinName = 'Silver'
            StyleHot.LookAndFeel.SkinName = 'Silver'
            TabOrder = 1
            Transparent = True
            OnClick = cxIgnoreFogClick
            Width = 89
          end
        end
        object cbBlendingMode: TcxComboBox
          Left = 171
          Top = 161
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            'bmOpaque'
            'bmTransparency'
            'bmAdditive'
            'bmAlphaTest50'
            'bmAlphaTest100'
            'bmModulate')
          Properties.OnChange = cbBlendingModePropertiesChange
          Style.LookAndFeel.SkinName = 'Silver'
          StyleDisabled.LookAndFeel.SkinName = 'Silver'
          StyleFocused.LookAndFeel.SkinName = 'Silver'
          StyleHot.LookAndFeel.SkinName = 'Silver'
          TabOrder = 7
          Text = 'bmOpaque'
          Width = 84
        end
        object cxLabel7: TcxLabel
          Left = 170
          Top = 146
          Caption = 'BlendingMode'
          Style.LookAndFeel.SkinName = 'Silver'
          Style.TextStyle = [fsUnderline]
          StyleDisabled.LookAndFeel.SkinName = 'Silver'
          StyleFocused.LookAndFeel.SkinName = 'Silver'
          StyleHot.LookAndFeel.SkinName = 'Silver'
          Transparent = True
        end
        object cxLabel8: TcxLabel
          Left = 257
          Top = 146
          Caption = 'FaceCulling'
          Style.LookAndFeel.SkinName = 'Silver'
          Style.TextStyle = [fsUnderline]
          StyleDisabled.LookAndFeel.SkinName = 'Silver'
          StyleFocused.LookAndFeel.SkinName = 'Silver'
          StyleHot.LookAndFeel.SkinName = 'Silver'
          Transparent = True
        end
        object cbFaceCulling: TcxComboBox
          Left = 258
          Top = 161
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            'fcBufferDefault'
            'fcCull'
            'fcNoCull')
          Properties.OnChange = cbFaceCullingPropertiesChange
          Style.LookAndFeel.SkinName = 'Silver'
          StyleDisabled.LookAndFeel.SkinName = 'Silver'
          StyleFocused.LookAndFeel.SkinName = 'Silver'
          StyleHot.LookAndFeel.SkinName = 'Silver'
          TabOrder = 10
          Text = 'fcBufferDefault'
          Width = 84
        end
        object cxLabel9: TcxLabel
          Left = 3
          Top = 181
          Caption = 'TextureMode'
          Style.LookAndFeel.SkinName = 'Silver'
          Style.TextStyle = [fsUnderline]
          StyleDisabled.LookAndFeel.SkinName = 'Silver'
          StyleFocused.LookAndFeel.SkinName = 'Silver'
          StyleHot.LookAndFeel.SkinName = 'Silver'
          Transparent = True
        end
        object cbTextureMode: TcxComboBox
          Left = 3
          Top = 196
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            'tmDecal'
            'tmModulate'
            'tmBlend'
            'tmReplace')
          Properties.OnChange = cbTextureModePropertiesChange
          Style.LookAndFeel.SkinName = 'Silver'
          StyleDisabled.LookAndFeel.SkinName = 'Silver'
          StyleFocused.LookAndFeel.SkinName = 'Silver'
          StyleHot.LookAndFeel.SkinName = 'Silver'
          TabOrder = 12
          Text = 'tmModulate'
          Width = 84
        end
        object cxLabel10: TcxLabel
          Left = 91
          Top = 181
          Caption = 'ImageAlpha'
          Style.LookAndFeel.SkinName = 'Silver'
          Style.TextStyle = [fsUnderline]
          StyleDisabled.LookAndFeel.SkinName = 'Silver'
          StyleFocused.LookAndFeel.SkinName = 'Silver'
          StyleHot.LookAndFeel.SkinName = 'Silver'
          Transparent = True
        end
        object cbImageAlpha: TcxComboBox
          Left = 92
          Top = 196
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            'tiaDefault'
            'tiaAlphaFromIntensity'
            'tiaSuperBlackTransparent'
            'tiaLuminance'
            'tiaLuminanceSqrt'
            'tiaOpaque'
            'tiaTopLeftPointColorTransparent'
            'tiaInverseLuminance'
            'tiaInverseLuminanceSqrt'
            'tiaBottomRightPointColorTransparent')
          Properties.OnChange = cbImageAlphaPropertiesChange
          Style.LookAndFeel.SkinName = 'Silver'
          StyleDisabled.LookAndFeel.SkinName = 'Silver'
          StyleFocused.LookAndFeel.SkinName = 'Silver'
          StyleHot.LookAndFeel.SkinName = 'Silver'
          TabOrder = 14
          Text = 'tiaDefault'
          Width = 163
        end
        object cxLabel11: TcxLabel
          Left = 257
          Top = 181
          Caption = 'TextureFormat'
          Style.LookAndFeel.SkinName = 'Silver'
          Style.TextStyle = [fsUnderline]
          StyleDisabled.LookAndFeel.SkinName = 'Silver'
          StyleFocused.LookAndFeel.SkinName = 'Silver'
          StyleHot.LookAndFeel.SkinName = 'Silver'
          Transparent = True
        end
        object cbTextureFormat: TcxComboBox
          Left = 258
          Top = 196
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            'tfDefault'
            'tfRGB'
            'tfRGBA'
            'tfRGB16'
            'tfRGBA16'
            'tfAlpha'
            'tfLuminance'
            'tfLuminanceAlpha'
            'tfIntensity'
            'tfNormalMap'
            'tfRGBAFloat16'
            'tfRGBAFloat32')
          Properties.OnChange = cbTextureFormatPropertiesChange
          Style.LookAndFeel.SkinName = 'Silver'
          StyleDisabled.LookAndFeel.SkinName = 'Silver'
          StyleFocused.LookAndFeel.SkinName = 'Silver'
          StyleHot.LookAndFeel.SkinName = 'Silver'
          TabOrder = 16
          Text = 'tfDefault'
          Width = 84
        end
        object cxLabel12: TcxLabel
          Left = 117
          Top = 216
          Caption = 'MinFilter'
          Style.LookAndFeel.SkinName = 'Silver'
          Style.TextStyle = [fsUnderline]
          StyleDisabled.LookAndFeel.SkinName = 'Silver'
          StyleFocused.LookAndFeel.SkinName = 'Silver'
          StyleHot.LookAndFeel.SkinName = 'Silver'
          Transparent = True
        end
        object cbMinFilter: TcxComboBox
          Left = 118
          Top = 231
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            'miNearest'
            'miLinear'
            'miNearestMipmapNearest'
            'miLinearMipmapNearest'
            'miNearestMipmapLinear'
            'miLinearMipmapLinear')
          Properties.OnChange = cbMinFilterPropertiesChange
          Style.LookAndFeel.SkinName = 'Silver'
          StyleDisabled.LookAndFeel.SkinName = 'Silver'
          StyleFocused.LookAndFeel.SkinName = 'Silver'
          StyleHot.LookAndFeel.SkinName = 'Silver'
          TabOrder = 18
          Text = 'miLinearMipmapLinear'
          Width = 137
        end
        object cxLabel13: TcxLabel
          Left = 3
          Top = 216
          Caption = 'MagFilter'
          Style.LookAndFeel.SkinName = 'Silver'
          Style.TextStyle = [fsUnderline]
          StyleDisabled.LookAndFeel.SkinName = 'Silver'
          StyleFocused.LookAndFeel.SkinName = 'Silver'
          StyleHot.LookAndFeel.SkinName = 'Silver'
          Transparent = True
        end
        object cbMagFilter: TcxComboBox
          Left = 3
          Top = 231
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            'maNearest'
            'maLinear')
          Properties.OnChange = cbMagFilterPropertiesChange
          Style.LookAndFeel.SkinName = 'Silver'
          StyleDisabled.LookAndFeel.SkinName = 'Silver'
          StyleFocused.LookAndFeel.SkinName = 'Silver'
          StyleHot.LookAndFeel.SkinName = 'Silver'
          TabOrder = 20
          Text = 'maLinear'
          Width = 111
        end
        object cxLabel14: TcxLabel
          Left = 258
          Top = 216
          Caption = 'FilteringQuality'
          Style.LookAndFeel.SkinName = 'Silver'
          Style.TextStyle = [fsUnderline]
          StyleDisabled.LookAndFeel.SkinName = 'Silver'
          StyleFocused.LookAndFeel.SkinName = 'Silver'
          StyleHot.LookAndFeel.SkinName = 'Silver'
          Transparent = True
        end
        object cbFilteringQuality: TcxComboBox
          Left = 259
          Top = 231
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            'tfIsotropic'
            'tfAnisotropic')
          Properties.OnChange = cbFilteringQualityPropertiesChange
          Style.LookAndFeel.SkinName = 'Silver'
          StyleDisabled.LookAndFeel.SkinName = 'Silver'
          StyleFocused.LookAndFeel.SkinName = 'Silver'
          StyleHot.LookAndFeel.SkinName = 'Silver'
          TabOrder = 22
          Text = 'tfAnisotropic'
          Width = 83
        end
        object cxMaterialName: TcxTextEdit
          Left = 173
          Top = 16
          Properties.MaxLength = 255
          Properties.ValidateOnEnter = True
          Properties.OnValidate = cxMaterialNamePropertiesValidate
          Style.LookAndFeel.SkinName = 'Silver'
          StyleDisabled.LookAndFeel.SkinName = 'Silver'
          StyleFocused.LookAndFeel.SkinName = 'Silver'
          StyleHot.LookAndFeel.SkinName = 'Silver'
          TabOrder = 23
          Width = 168
        end
      end
      object cxGroupBox4: TcxGroupBox
        Left = 206
        Top = 260
        Caption = #1062#1074#1077#1090
        Style.Edges = [bLeft, bTop, bRight, bBottom]
        Style.LookAndFeel.SkinName = 'Silver'
        Style.Shadow = False
        StyleDisabled.LookAndFeel.SkinName = 'Silver'
        StyleFocused.LookAndFeel.SkinName = 'Silver'
        StyleHot.LookAndFeel.SkinName = 'Silver'
        TabOrder = 4
        Transparent = True
        Height = 196
        Width = 574
        object cxPageControl1: TcxPageControl
          Left = 3
          Top = 15
          Width = 568
          Height = 171
          Align = alClient
          ParentShowHint = False
          ShowHint = False
          TabOrder = 0
          Properties.ActivePage = sheetFrontProperties
          Properties.TabWidth = 270
          LookAndFeel.SkinName = 'Silver'
          ExplicitTop = 18
          ExplicitHeight = 170
          ClientRectBottom = 165
          ClientRectLeft = 3
          ClientRectRight = 562
          ClientRectTop = 26
          object sheetFrontProperties: TcxTabSheet
            Caption = 'FrontProperties'
            ImageIndex = 0
            object cxGroupBox7: TcxGroupBox
              Left = 0
              Top = 0
              Caption = 'Diffuse'
              Style.LookAndFeel.SkinName = 'Silver'
              Style.TextStyle = [fsUnderline]
              StyleDisabled.LookAndFeel.SkinName = 'Silver'
              StyleFocused.LookAndFeel.SkinName = 'Silver'
              StyleHot.LookAndFeel.SkinName = 'Silver'
              TabOrder = 0
              Height = 105
              Width = 138
              object tbFPDiffuseR: TcxTrackBar
                Tag = 1
                Left = 6
                Top = 18
                Properties.Max = 255
                Properties.ShowTicks = False
                Properties.ThumbHeight = 5
                Properties.ThumbWidth = 5
                Properties.TickSize = 1
                Properties.TrackSize = 1
                Properties.OnChange = TrakBarChange
                Style.LookAndFeel.SkinName = 'Silver'
                StyleDisabled.LookAndFeel.SkinName = 'Silver'
                StyleFocused.LookAndFeel.SkinName = 'Silver'
                StyleHot.LookAndFeel.SkinName = 'Silver'
                TabOrder = 0
                Height = 15
                Width = 105
              end
              object cxFPDiffuseR: TcxCurrencyEdit
                Tag = 1
                Left = 104
                Top = 15
                EditValue = 0.000000000000000000
                Properties.Alignment.Horz = taCenter
                Properties.DecimalPlaces = 0
                Properties.DisplayFormat = ',0'
                Properties.MaxLength = 0
                Properties.MaxValue = 255.000000000000000000
                Properties.UseLeftAlignmentOnEditing = False
                Properties.OnChange = ColorValueChange
                Style.LookAndFeel.SkinName = 'Silver'
                StyleDisabled.LookAndFeel.SkinName = 'Silver'
                StyleFocused.LookAndFeel.SkinName = 'Silver'
                StyleHot.LookAndFeel.SkinName = 'Silver'
                TabOrder = 1
                Width = 31
              end
              object cxLabel15: TcxLabel
                Left = 3
                Top = 16
                Caption = 'R'
                Style.LookAndFeel.SkinName = 'Silver'
                Style.TextColor = clRed
                Style.TextStyle = [fsBold]
                StyleDisabled.LookAndFeel.SkinName = 'Silver'
                StyleFocused.LookAndFeel.SkinName = 'Silver'
                StyleHot.LookAndFeel.SkinName = 'Silver'
                Transparent = True
              end
              object cxLabel16: TcxLabel
                Left = 3
                Top = 37
                Caption = 'G'
                Style.LookAndFeel.SkinName = 'Silver'
                Style.TextColor = clGreen
                Style.TextStyle = [fsBold]
                StyleDisabled.LookAndFeel.SkinName = 'Silver'
                StyleFocused.LookAndFeel.SkinName = 'Silver'
                StyleHot.LookAndFeel.SkinName = 'Silver'
                Transparent = True
              end
              object tbFPDiffuseG: TcxTrackBar
                Tag = 2
                Left = 6
                Top = 39
                Properties.Max = 255
                Properties.ShowTicks = False
                Properties.ThumbHeight = 5
                Properties.ThumbWidth = 5
                Properties.TickSize = 1
                Properties.TrackSize = 1
                Properties.OnChange = TrakBarChange
                Style.LookAndFeel.SkinName = 'Silver'
                StyleDisabled.LookAndFeel.SkinName = 'Silver'
                StyleFocused.LookAndFeel.SkinName = 'Silver'
                StyleHot.LookAndFeel.SkinName = 'Silver'
                TabOrder = 4
                Height = 15
                Width = 105
              end
              object cxFPDiffuseG: TcxCurrencyEdit
                Tag = 2
                Left = 104
                Top = 36
                EditValue = 0.000000000000000000
                Properties.Alignment.Horz = taCenter
                Properties.DecimalPlaces = 0
                Properties.DisplayFormat = ',0'
                Properties.MaxLength = 0
                Properties.MaxValue = 255.000000000000000000
                Properties.UseLeftAlignmentOnEditing = False
                Properties.OnChange = ColorValueChange
                Style.LookAndFeel.SkinName = 'Silver'
                StyleDisabled.LookAndFeel.SkinName = 'Silver'
                StyleFocused.LookAndFeel.SkinName = 'Silver'
                StyleHot.LookAndFeel.SkinName = 'Silver'
                TabOrder = 5
                Width = 31
              end
              object cxLabel17: TcxLabel
                Left = 3
                Top = 58
                Caption = 'B'
                Style.LookAndFeel.SkinName = 'Silver'
                Style.TextColor = clBlue
                Style.TextStyle = [fsBold]
                StyleDisabled.LookAndFeel.SkinName = 'Silver'
                StyleFocused.LookAndFeel.SkinName = 'Silver'
                StyleHot.LookAndFeel.SkinName = 'Silver'
                Transparent = True
              end
              object tbFPDiffuseB: TcxTrackBar
                Tag = 3
                Left = 6
                Top = 60
                Properties.Max = 255
                Properties.ShowTicks = False
                Properties.ThumbHeight = 5
                Properties.ThumbWidth = 5
                Properties.TickSize = 1
                Properties.TrackSize = 1
                Properties.OnChange = TrakBarChange
                Style.LookAndFeel.SkinName = 'Silver'
                StyleDisabled.LookAndFeel.SkinName = 'Silver'
                StyleFocused.LookAndFeel.SkinName = 'Silver'
                StyleHot.LookAndFeel.SkinName = 'Silver'
                TabOrder = 7
                Height = 15
                Width = 105
              end
              object cxFPDiffuseB: TcxCurrencyEdit
                Tag = 3
                Left = 104
                Top = 57
                EditValue = 0.000000000000000000
                Properties.Alignment.Horz = taCenter
                Properties.DecimalPlaces = 0
                Properties.DisplayFormat = ',0'
                Properties.MaxLength = 0
                Properties.MaxValue = 255.000000000000000000
                Properties.UseLeftAlignmentOnEditing = False
                Properties.OnChange = ColorValueChange
                Style.LookAndFeel.SkinName = 'Silver'
                StyleDisabled.LookAndFeel.SkinName = 'Silver'
                StyleFocused.LookAndFeel.SkinName = 'Silver'
                StyleHot.LookAndFeel.SkinName = 'Silver'
                TabOrder = 8
                Width = 31
              end
              object cxLabel18: TcxLabel
                Left = 3
                Top = 79
                Caption = 'A'
                Style.LookAndFeel.SkinName = 'Silver'
                Style.TextColor = clBlack
                Style.TextStyle = [fsBold]
                StyleDisabled.LookAndFeel.SkinName = 'Silver'
                StyleFocused.LookAndFeel.SkinName = 'Silver'
                StyleHot.LookAndFeel.SkinName = 'Silver'
                Transparent = True
              end
              object tbFPDiffuseA: TcxTrackBar
                Tag = 4
                Left = 6
                Top = 81
                Properties.Max = 1000
                Properties.ShowTicks = False
                Properties.ThumbHeight = 5
                Properties.ThumbWidth = 5
                Properties.TickSize = 1
                Properties.TrackSize = 1
                Properties.OnChange = TrakBarChange
                Style.LookAndFeel.SkinName = 'Silver'
                StyleDisabled.LookAndFeel.SkinName = 'Silver'
                StyleFocused.LookAndFeel.SkinName = 'Silver'
                StyleHot.LookAndFeel.SkinName = 'Silver'
                TabOrder = 10
                Height = 15
                Width = 105
              end
              object cxFPDiffuseA: TcxCurrencyEdit
                Tag = 4
                Left = 104
                Top = 78
                EditValue = 0.000000000000000000
                Properties.Alignment.Horz = taCenter
                Properties.DecimalPlaces = 0
                Properties.DisplayFormat = ',0'
                Properties.MaxLength = 0
                Properties.MaxValue = 1000.000000000000000000
                Properties.UseLeftAlignmentOnEditing = False
                Properties.OnChange = ColorValueChange
                Style.LookAndFeel.SkinName = 'Silver'
                StyleDisabled.LookAndFeel.SkinName = 'Silver'
                StyleFocused.LookAndFeel.SkinName = 'Silver'
                StyleHot.LookAndFeel.SkinName = 'Silver'
                TabOrder = 11
                Width = 31
              end
            end
            object cxGroupBox8: TcxGroupBox
              Left = 141
              Top = 0
              Caption = 'Ambient'
              Style.LookAndFeel.SkinName = 'Silver'
              Style.TextStyle = [fsUnderline]
              StyleDisabled.LookAndFeel.SkinName = 'Silver'
              StyleFocused.LookAndFeel.SkinName = 'Silver'
              StyleHot.LookAndFeel.SkinName = 'Silver'
              TabOrder = 1
              Height = 105
              Width = 138
              object tbFPAmbientR: TcxTrackBar
                Tag = 5
                Left = 6
                Top = 18
                Properties.Max = 255
                Properties.ShowTicks = False
                Properties.ThumbHeight = 5
                Properties.ThumbWidth = 5
                Properties.TickSize = 1
                Properties.TrackSize = 1
                Properties.OnChange = TrakBarChange
                Style.LookAndFeel.SkinName = 'Silver'
                StyleDisabled.LookAndFeel.SkinName = 'Silver'
                StyleFocused.LookAndFeel.SkinName = 'Silver'
                StyleHot.LookAndFeel.SkinName = 'Silver'
                TabOrder = 0
                Height = 15
                Width = 105
              end
              object cxFPAmbientR: TcxCurrencyEdit
                Tag = 5
                Left = 104
                Top = 15
                EditValue = 0.000000000000000000
                Properties.Alignment.Horz = taCenter
                Properties.DecimalPlaces = 0
                Properties.DisplayFormat = ',0'
                Properties.MaxLength = 0
                Properties.MaxValue = 255.000000000000000000
                Properties.UseLeftAlignmentOnEditing = False
                Properties.OnChange = ColorValueChange
                Style.LookAndFeel.SkinName = 'Silver'
                StyleDisabled.LookAndFeel.SkinName = 'Silver'
                StyleFocused.LookAndFeel.SkinName = 'Silver'
                StyleHot.LookAndFeel.SkinName = 'Silver'
                TabOrder = 1
                Width = 31
              end
              object cxLabel19: TcxLabel
                Left = 3
                Top = 16
                Caption = 'R'
                Style.LookAndFeel.SkinName = 'Silver'
                Style.TextColor = clRed
                Style.TextStyle = [fsBold]
                StyleDisabled.LookAndFeel.SkinName = 'Silver'
                StyleFocused.LookAndFeel.SkinName = 'Silver'
                StyleHot.LookAndFeel.SkinName = 'Silver'
                Transparent = True
              end
              object cxLabel20: TcxLabel
                Left = 3
                Top = 37
                Caption = 'G'
                Style.LookAndFeel.SkinName = 'Silver'
                Style.TextColor = clGreen
                Style.TextStyle = [fsBold]
                StyleDisabled.LookAndFeel.SkinName = 'Silver'
                StyleFocused.LookAndFeel.SkinName = 'Silver'
                StyleHot.LookAndFeel.SkinName = 'Silver'
                Transparent = True
              end
              object tbFPAmbientG: TcxTrackBar
                Tag = 6
                Left = 6
                Top = 39
                Properties.Max = 255
                Properties.ShowTicks = False
                Properties.ThumbHeight = 5
                Properties.ThumbWidth = 5
                Properties.TickSize = 1
                Properties.TrackSize = 1
                Properties.OnChange = TrakBarChange
                Style.LookAndFeel.SkinName = 'Silver'
                StyleDisabled.LookAndFeel.SkinName = 'Silver'
                StyleFocused.LookAndFeel.SkinName = 'Silver'
                StyleHot.LookAndFeel.SkinName = 'Silver'
                TabOrder = 4
                Height = 15
                Width = 105
              end
              object cxFPAmbientG: TcxCurrencyEdit
                Tag = 6
                Left = 104
                Top = 36
                EditValue = 0.000000000000000000
                Properties.Alignment.Horz = taCenter
                Properties.DecimalPlaces = 0
                Properties.DisplayFormat = ',0'
                Properties.MaxLength = 0
                Properties.MaxValue = 255.000000000000000000
                Properties.UseLeftAlignmentOnEditing = False
                Properties.OnChange = ColorValueChange
                Style.LookAndFeel.SkinName = 'Silver'
                StyleDisabled.LookAndFeel.SkinName = 'Silver'
                StyleFocused.LookAndFeel.SkinName = 'Silver'
                StyleHot.LookAndFeel.SkinName = 'Silver'
                TabOrder = 5
                Width = 31
              end
              object cxLabel21: TcxLabel
                Left = 3
                Top = 58
                Caption = 'B'
                Style.LookAndFeel.SkinName = 'Silver'
                Style.TextColor = clBlue
                Style.TextStyle = [fsBold]
                StyleDisabled.LookAndFeel.SkinName = 'Silver'
                StyleFocused.LookAndFeel.SkinName = 'Silver'
                StyleHot.LookAndFeel.SkinName = 'Silver'
                Transparent = True
              end
              object tbFPAmbientB: TcxTrackBar
                Tag = 7
                Left = 6
                Top = 60
                Properties.Max = 255
                Properties.ShowTicks = False
                Properties.ThumbHeight = 5
                Properties.ThumbWidth = 5
                Properties.TickSize = 1
                Properties.TrackSize = 1
                Properties.OnChange = TrakBarChange
                Style.LookAndFeel.SkinName = 'Silver'
                StyleDisabled.LookAndFeel.SkinName = 'Silver'
                StyleFocused.LookAndFeel.SkinName = 'Silver'
                StyleHot.LookAndFeel.SkinName = 'Silver'
                TabOrder = 7
                Height = 15
                Width = 105
              end
              object cxFPAmbientB: TcxCurrencyEdit
                Tag = 7
                Left = 104
                Top = 57
                EditValue = 0.000000000000000000
                Properties.Alignment.Horz = taCenter
                Properties.DecimalPlaces = 0
                Properties.DisplayFormat = ',0'
                Properties.MaxLength = 0
                Properties.MaxValue = 255.000000000000000000
                Properties.UseLeftAlignmentOnEditing = False
                Properties.OnChange = ColorValueChange
                Style.LookAndFeel.SkinName = 'Silver'
                StyleDisabled.LookAndFeel.SkinName = 'Silver'
                StyleFocused.LookAndFeel.SkinName = 'Silver'
                StyleHot.LookAndFeel.SkinName = 'Silver'
                TabOrder = 8
                Width = 31
              end
              object cxLabel22: TcxLabel
                Left = 3
                Top = 79
                Caption = 'A'
                Style.LookAndFeel.SkinName = 'Silver'
                Style.TextColor = clBlack
                Style.TextStyle = [fsBold]
                StyleDisabled.LookAndFeel.SkinName = 'Silver'
                StyleFocused.LookAndFeel.SkinName = 'Silver'
                StyleHot.LookAndFeel.SkinName = 'Silver'
                Transparent = True
              end
              object tbFPAmbientA: TcxTrackBar
                Tag = 8
                Left = 6
                Top = 81
                Properties.Max = 1000
                Properties.ShowTicks = False
                Properties.ThumbHeight = 5
                Properties.ThumbWidth = 5
                Properties.TickSize = 1
                Properties.TrackSize = 1
                Properties.OnChange = TrakBarChange
                Style.LookAndFeel.SkinName = 'Silver'
                StyleDisabled.LookAndFeel.SkinName = 'Silver'
                StyleFocused.LookAndFeel.SkinName = 'Silver'
                StyleHot.LookAndFeel.SkinName = 'Silver'
                TabOrder = 10
                Height = 15
                Width = 105
              end
              object cxFPAmbientA: TcxCurrencyEdit
                Tag = 8
                Left = 104
                Top = 78
                EditValue = 0.000000000000000000
                Properties.Alignment.Horz = taCenter
                Properties.DecimalPlaces = 0
                Properties.DisplayFormat = ',0'
                Properties.MaxLength = 0
                Properties.MaxValue = 1000.000000000000000000
                Properties.UseLeftAlignmentOnEditing = False
                Properties.OnChange = ColorValueChange
                Style.LookAndFeel.SkinName = 'Silver'
                StyleDisabled.LookAndFeel.SkinName = 'Silver'
                StyleFocused.LookAndFeel.SkinName = 'Silver'
                StyleHot.LookAndFeel.SkinName = 'Silver'
                TabOrder = 11
                Width = 31
              end
            end
            object cxGroupBox9: TcxGroupBox
              Left = 282
              Top = 0
              Caption = 'Emission'
              Style.LookAndFeel.SkinName = 'Silver'
              Style.TextStyle = [fsUnderline]
              StyleDisabled.LookAndFeel.SkinName = 'Silver'
              StyleFocused.LookAndFeel.SkinName = 'Silver'
              StyleHot.LookAndFeel.SkinName = 'Silver'
              TabOrder = 2
              Height = 105
              Width = 138
              object tbFPEmissionR: TcxTrackBar
                Tag = 9
                Left = 6
                Top = 18
                Properties.Max = 255
                Properties.ShowTicks = False
                Properties.ThumbHeight = 5
                Properties.ThumbWidth = 5
                Properties.TickSize = 1
                Properties.TrackSize = 1
                Properties.OnChange = TrakBarChange
                Style.LookAndFeel.SkinName = 'Silver'
                StyleDisabled.LookAndFeel.SkinName = 'Silver'
                StyleFocused.LookAndFeel.SkinName = 'Silver'
                StyleHot.LookAndFeel.SkinName = 'Silver'
                TabOrder = 0
                Height = 15
                Width = 105
              end
              object cxFPEmissionR: TcxCurrencyEdit
                Tag = 9
                Left = 104
                Top = 15
                EditValue = 0.000000000000000000
                Properties.Alignment.Horz = taCenter
                Properties.DecimalPlaces = 0
                Properties.DisplayFormat = ',0'
                Properties.MaxLength = 0
                Properties.MaxValue = 255.000000000000000000
                Properties.UseLeftAlignmentOnEditing = False
                Properties.OnChange = ColorValueChange
                Style.LookAndFeel.SkinName = 'Silver'
                StyleDisabled.LookAndFeel.SkinName = 'Silver'
                StyleFocused.LookAndFeel.SkinName = 'Silver'
                StyleHot.LookAndFeel.SkinName = 'Silver'
                TabOrder = 1
                Width = 31
              end
              object cxLabel23: TcxLabel
                Left = 3
                Top = 16
                Caption = 'R'
                Style.LookAndFeel.SkinName = 'Silver'
                Style.TextColor = clRed
                Style.TextStyle = [fsBold]
                StyleDisabled.LookAndFeel.SkinName = 'Silver'
                StyleFocused.LookAndFeel.SkinName = 'Silver'
                StyleHot.LookAndFeel.SkinName = 'Silver'
                Transparent = True
              end
              object cxLabel24: TcxLabel
                Left = 3
                Top = 37
                Caption = 'G'
                Style.LookAndFeel.SkinName = 'Silver'
                Style.TextColor = clGreen
                Style.TextStyle = [fsBold]
                StyleDisabled.LookAndFeel.SkinName = 'Silver'
                StyleFocused.LookAndFeel.SkinName = 'Silver'
                StyleHot.LookAndFeel.SkinName = 'Silver'
                Transparent = True
              end
              object tbFPEmissionG: TcxTrackBar
                Tag = 10
                Left = 6
                Top = 39
                Properties.Max = 255
                Properties.ShowTicks = False
                Properties.ThumbHeight = 5
                Properties.ThumbWidth = 5
                Properties.TickSize = 1
                Properties.TrackSize = 1
                Properties.OnChange = TrakBarChange
                Style.LookAndFeel.SkinName = 'Silver'
                StyleDisabled.LookAndFeel.SkinName = 'Silver'
                StyleFocused.LookAndFeel.SkinName = 'Silver'
                StyleHot.LookAndFeel.SkinName = 'Silver'
                TabOrder = 4
                Height = 15
                Width = 105
              end
              object cxFPEmissionG: TcxCurrencyEdit
                Tag = 10
                Left = 104
                Top = 36
                EditValue = 0.000000000000000000
                Properties.Alignment.Horz = taCenter
                Properties.DecimalPlaces = 0
                Properties.DisplayFormat = ',0'
                Properties.MaxLength = 0
                Properties.MaxValue = 255.000000000000000000
                Properties.UseLeftAlignmentOnEditing = False
                Properties.OnChange = ColorValueChange
                Style.LookAndFeel.SkinName = 'Silver'
                StyleDisabled.LookAndFeel.SkinName = 'Silver'
                StyleFocused.LookAndFeel.SkinName = 'Silver'
                StyleHot.LookAndFeel.SkinName = 'Silver'
                TabOrder = 5
                Width = 31
              end
              object cxLabel25: TcxLabel
                Left = 3
                Top = 58
                Caption = 'B'
                Style.LookAndFeel.SkinName = 'Silver'
                Style.TextColor = clBlue
                Style.TextStyle = [fsBold]
                StyleDisabled.LookAndFeel.SkinName = 'Silver'
                StyleFocused.LookAndFeel.SkinName = 'Silver'
                StyleHot.LookAndFeel.SkinName = 'Silver'
                Transparent = True
              end
              object tbFPEmissionB: TcxTrackBar
                Tag = 11
                Left = 6
                Top = 60
                Properties.Max = 255
                Properties.ShowTicks = False
                Properties.ThumbHeight = 5
                Properties.ThumbWidth = 5
                Properties.TickSize = 1
                Properties.TrackSize = 1
                Properties.OnChange = TrakBarChange
                Style.LookAndFeel.SkinName = 'Silver'
                StyleDisabled.LookAndFeel.SkinName = 'Silver'
                StyleFocused.LookAndFeel.SkinName = 'Silver'
                StyleHot.LookAndFeel.SkinName = 'Silver'
                TabOrder = 7
                Height = 15
                Width = 105
              end
              object cxFPEmissionB: TcxCurrencyEdit
                Tag = 11
                Left = 104
                Top = 57
                EditValue = 0.000000000000000000
                Properties.Alignment.Horz = taCenter
                Properties.DecimalPlaces = 0
                Properties.DisplayFormat = ',0'
                Properties.MaxLength = 0
                Properties.MaxValue = 255.000000000000000000
                Properties.UseLeftAlignmentOnEditing = False
                Properties.OnChange = ColorValueChange
                Style.LookAndFeel.SkinName = 'Silver'
                StyleDisabled.LookAndFeel.SkinName = 'Silver'
                StyleFocused.LookAndFeel.SkinName = 'Silver'
                StyleHot.LookAndFeel.SkinName = 'Silver'
                TabOrder = 8
                Width = 31
              end
              object cxLabel26: TcxLabel
                Left = 3
                Top = 79
                Caption = 'A'
                Style.LookAndFeel.SkinName = 'Silver'
                Style.TextColor = clBlack
                Style.TextStyle = [fsBold]
                StyleDisabled.LookAndFeel.SkinName = 'Silver'
                StyleFocused.LookAndFeel.SkinName = 'Silver'
                StyleHot.LookAndFeel.SkinName = 'Silver'
                Transparent = True
              end
              object tbFPEmissionA: TcxTrackBar
                Tag = 12
                Left = 6
                Top = 81
                Properties.Max = 1000
                Properties.ShowTicks = False
                Properties.ThumbHeight = 5
                Properties.ThumbWidth = 5
                Properties.TickSize = 1
                Properties.TrackSize = 1
                Properties.OnChange = TrakBarChange
                Style.LookAndFeel.SkinName = 'Silver'
                StyleDisabled.LookAndFeel.SkinName = 'Silver'
                StyleFocused.LookAndFeel.SkinName = 'Silver'
                StyleHot.LookAndFeel.SkinName = 'Silver'
                TabOrder = 10
                Height = 15
                Width = 105
              end
              object cxFPEmissionA: TcxCurrencyEdit
                Tag = 12
                Left = 104
                Top = 78
                EditValue = 0.000000000000000000
                Properties.Alignment.Horz = taCenter
                Properties.DecimalPlaces = 0
                Properties.DisplayFormat = ',0'
                Properties.MaxLength = 0
                Properties.MaxValue = 1000.000000000000000000
                Properties.UseLeftAlignmentOnEditing = False
                Properties.OnChange = ColorValueChange
                Style.LookAndFeel.SkinName = 'Silver'
                StyleDisabled.LookAndFeel.SkinName = 'Silver'
                StyleFocused.LookAndFeel.SkinName = 'Silver'
                StyleHot.LookAndFeel.SkinName = 'Silver'
                TabOrder = 11
                Width = 31
              end
            end
            object cxGroupBox10: TcxGroupBox
              Left = 423
              Top = 0
              Caption = 'Specular'
              Style.LookAndFeel.SkinName = 'Silver'
              Style.TextStyle = [fsUnderline]
              StyleDisabled.LookAndFeel.SkinName = 'Silver'
              StyleFocused.LookAndFeel.SkinName = 'Silver'
              StyleHot.LookAndFeel.SkinName = 'Silver'
              TabOrder = 3
              Height = 105
              Width = 138
              object tbFPSpecularR: TcxTrackBar
                Tag = 13
                Left = 6
                Top = 18
                Properties.Max = 255
                Properties.ShowTicks = False
                Properties.ThumbHeight = 5
                Properties.ThumbWidth = 5
                Properties.TickSize = 1
                Properties.TrackSize = 1
                Properties.OnChange = TrakBarChange
                Style.LookAndFeel.SkinName = 'Silver'
                StyleDisabled.LookAndFeel.SkinName = 'Silver'
                StyleFocused.LookAndFeel.SkinName = 'Silver'
                StyleHot.LookAndFeel.SkinName = 'Silver'
                TabOrder = 0
                Height = 15
                Width = 105
              end
              object cxFPSpecularR: TcxCurrencyEdit
                Tag = 13
                Left = 104
                Top = 15
                EditValue = 0.000000000000000000
                Properties.Alignment.Horz = taCenter
                Properties.DecimalPlaces = 0
                Properties.DisplayFormat = ',0'
                Properties.MaxLength = 0
                Properties.MaxValue = 255.000000000000000000
                Properties.UseLeftAlignmentOnEditing = False
                Properties.OnChange = ColorValueChange
                Style.LookAndFeel.SkinName = 'Silver'
                StyleDisabled.LookAndFeel.SkinName = 'Silver'
                StyleFocused.LookAndFeel.SkinName = 'Silver'
                StyleHot.LookAndFeel.SkinName = 'Silver'
                TabOrder = 1
                Width = 31
              end
              object cxLabel27: TcxLabel
                Left = 3
                Top = 16
                Caption = 'R'
                Style.LookAndFeel.SkinName = 'Silver'
                Style.TextColor = clRed
                Style.TextStyle = [fsBold]
                StyleDisabled.LookAndFeel.SkinName = 'Silver'
                StyleFocused.LookAndFeel.SkinName = 'Silver'
                StyleHot.LookAndFeel.SkinName = 'Silver'
                Transparent = True
              end
              object cxLabel28: TcxLabel
                Left = 3
                Top = 37
                Caption = 'G'
                Style.LookAndFeel.SkinName = 'Silver'
                Style.TextColor = clGreen
                Style.TextStyle = [fsBold]
                StyleDisabled.LookAndFeel.SkinName = 'Silver'
                StyleFocused.LookAndFeel.SkinName = 'Silver'
                StyleHot.LookAndFeel.SkinName = 'Silver'
                Transparent = True
              end
              object tbFPSpecularG: TcxTrackBar
                Tag = 14
                Left = 6
                Top = 39
                Properties.Max = 255
                Properties.ShowTicks = False
                Properties.ThumbHeight = 5
                Properties.ThumbWidth = 5
                Properties.TickSize = 1
                Properties.TrackSize = 1
                Properties.OnChange = TrakBarChange
                Style.LookAndFeel.SkinName = 'Silver'
                StyleDisabled.LookAndFeel.SkinName = 'Silver'
                StyleFocused.LookAndFeel.SkinName = 'Silver'
                StyleHot.LookAndFeel.SkinName = 'Silver'
                TabOrder = 4
                Height = 15
                Width = 105
              end
              object cxFPSpecularG: TcxCurrencyEdit
                Tag = 14
                Left = 104
                Top = 36
                EditValue = 0.000000000000000000
                Properties.Alignment.Horz = taCenter
                Properties.DecimalPlaces = 0
                Properties.DisplayFormat = ',0'
                Properties.MaxLength = 0
                Properties.MaxValue = 255.000000000000000000
                Properties.UseLeftAlignmentOnEditing = False
                Properties.OnChange = ColorValueChange
                Style.LookAndFeel.SkinName = 'Silver'
                StyleDisabled.LookAndFeel.SkinName = 'Silver'
                StyleFocused.LookAndFeel.SkinName = 'Silver'
                StyleHot.LookAndFeel.SkinName = 'Silver'
                TabOrder = 5
                Width = 31
              end
              object cxLabel29: TcxLabel
                Left = 3
                Top = 58
                Caption = 'B'
                Style.LookAndFeel.SkinName = 'Silver'
                Style.TextColor = clBlue
                Style.TextStyle = [fsBold]
                StyleDisabled.LookAndFeel.SkinName = 'Silver'
                StyleFocused.LookAndFeel.SkinName = 'Silver'
                StyleHot.LookAndFeel.SkinName = 'Silver'
                Transparent = True
              end
              object tbFPSpecularB: TcxTrackBar
                Tag = 15
                Left = 6
                Top = 60
                Properties.Max = 255
                Properties.ShowTicks = False
                Properties.ThumbHeight = 5
                Properties.ThumbWidth = 5
                Properties.TickSize = 1
                Properties.TrackSize = 1
                Properties.OnChange = TrakBarChange
                Style.LookAndFeel.SkinName = 'Silver'
                StyleDisabled.LookAndFeel.SkinName = 'Silver'
                StyleFocused.LookAndFeel.SkinName = 'Silver'
                StyleHot.LookAndFeel.SkinName = 'Silver'
                TabOrder = 7
                Height = 15
                Width = 105
              end
              object cxFPSpecularB: TcxCurrencyEdit
                Tag = 15
                Left = 104
                Top = 57
                EditValue = 0.000000000000000000
                Properties.Alignment.Horz = taCenter
                Properties.DecimalPlaces = 0
                Properties.DisplayFormat = ',0'
                Properties.MaxLength = 0
                Properties.MaxValue = 255.000000000000000000
                Properties.UseLeftAlignmentOnEditing = False
                Properties.OnChange = ColorValueChange
                Style.LookAndFeel.SkinName = 'Silver'
                StyleDisabled.LookAndFeel.SkinName = 'Silver'
                StyleFocused.LookAndFeel.SkinName = 'Silver'
                StyleHot.LookAndFeel.SkinName = 'Silver'
                TabOrder = 8
                Width = 31
              end
              object cxLabel30: TcxLabel
                Left = 3
                Top = 79
                Caption = 'A'
                Style.LookAndFeel.SkinName = 'Silver'
                Style.TextColor = clBlack
                Style.TextStyle = [fsBold]
                StyleDisabled.LookAndFeel.SkinName = 'Silver'
                StyleFocused.LookAndFeel.SkinName = 'Silver'
                StyleHot.LookAndFeel.SkinName = 'Silver'
                Transparent = True
              end
              object tbFPSpecularA: TcxTrackBar
                Tag = 16
                Left = 6
                Top = 81
                Properties.Max = 1000
                Properties.ShowTicks = False
                Properties.ThumbHeight = 5
                Properties.ThumbWidth = 5
                Properties.TickSize = 1
                Properties.TrackSize = 1
                Properties.OnChange = TrakBarChange
                Style.LookAndFeel.SkinName = 'Silver'
                StyleDisabled.LookAndFeel.SkinName = 'Silver'
                StyleFocused.LookAndFeel.SkinName = 'Silver'
                StyleHot.LookAndFeel.SkinName = 'Silver'
                TabOrder = 10
                Height = 15
                Width = 105
              end
              object cxFPSpecularA: TcxCurrencyEdit
                Tag = 16
                Left = 104
                Top = 78
                EditValue = 0.000000000000000000
                Properties.Alignment.Horz = taCenter
                Properties.DecimalPlaces = 0
                Properties.DisplayFormat = ',0'
                Properties.MaxLength = 0
                Properties.MaxValue = 1000.000000000000000000
                Properties.UseLeftAlignmentOnEditing = False
                Properties.OnChange = ColorValueChange
                Style.LookAndFeel.SkinName = 'Silver'
                StyleDisabled.LookAndFeel.SkinName = 'Silver'
                StyleFocused.LookAndFeel.SkinName = 'Silver'
                StyleHot.LookAndFeel.SkinName = 'Silver'
                TabOrder = 11
                Width = 31
              end
            end
            object cbFPPoligonMode: TcxComboBox
              Left = 119
              Top = 110
              Properties.DropDownListStyle = lsFixedList
              Properties.Items.Strings = (
                'pmFill'
                'pmLines'
                'pmPoints')
              Properties.OnChange = cbFPPoligonModePropertiesChange
              Style.LookAndFeel.SkinName = 'Silver'
              StyleDisabled.LookAndFeel.SkinName = 'Silver'
              StyleFocused.LookAndFeel.SkinName = 'Silver'
              StyleHot.LookAndFeel.SkinName = 'Silver'
              TabOrder = 4
              Text = 'pmFill'
              Width = 121
            end
            object cxLabel47: TcxLabel
              Left = 55
              Top = 111
              Caption = 'PoligonMode'
              Style.LookAndFeel.SkinName = 'Silver'
              Style.TextStyle = [fsUnderline]
              StyleDisabled.LookAndFeel.SkinName = 'Silver'
              StyleFocused.LookAndFeel.SkinName = 'Silver'
              StyleHot.LookAndFeel.SkinName = 'Silver'
              Transparent = True
            end
            object tbFPShininess: TcxTrackBar
              Tag = 33
              Left = 302
              Top = 108
              Properties.Frequency = 10
              Properties.Max = 128
              Properties.ThumbHeight = 5
              Properties.ThumbWidth = 5
              Properties.TickSize = 1
              Properties.TrackSize = 1
              Properties.OnChange = TrakBarChange
              Style.LookAndFeel.SkinName = 'Silver'
              StyleDisabled.LookAndFeel.SkinName = 'Silver'
              StyleFocused.LookAndFeel.SkinName = 'Silver'
              StyleHot.LookAndFeel.SkinName = 'Silver'
              TabOrder = 6
              Height = 25
              Width = 166
            end
            object cxFPShininess: TcxCurrencyEdit
              Tag = 33
              Left = 466
              Top = 111
              EditValue = 0.000000000000000000
              Properties.Alignment.Horz = taCenter
              Properties.DecimalPlaces = 0
              Properties.DisplayFormat = ',0'
              Properties.MaxLength = 0
              Properties.MaxValue = 128.000000000000000000
              Properties.UseLeftAlignmentOnEditing = False
              Properties.OnChange = ColorValueChange
              Style.LookAndFeel.SkinName = 'Silver'
              StyleDisabled.LookAndFeel.SkinName = 'Silver'
              StyleFocused.LookAndFeel.SkinName = 'Silver'
              StyleHot.LookAndFeel.SkinName = 'Silver'
              TabOrder = 7
              Width = 31
            end
            object cxLabel48: TcxLabel
              Left = 260
              Top = 111
              Caption = 'Shininess'
              Style.LookAndFeel.SkinName = 'Silver'
              Style.TextStyle = [fsUnderline]
              StyleDisabled.LookAndFeel.SkinName = 'Silver'
              StyleFocused.LookAndFeel.SkinName = 'Silver'
              StyleHot.LookAndFeel.SkinName = 'Silver'
              Transparent = True
            end
          end
          object sheetBackProperties: TcxTabSheet
            Caption = 'BackProperties'
            ImageIndex = 1
            object cxGroupBox11: TcxGroupBox
              Left = 0
              Top = 0
              Caption = 'Diffuse'
              Style.LookAndFeel.SkinName = 'Silver'
              Style.TextStyle = [fsUnderline]
              StyleDisabled.LookAndFeel.SkinName = 'Silver'
              StyleFocused.LookAndFeel.SkinName = 'Silver'
              StyleHot.LookAndFeel.SkinName = 'Silver'
              TabOrder = 0
              Height = 105
              Width = 138
              object tbBPDiffuseR: TcxTrackBar
                Tag = 17
                Left = 6
                Top = 18
                Properties.Max = 255
                Properties.ShowTicks = False
                Properties.ThumbHeight = 5
                Properties.ThumbWidth = 5
                Properties.TickSize = 1
                Properties.TrackSize = 1
                Properties.OnChange = TrakBarChange
                Style.LookAndFeel.SkinName = 'Silver'
                StyleDisabled.LookAndFeel.SkinName = 'Silver'
                StyleFocused.LookAndFeel.SkinName = 'Silver'
                StyleHot.LookAndFeel.SkinName = 'Silver'
                TabOrder = 0
                Height = 15
                Width = 105
              end
              object cxBPDiffuseR: TcxCurrencyEdit
                Tag = 17
                Left = 104
                Top = 15
                EditValue = 0.000000000000000000
                Properties.Alignment.Horz = taCenter
                Properties.DecimalPlaces = 0
                Properties.DisplayFormat = ',0'
                Properties.MaxLength = 0
                Properties.MaxValue = 255.000000000000000000
                Properties.UseLeftAlignmentOnEditing = False
                Properties.OnChange = ColorValueChange
                Style.LookAndFeel.SkinName = 'Silver'
                StyleDisabled.LookAndFeel.SkinName = 'Silver'
                StyleFocused.LookAndFeel.SkinName = 'Silver'
                StyleHot.LookAndFeel.SkinName = 'Silver'
                TabOrder = 1
                Width = 31
              end
              object cxLabel31: TcxLabel
                Left = 3
                Top = 16
                Caption = 'R'
                Style.LookAndFeel.SkinName = 'Silver'
                Style.TextColor = clRed
                Style.TextStyle = [fsBold]
                StyleDisabled.LookAndFeel.SkinName = 'Silver'
                StyleFocused.LookAndFeel.SkinName = 'Silver'
                StyleHot.LookAndFeel.SkinName = 'Silver'
                Transparent = True
              end
              object cxLabel32: TcxLabel
                Left = 3
                Top = 37
                Caption = 'G'
                Style.LookAndFeel.SkinName = 'Silver'
                Style.TextColor = clGreen
                Style.TextStyle = [fsBold]
                StyleDisabled.LookAndFeel.SkinName = 'Silver'
                StyleFocused.LookAndFeel.SkinName = 'Silver'
                StyleHot.LookAndFeel.SkinName = 'Silver'
                Transparent = True
              end
              object tbBPDiffuseG: TcxTrackBar
                Tag = 18
                Left = 6
                Top = 39
                Properties.Max = 255
                Properties.ShowTicks = False
                Properties.ThumbHeight = 5
                Properties.ThumbWidth = 5
                Properties.TickSize = 1
                Properties.TrackSize = 1
                Properties.OnChange = TrakBarChange
                Style.LookAndFeel.SkinName = 'Silver'
                StyleDisabled.LookAndFeel.SkinName = 'Silver'
                StyleFocused.LookAndFeel.SkinName = 'Silver'
                StyleHot.LookAndFeel.SkinName = 'Silver'
                TabOrder = 4
                Height = 15
                Width = 105
              end
              object cxBPDiffuseG: TcxCurrencyEdit
                Tag = 18
                Left = 104
                Top = 36
                EditValue = 0.000000000000000000
                Properties.Alignment.Horz = taCenter
                Properties.DecimalPlaces = 0
                Properties.DisplayFormat = ',0'
                Properties.MaxLength = 0
                Properties.MaxValue = 255.000000000000000000
                Properties.UseLeftAlignmentOnEditing = False
                Properties.OnChange = ColorValueChange
                Style.LookAndFeel.SkinName = 'Silver'
                StyleDisabled.LookAndFeel.SkinName = 'Silver'
                StyleFocused.LookAndFeel.SkinName = 'Silver'
                StyleHot.LookAndFeel.SkinName = 'Silver'
                TabOrder = 5
                Width = 31
              end
              object cxLabel33: TcxLabel
                Left = 3
                Top = 58
                Caption = 'B'
                Style.LookAndFeel.SkinName = 'Silver'
                Style.TextColor = clBlue
                Style.TextStyle = [fsBold]
                StyleDisabled.LookAndFeel.SkinName = 'Silver'
                StyleFocused.LookAndFeel.SkinName = 'Silver'
                StyleHot.LookAndFeel.SkinName = 'Silver'
                Transparent = True
              end
              object tbBPDiffuseB: TcxTrackBar
                Tag = 19
                Left = 6
                Top = 60
                Properties.Max = 255
                Properties.ShowTicks = False
                Properties.ThumbHeight = 5
                Properties.ThumbWidth = 5
                Properties.TickSize = 1
                Properties.TrackSize = 1
                Properties.OnChange = TrakBarChange
                Style.LookAndFeel.SkinName = 'Silver'
                StyleDisabled.LookAndFeel.SkinName = 'Silver'
                StyleFocused.LookAndFeel.SkinName = 'Silver'
                StyleHot.LookAndFeel.SkinName = 'Silver'
                TabOrder = 7
                Height = 15
                Width = 105
              end
              object cxBPDiffuseB: TcxCurrencyEdit
                Tag = 19
                Left = 104
                Top = 57
                EditValue = 0.000000000000000000
                Properties.Alignment.Horz = taCenter
                Properties.DecimalPlaces = 0
                Properties.DisplayFormat = ',0'
                Properties.MaxLength = 0
                Properties.MaxValue = 255.000000000000000000
                Properties.UseLeftAlignmentOnEditing = False
                Properties.OnChange = ColorValueChange
                Style.LookAndFeel.SkinName = 'Silver'
                StyleDisabled.LookAndFeel.SkinName = 'Silver'
                StyleFocused.LookAndFeel.SkinName = 'Silver'
                StyleHot.LookAndFeel.SkinName = 'Silver'
                TabOrder = 8
                Width = 31
              end
              object cxLabel34: TcxLabel
                Left = 3
                Top = 79
                Caption = 'A'
                Style.LookAndFeel.SkinName = 'Silver'
                Style.TextColor = clBlack
                Style.TextStyle = [fsBold]
                StyleDisabled.LookAndFeel.SkinName = 'Silver'
                StyleFocused.LookAndFeel.SkinName = 'Silver'
                StyleHot.LookAndFeel.SkinName = 'Silver'
                Transparent = True
              end
              object tbBPDiffuseA: TcxTrackBar
                Tag = 20
                Left = 6
                Top = 81
                Properties.Max = 1000
                Properties.ShowTicks = False
                Properties.ThumbHeight = 5
                Properties.ThumbWidth = 5
                Properties.TickSize = 1
                Properties.TrackSize = 1
                Properties.OnChange = TrakBarChange
                Style.LookAndFeel.SkinName = 'Silver'
                StyleDisabled.LookAndFeel.SkinName = 'Silver'
                StyleFocused.LookAndFeel.SkinName = 'Silver'
                StyleHot.LookAndFeel.SkinName = 'Silver'
                TabOrder = 10
                Height = 15
                Width = 105
              end
              object cxBPDiffuseA: TcxCurrencyEdit
                Tag = 20
                Left = 104
                Top = 78
                EditValue = 0.000000000000000000
                Properties.Alignment.Horz = taCenter
                Properties.DecimalPlaces = 0
                Properties.DisplayFormat = ',0'
                Properties.MaxLength = 0
                Properties.MaxValue = 1000.000000000000000000
                Properties.UseLeftAlignmentOnEditing = False
                Properties.OnChange = ColorValueChange
                Style.LookAndFeel.SkinName = 'Silver'
                StyleDisabled.LookAndFeel.SkinName = 'Silver'
                StyleFocused.LookAndFeel.SkinName = 'Silver'
                StyleHot.LookAndFeel.SkinName = 'Silver'
                TabOrder = 11
                Width = 31
              end
            end
            object cxGroupBox12: TcxGroupBox
              Left = 141
              Top = 0
              Caption = 'Ambient'
              Style.LookAndFeel.SkinName = 'Silver'
              Style.TextStyle = [fsUnderline]
              StyleDisabled.LookAndFeel.SkinName = 'Silver'
              StyleFocused.LookAndFeel.SkinName = 'Silver'
              StyleHot.LookAndFeel.SkinName = 'Silver'
              TabOrder = 1
              Height = 105
              Width = 138
              object tbBPAmbientR: TcxTrackBar
                Tag = 21
                Left = 6
                Top = 18
                Properties.Max = 255
                Properties.ShowTicks = False
                Properties.ThumbHeight = 5
                Properties.ThumbWidth = 5
                Properties.TickSize = 1
                Properties.TrackSize = 1
                Properties.OnChange = TrakBarChange
                Style.LookAndFeel.SkinName = 'Silver'
                StyleDisabled.LookAndFeel.SkinName = 'Silver'
                StyleFocused.LookAndFeel.SkinName = 'Silver'
                StyleHot.LookAndFeel.SkinName = 'Silver'
                TabOrder = 0
                Height = 15
                Width = 105
              end
              object cxBPAmbientR: TcxCurrencyEdit
                Tag = 21
                Left = 104
                Top = 15
                EditValue = 0.000000000000000000
                Properties.Alignment.Horz = taCenter
                Properties.DecimalPlaces = 0
                Properties.DisplayFormat = ',0'
                Properties.MaxLength = 0
                Properties.MaxValue = 255.000000000000000000
                Properties.UseLeftAlignmentOnEditing = False
                Properties.OnChange = ColorValueChange
                Style.LookAndFeel.SkinName = 'Silver'
                StyleDisabled.LookAndFeel.SkinName = 'Silver'
                StyleFocused.LookAndFeel.SkinName = 'Silver'
                StyleHot.LookAndFeel.SkinName = 'Silver'
                TabOrder = 1
                Width = 31
              end
              object cxLabel35: TcxLabel
                Left = 3
                Top = 16
                Caption = 'R'
                Style.LookAndFeel.SkinName = 'Silver'
                Style.TextColor = clRed
                Style.TextStyle = [fsBold]
                StyleDisabled.LookAndFeel.SkinName = 'Silver'
                StyleFocused.LookAndFeel.SkinName = 'Silver'
                StyleHot.LookAndFeel.SkinName = 'Silver'
                Transparent = True
              end
              object cxLabel36: TcxLabel
                Left = 3
                Top = 37
                Caption = 'G'
                Style.LookAndFeel.SkinName = 'Silver'
                Style.TextColor = clGreen
                Style.TextStyle = [fsBold]
                StyleDisabled.LookAndFeel.SkinName = 'Silver'
                StyleFocused.LookAndFeel.SkinName = 'Silver'
                StyleHot.LookAndFeel.SkinName = 'Silver'
                Transparent = True
              end
              object tbBPAmbientG: TcxTrackBar
                Tag = 22
                Left = 6
                Top = 39
                Properties.Max = 255
                Properties.ShowTicks = False
                Properties.ThumbHeight = 5
                Properties.ThumbWidth = 5
                Properties.TickSize = 1
                Properties.TrackSize = 1
                Properties.OnChange = TrakBarChange
                Style.LookAndFeel.SkinName = 'Silver'
                StyleDisabled.LookAndFeel.SkinName = 'Silver'
                StyleFocused.LookAndFeel.SkinName = 'Silver'
                StyleHot.LookAndFeel.SkinName = 'Silver'
                TabOrder = 4
                Height = 15
                Width = 105
              end
              object cxBPAmbientG: TcxCurrencyEdit
                Tag = 22
                Left = 104
                Top = 36
                EditValue = 0.000000000000000000
                Properties.Alignment.Horz = taCenter
                Properties.DecimalPlaces = 0
                Properties.DisplayFormat = ',0'
                Properties.MaxLength = 0
                Properties.MaxValue = 255.000000000000000000
                Properties.UseLeftAlignmentOnEditing = False
                Properties.OnChange = ColorValueChange
                Style.LookAndFeel.SkinName = 'Silver'
                StyleDisabled.LookAndFeel.SkinName = 'Silver'
                StyleFocused.LookAndFeel.SkinName = 'Silver'
                StyleHot.LookAndFeel.SkinName = 'Silver'
                TabOrder = 5
                Width = 31
              end
              object cxLabel37: TcxLabel
                Left = 3
                Top = 58
                Caption = 'B'
                Style.LookAndFeel.SkinName = 'Silver'
                Style.TextColor = clBlue
                Style.TextStyle = [fsBold]
                StyleDisabled.LookAndFeel.SkinName = 'Silver'
                StyleFocused.LookAndFeel.SkinName = 'Silver'
                StyleHot.LookAndFeel.SkinName = 'Silver'
                Transparent = True
              end
              object tbBPAmbientB: TcxTrackBar
                Tag = 23
                Left = 6
                Top = 60
                Properties.Max = 255
                Properties.ShowTicks = False
                Properties.ThumbHeight = 5
                Properties.ThumbWidth = 5
                Properties.TickSize = 1
                Properties.TrackSize = 1
                Properties.OnChange = TrakBarChange
                Style.LookAndFeel.SkinName = 'Silver'
                StyleDisabled.LookAndFeel.SkinName = 'Silver'
                StyleFocused.LookAndFeel.SkinName = 'Silver'
                StyleHot.LookAndFeel.SkinName = 'Silver'
                TabOrder = 7
                Height = 15
                Width = 105
              end
              object cxBPAmbientB: TcxCurrencyEdit
                Tag = 23
                Left = 104
                Top = 57
                EditValue = 0.000000000000000000
                Properties.Alignment.Horz = taCenter
                Properties.DecimalPlaces = 0
                Properties.DisplayFormat = ',0'
                Properties.MaxLength = 0
                Properties.MaxValue = 255.000000000000000000
                Properties.UseLeftAlignmentOnEditing = False
                Properties.OnChange = ColorValueChange
                Style.LookAndFeel.SkinName = 'Silver'
                StyleDisabled.LookAndFeel.SkinName = 'Silver'
                StyleFocused.LookAndFeel.SkinName = 'Silver'
                StyleHot.LookAndFeel.SkinName = 'Silver'
                TabOrder = 8
                Width = 31
              end
              object cxLabel38: TcxLabel
                Left = 3
                Top = 79
                Caption = 'A'
                Style.LookAndFeel.SkinName = 'Silver'
                Style.TextColor = clBlack
                Style.TextStyle = [fsBold]
                StyleDisabled.LookAndFeel.SkinName = 'Silver'
                StyleFocused.LookAndFeel.SkinName = 'Silver'
                StyleHot.LookAndFeel.SkinName = 'Silver'
                Transparent = True
              end
              object tbBPAmbientA: TcxTrackBar
                Tag = 24
                Left = 6
                Top = 81
                Properties.Max = 1000
                Properties.ShowTicks = False
                Properties.ThumbHeight = 5
                Properties.ThumbWidth = 5
                Properties.TickSize = 1
                Properties.TrackSize = 1
                Properties.OnChange = TrakBarChange
                Style.LookAndFeel.SkinName = 'Silver'
                StyleDisabled.LookAndFeel.SkinName = 'Silver'
                StyleFocused.LookAndFeel.SkinName = 'Silver'
                StyleHot.LookAndFeel.SkinName = 'Silver'
                TabOrder = 10
                Height = 15
                Width = 105
              end
              object cxBPAmbientA: TcxCurrencyEdit
                Tag = 24
                Left = 104
                Top = 78
                EditValue = 0.000000000000000000
                Properties.Alignment.Horz = taCenter
                Properties.DecimalPlaces = 0
                Properties.DisplayFormat = ',0'
                Properties.MaxLength = 0
                Properties.MaxValue = 1000.000000000000000000
                Properties.UseLeftAlignmentOnEditing = False
                Properties.OnChange = ColorValueChange
                Style.LookAndFeel.SkinName = 'Silver'
                StyleDisabled.LookAndFeel.SkinName = 'Silver'
                StyleFocused.LookAndFeel.SkinName = 'Silver'
                StyleHot.LookAndFeel.SkinName = 'Silver'
                TabOrder = 11
                Width = 31
              end
            end
            object cxGroupBox13: TcxGroupBox
              Left = 282
              Top = 0
              Caption = 'Emission'
              Style.LookAndFeel.SkinName = 'Silver'
              Style.TextStyle = [fsUnderline]
              StyleDisabled.LookAndFeel.SkinName = 'Silver'
              StyleFocused.LookAndFeel.SkinName = 'Silver'
              StyleHot.LookAndFeel.SkinName = 'Silver'
              TabOrder = 2
              Height = 105
              Width = 138
              object tbBPEmissionR: TcxTrackBar
                Tag = 25
                Left = 6
                Top = 18
                Properties.Max = 255
                Properties.ShowTicks = False
                Properties.ThumbHeight = 5
                Properties.ThumbWidth = 5
                Properties.TickSize = 1
                Properties.TrackSize = 1
                Properties.OnChange = TrakBarChange
                Style.LookAndFeel.SkinName = 'Silver'
                StyleDisabled.LookAndFeel.SkinName = 'Silver'
                StyleFocused.LookAndFeel.SkinName = 'Silver'
                StyleHot.LookAndFeel.SkinName = 'Silver'
                TabOrder = 0
                Height = 15
                Width = 105
              end
              object cxBPEmissionR: TcxCurrencyEdit
                Tag = 25
                Left = 104
                Top = 14
                EditValue = 0.000000000000000000
                Properties.Alignment.Horz = taCenter
                Properties.DecimalPlaces = 0
                Properties.DisplayFormat = ',0'
                Properties.MaxLength = 0
                Properties.MaxValue = 255.000000000000000000
                Properties.UseLeftAlignmentOnEditing = False
                Properties.OnChange = ColorValueChange
                Style.LookAndFeel.SkinName = 'Silver'
                StyleDisabled.LookAndFeel.SkinName = 'Silver'
                StyleFocused.LookAndFeel.SkinName = 'Silver'
                StyleHot.LookAndFeel.SkinName = 'Silver'
                TabOrder = 1
                Width = 31
              end
              object cxLabel39: TcxLabel
                Left = 3
                Top = 16
                Caption = 'R'
                Style.LookAndFeel.SkinName = 'Silver'
                Style.TextColor = clRed
                Style.TextStyle = [fsBold]
                StyleDisabled.LookAndFeel.SkinName = 'Silver'
                StyleFocused.LookAndFeel.SkinName = 'Silver'
                StyleHot.LookAndFeel.SkinName = 'Silver'
                Transparent = True
              end
              object cxLabel40: TcxLabel
                Left = 3
                Top = 37
                Caption = 'G'
                Style.LookAndFeel.SkinName = 'Silver'
                Style.TextColor = clGreen
                Style.TextStyle = [fsBold]
                StyleDisabled.LookAndFeel.SkinName = 'Silver'
                StyleFocused.LookAndFeel.SkinName = 'Silver'
                StyleHot.LookAndFeel.SkinName = 'Silver'
                Transparent = True
              end
              object tbBPEmissionG: TcxTrackBar
                Tag = 26
                Left = 6
                Top = 39
                Properties.Max = 255
                Properties.ShowTicks = False
                Properties.ThumbHeight = 5
                Properties.ThumbWidth = 5
                Properties.TickSize = 1
                Properties.TrackSize = 1
                Properties.OnChange = TrakBarChange
                Style.LookAndFeel.SkinName = 'Silver'
                StyleDisabled.LookAndFeel.SkinName = 'Silver'
                StyleFocused.LookAndFeel.SkinName = 'Silver'
                StyleHot.LookAndFeel.SkinName = 'Silver'
                TabOrder = 4
                Height = 15
                Width = 105
              end
              object cxBPEmissionG: TcxCurrencyEdit
                Tag = 26
                Left = 104
                Top = 36
                EditValue = 0.000000000000000000
                Properties.Alignment.Horz = taCenter
                Properties.DecimalPlaces = 0
                Properties.DisplayFormat = ',0'
                Properties.MaxLength = 0
                Properties.MaxValue = 255.000000000000000000
                Properties.UseLeftAlignmentOnEditing = False
                Properties.OnChange = ColorValueChange
                Style.LookAndFeel.SkinName = 'Silver'
                StyleDisabled.LookAndFeel.SkinName = 'Silver'
                StyleFocused.LookAndFeel.SkinName = 'Silver'
                StyleHot.LookAndFeel.SkinName = 'Silver'
                TabOrder = 5
                Width = 31
              end
              object cxLabel41: TcxLabel
                Left = 3
                Top = 58
                Caption = 'B'
                Style.LookAndFeel.SkinName = 'Silver'
                Style.TextColor = clBlue
                Style.TextStyle = [fsBold]
                StyleDisabled.LookAndFeel.SkinName = 'Silver'
                StyleFocused.LookAndFeel.SkinName = 'Silver'
                StyleHot.LookAndFeel.SkinName = 'Silver'
                Transparent = True
              end
              object tbBPEmissionB: TcxTrackBar
                Tag = 27
                Left = 6
                Top = 60
                Properties.Max = 255
                Properties.ShowTicks = False
                Properties.ThumbHeight = 5
                Properties.ThumbWidth = 5
                Properties.TickSize = 1
                Properties.TrackSize = 1
                Properties.OnChange = TrakBarChange
                Style.LookAndFeel.SkinName = 'Silver'
                StyleDisabled.LookAndFeel.SkinName = 'Silver'
                StyleFocused.LookAndFeel.SkinName = 'Silver'
                StyleHot.LookAndFeel.SkinName = 'Silver'
                TabOrder = 7
                Height = 15
                Width = 105
              end
              object cxBPEmissionB: TcxCurrencyEdit
                Tag = 27
                Left = 104
                Top = 57
                EditValue = 0.000000000000000000
                Properties.Alignment.Horz = taCenter
                Properties.DecimalPlaces = 0
                Properties.DisplayFormat = ',0'
                Properties.MaxLength = 0
                Properties.MaxValue = 255.000000000000000000
                Properties.UseLeftAlignmentOnEditing = False
                Properties.OnChange = ColorValueChange
                Style.LookAndFeel.SkinName = 'Silver'
                StyleDisabled.LookAndFeel.SkinName = 'Silver'
                StyleFocused.LookAndFeel.SkinName = 'Silver'
                StyleHot.LookAndFeel.SkinName = 'Silver'
                TabOrder = 8
                Width = 31
              end
              object cxLabel42: TcxLabel
                Left = 3
                Top = 79
                Caption = 'A'
                Style.LookAndFeel.SkinName = 'Silver'
                Style.TextColor = clBlack
                Style.TextStyle = [fsBold]
                StyleDisabled.LookAndFeel.SkinName = 'Silver'
                StyleFocused.LookAndFeel.SkinName = 'Silver'
                StyleHot.LookAndFeel.SkinName = 'Silver'
                Transparent = True
              end
              object tbBPEmissionA: TcxTrackBar
                Tag = 28
                Left = 6
                Top = 81
                Properties.Max = 1000
                Properties.ShowTicks = False
                Properties.ThumbHeight = 5
                Properties.ThumbWidth = 5
                Properties.TickSize = 1
                Properties.TrackSize = 1
                Properties.OnChange = TrakBarChange
                Style.LookAndFeel.SkinName = 'Silver'
                StyleDisabled.LookAndFeel.SkinName = 'Silver'
                StyleFocused.LookAndFeel.SkinName = 'Silver'
                StyleHot.LookAndFeel.SkinName = 'Silver'
                TabOrder = 10
                Height = 15
                Width = 105
              end
              object cxBPEmissionA: TcxCurrencyEdit
                Tag = 28
                Left = 104
                Top = 78
                EditValue = 0.000000000000000000
                Properties.Alignment.Horz = taCenter
                Properties.DecimalPlaces = 0
                Properties.DisplayFormat = ',0'
                Properties.MaxLength = 0
                Properties.MaxValue = 1000.000000000000000000
                Properties.UseLeftAlignmentOnEditing = False
                Properties.OnChange = ColorValueChange
                Style.LookAndFeel.SkinName = 'Silver'
                StyleDisabled.LookAndFeel.SkinName = 'Silver'
                StyleFocused.LookAndFeel.SkinName = 'Silver'
                StyleHot.LookAndFeel.SkinName = 'Silver'
                TabOrder = 11
                Width = 31
              end
            end
            object cxGroupBox14: TcxGroupBox
              Left = 423
              Top = 0
              Caption = 'Specular'
              Style.LookAndFeel.SkinName = 'Silver'
              Style.TextStyle = [fsUnderline]
              StyleDisabled.LookAndFeel.SkinName = 'Silver'
              StyleFocused.LookAndFeel.SkinName = 'Silver'
              StyleHot.LookAndFeel.SkinName = 'Silver'
              TabOrder = 3
              Height = 105
              Width = 138
              object tbBPSpecularR: TcxTrackBar
                Tag = 29
                Left = 6
                Top = 18
                Properties.Max = 255
                Properties.ShowTicks = False
                Properties.ThumbHeight = 5
                Properties.ThumbWidth = 5
                Properties.TickSize = 1
                Properties.TrackSize = 1
                Properties.OnChange = TrakBarChange
                Style.LookAndFeel.SkinName = 'Silver'
                StyleDisabled.LookAndFeel.SkinName = 'Silver'
                StyleFocused.LookAndFeel.SkinName = 'Silver'
                StyleHot.LookAndFeel.SkinName = 'Silver'
                TabOrder = 0
                Height = 15
                Width = 105
              end
              object cxBPSpecularR: TcxCurrencyEdit
                Tag = 29
                Left = 104
                Top = 15
                EditValue = 0.000000000000000000
                Properties.Alignment.Horz = taCenter
                Properties.DecimalPlaces = 0
                Properties.DisplayFormat = ',0'
                Properties.MaxLength = 0
                Properties.MaxValue = 255.000000000000000000
                Properties.UseLeftAlignmentOnEditing = False
                Properties.OnChange = ColorValueChange
                Style.LookAndFeel.SkinName = 'Silver'
                StyleDisabled.LookAndFeel.SkinName = 'Silver'
                StyleFocused.LookAndFeel.SkinName = 'Silver'
                StyleHot.LookAndFeel.SkinName = 'Silver'
                TabOrder = 1
                Width = 31
              end
              object cxLabel43: TcxLabel
                Left = 3
                Top = 16
                Caption = 'R'
                Style.LookAndFeel.SkinName = 'Silver'
                Style.TextColor = clRed
                Style.TextStyle = [fsBold]
                StyleDisabled.LookAndFeel.SkinName = 'Silver'
                StyleFocused.LookAndFeel.SkinName = 'Silver'
                StyleHot.LookAndFeel.SkinName = 'Silver'
                Transparent = True
              end
              object cxLabel44: TcxLabel
                Left = 3
                Top = 37
                Caption = 'G'
                Style.LookAndFeel.SkinName = 'Silver'
                Style.TextColor = clGreen
                Style.TextStyle = [fsBold]
                StyleDisabled.LookAndFeel.SkinName = 'Silver'
                StyleFocused.LookAndFeel.SkinName = 'Silver'
                StyleHot.LookAndFeel.SkinName = 'Silver'
                Transparent = True
              end
              object tbBPSpecularG: TcxTrackBar
                Tag = 30
                Left = 6
                Top = 40
                Properties.Max = 255
                Properties.ShowTicks = False
                Properties.ThumbHeight = 5
                Properties.ThumbWidth = 5
                Properties.TickSize = 1
                Properties.TrackSize = 1
                Properties.OnChange = TrakBarChange
                Style.LookAndFeel.SkinName = 'Silver'
                StyleDisabled.LookAndFeel.SkinName = 'Silver'
                StyleFocused.LookAndFeel.SkinName = 'Silver'
                StyleHot.LookAndFeel.SkinName = 'Silver'
                TabOrder = 4
                Height = 15
                Width = 105
              end
              object cxBPSpecularG: TcxCurrencyEdit
                Tag = 30
                Left = 104
                Top = 36
                EditValue = 0.000000000000000000
                Properties.Alignment.Horz = taCenter
                Properties.DecimalPlaces = 0
                Properties.DisplayFormat = ',0'
                Properties.MaxLength = 0
                Properties.MaxValue = 255.000000000000000000
                Properties.UseLeftAlignmentOnEditing = False
                Properties.OnChange = ColorValueChange
                Style.LookAndFeel.SkinName = 'Silver'
                StyleDisabled.LookAndFeel.SkinName = 'Silver'
                StyleFocused.LookAndFeel.SkinName = 'Silver'
                StyleHot.LookAndFeel.SkinName = 'Silver'
                TabOrder = 5
                Width = 31
              end
              object cxLabel45: TcxLabel
                Left = 3
                Top = 58
                Caption = 'B'
                Style.LookAndFeel.SkinName = 'Silver'
                Style.TextColor = clBlue
                Style.TextStyle = [fsBold]
                StyleDisabled.LookAndFeel.SkinName = 'Silver'
                StyleFocused.LookAndFeel.SkinName = 'Silver'
                StyleHot.LookAndFeel.SkinName = 'Silver'
                Transparent = True
              end
              object tbBPSpecularB: TcxTrackBar
                Tag = 31
                Left = 6
                Top = 60
                Properties.Max = 255
                Properties.ShowTicks = False
                Properties.ThumbHeight = 5
                Properties.ThumbWidth = 5
                Properties.TickSize = 1
                Properties.TrackSize = 1
                Properties.OnChange = TrakBarChange
                Style.LookAndFeel.SkinName = 'Silver'
                StyleDisabled.LookAndFeel.SkinName = 'Silver'
                StyleFocused.LookAndFeel.SkinName = 'Silver'
                StyleHot.LookAndFeel.SkinName = 'Silver'
                TabOrder = 7
                Height = 15
                Width = 105
              end
              object cxBPSpecularB: TcxCurrencyEdit
                Tag = 31
                Left = 104
                Top = 57
                EditValue = 0.000000000000000000
                Properties.Alignment.Horz = taCenter
                Properties.DecimalPlaces = 0
                Properties.DisplayFormat = ',0'
                Properties.MaxLength = 0
                Properties.MaxValue = 255.000000000000000000
                Properties.UseLeftAlignmentOnEditing = False
                Properties.OnChange = ColorValueChange
                Style.LookAndFeel.SkinName = 'Silver'
                StyleDisabled.LookAndFeel.SkinName = 'Silver'
                StyleFocused.LookAndFeel.SkinName = 'Silver'
                StyleHot.LookAndFeel.SkinName = 'Silver'
                TabOrder = 8
                Width = 31
              end
              object cxLabel46: TcxLabel
                Left = 3
                Top = 79
                Caption = 'A'
                Style.LookAndFeel.SkinName = 'Silver'
                Style.TextColor = clBlack
                Style.TextStyle = [fsBold]
                StyleDisabled.LookAndFeel.SkinName = 'Silver'
                StyleFocused.LookAndFeel.SkinName = 'Silver'
                StyleHot.LookAndFeel.SkinName = 'Silver'
                Transparent = True
              end
              object tbBPSpecularA: TcxTrackBar
                Tag = 32
                Left = 6
                Top = 81
                Properties.Max = 1000
                Properties.ShowTicks = False
                Properties.ThumbHeight = 5
                Properties.ThumbWidth = 5
                Properties.TickSize = 1
                Properties.TrackSize = 1
                Properties.OnChange = TrakBarChange
                Style.LookAndFeel.SkinName = 'Silver'
                StyleDisabled.LookAndFeel.SkinName = 'Silver'
                StyleFocused.LookAndFeel.SkinName = 'Silver'
                StyleHot.LookAndFeel.SkinName = 'Silver'
                TabOrder = 10
                Height = 15
                Width = 105
              end
              object cxBPSpecularA: TcxCurrencyEdit
                Tag = 32
                Left = 104
                Top = 78
                EditValue = 0.000000000000000000
                Properties.Alignment.Horz = taCenter
                Properties.DecimalPlaces = 0
                Properties.DisplayFormat = ',0'
                Properties.MaxLength = 0
                Properties.MaxValue = 1000.000000000000000000
                Properties.UseLeftAlignmentOnEditing = False
                Properties.OnChange = ColorValueChange
                Style.LookAndFeel.SkinName = 'Silver'
                StyleDisabled.LookAndFeel.SkinName = 'Silver'
                StyleFocused.LookAndFeel.SkinName = 'Silver'
                StyleHot.LookAndFeel.SkinName = 'Silver'
                TabOrder = 11
                Width = 31
              end
            end
            object cbBPPoligonMode: TcxComboBox
              Left = 119
              Top = 110
              Properties.DropDownListStyle = lsFixedList
              Properties.Items.Strings = (
                'pmFill'
                'pmLines'
                'pmPoints')
              Properties.OnChange = cbBPPoligonModePropertiesChange
              Style.LookAndFeel.SkinName = 'Silver'
              StyleDisabled.LookAndFeel.SkinName = 'Silver'
              StyleFocused.LookAndFeel.SkinName = 'Silver'
              StyleHot.LookAndFeel.SkinName = 'Silver'
              TabOrder = 4
              Text = 'pmFill'
              Width = 121
            end
            object cxLabel49: TcxLabel
              Left = 55
              Top = 111
              Caption = 'PoligonMode'
              Style.LookAndFeel.SkinName = 'Silver'
              Style.TextStyle = [fsUnderline]
              StyleDisabled.LookAndFeel.SkinName = 'Silver'
              StyleFocused.LookAndFeel.SkinName = 'Silver'
              StyleHot.LookAndFeel.SkinName = 'Silver'
              Transparent = True
            end
            object cxLabel50: TcxLabel
              Left = 260
              Top = 111
              Caption = 'Shininess'
              Style.LookAndFeel.SkinName = 'Silver'
              Style.TextStyle = [fsUnderline]
              StyleDisabled.LookAndFeel.SkinName = 'Silver'
              StyleFocused.LookAndFeel.SkinName = 'Silver'
              StyleHot.LookAndFeel.SkinName = 'Silver'
              Transparent = True
            end
            object tbBPShininess: TcxTrackBar
              Tag = 34
              Left = 302
              Top = 108
              Properties.Frequency = 10
              Properties.Max = 128
              Properties.ThumbHeight = 5
              Properties.ThumbWidth = 5
              Properties.TickSize = 1
              Properties.TrackSize = 1
              Properties.OnChange = TrakBarChange
              Style.LookAndFeel.SkinName = 'Silver'
              StyleDisabled.LookAndFeel.SkinName = 'Silver'
              StyleFocused.LookAndFeel.SkinName = 'Silver'
              StyleHot.LookAndFeel.SkinName = 'Silver'
              TabOrder = 7
              Height = 25
              Width = 166
            end
            object cxBPShininess: TcxCurrencyEdit
              Tag = 34
              Left = 466
              Top = 111
              EditValue = 0.000000000000000000
              Properties.Alignment.Horz = taCenter
              Properties.DecimalPlaces = 0
              Properties.DisplayFormat = ',0'
              Properties.MaxLength = 0
              Properties.MaxValue = 128.000000000000000000
              Properties.UseLeftAlignmentOnEditing = False
              Properties.OnChange = ColorValueChange
              Style.LookAndFeel.SkinName = 'Silver'
              StyleDisabled.LookAndFeel.SkinName = 'Silver'
              StyleFocused.LookAndFeel.SkinName = 'Silver'
              StyleHot.LookAndFeel.SkinName = 'Silver'
              TabOrder = 8
              Width = 31
            end
          end
        end
      end
      object cxGroupBox5: TcxGroupBox
        Left = 558
        Top = 91
        Caption = #1055#1088#1086#1089#1084#1086#1090#1088
        Ctl3D = True
        ParentCtl3D = False
        Style.LookAndFeel.SkinName = 'Silver'
        StyleDisabled.LookAndFeel.SkinName = 'Silver'
        StyleFocused.LookAndFeel.SkinName = 'Silver'
        StyleHot.LookAndFeel.SkinName = 'Silver'
        TabOrder = 5
        Transparent = True
        Height = 167
        Width = 222
        object MaterialViewer: TGLSceneViewer
          Left = 3
          Top = 15
          Width = 216
          Height = 142
          Camera = CameraMaterialViewer
          Buffer.ContextOptions = [roDoubleBuffer, roStencilBuffer, roRenderToWindow]
          Buffer.AntiAliasing = aa4xHQ
          FieldOfView = 109.691642761230500000
          Align = alClient
          OnMouseDown = MaterialViewerMouseDown
          OnMouseMove = MaterialViewerMouseMove
          TabOrder = 0
        end
      end
    end
    object sheetShaders: TcxTabSheet
      Caption = #1064#1077#1081#1076#1077#1088#1099
      ImageIndex = 3
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
    end
    object sheetSounds: TcxTabSheet
      Caption = #1047#1074#1091#1082#1080
      ImageIndex = 4
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
    end
    object sheetMenus: TcxTabSheet
      Caption = #1052#1077#1085#1102#1096#1082#1080
      ImageIndex = 5
      DesignSize = (
        783
        435)
      object gridMenus: TcxGrid
        Left = 5
        Top = 30
        Width = 403
        Height = 402
        Anchors = [akLeft, akTop, akBottom]
        TabOrder = 0
        LookAndFeel.SkinName = 'Silver'
        object gridMenusLevel1: TcxGridLevel
          GridView = tvMenuItems
        end
      end
      object gbViewMenu: TcxGroupBox
        Left = 411
        Top = 93
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = #1055#1088#1086#1089#1084#1086#1090#1088
        Style.LookAndFeel.SkinName = 'Silver'
        StyleDisabled.LookAndFeel.SkinName = 'Silver'
        StyleFocused.LookAndFeel.SkinName = 'Silver'
        StyleHot.LookAndFeel.SkinName = 'Silver'
        TabOrder = 1
        Transparent = True
        Height = 339
        Width = 370
        object GLSceneViewer1: TGLSceneViewer
          Left = 3
          Top = 15
          Width = 364
          Height = 314
          Buffer.BackgroundColor = clBlack
          Align = alClient
          TabOrder = 0
        end
      end
      object btnLoadMainMenu: TcxButton
        Left = 414
        Top = 3
        Width = 75
        Height = 25
        Caption = #1054#1090#1082#1088#1099#1090#1100
        LookAndFeel.SkinName = 'Silver'
        TabOrder = 2
        OnClick = btnLoadMainMenuClick
      end
      object btnSaveMainMenu: TcxButton
        Left = 489
        Top = 3
        Width = 75
        Height = 25
        Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
        LookAndFeel.SkinName = 'Silver'
        TabOrder = 3
        OnClick = btnSaveMainMenuClick
      end
      object cxMenuFileName: TcxTextEdit
        Left = 5
        Top = 3
        Properties.ReadOnly = True
        Style.LookAndFeel.SkinName = 'Silver'
        StyleDisabled.LookAndFeel.SkinName = 'Silver'
        StyleFocused.LookAndFeel.SkinName = 'Silver'
        StyleHot.LookAndFeel.SkinName = 'Silver'
        TabOrder = 4
        Width = 403
      end
      object btnMenuRight: TcxRadioButton
        Left = 414
        Top = 51
        Width = 64
        Height = 17
        Caption = #1057#1087#1088#1072#1074#1072
        Checked = True
        TabOrder = 5
        TabStop = True
        LookAndFeel.SkinName = 'Silver'
        Transparent = True
      end
      object btnMenuLeft: TcxRadioButton
        Left = 414
        Top = 34
        Width = 64
        Height = 17
        Caption = #1057#1083#1077#1074#1072
        TabOrder = 6
        LookAndFeel.SkinName = 'Silver'
        Transparent = True
      end
      object cxIndentTop: TcxSpinEdit
        Left = 721
        Top = 3
        Style.LookAndFeel.SkinName = 'Silver'
        StyleDisabled.LookAndFeel.SkinName = 'Silver'
        StyleFocused.LookAndFeel.SkinName = 'Silver'
        StyleHot.LookAndFeel.SkinName = 'Silver'
        TabOrder = 7
        Width = 59
      end
      object cxLabel51: TcxLabel
        Left = 642
        Top = 4
        Caption = #1054#1090#1089#1090#1091#1087' '#1089#1074#1077#1088#1093#1091
        Style.LookAndFeel.SkinName = 'Silver'
        StyleDisabled.LookAndFeel.SkinName = 'Silver'
        StyleFocused.LookAndFeel.SkinName = 'Silver'
        StyleHot.LookAndFeel.SkinName = 'Silver'
        Transparent = True
      end
      object cxLabel52: TcxLabel
        Left = 609
        Top = 28
        Caption = #1054#1090#1089#1090#1091#1087' '#1089#1083#1082#1074#1072'/'#1089#1087#1088#1072#1074#1072
        Style.LookAndFeel.SkinName = 'Silver'
        StyleDisabled.LookAndFeel.SkinName = 'Silver'
        StyleFocused.LookAndFeel.SkinName = 'Silver'
        StyleHot.LookAndFeel.SkinName = 'Silver'
        Transparent = True
      end
      object cxIndentSide: TcxSpinEdit
        Left = 721
        Top = 27
        Style.LookAndFeel.SkinName = 'Silver'
        StyleDisabled.LookAndFeel.SkinName = 'Silver'
        StyleFocused.LookAndFeel.SkinName = 'Silver'
        StyleHot.LookAndFeel.SkinName = 'Silver'
        TabOrder = 10
        Value = 20
        Width = 59
      end
      object cxNameRoot: TcxTextEdit
        Left = 411
        Top = 69
        Properties.ReadOnly = True
        Style.LookAndFeel.SkinName = 'Silver'
        StyleDisabled.LookAndFeel.SkinName = 'Silver'
        StyleFocused.LookAndFeel.SkinName = 'Silver'
        StyleHot.LookAndFeel.SkinName = 'Silver'
        TabOrder = 11
        Text = 'InfoGameMenu'
        Width = 369
      end
    end
  end
  object barStatus: TdxRibbonStatusBar
    Left = 0
    Top = 583
    Width = 792
    Height = 23
    Images = ilButtonsSmall
    Panels = <
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
      end>
    Ribbon = dxRibbon
    LookAndFeel.SkinName = 'Silver'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clDefault
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
  end
  object FScene: TGLScene
    Left = 295
    object dcMaterialViewer: TGLDummyCube
      Position.Coordinates = {00007A4400007A4400007A440000803F}
      CubeSize = 1.000000000000000000
      object lsMaterialViewer: TGLLightSource
        ConstAttenuation = 1.000000000000000000
        Diffuse.Color = {0000000000000000000000000000803F}
        Position.Coordinates = {0000803F00004040000000000000803F}
        SpotCutOff = 90.000000000000000000
        SpotDirection.Coordinates = {00000000000080BF0000000000000000}
      end
      object dodMaterialViewer: TGLDodecahedron
        Material.FrontProperties.Diffuse.Color = {0000000000000000F8F7773FCDCC2C3F}
        Material.BlendingMode = bmTransparency
        Position.Coordinates = {000080BF00000000000080BF0000803F}
        Scale.Coordinates = {0000C03F0000C03F0000C03F00000000}
      end
      object cubeMaterialViewer: TGLCube
        Material.MaterialLibrary = FMaterials
        ShowAxes = True
        object CameraMaterialViewer: TGLCamera
          DepthOfView = 10.000000000000000000
          FocalLength = 50.000000000000000000
          TargetObject = cubeMaterialViewer
          Position.Coordinates = {000020400000803F000060400000803F}
        end
      end
    end
    object dcModelViewer: TGLDummyCube
      Position.Coordinates = {00007AC400007AC400007AC40000803F}
      CubeSize = 1.000000000000000000
      object gridModelViewer: TGLXYZGrid
        Position.Coordinates = {000000C000000000000000C00000803F}
        XSamplingScale.max = 4.000000000000000000
        XSamplingScale.step = 0.200000002980232200
        YSamplingScale.step = 0.100000001490116100
        ZSamplingScale.max = 4.000000000000000000
        ZSamplingScale.step = 0.200000002980232200
        Parts = [gpX, gpZ]
        LinesStyle = glsLine
        object GLLines1: TGLLines
          Position.Coordinates = {0000004017B75139000000000000803F}
          NodeColor.Color = {9A99993E9A99993E9A99993E0000803F}
          Nodes = <
            item
            end
            item
              Z = 4.000000000000000000
            end>
          NodesAspect = lnaInvisible
          Options = [loUseNodeColorForLines]
        end
        object GLLines2: TGLLines
          Position.Coordinates = {0000000017B75139000000400000803F}
          NodeColor.Color = {9A99993E9A99993E9A99993E0000803F}
          Nodes = <
            item
            end
            item
              X = 4.000000000000000000
            end>
          NodesAspect = lnaInvisible
          Options = [loUseNodeColorForLines]
        end
      end
      object dcModelViewerTarget: TGLDummyCube
        Position.Coordinates = {000000000000003F000000000000803F}
        CubeSize = 1.000000000000000000
        EdgeColor.Color = {CDCC0C3FCDCC0C3FCDCC0C3F0000803F}
        VisibleAtRunTime = True
      end
      object CameraModelViewer: TGLCamera
        DepthOfView = 10.000000000000000000
        FocalLength = 50.000000000000000000
        TargetObject = dcModelViewerTarget
        Position.Coordinates = {CDCCCC3FCDCC8C3F000000000000803F}
        object lsModelViewer: TGLLightSource
          ConstAttenuation = 1.000000000000000000
          Diffuse.Color = {0000000000000000000000000000803F}
          SpotCutOff = 180.000000000000000000
        end
      end
    end
    object dcCameraLevel: TGLDummyCube
      CubeSize = 1.000000000000000000
      EdgeColor.Color = {0000803FF8FEFE3E000000000000803F}
      VisibleAtRunTime = True
      object cameraLevel: TGLCamera
        DepthOfView = 900.000000000000000000
        FocalLength = 50.000000000000000000
        TargetObject = dcCameraLevel
        Position.Coordinates = {00000000000000000000A0420000803F}
        Direction.Coordinates = {00000000000000000000803F00000000}
        Up.Coordinates = {000000800000803F0000000000000000}
        object lsLevel: TGLLightSource
          ConstAttenuation = 1.000000000000000000
          LightStyle = lsOmni
          SpotCutOff = 180.000000000000000000
        end
      end
      object gridRoom: TGLXYZGrid
        Position.Coordinates = {000020C10000B0C0000000BF0000803F}
        LineColor.Color = {0000000000000000000000000000803F}
        XSamplingScale.max = 20.000000000000000000
        XSamplingScale.step = 1.000000000000000000
        YSamplingScale.max = 11.000000000000000000
        YSamplingScale.step = 1.000000000000000000
        ZSamplingScale.step = 0.100000001490116100
        LinesStyle = glsLine
      end
    end
    object dcGrid: TGLDummyCube
      CubeSize = 1.000000000000000000
      object gridBack: TGLXYZGrid
        LineColor.Color = {EBE0E03EE4DB5B3F9A93133F0000803F}
        XSamplingScale.step = 1.000000000000000000
        YSamplingScale.step = 1.000000000000000000
        ZSamplingScale.step = 0.100000001490116100
        LinesStyle = glsLine
      end
      object planeBack: TGLPlane
        Height = 11.000000000000000000
        Width = 20.000000000000000000
      end
    end
    object dcMenus: TGLDummyCube
      CubeSize = 1.000000000000000000
    end
  end
  object dxBarManager: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Categories.Strings = (
      #1060#1072#1081#1083
      #1055#1086#1084#1086#1097#1100
      #1044#1077#1081#1089#1090#1074#1080#1103)
    Categories.ItemsVisibles = (
      2
      2
      2)
    Categories.Visibles = (
      True
      True
      True)
    ImageOptions.Images = ilButtonsSmall
    ImageOptions.LargeImages = ilButtonsLarge
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 560
    DockControlHeights = (
      0
      0
      0
      0)
    object barFile: TdxBar
      Caption = #1060#1072#1081#1083
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 835
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnExit'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnLoad'
        end
        item
          Visible = True
          ItemName = 'btnSave'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object barHelp: TdxBar
      Caption = #1055#1086#1084#1086#1097#1100
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 818
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnHelp'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnAbout'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object barActions: TdxBar
      Caption = #1044#1077#1081#1089#1090#1074#1080#1103
      CaptionButtons = <>
      DockedLeft = 199
      DockedTop = 0
      FloatLeft = 818
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnAdd'
        end
        item
          Visible = True
          ItemName = 'btnDelete'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnAutoScale'
        end
        item
          BeginGroup = True
          ViewLevels = [ivlSmallIcon]
          Visible = True
          ItemName = 'btnRotateHorizCCW'
        end
        item
          BeginGroup = True
          ViewLevels = [ivlSmallIcon]
          Visible = True
          ItemName = 'btnRotateVertCCW'
        end
        item
          ViewLevels = [ivlSmallIcon]
          Visible = True
          ItemName = 'btnResetRotation'
        end
        item
          ViewLevels = [ivlSmallIcon]
          Visible = True
          ItemName = 'btnRotateVertCW'
        end
        item
          BeginGroup = True
          ViewLevels = [ivlSmallIcon]
          Visible = True
          ItemName = 'btnRotateHorizCW'
        end
        item
          BeginGroup = True
          ViewLevels = [ivlSmallIcon]
          Visible = True
          ItemName = 'btnMoveLeft'
        end
        item
          ViewLevels = [ivlSmallIcon]
          Visible = True
          ItemName = 'btnMoveBack'
        end
        item
          BeginGroup = True
          ViewLevels = [ivlSmallIcon]
          Visible = True
          ItemName = 'btnMoveUp'
        end
        item
          ViewLevels = [ivlSmallIcon]
          Visible = True
          ItemName = 'btnResetMove'
        end
        item
          ViewLevels = [ivlSmallIcon]
          Visible = True
          ItemName = 'btnMoveDown'
        end
        item
          BeginGroup = True
          ViewLevels = [ivlSmallIcon]
          Visible = True
          ItemName = 'btnMoveFront'
        end
        item
          ViewLevels = [ivlSmallIcon]
          Visible = True
          ItemName = 'btnMoveRight'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnViewMenu'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object btnExit: TdxBarLargeButton
      Caption = #1042#1099#1093#1086#1076
      Category = 0
      Hint = #1042#1099#1093#1086#1076
      Visible = ivAlways
      LargeImageIndex = 0
      OnClick = btnExitClick
      SyncImageIndex = False
      ImageIndex = 0
    end
    object btnLoad: TdxBarLargeButton
      Caption = #1054#1090#1082#1088#1099#1090#1100
      Category = 0
      Hint = #1054#1090#1082#1088#1099#1090#1100
      Visible = ivAlways
      LargeImageIndex = 2
      OnClick = btnLoadClick
    end
    object btnSave: TdxBarLargeButton
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      Category = 0
      Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      Visible = ivAlways
      LargeImageIndex = 1
      OnClick = btnSaveClick
    end
    object btnHelp: TdxBarLargeButton
      Caption = #1057#1087#1088#1072#1074#1082#1072
      Category = 1
      Hint = #1057#1087#1088#1072#1074#1082#1072
      Visible = ivAlways
      LargeImageIndex = 3
    end
    object btnAbout: TdxBarLargeButton
      Caption = #1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
      Category = 1
      Hint = #1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
      Visible = ivAlways
      LargeImageIndex = 4
      SyncImageIndex = False
      ImageIndex = 4
    end
    object btnAdd: TdxBarLargeButton
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      Category = 2
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100
      Visible = ivAlways
      LargeImageIndex = 5
      OnClick = btnAddClick
      SyncImageIndex = False
      ImageIndex = 5
    end
    object btnDelete: TdxBarLargeButton
      Caption = #1059#1076#1072#1083#1080#1090#1100
      Category = 2
      Hint = #1059#1076#1072#1083#1080#1090#1100
      Visible = ivAlways
      LargeImageIndex = 6
      OnClick = btnDeleteClick
      SyncImageIndex = False
      ImageIndex = 6
    end
    object btnAutoScale: TdxBarLargeButton
      Caption = #1040#1074#1090#1086' '#1084#1072#1089#1096#1090#1072#1073
      Category = 2
      Hint = #1040#1074#1090#1086' '#1084#1072#1089#1096#1090#1072#1073
      Visible = ivNever
      LargeImageIndex = 13
      OnClick = btnAutoScaleClick
    end
    object btnRotateVertCW: TdxBarLargeButton
      Caption = #1042#1077#1088#1090#1080#1082#1072#1083#1100#1085#1099#1081' '#1087#1086#1074#1086#1088#1086#1090' '#1085#1072' 90'
      Category = 2
      Hint = #1042#1077#1088#1090#1080#1082#1072#1083#1100#1085#1099#1081' '#1087#1086#1074#1086#1088#1086#1090' '#1085#1072' 90'
      Visible = ivNever
      LargeImageIndex = 11
      OnClick = btnRotateVertCWClick
    end
    object btnRotateVertCCW: TdxBarLargeButton
      Caption = #1042#1077#1088#1090#1080#1082#1072#1083#1100#1085#1099#1081' '#1087#1086#1074#1086#1088#1086#1090' '#1085#1072' -90'
      Category = 2
      Hint = #1042#1077#1088#1090#1080#1082#1072#1083#1100#1085#1099#1081' '#1087#1086#1074#1086#1088#1086#1090' '#1085#1072' -90'
      Visible = ivNever
      LargeImageIndex = 12
      OnClick = btnRotateVertCCWClick
    end
    object btnRotateHorizCW: TdxBarLargeButton
      Caption = #1043#1086#1088#1080#1079#1086#1085#1090#1072#1083#1100#1085#1099#1081' '#1087#1086#1074#1086#1088#1086#1090' '#1085#1072' 90'
      Category = 2
      Hint = #1043#1086#1088#1080#1079#1086#1085#1090#1072#1083#1100#1085#1099#1081' '#1087#1086#1074#1086#1088#1086#1090' '#1085#1072' 90'
      Visible = ivNever
      LargeImageIndex = 12
      OnClick = btnRotateHorizCWClick
    end
    object btnRotateHorizCCW: TdxBarLargeButton
      Caption = #1043#1086#1088#1080#1079#1086#1085#1090#1072#1083#1100#1085#1099#1081' '#1087#1086#1074#1086#1088#1086#1090' '#1085#1072' -90'
      Category = 2
      Hint = #1043#1086#1088#1080#1079#1086#1085#1090#1072#1083#1100#1085#1099#1081' '#1087#1086#1074#1086#1088#1086#1090' '#1085#1072' -90'
      Visible = ivNever
      LargeImageIndex = 11
      OnClick = btnRotateHorizCCWClick
    end
    object btnResetRotation: TdxBarLargeButton
      Caption = #1057#1073#1088#1086#1089' '#1087#1086#1074#1086#1088#1086#1090#1072
      Category = 2
      Hint = #1057#1073#1088#1086#1089' '#1087#1086#1074#1086#1088#1086#1090#1072
      Visible = ivNever
      LargeImageIndex = 14
      OnClick = btnResetRotationClick
    end
    object btnMoveFront: TdxBarLargeButton
      Caption = #1055#1086#1076#1074#1080#1085#1091#1090#1100' '#1074#1087#1077#1088#1077#1076
      Category = 2
      Hint = #1055#1086#1076#1074#1080#1085#1091#1090#1100' '#1074#1087#1077#1088#1077#1076
      Visible = ivNever
      LargeImageIndex = 16
      OnClick = btnMoveFrontClick
    end
    object btnMoveBack: TdxBarLargeButton
      Caption = #1055#1086#1076#1074#1080#1085#1091#1090#1100' '#1085#1072#1079#1072#1076
      Category = 2
      Hint = #1055#1086#1076#1074#1080#1085#1091#1090#1100' '#1085#1072#1079#1072#1076
      Visible = ivNever
      LargeImageIndex = 15
      OnClick = btnMoveBackClick
    end
    object btnMoveLeft: TdxBarLargeButton
      Caption = #1055#1086#1076#1074#1080#1085#1091#1090#1100' '#1074#1083#1077#1074#1086
      Category = 2
      Hint = #1055#1086#1076#1074#1080#1085#1091#1090#1100' '#1074#1083#1077#1074#1086
      Visible = ivNever
      LargeImageIndex = 9
      OnClick = btnMoveLeftClick
    end
    object btnMoveRight: TdxBarLargeButton
      Caption = #1055#1086#1076#1074#1080#1085#1091#1090#1100' '#1074#1087#1088#1072#1074#1086
      Category = 2
      Hint = #1055#1086#1076#1074#1080#1085#1091#1090#1100' '#1074#1087#1088#1072#1074#1086
      Visible = ivNever
      LargeImageIndex = 10
      OnClick = btnMoveRightClick
    end
    object btnMoveUp: TdxBarLargeButton
      Caption = #1055#1086#1076#1074#1080#1085#1091#1090#1100' '#1074#1074#1077#1088#1093
      Category = 2
      Hint = #1055#1086#1076#1074#1080#1085#1091#1090#1100' '#1074#1074#1077#1088#1093
      Visible = ivNever
      LargeImageIndex = 7
      OnClick = btnMoveUpClick
    end
    object btnMoveDown: TdxBarLargeButton
      Caption = #1055#1086#1076#1074#1080#1085#1091#1090#1100' '#1074#1085#1080#1079
      Category = 2
      Hint = #1055#1086#1076#1074#1080#1085#1091#1090#1100' '#1074#1085#1080#1079
      Visible = ivNever
      LargeImageIndex = 8
      OnClick = btnMoveDownClick
    end
    object btnResetMove: TdxBarLargeButton
      Caption = #1057#1073#1088#1086#1089' '#1076#1074#1080#1078#1077#1085#1080#1103
      Category = 2
      Hint = #1057#1073#1088#1086#1089' '#1076#1074#1080#1078#1077#1085#1080#1103
      Visible = ivNever
      LargeImageIndex = 14
      OnClick = btnResetMoveClick
    end
    object btnViewMenu: TdxBarLargeButton
      Caption = #1055#1088#1086#1089#1084#1086#1090#1088' '#1084#1077#1085#1102
      Category = 2
      Hint = #1055#1088#1086#1089#1084#1086#1090#1088' '#1084#1077#1085#1102
      Visible = ivNever
      ButtonStyle = bsChecked
      LargeImageIndex = 4
      OnClick = btnViewMenuClick
    end
  end
  object rzReg: TRzRegIniFile
    Path = 'Software\LOLO Soft\SwitchBlade\'#1056#1077#1076#1072#1082#1090#1086#1088' '#1091#1088#1086#1074#1085#1077#1081'\'
    PathType = ptRegistry
    Left = 590
  end
  object rzFS: TRzFormState
    Section = 'FS_MAIN'
    RegIniFile = rzReg
    Left = 620
  end
  object ilButtonsLarge: TcxImageList
    CompressData = True
    Height = 32
    Width = 32
    FormatVersion = 1
    DesignInfo = 650
    ImageInfo = <
      item
        Image.Data = {
          2F0E00005844424D020004023610850000424D36100000000000003600000028
          0000000220000000830100200000000000001000000700000000840000000100
          0000070000000E0000000F1200000010830000000F0000000B00000004060000
          00008400000007000000230000004A0000006013000000658500000064000000
          580000003700000012000000020300000000FD0000000700000033050744912B
          2FB6E04D52E7FD5358ECFF5459EDFF555AEEFF555BEFFF555BF0FF555BF1FF55
          5BF2FF545AF3FF5358F4FF5257F5FF5055F6FF5054F7FF4F53F7FF4E52F8FF4D
          51F8FF4C4FF8FF4B4EF8FF4C4FF6FF4E51F2FF4F53EFFF3A3DD2F30B0B77C200
          000B5C0000001700000001000000000000000100000023080A6AA54A4CDFFF33
          33C5FF1313BFFF0F0FC1FF0F0FC5FF0F0FC8FF0F0FCCFF0F0FCFFF0F0FD3FF0F
          0FD6FF0F0FDAFF0F0FDDFF0F0FE0FF0F0FE4FF1213E5FF1619E6FF1A1EE7FF1E
          24E8FF2229E9FF272FEAFF2A34EBFF2E39ECFF323FEDFF4350EFFF646FF1FF29
          2CB7EA00000F550000000A000000000000000700002D633535DAFD0A0AB6FF00
          00B6FF0000BAFF0000BEFF0000C2FF0000C5FF0000C9FF0000CDFF0000D0FF00
          00D4FF0000D8FF0000DBFF0000DFFF0000E2FF0405E4FF090BE5FF0D11E6FF11
          17E7FF151DE8FF1A23E9FF1E29EAFF222EEBFF2734ECFF2B39EDFF2F3FEEFF54
          62F0FF141685C80000001F000000000000000E0A0A8CB11515B6FF0000B2FF00
          00B6FF0000BAFF0000BEFF0000C1FF0000C5FF0000C9FF0000CCFF0000D0FF00
          00D4FF0707D9FF2A2AE1FF3F3FE7FF3737E8FF1C1EE7FF090BE5FF0D12E6FF12
          18E7FF161DE8FF1A23E9FF1F29EAFF232FEBFF2735ECFF2B3AEDFF2F40EEFF33
          45EFFF3841D7FE900000103F000000010000000F0B0BA1CE0000AEFF0000B2FF
          0000B6FF0000B9FF0000BDFF0000C1FF0000C4FF0000C8FF0404CDFF5B5BE0FF
          BBBBF3FFF9F9FEFF04FFFFFFFF99E2E3FCFF9496F4FF3338EBFF161DE8FF1A23
          E9FF1F29EAFF232FEBFF2735EDFF2C3BEEFF3040EFFF3446F0FF3544E3FF0000
          295C0000000200000010000098CF0000AEFF0000B1FF0000B5FF0000B9FF0000
          BDFF0000C0FF0000C4FF3535D3FFD4D4F6FF09FFFFFFFF96FAFBFFFF9396F5FF
          1F28EAFF1E29EAFF222FEBFF2734ECFF2B3AEDFF3040EFFF3446EFFF2D3DE1FF
          0000285D0000000200000010000092CF0000ADFF0000B0FF0000B4FF0000B8FF
          0000BCFF0000BFFF4F4FD5FFF8F8FDFF04FFFFFFFF84E6E6F8FFC9C9F1FFD4D4
          F5FFF9F9FEFF04FFFFFFFF93C4C6F9FF2630EBFF222EEBFF2634ECFF2B39EDFF
          2F3FEEFF3345EFFF2C3BDDFF0000275D000000020000001000008ECF0000ABFF
          0000AFFF0000B3FF0000B7FF0000BBFF3C3CCDFFF9F9FEFF02FFFFFFFF89FEFE
          FFFFA1A1E4FF2E2ED0FF0000CFFF0000D7FF0000D9FF0D0DD9FF6465E2FFE1E1
          F8FF03FFFFFFFF91BDC0F9FF212DEBFF2532ECFF2938EDFF2E3EEEFF3243EFFF
          2B3ADAFF0000255D0000000200000010000088CF0303A9FF0505B0FF0505B3FF
          0505B7FF0D0DBDFFDDDDF6FF02FFFFFFFF8BF8F8FDFF5050CFFF0000CDFF0000
          D4FF0000D7FF0000DBFF0000DFFF0101E2FF0406E4FF1719DDFFBDBEF0FF03FF
          FFFFFF8F7A81F3FF2430ECFF2836EDFF2C3CEEFF3042EFFF2938D6FF0000235D
          0000000200000010000084CF0909A8FF0F0FB2FF1111B6FF1212B9FF7575D8FF
          03FFFFFFFF8C6B6BD4FF0E0ECDFF0707D0FF0101D2FF0000D6FF0000DAFF0000
          DDFF0000E1FF0203E4FF0709E5FF1418E0FFD6D7F5FF02FFFFFFFF8FE7E9FDFF
          2632ECFF2633ECFF2A39EDFF2F3FEEFF2635D2FF0000225D0000000200000010
          00007FCF0C0CA7FF1717B3FF1818B7FF1A1ABBFFCCCCF0FF02FFFFFFFF8DCACA
          ECFF2020CAFF2222D0FF2323D4FF2323D7FF1919D8FF0C0CDAFF0101DCFF0000
          DFFF0101E3FF0506E4FF090CE5FF4D50E3FF03FFFFFFFF8E5E66F0FF2430ECFF
          2836EDFF2C3BEDFF2432CFFF0000225D000000020000001000007BCF1010A5FF
          1E1EB4FF1F1FB8FF2727BDFFFCFCFEFF02FFFFFFFF8E7C7CDAFF2828CDFF2929
          D1FF2B2BD4FF2C2CD7FF2E2EDAFF2F2FDEFF2B2BE0FF1919E1FF0303E1FF0203
          E4FF0709E5FF0C0FE3FFE5E6F9FF02FFFFFFFF8D9196F5FF202CEBFF2532ECFF
          2937EBFF222ECEFF0000225D0000000200000010000075CF1616A4FF2626B5FF
          2727B8FF4646C5FF03FFFFFFFF8E5959D3FF2F2FCDFF3131D0FF3232D3FF3434
          D7FF3535DAFF3636DDFF3838E0FF3939E3FF3838E6FF1F1FE6FF0708E4FF080B
          E5FFB7B8F5FF02FFFFFFFF8DADB0F7FF1D27EAFF212DEBFF2432E9FF1F2ACCFF
          0000225D0000000200000010000070CF1A1AA3FF2D2DB6FF2E2EB9FF5050C6FF
          03FFFFFFFF8E5C5CD4FF3737CDFF3838D0FF3A3AD3FF3B3BD6FF3C3CD9FF3E3E
          DCFF3F3FDFFF4141E2FF4242E5FF4343E8FF3F3FEAFF1D1EE7FFB2B3F7FF02FF
          FFFFFF8DAFB2F6FF1922E9FF1D27EAFF202CE7FF1B25CAFF0000225D00000002
          0000001000006BCF1E1EA1FF3434B6FF3636B9FF4242BEFF03FFFFFFFF8E7C7C
          DCFF3E3ECDFF4040D0FF4141D3FF4242D6FF6262DFFFA6A6EEFF7C7CE8FF4848
          E1FF4A4AE3FF4B4BE6FF4C4CE9FF4E4EECFFE1E1FCFF02FFFFFFFF8E9698F2FF
          141BE8FF1820E9FF1B25E5FF171FC8FF0000225D0000000200000010000066CF
          2323A1FF3C3CB7FF3D3DBAFF3E3EBDFFE0E0F0FF02FFFFFFFF8DBFBFEDFF4646
          CCFF4747CFFF4848D2FF4A4AD5FFEEEEFBFFFFFFFFFFFEFEFFFF7070E6FF5151
          E2FF5252E5FF5454E7FF6F6FEDFF03FFFFFFFF8E6365E9FF0F14E7FF1219E8FF
          151DE4FF1319C6FF0000215D0000000200000010000065CF2727A0FF4343B8FF
          4545BBFF4646BEFFA4A4D9FF02FFFFFFFF85FCFCFEFF7171D7FF4E4ECFFF5050
          D2FF5151D5FF03FFFFFFFF858B8BE9FF5858E2FF5A5AE4FF5B5BE6FFCDCDF8FF
          02FFFFFFFF90F9F9FCFF3031E2FF090CE5FF0C10E6FF0F14E2FF0D12C3FF0000
          215D0000000200000010000063CF2C2C9FFF4A4AB8FF4C4CBCFF4D4DBEFF5D5D
          BFFFF7F7FBFF02FFFFFFFF84EAEAF9FF6B6BD5FF5757D2FF5959D4FF03FFFFFF
          FF849191E8FF6060E0FF6161E2FFB1B1F2FF03FFFFFFFF90BABAEAFF6767EDFF
          2324E7FF0507E4FF070AE1FF070AC1FF0000215D0000000200000010000061CF
          30309FFF5252B9FF5353BCFF5555BFFF5656C1FF9C9CD0FF03FFFFFFFF83F2F2
          FBFF7878D9FF6060D4FF03FFFFFFFF839696E8FF6F6FE1FFCECEF5FF03FFFFFF
          FF92ECECF6FF7474E1FF7070ECFF6F6FEDFF1C1CE4FF0101DFFF0102BEFF0000
          215D0000000200000010000061CF3535A0FF5959BAFF5B5BBDFF5C5CBFFF5E5E
          C2FF5D5DC0FFBEBEDCFF03FFFFFFFF82ADADE6FF6767D3FF03FFFFFFFF829B9B
          E7FFAFAFECFF03FFFFFFFF98F5F5FAFF8787D9FF7676E8FF7878E9FF7979EAFF
          7070EAFF0E0EDCFF0000B8FF0000215D000000020000001000005FCF3E3EA2FF
          6161BBFF6262BDFF6464C0FF6565C2FF6666C5FF6666C1FFB2B2D4FFFEFEFEFF
          F0F0F6FF8080CEFF6F6FD3FF03FFFFFFFF829F9FE6FFA3A3E2FF02FFFFFFFF99
          E9E9F3FF8989D3FF7C7CE4FF7D7DE5FF7F7FE7FF8080E8FF8282E9FF6262E4FF
          0101B2FF0000215D000000020000001000005DCF4949A6FF6868BBFF6A6ABEFF
          6B6BC0FF6C6CC3FF6E6EC5FF6F6FC8FF6E6EC6FF6F6FBAFF6C6CBDFF7474D0FF
          7575D2FF03FFFFFFFF9DA4A4E5FF7979D6FF9999CFFFA5A5D2FF7E7ED1FF8282
          E1FF8383E2FF8585E3FF8686E4FF8888E5FF8989E6FF8B8BE6FF2121B3FF0000
          215D000000020000001000005DCF5A5AAEFF6F6FBCFF7070BFFF7272C1FF7373
          C3FF7474C6FF7676C8FF7777CAFF7979CCFF7A7ACEFF7B7BD0FF7D7DD2FF03FF
          FFFFFF9DA9A9E5FF8484DAFF8585DCFF8787DDFF8888DEFF8989E0FF8B8BE1FF
          8C8CE2FF8E8EE2FF8F8FE3FF9191E3FF9292E4FF3535B4FF0000215D00000002
          0000000F02025BCE7070B8FF7676BDFF7878BFFF7979C2FF7A7AC4FF7C7CC6FF
          7D7DC8FF7F7FCAFF8080CCFF8181CEFF8383D0FF8484D2FF03FFFFFFFFCEAEAE
          E4FF8B8BDAFF8D8DDBFF8E8EDCFF9090DDFF9191DEFF9292DFFF9494E0FF9595
          E1FF9696E1FF9898E1FF9999E1FF4D4DBAFF0404235C000000010000000B1919
          68CB7C7CBCFF7E7EBFFF7F7FC1FF8080C3FF8282C5FF8383C7FF8585C9FF8686
          CBFF8787CDFF8989CEFF8A8AD0FF8C8CD2FFDCDCE9FFFFFFFFFFF2F2F6FF9797
          D4FF9393D9FF9494DAFF9595DBFF9797DCFF9898DDFF9A9ADEFF9B9BDFFF9C9C
          DFFF9E9EDFFF9F9FDFFFA1A1DFFF7E7ECAFF0101215500000001000000042121
          5DA28888C0FF8585C0FF8686C2FF8888C4FF8989C6FF8B8BC8FF8C8CCAFF8E8E
          CBFF8F8FCDFF9090CFFF9292D0FF9393D2FF8E8EC8FF9D9DC7FF9292C7FF9999
          D7FF9A9AD9FF9B9BDAFF9D9DDBFF9E9EDBFFA0A0DCFFA1A1DDFFA3A3DDFFA4A4
          DDFFA5A5DEFFA7A7DEFFA8A8DDFF9E9ED2FD00000C2702000000009E01011939
          8585C0FC9494C5FF8E8EC3FF8F8FC5FF9191C7FF9292C9FF9494CBFF9595CCFF
          9696CEFF9898D0FF9999D1FF9A9AD2FF9C9CD4FF9D9DD5FF9F9FD6FFA0A0D8FF
          A2A2D8FFA3A3D9FFA4A4DAFFA6A6DBFFA7A7DCFFA9A9DCFFAAAADCFFABABDDFF
          ADADDCFFAFAFDDFFD1D1EBFF525280B20000000402000000009D000000021A1A
          4676A4A4D0FEB3B3D5FFA8A8D0FFA8A8D1FFAAAAD3FFABABD4FFADADD6FFAFAF
          D8FFB0B0D9FFB2B2DAFFB4B4DCFFB5B5DDFFB7B7DEFFB8B8DFFFBABAE0FFBBBB
          E1FFBDBDE2FFBFBFE3FFC0C0E3FFC2C2E4FFC3C3E5FFC4C4E5FFC6C6E5FFD0D0
          EAFFE8E8F4FF8686B2DB00000B1C04000000009B000000010B0B2A4A5F5F91C2
          9999CAFAA7A7D4FFA9A9D5FFABABD7FFADADD8FFAFAFD9FFB1B1DAFFB3B3DBFF
          B5B5DCFFB7B7DDFFB8B8DEFFBABADFFFBCBCE0FFBEBEE1FFBFBFE1FFC1C1E2FF
          C2C2E3FFC3C3E3FFC4C4E3FFC5C5E4FFC2C2E2FF9F9FC4E64040688F00000712
          08000000008100000001130000000202000000010500000000}
      end
      item
        Image.Data = {
          EC0A00005844424D020004023610850000424D36100000000000003600000028
          0000000220000000830100200000000000001000000700000000830000000400
          00001700000023020000002482000000270000002A0B0000002B820000002900
          0000250500000024820000001A0000000504000000009C0000000A0101014022
          2222AD3B3B3BCA424242CB494949CB7D7D7DCF8D8D8DD48A8A8AD4878787D483
          8383D4808080D47C7C7CD4797979D4747474D4717171D46D6D6DD46A6A6AD466
          6666D4606060D3414141CB313131CB292929CB222222CB1B1B1BCB131313CB09
          0909B60000002F0300000000870000001204040461393939E07D7D7DFF8B8B8B
          FF919191FF9B9B9BFF02F1F1F1FF02EBEBEBFF81F0F0F0FF04F2F2F2FF04F1F1
          F1FF90F0F0F0FFC3C3C3FFA4A4A4FFA2A2A2FFA0A0A0FF9E9E9EFF9C9C9CFF7C
          7C7CFF0707076F0000000100000000000000040707076A3F3F3FF4747474FF71
          7171FF03707070FF86DBDBDBFFADADADFF6E6E6EFF686868FF777777FFD7D7D7
          FF03D8D8D8FF86D7D7D7FFD8D8D8FFD9D9D9FFDADADAFFDBDBDBFF9E9E9EFF03
          717171FF02707070FF82717171FF1818186802000000008300000005272727AE
          6A6A6AFF04666666FF83676767FFD3D3D3FF9F9F9FFF02555555FF8B656565FF
          D5D5D5FFD8D8D8FFDBDBDBFFDEDEDEFFE0E0E0FFDEDEDEFFD8D8D8FFD4D4D4FF
          D5D5D5FF8D8D8DFF03696969FF02666666FF82656565FF090909490200000000
          82000000042B2B2BA7045C5C5CFF845A5A5AFF535353FFC9C9C9FFA2A2A2FF02
          585858FF8E676767FFD8D8D8FFDBDBDBFFDEDEDEFFE1E1E1FFE4E4E4FFE6E6E6
          FFE9E9E9FFE3E3E3FFD6D6D6FF7D7D7DFF5B5B5BFF656565FF686868FF025C5C
          5CFF82565656FF01010129020000000082000000021E1E1E9103525252FF854F
          4F4FFF444444FF484848FFC5C5C5FFA5A5A5FF025C5C5CFF8B696969FFDBDBDB
          FFDFDFDFFFE2E2E2FFE4E4E4FFE7E7E7FFE9E9E9FFECECECFFEEEEEEFFE9E9E9
          FF787878FF025C5C5CFF81656565FF02525252FF82444444F500000014020000
          000082000000011313137702494949FF86474747FF3B3B3BFF3A3A3AFF424242
          FFC1C1C1FFC0C0C0FF02808080FF8B8D8D8DFFDFDFDFFFE3E3E3FFE5E5E5FFE8
          E8E8FFEAEAEAFFECECECFFEFEFEFFFF2F2F2FFF0F0F0FF747474FF02616161FF
          855B5B5BFF464646FF494949FF333333DD0000000C0300000000810A0A0A5D02
          3F3F3FFF81363636FF02323232FF823B3B3BFF8C8C8CFF02A8A8A8FF02A9A9A9
          FF81AAAAAAFF02ABABABFF81ACACACFF02ADADADFF02AEAEAEFF82A2A2A2FF69
          6969FF02676767FF85595959FF353535FF3E3E3EFF242424C200000007030000
          00008303030344353535FF383838FF032F2F2FFF82272727FF464646FF034B4B
          4BFF024A4A4AFF81494949FF05474747FF81424242FF03434343FF86424242FF
          303030FF2B2B2BFF333333FF181818A50000000303000000008A010101282B2B
          2BFF383838FF474747FF959595FF9C9C9CFF9E9E9EFFA0A0A0FFA2A2A2FFA3A3
          A3FF02A4A4A4FF02A5A5A5FF85A4A4A4FFA1A1A1FF9F9F9FFF9E9E9EFF9C9C9C
          FF02A6A6A6FF88A3A3A3FFA0A0A0FF9B9B9BFF545454FF232323FF272727FF0E
          0E0E880000000203000000008C000000161D1D1DF73C3C3CFF656565FFEAEAEA
          FFEFEFEFFFF3F3F3FFF6F6F6FFF9F9F9FFFBFBFBFFFDFDFDFFFEFEFEFF03FFFF
          FFFF8DFEFEFEFFFDFDFDFFFCFCFCFFFAFAFAFFF6F6F6FFF3F3F3FFEEEEEEFFE9
          E9E9FFE3E3E3FF777777FF1B1B1BFF1E1E1EFF0707076804000000008A000000
          0E121212E63E3E3EFF5F5F5FFFE4E4E4FFE6E6E6FFE8E8E8FFEAEAEAFFECECEC
          FFEDEDEDFF03EFEFEFFF02F0F0F0FF02EFEFEFFF8BEEEEEEFFECECECFFE9E9E9
          FFE4E4E4FFE1E1E1FFDDDDDDFFDCDCDCFF5E5E5EFF131313FF151515FF020202
          4904000000009C00000009090909CF3E3E3EFF5B5B5BFFE7E7E7FFDCDCDCFF76
          7777FFB5B6B8FFBBBBBBFFBEBEBEFFC5C5C5FFD4D4D4FFE2E2E2FFEEEEEEFFF9
          F9F9FFFDFDFDFFFCFCFCFFFBFBFBFFF9F9F9FFF7F7F7FFF4F4F4FFEEEEEEFFE6
          E6E6FFE0E0E0FF454545FF0B0B0BFF0C0C0CFF00000029040000000089000000
          06020202B93B3B3BFF565656FFE4E4E4FFE7E7E7FFC4CFDEFF80A4D6FFA7B4C4
          FF02BBBBBBFF91BEBEBEFFC1C1C1FFC3C3C3FFC6C6C6FFCECECEFFD7D7D7FFDF
          DFDFFFE6E6E6FFEBEBEBFFEAEAEAFFE8E8E8FFDFDFDFFFD9D9D9FF2B2B2BFF03
          0303FF040404F50000001404000000009C00000003010101A1393939FF5D5D5D
          FFE0E0E0FFEEEEEEFFEFF0F1FFC0D2ECFF6290D6FF74A8D9FFD7E0E5FFDADADA
          FFD0D0D0FFCFCFCFFFD2D2D2FFD4D4D4FFD6D6D6FFD8D8D8FFD9D9D9FFDADADA
          FFE0E0E0FFE3E3E3FFE5E5E5FFD7D7D7FF171717FF010101FF010101DD000000
          0C04000000009C0000000200000087373737FF6B6B6BFFD7D7D7FFE9E9E9FFEB
          EBEBFFE2E7ECFFACDAF2FF089CEBFF35A8E9FFE2ECF0FFF1F1F1FFE9E9E9FFDF
          DFDFFFD7D7D7FFD1D1D1FFD2D2D2FFD4D4D4FFD6D6D6FFD7D7D7FFD8D8D8FFD9
          D9D9FFD5D5D5FF161616FF010101FF010101C20000000704000000008E000000
          010000006F323232FF7A7A7AFFCFCFCFFFEDEDEDFFF0F0F0FFF2F2F2FF9CE4FA
          FF38D0FCFF009DEEFF35A8EAFFEAF3F8FFF9F9F9FF02F8F8F8FF84F6F6F6FFEE
          EEEEFFE7E7E7FFE1E1E1FF03DFDFDFFF85D0D0D0FF525252FF010101FF010101
          A50000000305000000008D00000055292929FF868686FFC9C9C9FFEAEAEAFFEC
          ECECFFEDEDEDFFEEEEEFFF96E2F9FF3AD1FCFF009EEEFF34A8E9FFE2ECF0FF02
          F1F1F1FF81F0F0F0FF02EFEFEFFF89EDEDEDFFEAEAEAFFE5E5E5FFE3E3E3FFCA
          CACAFF828282FF111111FF000000880000000205000000008E0000003A1F1F1F
          FF959595FFC6C6C6FFECECECFFEFEFEFFFF1F1F1FFF2F2F2FFF2F3F3FF9AE5FB
          FF3DD2FCFF00A0EFFF35A8EAFFE7F1F5FF02F5F5F5FF8AF4F4F4FFF2F2F2FFF1
          F1F1FFEFEFEFFFEDEDEDFFEAEAEAFFC9C9C9FF919191FF333333FF0000006806
          000000008F00000021111111FEA3A3A3FFC6C6C6FFECECECFFEDEDEDFFEEEEEE
          FFEFEFEFFFF0F0F0FFEFF0F0FF9CE5FBFF3FD3FDFF00A1F0FF33A6E7FFE2ECF0
          FF02F0F0F0FF89EFEFEFFFEEEEEEFFEDEDEDFFECECECFFEAEAEAFFC6C6C6FFA0
          A0A0FF2A2A2AFF0000004806000000009A0000000C020202ED747474FF828282
          FF939393FF949494FF959595FF919191FF8B8B8BFF8C8C8CFF898A8BFF57A3BA
          FF42D5FDFF00A2F1FF31A4E5FF7C868BFF7C7C7CFF7B7B7BFF777777FF767676
          FF757575FF717171FF5D5D5DFF555555FF0C0C0CF70000001A06000000008400
          0000010000004A010101A1010101A2050101019B8A0101019801010193010303
          8B3D8CA4BC45D6FDFF00A4F1FF0074B4FE000A0EBB0000008A0000007C040000
          007B83000000780000003500000001120000000087000203073F8CA4AB47D7FE
          FF00A5F2FF0074B5E100090E4B000000081A000000008700020307428DA4AB4A
          D8FEFF00A6F3FF0074B5E100090E4B000000081A000000008700020307448DA4
          AB4DDAFEFF00A7F4FF0074B5E100090E4B000000081A00000000870002030746
          8EA4AB50DBFEFF00A9F4FF0074B5E100090E4B000000081A0000000087000203
          07488FA4AB52DCFFFF01AAF5FF3A6C87E10303034B000000081A000000008700
          0203074C8FA4ABA5DEEBFFBEBEBEFF5D5D5DE105050548000000061A00000000
          8704040409828282B7DCDCDCFFBBBCBEFF405493D800020634000000011A0000
          0000860404040A838385B7ABC6F5FF7098FFFF1E357C93000000031B00000000
          84000001044D61939984A5EFF0141F41490600000000}
      end
      item
        Image.Data = {
          3B0B00005844424D020004023610850000424D36100000000000003600000028
          0000000220000000830100200000000000001000002D00000000050000000102
          0000000287000000030000000500000006000000090000000B00000008000000
          020E000000009300000001000000060000000A0000000D000000100000001500
          00001A0000001E00000024000000290000002F000000350000003B0000004100
          0000480000004D0000004200000019000000020C000000009500000002000000
          170000003B0000004A000000520000005908080B6A0F0F1679151521881A1E2E
          9719293CA216344AAB163E5AB7154668C1144E78CA135487D5125996DE144A85
          D60909115700000008000000010B00000000960000000B0C0C1059255171C620
          6992D81F75A0E11C84AFE9158BB3E90D91B7E70496BBE40098BEE20095BEE200
          91BEE2008CBEE20086BEE20080BFE20079BFE10072BFE0006BBFDF142A4F9D00
          00001100000004000000010900000000970000000100000012345472C00887C5
          EB0388C1E8058EC3EA0998C9EE0FA0CEF012A4D2F214A6D3F216A7D5F416A5D5
          F417A2D6F4169BD5F31292D0F10D88CBEF077CC6EC016FBFE70066BEE5162F55
          B10000002D0000000A0000000209000000008800000001000000153F678CD133
          ADF1FF32B2F1FF34B8F3FF36BCF5FF36BFF5FF0236C0F5FF8D36BFF5FF36BDF5
          FF36BAF5FF36B5F5FF36B1F5FF36ABF5FF34A3F3FF319AF0FF278AE5FB364D75
          E40C0C0C7B0000001F00000003090000000097000000010000001640658BD137
          ABF5FF36AFF5FF36B3F5FF36B6F5FF36B8F5FF36B9F5FF36B8F5FF36B7F5FF36
          B5F5FF36B2F5FF36AEF5FF36AAF5FF36A5F5FF369FF5FF3699F5FF3693F5FF78
          8EB6FF8A8A8AF60505053900000004090000000088000000010000001642658B
          D139A5F5FF36A8F5FF36ACF5FF36AEF5FF36B0F5FF0236B1F5FF8D36AFF5FF36
          ADF5FF36ABF5FF36A7F5FF36A3F5FF369EF5FF3699F5FF3693F5FF368EF5FF7A
          8FB8FFB8B8B8FF0E0E0E48000000040900000000880000000100000016486489
          D143A4F6FF36A2F5FF36A4F5FF36A7F5FF36A8F5FF0236A9F5FF8D36A8F5FF36
          A6F5FF36A3F5FF36A0F5FF369CF5FF3697F5FF3693F5FF368DF5FF3689F4FF7D
          91B9FFBABABAFF0F0F0F480000000409000000009700000001000000164D6487
          D14EA3F6FF369AF5FF369DF5FF369FF5FF36A0F5FF36A1F5FF36A0F5FF369FF5
          FF369EF5FF369BF5FF3698F5FF3695F5FF3690F5FF368CF5FF3688F3FF3686EF
          FF8093BAFFBCBCBCFF0F0F0F4800000004090000000088000000010000001653
          6486D158A3F7FF3693F5FF3696F5FF3697F5FF3698F5FF023699F5FF8D3698F5
          FF3696F5FF3694F5FF3691F5FF368EF5FF368AF4FF3688F2FF3786EFFF3A85EB
          FF8396BCFFBFBFBFFF1010104800000004090000000086000000010000001658
          6483D163A4F7FF368CF5FF368EF5FF023690F5FF813691F5FF023690F5FF8C36
          8EF5FF368CF5FF3E8EF5FF5299F4FF61A0F3FF6AA4F2FF6FA5F0FF669EECFF87
          98BDFFC2C2C2FF101010470000000409000000008600000001000000165D6681
          D16EA7F3FF3687F1FF3688F3FF043689F4FF8D3689F3FF4892F4FF6CA7F5FF7F
          B2F5FF7DB0F3FF7BADF1FF78AAEFFF76A8EDFF6CA0E9FF94A4C4FFC7C7C7FF11
          11114600000003090000000087000000010000001662667ED178ABF0FF3683EB
          FF3684ECFF3685EDFF023685EEFF8E3F8AEFFF71A9F3FF8CB8F4FF89B6F3FF86
          B4F2FF84B2F0FF82AFEFFF7FADEDFF80ACEBFFB9D0F3FFC8C8D0FFCECECEFF12
          12124400000002090000000086000000010000001666677CD183B0EEFF367FE5
          FF3680E6FF023681E7FF8F5192EBFF90B9F2FF95BCF2FF92BAF1FF90B8F0FF8D
          B6EFFF8BB4EEFF89B2ECFF86AFEAFFC3D4EEFFCCCCD4FFD4D4D4FFD6D6D6FF13
          1313490000000309000000009800000001000000166B697AD18EB4ECFF367BDE
          FF367CE0FF367DE1FF5D96E7FF9EC0F1FF9EC0F0FF9BBEF0FF99BDEFFF97BBEE
          FF94B9EDFF92B6ECFF8FB4EAFF76A2E3FFC1C2CBFFD1D1D1FFDFDFDFFFE0E0E0
          FF2222227E000000210000000508000000009900000001000000166F6A78D198
          BAEBFF3678D8FF3678D9FF5E94E2FFA8C5EFFFA7C4EFFFA4C3EFFFA2C1EEFF9F
          BFEDFF9DBDEDFF9BBBEBFF99B9EAFF96B6E8FF6E98DBFFBFBFC4FFD8D8D8FFE5
          E5E5FFEBEBEBFFAEAEAEEB212121820000002200000001070000000099000000
          0100000016736B76D1A3BFEAFF3674D2FF4F85D9FFAFC8EEFFB0C9EEFFAEC7EE
          FFABC6EDFFA8C4EDFFA6C2ECFFA3C0EBFFA1BDEAFF9EBBE8FF9DB9E7FF7198D8
          FFC3C3C8FFDCDCDCFFE8E8E8FFEEEEEEFFF0F0F0FFDBDBDBFC25252562000000
          040700000000990000000100000016776C75D1AEC5EAFF3A73CDFFA7C1E9FFB9
          CEEEFFB7CCEEFFB4CAEDFFB2C9ECFFAFC7ECFFADC5EBFFAAC3EAFFA8C1E9FFA5
          BEE7FFA3BCE6FF7598D5FFC7C7CBFFDEDEDEFFEBEBEBFFF0F0F0FFF3F3F3FFF4
          F4F4FF5353538B0000000507000000009900000001000000167B6D74D1B9CBEB
          FF7B9FD9FFC3D3EEFFC0D2EEFFBED0EDFFBBCEEDFFB8CCECFFB6CAEBFFB3C8EA
          FFB1C6E9FFAEC4E8FFACC2E6FFA9BFE5FF7999D3FFC9C9CDFFE0E0E0FFEDEDED
          FFF3F3F3FFF5F5F5FFF7F7F7FF5555558B000000050700000000990000000100
          0000167F6E72D1CBD8EFFFC3D2ECFFC9D7EEFFC7D5EEFFC4D3EDFFC2D2EDFFBF
          D0ECFFBDCEEBFFBACCEAFFB8CAE9FFB5C7E8FFB2C5E6FFB0C3E5FF7D9AD0FFCC
          CCD0FFE3E3E3FFEFEFEFFFF5F5F5FFF7F7F7FFF9F9F9FF5757578B0000000507
          00000000990000000100000016826F71D1F4F6FBFFD3DDF0FFD0DBEFFFCDD9EE
          FFCBD7EEFFC8D5EDFFC6D3ECFFC3D1EBFFC1D0EAFFBECDE9FFBCCBE8FFB9C9E6
          FFB7C6E5FF819ACEFFD0D0D3FFE5E5E5FFF1F1F1FFF7F7F7FFF9F9F9FFFBFBFB
          FF5959598B000000050700000000990000000100000016836F6FD1F6F8FCFFD9
          E1F1FFD7E0F0FFD4DEEFFFD2DCEFFFCFDAEEFFCCD8EDFFCAD5ECFFC7D3EAFFC5
          D1E9FFC2CFE8FFC0CDE7FFBDCAE5FF859BCCFFD4D4D7FFE9E9E9FFF4F4F4FFF9
          F9F9FFFCFCFCFFFDFDFDFF5A5A5A8B0000000507000000009900000001000000
          15846F6FD1F8F9FCFFE0E6F2FFDDE4F2FFDBE2F1FFD8E0F0FFD6DEEFFFD3DCEE
          FFD0DAECFFCED7EBFFCBD5EAFFC9D3E9FFC6D1E7FFC4CEE6FFB2BFDDFFDDDDDF
          FFEEEEEEFFF7F7F7FFFCFCFCFFFEFEFEFFFFFFFFFF5C5C5C8B00000005070000
          0000870000000100000014867070D1F9FAFDFFE6EBF4FFE4E9F3FFE4E8F3FF02
          E4E9F4FF8CE5EAF4FFE7EBF5FFE9EDF6FFEBEFF7FFEEF1F8FFF1F3F9FFF2F4F8
          FFEBEBEFFFEAEAEAFFF4F4F4FFFBFBFBFFFEFEFEFF02FFFFFFFF825D5D5D8B00
          00000508000000009300000013978D8DD0FEFFFFFFFDFEFEFFFDFDFDFFFAFAFA
          FFF6F6F6FFF3F3F3FFEFEFF0FFEDEDEEFFEAEAEBFFE9E9EAFFE7E7E8FFE6E6E8
          FFE9E9EAFFEFEFEFFFF5F5F5FFFBFBFBFFFEFEFEFF03FFFFFFFF825F5F5F8B00
          0000050800000000920000000FBCBCBCCEE6E6E6FFDDDDDDFFDCDCDCFFDEDEDE
          FFE1E1E1FFE4E4E4FFE6E6E6FFE9E9E9FFECECECFFEEEEEEFFF1F1F1FFF3F3F3
          FFF6F6F6FFF9F9F9FFFCFCFCFFFEFEFEFF04FFFFFFFF826060608B0000000508
          000000009000000006B4B4B4C0EAEAEAFFE6E6E6FFE8E8E8FFE9E9E9FFEBEBEB
          FFEEEEEEFFF0F0F0FFF2F2F2FFF4F4F4FFF6F6F6FFF8F8F8FFFAFAFAFFFCFCFC
          FFFEFEFEFF06FFFFFFFF82606060870000000408000000008700000001393939
          41D6D6D6DCDBDBDBE3DADADAE1D4D4D4DBCBCBCBD102CCCCCCD187D9D9D9E0DA
          DADAE1E6E6E6EDF2F2F2F9F9F9F9FFFBFBFBFFFDFDFDFF05FFFFFFFF83FEFEFE
          FF5252526D000000010A000000000A000000018B000000020A0A0A0D1E1E1E24
          3333333B4C4C4C566666667185858590A3A3A3AFC3C3C3CE999999A90808080D
          2500000000}
      end
      item
        Image.Data = {
          4D0A00005844424D020004023610850000424D36100000000000003600000028
          0000000220000000830100200000000000001000001100000000860000000500
          00001F000000410000002F0000000C0000000118000000008900000001000000
          0C000000340E0E0E83525252DF222222AE0000004B0000001800000003160000
          00008B00000003000000190000004E141414B3595959FC959595FF717171FF34
          3434DA0707076F0000002A0000000813000000008F0000000100000009000000
          2C04040472252525DE545454FF737373FF919191FF808080FF747474FF4C4C4C
          F61515159C00000041000000120000000210000000008A000000020000001300
          0000430D0D0DA0363636F7535353FF595959FF6C6C6CFF8C8C8CFF7A7A7AFF02
          737373FF855E5E5EFF2A2A2ACB0303035F00000023000000060E000000009400
          00000600000024020202631C1C1CCF3F3F3FFF4C4C4CFF4E4E4EFF525252FF65
          6565FF878787FF737373FF6D6D6DFF6C6C6CFF6D6D6DFF666666FF414141EE0F
          0F0F8A000000380000000E000000010A000000008E000000010000000F000000
          3A0909098E282828F03E3E3EFF424242FF444444FF474747FF4B4B4BFF5F5F5F
          FF818181FF6D6D6DFF676767FF03666666FF86656565FF525252FD222222BB01
          0101530000001C00000004080000000090000000040000001D01010156151515
          BE2D2D2DFE353535FF383838FF3B3B3BFF3D3D3DFF404040FF444444FF585858
          FF7C7C7CFF676767FF606060FF5F5F5FFF02606060FF025F5F5FFF86585858FF
          383838E3090909790000002F0000000A00000001050000000090000000070000
          00300606067D1F1F1FE6282828FF2B2B2BFF2E2E2EFF313131FF343434FF3636
          36FF383838FF3D3D3DFF525252FF777777FF616161FF5A5A5AFF04595959FF88
          585858FF575757FF555555FF464646F91A1A1AA9000000470000001200000001
          0400000000830000001E131313A4252525FB03272727FF8B282828FF2A2A2AFF
          2D2D2DFF2F2F2FFF313131FF353535FF4B4B4BFF727272FF5B5B5BFF535353FF
          525252FF02535353FF02525252FF87515151FF505050FF4E4E4EFF4A4A4AFF2F
          2F2FD40505054900000005030000000084000000010303033C414141FF292929
          FF06272727FF87282828FF2A2A2AFF2E2E2EFF454545FF6C6C6CFF555555FF4D
          4D4DFF034C4C4CFF024B4B4BFF874A4A4AFF494949FF484848FF464646FF5555
          55FF2A2A2A9C00000008030000000085000000010707074F454545FF282828FF
          262626FF07272727FF852A2A2AFF404040FF686868FF4F4F4FFF464646FF0445
          4545FF02444444FF81434343FF02424242FF83565656FF343434A70000000803
          0000000084000000010707074F464646FF292929FF07262626FF86272727FF29
          2929FF3F3F3FFF676767FF4D4D4DFF444444FF09424242FF83565656FF343434
          A700000008030000000084000000010707074F474747FF292929FF08262626FF
          85292929FF404040FF707070FF535353FF444444FF09424242FF83565656FF34
          3434A700000008030000000084000000010707074F484848FF292929FF082626
          26FF85414141FF7A7A7AFF7C7C7CFF7D7D7DFF5F5F5FFF09424242FF83565656
          FF343434A700000008030000000084000000010707074F4A4A4AFF292929FF06
          262626FF892C2C2CFF686868FF8E8E8EFF808080FF7C7C7CFF797979FF858585
          FF7C7C7CFF4A4A4AFF07424242FF83565656FF343434A7000000080300000000
          84000000010707074F4D4D4DFF292929FF05262626FF8B474747FF929292FF8A
          8A8AFF7A7A7AFF7B7B7BFF797979FF767676FF737373FF808080FF979797FF5F
          5F5FFF06424242FF83565656FF393939A7000000080300000000840000000107
          07074F4E4E4EFF292929FF03262626FF8F2C2C2CFF797979FFA3A3A3FF7A7A7A
          FF757575FF767676FF777777FF757575FF737373FF707070FF6D6D6DFF737373
          FFA0A0A0FF858585FF454545FF04424242FF83565656FF3A3A3AA70000000803
          0000000084000000010707074F4F4F4FFF292929FF02262626FF91424242FFA8
          A8A8FF919191FF6D6D6DFF6F6F6FFF717171FF727272FF737373FF727272FF70
          7070FF6D6D6DFF6B6B6BFF676767FF656565FF909090FFACACACFF555555FF03
          424242FF83565656FF3A3A3AA70000000803000000008C000000010707074F50
          5050FF292929FF272727FF5F5F5FFF9C9C9CFF717171FF676767FF6A6A6AFF88
          8888FF6D6D6DFF026F6F6FFF8A6E6E6EFF6C6C6CFF6A6A6AFF686868FF656565
          FF626262FF5E5E5EFF6F6F6FFFA1A1A1FF696969FF02424242FF83575757FF3A
          3A3AA700000008030000000094000000010707074F545454FF323232FF6F6F6F
          FF787878FF5E5E5EFF616161FF787878FFD5D5D5FFFFFFFFFFD9D9D9FF818181
          FF6F6F6FFF6D6D6DFF6B6B6BFF6A6A6AFF686868FF676767FF666666FF026565
          65FF87666666FF828282FF747474FF464646FF575757FF3A3A3AA70000000803
          000000009D000000010707074D646464FF686868FF5C5C5CFF585858FF5B5B5B
          FF636363FFDADADAFFFFFFFFFFFAFAFAFFB2B2B2FF9F9F9FFFAEAEAEFF787878
          FF888888FFA3A3A3FFB0B0B0FFAAAAAAFF878787FF6B6B6BFF686868FF656565
          FF636363FF686868FF6A6A6AFF5E5E5EFF3B3B3BA60000000804000000008B09
          09093D707070FF515151FF525252FF555555FF5E5E5EFF6C6C6CFF727272FFA3
          A3A3FF8E8E8EFFCBCBCBFF02FFFFFFFF81F8F8F8FF05FFFFFFFF89CECECEFF6C
          6C6CFF676767FF656565FF626262FF5E5E5EFF676767FF3D3D3D990000000304
          000000008E010101072B2B2B984C4C4CFE505050FF616161FF6D6D6DFF707070
          FF727272FF737373FF747474FFA0A0A0FFEBEBEBFFEEEEEEFFC2C2C2FF02A8A8
          A8FF81DEDEDEFF03FFFFFFFF87848484FF696969FF666666FF646464FF595959
          FF3E3E3ED50C0C0C2D0600000000880000000113131345444444E05E5E5EFF6E
          6E6EFF707070FF727272FF747474FF02757575FF86787878FF777777FF767676
          FF757575FF747474FFA6A6A6FF02FFFFFFFF87E4E4E4FF6F6F6FFF6A6A6AFF67
          6767FF525252FB222222890202020A0900000000870404040F2C2C2C98555555
          FE6C6C6CFF737373FF747474FF757575FF02767676FF8D777777FF767676FF87
          8787FFBFBFBFFFFCFCFCFFFFFFFFFFDDDDDDFF7D7D7DFF6E6E6EFF636363FF3E
          3E3ED50D0D0D38000000010B00000000860000000113131345444444E0626262
          FF757575FF767676FF02777777FF827B7B7BFFD4D4D4FF02FFFFFFFF87EEEEEE
          FFAAAAAAFF747474FF6F6F6FFF575757FB242424890202020A0F000000008403
          03030F2C2C2C98545454FE707070FF03787878FF897A7A7AFFADADADFFA1A1A1
          FF787878FF757575FF696969FF3F3F3FD50E0E0E380000000111000000008500
          00000112121245414141E0636363FF787878FF02797979FF02787878FF847575
          75FF5B5B5BFB242424890202020A1500000000840303030F29292998525252FE
          727272FF027A7A7AFF846D6D6DFF3F3F3FD50D0D0D3800000001170000000087
          00000001121212483C3C3CE3616161FF5A5A5AFB222222890202020A1B000000
          0084030303111F1F1F800D0D0D38000000010E00000000}
      end
      item
        Image.Data = {
          880C00005844424D020004023610850000424D36100000000000003600000028
          0000000220000000830100200000000000001000000F00000000893A3A3A3F41
          41414CC3B9B4EAD1C1B8FFCFBDB3FFCFBEB4FFD2C3BAFF948D89B07B7A798B15
          000000008E80808092B5AAA3DFB9917BFFB1795AFFB47655FFBD8161FFC99176
          FFC88F73FFBD7F5FFFA46A4BE9A36F53E9BE9B87FFD2C8C2FF4B4B4C55110000
          000090BCA190FFB38265FFCA987AFFDAA98DFFE4B499FFECBFA6FFEDC1A7FFEE
          C1A7FFEEC0A6FFECC1A7FFEBBEA5FFE3B297FFD9A88AFFC89577FFB18063FFC9
          B3A6FF0E0000000089524E4B6392725ECCB67850FFDEAC89FFEEBF9FFFE6B18E
          FFE1A982FFE0A881FFE0A781FF02E0A882FF88DFA781FFDFA780FFE1A882FFE7
          B490FFECBD9CFFDAA581FFB77B53FFAB8771FF0C00000000958F827BA8A4653D
          FFD39D71FFE6B288FFDB9F73FFD89B6EFFDA9E73FFDCA278FFDDA47AFFDEA47C
          FFDFA57CFFDEA57CFFDEA47BFFDEA379FFDCA277FFDA9F72FFD99B6EFFDCA073
          FFE8B387FFC28E65FFB77B53FF0A000000008AC8AD9EFFAD7248FFDAA370FFDA
          9E6BFFD49260FFD59665FFD7996BFFD89A6CFFCE9367FFC99066FF02CA9168FF
          88C99168FFC99066FFC98F65FFC88E64FFC98F64FFD59768FFD69664FFD79360
          FF02CB9160FF81B77B53FF08000000008B5F58556FAB7144FFD49960FFD28F57
          FFCF8A53FFD28F5AFFD3915DFFD59563FFEED2BEFFF2E8E1FFEDE1D8FF03EDE0
          D6FF88EDDFD6FFEFE5DDFFE8D9CEFFC69168FFD2905DFFD3915DFFD38E58FFC3
          804BFF02CB9160FF81B77B53FF06000000008C5A5856639A5E37FFCD9050FFCF
          894CFFCC8348FFCE884FFFD08B53FFD18C55FFD28F5AFFDAA277FFEACBB3FFFF
          FEFDFF04FFFFFFFF8BF3E7DDFFDEAE89FFD3925FFFD28E57FFD18C54FFD08A52
          FFC5814AFFB27C50FFB48357FFAD8355FF8F6852FF05000000008CBB967FFFBE
          7E3AFFCE8642FFC87C3CFFCA8143FFCB8347FFCD864BFFCE884FFFCF8952FFCF
          884FFFCD8449FFF1DCCBFF03FFFFFFFF8DFBF9F6FFC28C5FFFCC844BFFD08B54
          FFCF8A51FFCE874DFFCD8549FFCA8145FFC77C3DFFC47735FFCB853EFFAB692C
          FFAA9A91D403000000008D29262531A0632FFFCD883BFFC57631FFC67936FFC7
          7D3BFFC87F3FFFCA8143FFCB8346FFCC8449FFCC854AFFCB8145FFEED7C4FF03
          FFFFFFFF8EF8F4F0FFBB7D4BFFCC854AFFCD864BFFCC8448FFCB8344FFCA8041
          FFC87D3DFFC77B39FFC57734FFC57731FFCD8A39FFAB7342FF6362616B020000
          00008DAB8067FFB06B1FFFC4762DFFC2722BFFC4752FFFC57632FFC67937FFC8
          7C3BFFC97E3EFFCA7F40FFCA8041FFC87C3CFFEED6C2FF03FFFFFFFF9DF9F4F0
          FFBA7B46FFCA7F41FFCB8042FFCA7F41FFC97E3DFFC77B39FFC67835FFC57630
          FFC3742DFFC1702AFFC67A2EFFB16D23FFBE9E8DFF0000000031313135A8713D
          FFC37B24FFBF6D2AFFBF6F2AFFC1722BFFC3722CFFC3742EFFC57632FFC67835
          FFC77938FFC77A3AFFC67633FFEDD4BFFF03FFFFFFFF9DF8F4EFFFB8773FFFC6
          7939FFC77B3AFFC77938FFC67835FFC47630FFC3732EFFC2722BFFC1702AFFBF
          6F2AFFBF6D2AFFBB7322FF9A623BFF5654545C5E57556FA9671CFFC27724FFBC
          6C2AFFBE6E2AFFBF702BFFC0712BFFC0722BFFC2722CFFC3732DFFC47530FFC4
          7531FFC2712AFFECD2BCFF03FFFFFFFF9DF8F3EFFFB77338FFC37430FFC47631
          FFC4742FFFC3732DFFC1712BFFC0702BFFBF6F2AFFBE6E2AFFBD6D2AFFBB6A2A
          FFC07322FF9C5C1DFF746D6A88B89A88FFAB630FFFBD6E26FFBA6A2BFFBB6C2A
          FFBD6D2BFFBE6E2BFFBF6F2BFFBF702BFFC0712BFFC1722CFFC1722BFFBF6B21
          FFEBD0B9FF03FFFFFFFF9DF8F3EFFFB56F31FFC07028FFC2712BFFC1712BFFC0
          6F2AFFBF6F2AFFBE6E2AFFBD6D2AFFBC6B2AFFBA6A29FFB9682AFFBD6F23FFA9
          6213FFCDB9AEFFA3785DFFAC6111FFB96928FFB86829FFB96929FFBA6B2AFFBB
          6C2AFFBC6D2AFFBD6D2AFFBD6E2AFFBE6F2BFFBE6F2AFFBC6921FFEAD0B9FF03
          FFFFFFFF9DF8F3EEFFB46D2FFFBE6D27FFBF6E2AFFBE6E2AFFBD6D2AFFBD6C2A
          FFBC6B29FFBB6A29FFBA6929FFB86829FFB76628FFB96926FFB16710FFC6AA98
          FF9D6C4BFFB0651BFFB96B32FFB96C31FFBB6D31FFBB6F31FFBC6F32FFBD7032
          FFBD7132FFBE7132FFBF7232FFBF7231FFBD6C29FFEAD0BBFF03FFFFFFFF9DF8
          F3EEFFB26B2FFFBB6A26FFBD6C2AFFBC6B29FFBB6A29FFB96A29FFB96929FFB8
          6729FFB76728FFB66628FFB56427FFB76626FFB36714FFBD9E87FF996746FFB3
          6C29FFBD7441FFBC7540FFBE7640FFBF7640FFBF773FFFC07740FFC17841FFC1
          7941FFC27A41FFC1793FFFBE7032FFEBD2BEFF03FFFFFFFF94F8F2EEFFB0682D
          FFB96725FFBA6A29FFBA6929FFB96929FFB86828FFB76628FFB66628FFB56528
          FFB46327FFB36227FFB56426FFB26617FFB99882FF9A6A4CFFB36D30FFC17F50
          FFBF7D4DFFC07E4DFF02C17F4DFF81C2804EFF02C3814EFF84C3804CFFC07943
          FFD2A27BFFFAF5F0FF03FFFFFFFF9CF9F5F1FFB4723EFFB66322FFB66525FFB7
          6628FFB66628FFB66528FFB46428FFB46327FFB36327FFB26127FFB05F27FFB3
          6226FFB1641AFFBEA08CFFA47B62FFAF6C34FFC68A5FFFC2865BFFC3875BFFC4
          885BFFC5885CFFC5895CFFC68A5CFFC58859FFCD956CFFECD8C8FFFDFBFAFF04
          FFFFFFFF95FAF7F4FFBF895EFFC07D49FFBA6E35FFB46427FFB36125FFB36326
          FFB26227FFB16127FFB06027FFAF5F26FFAE5D26FFB26226FFAC601CFF87756A
          B0C3AA9AFFAB6833FFCD966DFFC68E69FFC78F6AFFC7906AFF02C9916AFF92C9
          926AFFC99067FFCF9E7AFFE6CBB8FFE9D1C0FFEAD6C6FFEFDED1FFF2E4DAFFF7
          EDE6FFF4E7DEFFCB966EFFCA936AFFCB936BFFC5865AFFB66933FFB05F25FFAE
          5C21FFAE5C23FF02AE5D25FF89AC5B25FFB46327FFA05821FF8C807AB0413E3C
          49A36232FFD0996FFFCA9979FFCB9A78FF02CC9A78FF8CCC9B78FFCD9B78FFCD
          9B79FFCC9A76FFCA946DFFCB9671FFCC9973FFCD9A74FFCE9B77FFD09E7AFFD0
          9F7CFFCE9D79FF02CE9C79FF8ACE9E7BFFCC9A77FFC68E66FFBE7E51FFB16431
          FFAA5821FFA9561EFFA7551FFFB26127FF8F5026FF0200000000849C6642FFC3
          8458FFD1A78BFFCFA385FF02D0A386FF81D1A486FF03D1A586FF94D2A586FFD2
          A585FFD0A382FFD3A789FFD2A88BFFCC9F7FFFCEA181FFD2A687FFD2A686FFD2
          A586FFD1A586FFD1A587FFD2A78AFFD3A78BFFCFA182FFC38964FFB9774DFFB4
          6D40FFAB5D26FF76513ACC020000000087AA8975FF9E5A2EFFDAB399FFD4AC95
          FFD4AC94FFD4AD94FFD5AC94FF02D5AE94FF02D6AE94FF89D5AB8FFFE1C5B1FF
          F6F0EBFFF9F6F3FFE8D7CCFFCBA58CFFD0A98EFFD7AE95FFD6AE94FF02D5AE94
          FF88D5AD94FFD4AC93FFD5AE95FFD6B098FFD6B19BFFD6A484FFA05727FF4D46
          42630200000000864341404972462AC5D09A78FFDCBCA9FFD8B6A1FFD9B7A1FF
          02D9B7A2FF02DAB7A2FF83D9B59EFFE6CEBFFFFEFCFCFF03FFFFFFFF82EDE0D8
          FFD1B099FF02DAB8A2FF02DAB7A2FF02D9B7A2FF85D9B6A1FFD9B7A3FFDBB7A2
          FFBA7042FF986445FF040000000084C0A797FF9C5528FFDFBBA5FFE0C4B5FF02
          DEC1B0FF03DFC1B0FF82DEBEACFFF2E5DDFF04FFFFFFFF83FDFBFAFFDBC1B1FF
          DEC0AEFF04DFC1B0FF02DEC1B0FF84E2C8B9FFD29F7FFF884115FFBDA79AFF05
          00000000848B5B3EFFB67952FFECD4C5FFE4CEC0FF04E4CCBEFF82E3CABBFFF0
          E3DCFF04FFFFFFFF83F8F4F1FFE0C9BBFFE4CBBDFF05E4CCBEFF84E8D4C9FFE1
          B99FFF9D5223FFA98A77FF0600000000864E4C4B5472462ACCB77C56FFF3E1D6
          FFEDDDD5FFE9D8CCFF02E9D8CDFF88E9D7CCFFEAD9CFFFF5EDE9FFFFFEFEFFFF
          FFFFFFFBF7F6FFECDDD4FFE9D6CBFF04E9D8CDFF85E9D8CEFFEEE1D9FFE8C7B2
          FF9D5527FF996E53FF0800000000865A55526C8E5634FFBA815DFFECD4C4FFF4
          EDE7FFF1E5DEFF02F0E3DBFF87EFE2DAFFF0E1D9FFF3E9E2FFF4EBE5FFF1E5DD
          FFEFE2DAFFF0E3DCFF02F0E3DBFF87F0E3DCFFF1E6E0FFF4E9E3FFE3C1ABFFA3
          592BFF97694DFF484747500900000000895755545E875637FF965126FFE1BDA6
          FFFBF3EFFFFCF7F5FFF9F2EFFFF7EFEBFFF7EEEAFF02F6EDE8FF81F7EEE9FF02
          F7EEEAFF87F7EFEBFFFAF5F3FFFCF8F6FFFAF0E9FFCF9876FF8F4517FF9C7861
          FF0D0000000085C4AE9FFF8B512DFFA66C47FFD9AE92FFF9EBE2FF07FFFFFFFF
          86FFFEFDFFF1D9CAFFCE9D7DFF985830FF956140FF6B615B880F00000000907D
          7A7986A98975FF965F3DFFA06036FFB58565FFCDA892FFD9BAA6FFDFC3B1FFDF
          C1AEFFD7B6A1FFC8A288FFAD7551FF9C5A30FF966140FFAB907EFF4A4A495013
          000000008A76716E889A806FDC94684DFF7C4928FF824C2BFF804A29FF814E2F
          FF966B51FFB89C8BFF817C7A920B00000000}
      end
      item
        Image.Data = {
          BE0900005844424D020004023610850000424D36100000000000003600000028
          0000000220000000830100200000000000001000004E000000008D041B004C01
          3E00C2074E00ED0C5102F00C5002EF0D4E02EF0E4D02EF104C02EF114B02EF11
          4901F0093A00D40923007300010004120000000085031900450A5702F7739F6C
          FFC3D6BEFFC5D7C1FF02C5D6C0FF81C5D5C0FF02C6D5C0FF84C8D6C2FF97B08E
          FF235711FF0A23007911000000008300020005003E00BB689962FF0AFFFFFFFF
          83A1B898FF0E4000E9030A0022100000000090010B001E004A00E0A8C5A4FFFF
          FFFFFFF3F8F3FFC2E1C2FFC0E0C0FFC2E2C2FFC3E2C3FFC3E3C3FFBFE1BFFFE4
          F3E4FFFFFFFFFFF0F3EFFF23560CFE0612003E100000000090020C0020004A00
          E1AAC6A6FFFFFFFFFFCDE6CDFF0D860DFF088508FF0D8A0DFF0E8C0EFF0F8E0F
          FF028A02FF95CE95FFFFFFFFFFF4F6F3FF26560FFD0613004010000000009001
          080016004900DFA9C5A5FFFFFFFFFFCEE7CEFF128912FF0D880DFF128D12FF13
          8F13FF149114FF078D07FF97D097FFFFFFFFFFF2F5F1FF25560EFD051000350C
          00000000980005000C011200300117003D0216003A031F0053004B00E8A8C4A4
          FFFFFFFFFFCEE7CEFF128912FF0D880DFF128D12FF138F13FF149114FF078D07
          FF97D097FFFFFFFFFFF2F5F1FF23560CFE091F006C061100390612003D050F00
          350306001707000000009A011E004D004900CD085C02F20F6407FC106107FB11
          6107FB075804FFABC6A7FFFFFFFFFFCEE7CEFF128912FF0D880DFF128D12FF13
          8F13FF149114FF078D07FF97D097FFFFFFFFFFF2F5F1FF2A5B14FF1D4E06FC21
          4F07FB234E07FC1F4904F7123600D90D1E00720500000000850117003B015A01
          F174A872FFCFE0CEFFE0EBDEFF02DFEADDFF95DDE9DCFFF3F7F3FFFFFFFFFFCE
          E7CEFF128912FF0D880DFF128D12FF138F13FF149114FF078D07FF97D097FFFF
          FFFFFFFDFDFDFFE2E9DFFFE0E7DDFFE1E7DDFFE2E8DEFFDBE3D7FFA2B397FF27
          4C0FFF0D1D006D040000000082003C00A351924FFF08FFFFFFFF88D7EBD7FF13
          8A13FF0C880CFF128D12FF138F13FF149114FF068D06FF9ED39EFF08FFFFFFFF
          8297A989FF113100D3040000000086004A00CC92BC90FFFFFFFFFFFAFCFAFFA7
          CFA7FFA2CEA2FF02A4CFA4FF8DA5D0A5FFABD4ABFF87C287FF118911FF0E8A0E
          FF128D12FF138F13FF149114FF0D900DFF68BA68FFAFDBAFFFA9D9A9FFA9DAA9
          FF02AADBAAFF85A8DBA8FFE9F6E9FFFFFFFFFFCCD5C5FF1B3E01F10400000000
          9C004900CA90BA8DFFFFFFFFFFF0F7F0FF077907FF007300FF007600FF007900
          FF007B00FF007D00FF048104FF108910FF118B11FF128D12FF138F13FF159115
          FF179317FF0F920FFF0A910AFF0B930BFF0C960CFF0D980DFF0E9A0EFF099B09
          FFC2E7C2FFFFFFFFFFC9D2C0FF1C3F02EF04000000009C004900CA8FBA8DFFFF
          FFFFFFF1F7F1FF148014FF067B06FF0A7E0AFF0B800BFF0C820CFF0D840DFF0E
          870EFF108910FF118B11FF128D12FF138F13FF159115FF159315FF179517FF17
          9717FF189918FF199C19FF1A9E1AFF1B9F1BFF16A016FFC5E8C5FFFFFFFFFFC9
          D2C0FF1C3F02EF04000000009C004900CA8FBA8DFFFFFFFFFFF1F7F1FF158015
          FF077B07FF0B7E0BFF0C800CFF0D820DFF0E840EFF0F870FFF108910FF118B11
          FF128D12FF138F13FF159115FF159315FF179517FF189718FF199919FF1A9C1A
          FF1B9E1BFF1C9F1CFF17A017FFC5E8C5FFFFFFFFFFC9D2C0FF1C3F02EF040000
          00009C004900CA8FBA8DFFFFFFFFFFF1F7F1FF158015FF077B07FF0B7E0BFF0C
          800CFF0D820DFF0E840EFF0F870FFF108910FF118B11FF128D12FF138F13FF15
          9115FF159315FF179517FF189718FF199919FF1A9C1AFF1B9E1BFF1C9F1CFF17
          A017FFC5E8C5FFFFFFFFFFC9D2C0FF1C3F02EF04000000009C004900CA8FBA8D
          FFFFFFFFFFF1F7F1FF127E12FF047904FF087C08FF097E09FF0A800AFF0B820B
          FF0C860CFF108910FF118B11FF128D12FF138F13FF159115FF159315FF159415
          FF159515FF169816FF179B17FF189D18FF199E19FF149F14FFC4E8C4FFFFFFFF
          FFC9D2C0FF1C3F02EF04000000009C004900CB90BB8EFFFFFFFFFFF0F7F0FF12
          7F12FF047904FF077C07FF087F08FF098009FF0B830BFF0D850DFF108910FF11
          8B11FF128D12FF138F13FF159115FF169316FF159415FF159615FF169716FF16
          9B16FF179D17FF189E18FF139F13FFC4E8C4FFFFFFFFFFCAD3C1FF1C3F02F004
          0000000093004900CB91BB8FFFFFFFFFFFFCFDFCFFC6E0C6FFC2DFC2FFC3E0C3
          FFC4E0C4FFC4E1C4FFC8E3C8FFA0CFA0FF128912FF0E890EFF128D12FF138F13
          FF149114FF0A8F0AFF78C278FFCAE7CAFF02C7E6C7FF02C7E7C7FF85C6E8C6FF
          F1FAF1FFFFFFFFFFCBD4C3FF1A3D01F004000000008300390099428940FFFBFC
          FBFF07FFFFFFFF88D6EBD6FF128912FF0D880DFF128D12FF138F13FF149114FF
          068D06FF9ED29EFF08FFFFFFFF82879C77FF113000CB0400000000850112002D
          005500E65B9858FFB6D0B4FFC1D8BFFF02C0D6BEFF95BED3BDFFE9F0E8FFFFFF
          FFFFCEE7CEFF128912FF0D880DFF128D12FF138F13FF149114FF078D07FF97D0
          97FFFFFFFFFFFBFCFBFFC7D3C1FFC3D0BEFFC5D1BEFFC5D1BFFFC3CFBCFF8A9F
          7CFF1F4607FE0B18005A05000000009A01160038004500C0005500EC025800F0
          045600EE055600F1004F00FDA7C3A3FFFFFFFFFFCEE7CEFF128912FF0D880DFF
          128D12FF138F13FF149114FF078D07FF97D097FFFFFFFFFFF2F5F0FF20530AFF
          124400F3164300ED164300EF163F00EF103300D30A18005A0700000000980003
          00070110002B0111002E0211002D031A0046004B00E5A9C5A5FFFFFFFFFFCEE7
          CEFF128912FF0D880DFF128D12FF138F13FF149114FF078D07FF97D097FFFFFF
          FFFFF2F5F1FF25560EFD091C005F050D002C050D002E050D002D020500120C00
          0000009001090017004900DFA9C5A5FFFFFFFFFFCEE7CEFF108810FF0B870BFF
          108C10FF118E11FF129012FF058C05FF96D096FFFFFFFFFFF2F5F1FF25560EFD
          05100038100000000090020C0020004A00E2ABC7A7FFFFFFFFFFCFE7CFFF158B
          15FF108A10FF158F15FF169116FF179317FF0A8F0AFF99D099FFFFFFFFFFF5F7
          F3FF26570FFD06130040100000000090010A001C004900DFA6C4A2FFFFFFFFFF
          F7FBF7FFDAEDDAFFD9EDD9FFDAEDDAFFDAEEDAFFDBEEDBFFD8EDD8FFEFF7EFFF
          FFFFFFFFECF1EAFF21530AFD0612003E10000000008300010003013B00B05890
          52FF0AFFFFFFFF8391AB86FF0C3D00E20308001C110000000086021300360551
          00ED588D51FFACC5A6FFB1C9ABFFB0C8AAFF02B1C7AAFF02B1C6AAFF84B3C7AB
          FF7C9C71FF1A4F08FD091D006313000000008C03140038013900AE004900EC02
          4A00F0034900EF044700EF054600EF074500EF074400EF094400F1093600C608
          1A00574A00000000}
      end
      item
        Image.Data = {
          3C0600005844424D020004023610850000424D36100000000000003600000028
          0000000220000000830100200000000000001000007D000000007D000000000D
          000000008A0112002E003F00AD005100E4025400EA035300E8035200E8045000
          E8054F00E8064E00E8074D00E802094C00E88E0A4A00E80B4900E80D4800E80D
          4700E80F4600E80F4400E8114300E8114200E8124200E8134100E8154000E914
          3D00E80E3000C20A170053050000000085000B001B004E00D5388236FF9DC199
          FFA9C8A6FF02A8C6A4FF81A9C6A4FF02A9C5A4FF03AAC4A4FF82ABC3A4FFABC2
          A4FF02ACC2A4FF81ADC2A4FF02ADC1A4FF88ADC0A4FFAEC0A4FFAEBFA4FFB0C0
          A5FFAFBEA3FF688356FF153C00F3091200430400000000830030007E257623FF
          E4EEE3FF16FFFFFFFF83FAFBF9FF637F52FF102B00B6040000000082004500C0
          80B07DFF02FFFFFFFF82FAFDFAFFFAFCFAFF04FBFDFBFF02FAFDFAFF0CFBFDFB
          FF84FEFEFEFFFFFFFFFFBFCBB7FF163900E9040000000095004A00CC92BC8FFF
          FFFFFFFFF5F9F5FF57A457FF4DA04DFF50A250FF51A451FF51A551FF52A752FF
          53A953FF53AB53FF54AC54FF55AD55FF56AF56FF57B057FF57B257FF59B359FF
          59B459FF5AB65AFF5BB85BFF025CBA5CFF8559BB59FFD5EED5FFFFFFFFFFCBD4
          C3FF1C3F02F104000000009C004900CA8FBA8DFFFFFFFFFFF0F7F0FF067806FF
          007300FF007600FF007800FF007B00FF007D00FF008000FF018201FF028402FF
          038603FF048804FF068A06FF068D06FF098F09FF0A910AFF0B930BFF0C960CFF
          0D980DFF0E990EFF099A09FFC1E7C1FFFFFFFFFFC9D2C0FF1C3F02EF04000000
          009C004900CA8FBA8DFFFFFFFFFFF1F7F1FF158015FF077B07FF0B7E0BFF0C80
          0CFF0D820DFF0E840EFF0F870FFF108910FF118B11FF128D12FF138F13FF1591
          15FF159315FF179517FF189718FF199919FF1A9C1AFF1B9E1BFF1C9F1CFF17A0
          17FFC5E8C5FFFFFFFFFFC9D2C0FF1C3F02EF04000000009C004900CA8FBA8DFF
          FFFFFFFFF1F7F1FF158015FF077B07FF0B7E0BFF0C800CFF0D820DFF0E840EFF
          0F870FFF108910FF118B11FF128D12FF138F13FF159115FF159315FF179517FF
          189718FF199919FF1A9C1AFF1B9E1BFF1C9F1CFF17A017FFC5E8C5FFFFFFFFFF
          C9D2C0FF1C3F02EF04000000009C004900CA8FBA8DFFFFFFFFFFF1F7F1FF1580
          15FF077B07FF0B7E0BFF0C800CFF0D820DFF0E840EFF0F870FFF108910FF118B
          11FF128D12FF138F13FF159115FF159315FF179517FF189718FF199919FF1A9C
          1AFF1B9E1BFF1C9F1CFF17A017FFC5E8C5FFFFFFFFFFC9D2C0FF1C3F02EF0400
          0000009C004900CA8FBA8DFFFFFFFFFFF1F7F1FF158015FF077B07FF0B7E0BFF
          0C800CFF0D820DFF0E840EFF0F870FFF108910FF118B11FF128D12FF138F13FF
          159115FF159315FF179517FF189718FF199919FF1A9C1AFF1B9E1BFF1C9F1CFF
          17A017FFC5E8C5FFFFFFFFFFC9D2C0FF1C3F02EF04000000009C004900CA8FBA
          8DFFFFFFFFFFF0F7F0FF057805FF007200FF007500FF007800FF007A00FF007C
          00FF007F00FF008100FF018301FF028502FF038703FF058A05FF058C05FF078E
          07FF089008FF099209FF0A950AFF0C970CFF0D980DFF079907FFC1E6C1FFFFFF
          FFFFC9D2C0FF1C3F02EF04000000009C004A00CD93BD90FFFFFFFFFFF6FBF6FF
          6CB06CFF64AC64FF66AE66FF67B067FF67B167FF68B268FF69B469FF69B569FF
          6AB66AFF6AB86AFF6BB96BFF6CBA6CFF6CBB6CFF6EBC6EFF6EBE6EFF6FBF6FFF
          70C170FF70C270FF71C371FF6EC46EFFDAF0DAFFFFFFFFFFCBD5C3FF1C3F01F1
          040000000082004300BB77AA75FF18FFFFFFFF82B9C5AFFF153700E504000000
          0083012C0071196E17FFCEE0CDFF16FFFFFFFF83F0F2EEFF53713FFF102A00A8
          04000000008500070011004700C021731FFF7DAD79FF91B88DFF028FB68AFF02
          90B58AFF0291B48AFF0292B38AFF8F93B28AFF93B18AFF94B18AFF94B08AFF95
          B08AFF95AF8AFF96AF8AFF96AE8AFF97AE8AFF97AD8AFF99AE8CFF94A885FF4D
          6D39FF143800E5060D003005000000008E010A001A00380097004C00E0005000
          EA004E00E8004D00E8004C00E8004B00E8004900E8004800E8014700E8024600
          E8034400E8044300E802054200E88A074100E8083F00E8093E00E80A3D00E80C
          3C00E80D3B00E80E3A00E90E3800EA0F2E00B7071000397D000000007D000000
          000900000000}
      end
      item
        Image.Data = {
          5A0800005844424D020004023610850000424D36100000000000003600000028
          0000000220000000830100200000000000001000002F00000000851B0E062150
          281362763C1D929D5026C29B4F26C2029C5026C385773D1D95512A14671D0F07
          260101010300000001120000000086502813619E4F26C1D16932FFD06932FFCE
          6932FFD46B32FF02DC6D32FF81D46B32FF03CC6832FF849E5027C5522A156903
          030307010101020E000000008828140A319F5026C0D16932FFD46B32FFE47132
          FFF67732FFFF7E38FFF18C55FF02E0A88AFF8AE0A07EFFFF803BFFF97832FFE4
          7132FFD16932FFCC6832FFC46430F6512A156A0404040A010101020B00000000
          815028136102D16932FF85E97232FFFF7E38FFE4B49BFFF0D6C8FFFAF2EEFF05
          FCF8F6FF84F5E4DBFFE6BBA3FFE69366FFEB7332FF02CC6832FF83874522AE07
          0707120202020409000000008650281361D16932FFD86C32FFFE7A32FFE2AB8E
          FFF6E6DDFF07FAF2EEFF04FBF2EDFF87EBC5B0FFF08449FFD86C32FFCC6832FF
          A35429D1090909170101010207000000008550281361D16932FFDB6D32FFF289
          4FFFECC8B4FF06F9EDE6FF03E6AF92FF05F9EDE6FF87F4E0D4FFE29A72FFD86C
          32FFCC6832FF8A4823B50505050C0101010205000000008528140A31D16932FF
          D66C32FFF3874DFFF1D4C4FF06F6E5DCFF81E6AF92FF03FFFFFFFF81E6AF92FF
          05F6E5DCFF87F5DFD4FFE4976DFFD86C32FFCC6832FF371D0F4C0404040A0000
          0001040000000084AA5629D0CE6932FFFE7A32FFEBC4AFFF07F5DED2FF05FFFF
          FFFF06F5DED2FF86F2D8CBFFE98A56FFCC6832FFA25328CD0B0B0B1B02020205
          0300000000844E281361CE6932FFE87232FFE2AC8FFF08F2D7C8FF05FFFFFFFF
          07F2D7C8FF86EBC4AFFFEB7332FFCC6832FF5F31197D06060610010101020200
          000000849A4F26C1D16932FFF58649FFEDCBB7FF08F0CFBDFF05FFFFFFFF08F0
          CFBDFF8ADCA383FFD16932FFA35429CF0D0D0D2003030307000000001A0D0621
          CC6832FFE47132FFE2AA8BFF09EDC8B3FF05FFFFFFFF06EDC8B3FF8CECC4AEFF
          E6B69BFFDFA382FFE47132FFCC6832FF321B0E490606060F000000004E281362
          CC6832FFF67732FFE8B89FFF09EBBFA8FF05FFFFFFFF04EBBFA8FF82E3AD90FF
          E49B72FF03FF803BFF88F67732FFCC6832FF62331A840A0A0A1800000000753C
          1D92CC6832FFF4864AFF0AE8B89EFF05FFFFFFFF04E8B89EFF81E0A17EFF04FF
          803BFF88FF7E38FFCC6832FF844422AC0D0D0D21000000009B4F26C2D46B32FF
          EE8F5BFF04E6AF92FF03ED9362FF03E6AF92FF05FFFFFFFF02E6AF92FF81E4AA
          8AFF02ED9362FF02FF813CFF03FF803BFF87D16932FFA45429D0101010290000
          00009B4F26C2DC6D32FFE89669FF03E4A887FF81ED9362FF03FFFFFFFF81ED93
          62FF02E6AF92FF05FFFFFFFF02ED9362FF81FF813CFF03FFFFFFFF82FF803BFF
          FF813CFF02FF803BFF87DC6D32FFA45429D11212122E000000009C5026C3DC6D
          32FFEE915EFF03E49F7AFF05FFFFFFFF02ED9362FF05FFFFFFFF02FF813CFF05
          FFFFFFFF81FF813CFF02FF803BFF87DC6D32FFA45429D113131330000000009C
          5026C3D46B32FFF6884DFF03ED9362FF06FFFFFFFF81FF813CFF05FFFFFFFF81
          FF813CFF06FFFFFFFF03FF813CFF87D16932FFA45429D1131313300000000077
          3D1D95CC6832FFFD813DFF04FA8749FF11FFFFFFFF02FF813CFF89FF8340FFFF
          803BFFCC6832FF854522AE1212122E00000000512A1467CC6832FFF97832FF05
          FD8442FF0FFFFFFFFF81FF813CFF03FF8441FF88F97832FFCC6832FF66351B8B
          10101029000000001D0F0726CC6832FFE67232FF06FF8644FF0DFFFFFFFF02FF
          813CFF03FF8644FF89E67232FFCC6832FF3C2011590D0D0D2100000000010101
          039E5027C5D16932FFFA8749FF06FA8A4DFF0BFFFFFFFF05FA8A4DFF8AFA8749
          FFD16932FFA55429D21717173A0A0A0A180000000000000001522A1569CC6832
          FFE6773BFF07F1925EFF09FFFFFFFF06F1925EFF85E6773BFFCC6832FF68361C
          8D1313132F0606060F020000000084030303079E5127C7CC6832FFEC8E5CFF07
          EB996DFF07FFFFFFFF06EB996DFF86EC8E5CFFCC6832FFA55429D21919193F0D
          0D0D2003030307020000000085010101022F180C3DCC6832FFD16F39FFE69D75
          FF07E5A07AFF05FFFFFFFF06E5A07AFF87E69D75FFD16F39FFCC6832FF492715
          6A1313132F060606100101010203000000008502020205572D1671CC6832FFD2
          723FFFE1A380FF07E6A683FF03FFFFFFFF06E6A683FF87E1A380FFD2723FFFCC
          6832FF68371C8E171717390B0B0B1B0202020504000000008600000001040404
          0A592E1775CC6832FFD0703CFFDD9F7EFF0EE8AB8AFF88DD9F7EFFD0703CFFCC
          6832FF68371C8E1818183C0D0D0D220404040A00000001050000000083010101
          020505050C5A2F177602CC6832FF82DC8759FFE4AC8EFF0AE8AF91FF82E4AC8E
          FFDC8759FF02CC6832FF8568371C8E1818183C0E0E0E230505050C0101010207
          0000000089010101020505050C371D0F4CA25328CDCC6832FFCE6D39FFD88557
          FFD69F82FFE5B194FF04EAB497FF8BE5B194FFD69F82FFD88557FFCE6D39FFCC
          6832FFA55429D24927156A171717390D0D0D220505050C010101020900000000
          85010101020404040A0B0B0B1B5F31197DA35429CF03CC6832FF81CC6E3BFF02
          D07D4FFF81CC6E3BFF03CC6832FF87A55429D268361C8D1919193F1313132F0B
          0B0B1B0404040A010101020B00000000880000000102020205060606100D0D0D
          20321B0E4962331A84844422ACA45429D003A45429D189854522AE66351B8B3C
          2011591717173A1313132F0D0D0D200606061002020205000000010E00000000
          8701010102030303070606060F0A0A0A180D0D0D21101010291212122E021313
          1330871212122E101010290D0D0D210A0A0A180606060F030303070101010207
          00000000}
      end
      item
        Image.Data = {
          5A0800005844424D020004023610850000424D36100000000000003600000028
          0000000220000000830100200000000000001000000D00000000870101010203
          0303070606060F0A0A0A180D0D0D21101010291212122E021313133087121212
          2E101010290D0D0D210A0A0A180606060F03030307010101020E000000008800
          00000102020205060606100D0D0D20321B0E4962331A84844422ACA45429D003
          A45429D189854522AE66351B8B3C2011591717173A1313132F0D0D0D20060606
          1002020205000000010B0000000085010101020404040A0B0B0B1B5F31197DA3
          5429CF03CC6832FF81CC6E3BFF02D07D4FFF81CC6E3BFF03CC6832FF87A55429
          D268361C8D1919193F1313132F0B0B0B1B0404040A0101010209000000008901
          0101020505050C371D0F4CA25328CDCC6832FFCE6D39FFD88557FFD69F82FFE5
          B194FF04EAB497FF8BE5B194FFD69F82FFD88557FFCE6D39FFCC6832FFA55429
          D24927156A171717390D0D0D220505050C010101020700000000830101010205
          05050C5A2F177602CC6832FF82DC8759FFE4AC8EFF0AE8AF91FF82E4AC8EFFDC
          8759FF02CC6832FF8568371C8E1818183C0E0E0E230505050C01010102050000
          000086000000010404040A592E1775CC6832FFD0703CFFDD9F7EFF0EE8AB8AFF
          88DD9F7EFFD0703CFFCC6832FF68371C8E1818183C0D0D0D220404040A000000
          0104000000008502020205572D1671CC6832FFD2723FFFE1A380FF07E6A683FF
          03FFFFFFFF06E6A683FF87E1A380FFD2723FFFCC6832FF68371C8E171717390B
          0B0B1B02020205030000000085010101022F180C3DCC6832FFD16F39FFE69D75
          FF07E5A07AFF05FFFFFFFF06E5A07AFF87E69D75FFD16F39FFCC6832FF492715
          6A1313132F0606061001010102020000000084030303079E5127C7CC6832FFEC
          8E5CFF07EB996DFF07FFFFFFFF06EB996DFF8BEC8E5CFFCC6832FFA55429D219
          19193F0D0D0D20030303070000000000000001522A1569CC6832FFE6773BFF07
          F1925EFF09FFFFFFFF06F1925EFF8AE6773BFFCC6832FF68361C8D1313132F06
          06060F00000000010101039E5027C5D16932FFFA8749FF06FA8A4DFF0BFFFFFF
          FF05FA8A4DFF89FA8749FFD16932FFA55429D21717173A0A0A0A18000000001D
          0F0726CC6832FFE67232FF06FF8644FF0DFFFFFFFF02FF813CFF03FF8644FF88
          E67232FFCC6832FF3C2011590D0D0D2100000000512A1467CC6832FFF97832FF
          05FD8442FF0FFFFFFFFF81FF813CFF03FF8441FF88F97832FFCC6832FF66351B
          8B1010102900000000773D1D95CC6832FFFD813DFF04FA8749FF11FFFFFFFF02
          FF813CFF89FF8340FFFF803BFFCC6832FF854522AE1212122E000000009C5026
          C3D46B32FFF6884DFF03ED9362FF06FFFFFFFF81FF813CFF05FFFFFFFF81FF81
          3CFF06FFFFFFFF03FF813CFF87D16932FFA45429D113131330000000009C5026
          C3DC6D32FFEE915EFF03E49F7AFF05FFFFFFFF02ED9362FF05FFFFFFFF02FF81
          3CFF05FFFFFFFF81FF813CFF02FF803BFF87DC6D32FFA45429D1131313300000
          00009B4F26C2DC6D32FFE89669FF03E4A887FF81ED9362FF03FFFFFFFF81ED93
          62FF02E6AF92FF05FFFFFFFF02ED9362FF81FF813CFF03FFFFFFFF82FF803BFF
          FF813CFF02FF803BFF87DC6D32FFA45429D11212122E000000009B4F26C2D46B
          32FFEE8F5BFF04E6AF92FF03ED9362FF03E6AF92FF05FFFFFFFF02E6AF92FF81
          E4AA8AFF02ED9362FF02FF813CFF03FF803BFF87D16932FFA45429D010101029
          00000000753C1D92CC6832FFF4864AFF0AE8B89EFF05FFFFFFFF04E8B89EFF81
          E0A17EFF04FF803BFF89FF7E38FFCC6832FF844422AC0D0D0D21000000004E28
          1362CC6832FFF67732FFE8B89FFF09EBBFA8FF05FFFFFFFF04EBBFA8FF82E3AD
          90FFE49B72FF03FF803BFF89F67732FFCC6832FF62331A840A0A0A1800000000
          1A0D0621CC6832FFE47132FFE2AA8BFF09EDC8B3FF05FFFFFFFF06EDC8B3FF87
          ECC4AEFFE6B69BFFDFA382FFE47132FFCC6832FF321B0E490606060F02000000
          00849A4F26C1D16932FFF58649FFEDCBB7FF08F0CFBDFF05FFFFFFFF08F0CFBD
          FF85DCA383FFD16932FFA35429CF0D0D0D20030303070200000000844E281361
          CE6932FFE87232FFE2AC8FFF08F2D7C8FF05FFFFFFFF07F2D7C8FF86EBC4AFFF
          EB7332FFCC6832FF5F31197D0606061001010102030000000084AA5629D0CE69
          32FFFE7A32FFEBC4AFFF07F5DED2FF05FFFFFFFF06F5DED2FF86F2D8CBFFE98A
          56FFCC6832FFA25328CD0B0B0B1B0202020504000000008528140A31D16932FF
          D66C32FFF3874DFFF1D4C4FF06F6E5DCFF81E6AF92FF03FFFFFFFF81E6AF92FF
          05F6E5DCFF87F5DFD4FFE4976DFFD86C32FFCC6832FF371D0F4C0404040A0000
          000105000000008550281361D16932FFDB6D32FFF2894FFFECC8B4FF06F9EDE6
          FF03E6AF92FF05F9EDE6FF87F4E0D4FFE29A72FFD86C32FFCC6832FF8A4823B5
          0505050C0101010207000000008650281361D16932FFD86C32FFFE7A32FFE2AB
          8EFFF6E6DDFF07FAF2EEFF04FBF2EDFF87EBC5B0FFF08449FFD86C32FFCC6832
          FFA35429D109090917010101020900000000815028136102D16932FF85E97232
          FFFF7E38FFE4B49BFFF0D6C8FFFAF2EEFF05FCF8F6FF84F5E4DBFFE6BBA3FFE6
          9366FFEB7332FF02CC6832FF83874522AE07070712020202040B000000008828
          140A319F5026C0D16932FFD46B32FFE47132FFF67732FFFF7E38FFF18C55FF02
          E0A88AFF8AE0A07EFFFF803BFFF97832FFE47132FFD16932FFCC6832FFC46430
          F6512A156A0404040A010101020E0000000086502813619E4F26C1D16932FFD0
          6932FFCE6932FFD46B32FF02DC6D32FF81D46B32FF03CC6832FF849E5027C552
          2A156903030307010101021200000000851B0E062150281362763C1D929D5026
          C29B4F26C2029C5026C385773D1D95512A14671D0F0726010101030000000129
          00000000}
      end
      item
        Image.Data = {
          100800005844424D020004023610850000424D36100000000000003600000028
          0000000220000000830100200000000000001000000D00000000870101010203
          0303070606060F0A0A0A180D0D0D21101010291212122E021313133087121212
          2E101010290D0D0D210A0A0A180606060F03030307010101020E000000008800
          00000102020205060606100D0D0D20321B0E4962331A84844422ACA45429D003
          A45429D189854522AE66351B8B3C2011591717173A1313132F0D0D0D20060606
          1002020205000000010B0000000085010101020404040A0B0B0B1B5F31197DA3
          5429CF03CC6832FF81CC6E3BFF02D07D4FFF81CC6E3BFF03CC6832FF87A55429
          D268361C8D1919193F1313132F0B0B0B1B0404040A0101010209000000008901
          0101020505050C371D0F4CA25328CDCC6832FFCE6D39FFD88557FFD69F82FFE5
          B194FF04EAB497FF8BE5B194FFD69F82FFD88557FFCE6D39FFCC6832FFA55429
          D24927156A171717390D0D0D220505050C010101020700000000830101010205
          05050C5A2F177602CC6832FF82DC8759FFE4AC8EFF0AE8AF91FF82E4AC8EFFDC
          8759FF02CC6832FF8568371C8E1818183C0E0E0E230505050C01010102050000
          000086000000010404040A592E1775CC6832FFD0703CFFDD9F7EFF0EE8AB8AFF
          88DD9F7EFFD0703CFFCC6832FF68371C8E1818183C0D0D0D220404040A000000
          0104000000008502020205572D1671CC6832FFD2723FFFE1A380FF07E6A683FF
          02FFFFFFFF07E6A683FF87E1A380FFD2723FFFCC6832FF68371C8E171717390B
          0B0B1B02020205030000000085010101022F180C3DCC6832FFD16F39FFE69D75
          FF07E5A07AFF04FFFFFFFF07E5A07AFF87E69D75FFD16F39FFCC6832FF492715
          6A1313132F0606061001010102020000000084030303079E5127C7CC6832FFEC
          8E5CFF07EB996DFF05FFFFFFFF08EB996DFF8BEC8E5CFFCC6832FFA55429D219
          19193F0D0D0D20030303070000000000000001522A1569CC6832FFE6773BFF07
          F1925EFF06FFFFFFFF09F1925EFF8AE6773BFFCC6832FF68361C8D1313132F06
          06060F00000000010101039E5027C5D16932FFFA8749FF06FA8A4DFF06FFFFFF
          FF04FF813CFF06FA8A4DFF89FA8749FFD16932FFA55429D21717173A0A0A0A18
          000000001D0F0726CC6832FFE67232FF06FF8644FF06FFFFFFFF09FF813CFF03
          FF8644FF88E67232FFCC6832FF3C2011590D0D0D2100000000512A1467CC6832
          FFF97832FF05FD8442FF06FFFFFFFF0AFF813CFF03FF8441FF88F97832FFCC68
          32FF66351B8B1010102900000000773D1D95CC6832FFFD813DFF04FA8749FF11
          FFFFFFFF02FF813CFF89FF8340FFFF803BFFCC6832FF854522AE1212122E0000
          00009C5026C3D46B32FFF6884DFF03ED9362FF13FFFFFFFF03FF813CFF87D169
          32FFA45429D113131330000000009C5026C3DC6D32FFEE915EFF03E49F7AFF13
          FFFFFFFF81FF813CFF02FF803BFF87DC6D32FFA45429D113131330000000009B
          4F26C2DC6D32FFE89669FF03E4A887FF13FFFFFFFF81FF813CFF02FF803BFF87
          DC6D32FFA45429D11212122E000000009B4F26C2D46B32FFEE8F5BFF04E6AF92
          FF11FFFFFFFF81FF813CFF03FF803BFF87D16932FFA45429D010101029000000
          00753C1D92CC6832FFF4864AFF05E8B89EFF06FFFFFFFF05EBBFA8FF03E8B89E
          FF81E0A17EFF04FF803BFF89FF7E38FFCC6832FF844422AC0D0D0D2100000000
          4E281362CC6832FFF67732FFE8B89FFF05EBBFA8FF06FFFFFFFF07EBBFA8FF82
          E3AD90FFE49B72FF03FF803BFF89F67732FFCC6832FF62331A840A0A0A180000
          00001A0D0621CC6832FFE47132FFE2AA8BFF05EDC8B3FF81EBBFA8FF06FFFFFF
          FF08EDC8B3FF87ECC4AEFFE6B69BFFDFA382FFE47132FFCC6832FF321B0E4906
          06060F0200000000849A4F26C1D16932FFF58649FFEDCBB7FF05F0CFBDFF81EB
          BFA8FF06FFFFFFFF09F0CFBDFF85DCA383FFD16932FFA35429CF0D0D0D200303
          03070200000000844E281361CE6932FFE87232FFE2AC8FFF06F2D7C8FF81EBBF
          A8FF05FFFFFFFF08F2D7C8FF86EBC4AFFFEB7332FFCC6832FF5F31197D060606
          1001010102030000000084AA5629D0CE6932FFFE7A32FFEBC4AFFF06F5DED2FF
          81EBBFA8FF04FFFFFFFF07F5DED2FF86F2D8CBFFE98A56FFCC6832FFA25328CD
          0B0B0B1B0202020504000000008528140A31D16932FFD66C32FFF3874DFFF1D4
          C4FF06F6E5DCFF81EBBFA8FF02FFFFFFFF81EBBFA8FF06F6E5DCFF87F5DFD4FF
          E4976DFFD86C32FFCC6832FF371D0F4C0404040A000000010500000000855028
          1361D16932FFDB6D32FFF2894FFFECC8B4FF06F9EDE6FF02EBBFA8FF06F9EDE6
          FF87F4E0D4FFE29A72FFD86C32FFCC6832FF8A4823B50505050C010101020700
          0000008650281361D16932FFD86C32FFFE7A32FFE2AB8EFFF6E6DDFF07FAF2EE
          FF04FBF2EDFF87EBC5B0FFF08449FFD86C32FFCC6832FFA35429D10909091701
          0101020900000000815028136102D16932FF85E97232FFFF7E38FFE4B49BFFF0
          D6C8FFFAF2EEFF05FCF8F6FF84F5E4DBFFE6BBA3FFE69366FFEB7332FF02CC68
          32FF83874522AE07070712020202040B000000008828140A319F5026C0D16932
          FFD46B32FFE47132FFF67732FFFF7E38FFF18C55FF02E0A88AFF8AE0A07EFFFF
          803BFFF97832FFE47132FFD16932FFCC6832FFC46430F6512A156A0404040A01
          0101020E0000000086502813619E4F26C1D16932FFD06932FFCE6932FFD46B32
          FF02DC6D32FF81D46B32FF03CC6832FF849E5027C5522A156903030307010101
          021200000000851B0E062150281362763C1D929D5026C29B4F26C2029C5026C3
          85773D1D95512A14671D0F072601010103000000012900000000}
      end
      item
        Image.Data = {
          220800005844424D020004023610850000424D36100000000000003600000028
          0000000220000000830100200000000000001000000D00000000870101010203
          0303070606060F0A0A0A180D0D0D21101010291212122E021313133087121212
          2E101010290D0D0D210A0A0A180606060F03030307010101020E000000008800
          00000102020205060606100D0D0D20321B0E4962331A84844422ACA45429D003
          A45429D189854522AE66351B8B3C2011591717173A1313132F0D0D0D20060606
          1002020205000000010B0000000085010101020404040A0B0B0B1B5F31197DA3
          5429CF03CC6832FF81CC6E3BFF02D07D4FFF81CC6E3BFF03CC6832FF87A55429
          D268361C8D1919193F1313132F0B0B0B1B0404040A0101010209000000008901
          0101020505050C371D0F4CA25328CDCC6832FFCE6D39FFD88557FFD69F82FFE5
          B194FF04EAB497FF8BE5B194FFD69F82FFD88557FFCE6D39FFCC6832FFA55429
          D24927156A171717390D0D0D220505050C010101020700000000830101010205
          05050C5A2F177602CC6832FF82DC8759FFE4AC8EFF0AE8AF91FF82E4AC8EFFDC
          8759FF02CC6832FF8568371C8E1818183C0E0E0E230505050C01010102050000
          000086000000010404040A592E1775CC6832FFD0703CFFDD9F7EFF0EE8AB8AFF
          88DD9F7EFFD0703CFFCC6832FF68371C8E1818183C0D0D0D220404040A000000
          0104000000008502020205572D1671CC6832FFD2723FFFE1A380FF07E6A683FF
          02FFFFFFFF07E6A683FF87E1A380FFD2723FFFCC6832FF68371C8E171717390B
          0B0B1B02020205030000000085010101022F180C3DCC6832FFD16F39FFE69D75
          FF07E5A07AFF04FFFFFFFF07E5A07AFF87E69D75FFD16F39FFCC6832FF492715
          6A1313132F0606061001010102020000000084030303079E5127C7CC6832FFEC
          8E5CFF08EB996DFF05FFFFFFFF07EB996DFF8BEC8E5CFFCC6832FFA55429D219
          19193F0D0D0D20030303070000000000000001522A1569CC6832FFE6773BFF09
          F1925EFF06FFFFFFFF07F1925EFF8AE6773BFFCC6832FF68361C8D1313132F06
          06060F00000000010101039E5027C5D16932FFFA8749FF07FA8A4DFF03FF813C
          FF06FFFFFFFF06FA8A4DFF89FA8749FFD16932FFA55429D21717173A0A0A0A18
          000000001D0F0726CC6832FFE67232FF0AFF8644FF02FF813CFF06FFFFFFFF03
          FF813CFF03FF8644FF88E67232FFCC6832FF3C2011590D0D0D2100000000512A
          1467CC6832FFF97832FF06FD8442FF04FF8441FF03FF813CFF06FFFFFFFF02FF
          813CFF03FF8441FF88F97832FFCC6832FF66351B8B1010102900000000773D1D
          95CC6832FFFD813DFF03FA8749FF11FFFFFFFF03FF813CFF89FF8340FFFF803B
          FFCC6832FF854522AE1212122E000000009C5026C3D46B32FFF6884DFF02ED93
          62FF13FFFFFFFF04FF813CFF87D16932FFA45429D113131330000000009C5026
          C3DC6D32FFEE915EFF02E49F7AFF13FFFFFFFF02FF813CFF02FF803BFF87DC6D
          32FFA45429D113131330000000009B4F26C2DC6D32FFE89669FF02E4A887FF13
          FFFFFFFF82FF803BFFFF813CFF02FF803BFF87DC6D32FFA45429D11212122E00
          0000009B4F26C2D46B32FFEE8F5BFF02E6AF92FF81ED9362FF11FFFFFFFF02FF
          813CFF03FF803BFF87D16932FFA45429D01010102900000000753C1D92CC6832
          FFF4864AFF03E8B89EFF0AED9362FF06FFFFFFFF81ED9362FF04FF803BFF89FF
          7E38FFCC6832FF844422AC0D0D0D21000000004E281362CC6832FFF67732FFE8
          B89FFF0BEBBFA8FF06FFFFFFFF83ED9362FFE3AD90FFE49B72FF03FF803BFF89
          F67732FFCC6832FF62331A840A0A0A18000000001A0D0621CC6832FFE47132FF
          E2AA8BFF0AEDC8B3FF06FFFFFFFF81ED9362FF03EDC8B3FF87ECC4AEFFE6B69B
          FFDFA382FFE47132FFCC6832FF321B0E490606060F0200000000849A4F26C1D1
          6932FFF58649FFEDCBB7FF08F0CFBDFF06FFFFFFFF81ED9362FF06F0CFBDFF85
          DCA383FFD16932FFA35429CF0D0D0D20030303070200000000844E281361CE69
          32FFE87232FFE2AC8FFF08F2D7C8FF05FFFFFFFF81ED9362FF06F2D7C8FF86EB
          C4AFFFEB7332FFCC6832FF5F31197D0606061001010102030000000084AA5629
          D0CE6932FFFE7A32FFEBC4AFFF07F5DED2FF04FFFFFFFF81ED9362FF06F5DED2
          FF86F2D8CBFFE98A56FFCC6832FFA25328CD0B0B0B1B02020205040000000085
          28140A31D16932FFD66C32FFF3874DFFF1D4C4FF06F6E5DCFF81ED9362FF02FF
          FFFFFF81ED9362FF06F6E5DCFF87F5DFD4FFE4976DFFD86C32FFCC6832FF371D
          0F4C0404040A0000000105000000008550281361D16932FFDB6D32FFF2894FFF
          ECC8B4FF06F9EDE6FF02ED9362FF06F9EDE6FF87F4E0D4FFE29A72FFD86C32FF
          CC6832FF8A4823B50505050C0101010207000000008650281361D16932FFD86C
          32FFFE7A32FFE2AB8EFFF6E6DDFF07FAF2EEFF04FBF2EDFF87EBC5B0FFF08449
          FFD86C32FFCC6832FFA35429D109090917010101020900000000815028136102
          D16932FF85E97232FFFF7E38FFE4B49BFFF0D6C8FFFAF2EEFF05FCF8F6FF84F5
          E4DBFFE6BBA3FFE69366FFEB7332FF02CC6832FF83874522AE07070712020202
          040B000000008828140A319F5026C0D16932FFD46B32FFE47132FFF67732FFFF
          7E38FFF18C55FF02E0A88AFF8AE0A07EFFFF803BFFF97832FFE47132FFD16932
          FFCC6832FFC46430F6512A156A0404040A010101020E0000000086502813619E
          4F26C1D16932FFD06932FFCE6932FFD46B32FF02DC6D32FF81D46B32FF03CC68
          32FF849E5027C5522A156903030307010101021200000000851B0E0621502813
          62763C1D929D5026C29B4F26C2029C5026C385773D1D95512A14671D0F072601
          010103000000012900000000}
      end
      item
        Image.Data = {
          640900005844424D020004023610850000424D36100000000000003600000028
          0000000220000000830100200000000000001000002D00000000850000000102
          0202051D0F0726512A1467773D1D95029C5026C3859B4F26C29D5026C2763C1D
          92502813621B0E06211200000000840101010303030307522A15699E5027C503
          CC6832FF81D46B32FF02DC6D32FF86D46B32FFCE6932FFD06932FFD16932FF9E
          4F26C1502813610E000000008A010101030404040A512A156AC46430F6CC6832
          FFD16932FFE47132FFF97832FFFF803BFFE0A07EFF02E0A88AFF88F18C55FFFF
          7E38FFF67732FFE47132FFD46B32FFD16932FF9F5026C028140A310B00000000
          830202020607070712874522AE02CC6832FF84EB7332FFE69366FFE6BBA3FFF5
          E4DBFF05FCF8F6FF85FAF2EEFFF0D6C8FFE4B49BFFFF7E38FFE97232FF02D169
          32FF81502813610900000000870101010409090917A35429D1CC6832FFD86C32
          FFF08449FFEBC5B0FF04FBF2EDFF07FAF2EEFF86F6E6DDFFE2AB8EFFFE7A32FF
          D86C32FFD16932FF50281361070000000087010101040505050C8A4823B5CC68
          32FFD86C32FFE29A72FFF4E0D4FF0EF9EDE6FF85ECC8B4FFF2894FFFDB6D32FF
          D16932FF50281361050000000087010101020404040A371D0F4CCC6832FFD86C
          32FFE4976DFFF5DFD4FF05F6E5DCFF02F5DED2FF84DFC6B8FFD8BDAFFFD9BEB0
          FFE1C7B8FF05F6E5DCFF85F1D4C4FFF3874DFFD66C32FFD16932FF28140A3104
          0000000086020202050B0B0B1BA25328CDCC6832FFE98A56FFF2D8CBFF05F5DE
          D2FF84F2D6C7FFE8D1C5FFE5DAD4FFEFE9E6FF02FFFFFFFF83E7DEDAFFD7C5BC
          FFCCAE9DFF04F5DED2FF84EBC4AFFFFE7A32FFCE6932FFAA5629D00300000000
          8601010102060606105F31197DCC6832FFEB7332FFEBC4AFFF06F2D7C8FF81F0
          D3C3FF08FFFFFFFF81D7C4BAFF04F2D7C8FF84E2AC8FFFE87232FFCE6932FF4E
          281361020000000085030303070D0D0D20A35429CFD16932FFDCA383FF07F0CF
          BDFF81F1D3C2FF09FFFFFFFF81D8C6BDFF03F0CFBDFF84EDCBB7FFF58649FFD1
          6932FF9A4F26C10200000000870606060F321B0E49CC6832FFE47132FFDFA382
          FFE6B69BFFECC4AEFF05EDC8B3FF82EBC2ACFFFDFAF8FF09FFFFFFFF81CEB7AB
          FF03EDC8B3FF89E2AA8BFFE47132FFCC6832FF1A0D0621000000000A0A0A1862
          331A84CC6832FFF67732FF03FF803BFF82E49B72FFE3AD90FF03EBBFA8FF88E6
          B093FFE8BAA1FFEBC3AEFFE9BEA6FFE6B093FFE7B59AFFEECCB9FFFCF9F7FF04
          FFFFFFFF81D1A48CFF02EBBFA8FF89E8B89FFFF67732FFCC6832FF4E28136200
          0000000D0D0D21844422ACCC6832FFFF7E38FF03FF803BFF03FFFFFFFF09E8B8
          9EFF82E4AC8DFFFDF9F6FF03FFFFFFFF81E0C8BBFF03E8B89EFF87F4864AFFCC
          6832FF753C1D920000000010101029A45429D0D16932FF03FF803BFF81FF813C
          FF05FFFFFFFF81CBA089FF07E6AF92FF81EBC1AAFF03FFFFFFFF81DFD4CEFF03
          E6AF92FF87EE8F5BFFD46B32FF9B4F26C2000000001212122EA45429D1DC6D32
          FF02FF803BFF82FF813CFFFF803BFF07FFFFFFFF82DFD4CEFFC9AB9AFF05E6AF
          92FF04FFFFFFFF81DD936AFF02E4A887FF87E89669FFDC6D32FF9B4F26C20000
          000013131330A45429D1DC6D32FF02FF803BFF02FF813CFF09FFFFFFFF81DBC6
          BAFF03ED9362FF81E4AA8AFF04FFFFFFFF81DE885AFF02E49F7AFF87EE915EFF
          DC6D32FF9C5026C30000000013131330A45429D1D16932FF04FF813CFF81FBF5
          F2FF08FFFFFFFF81DFD4CEFF04FF813CFF03FFFFFFFF81EBE0DAFF03ED9362FF
          89F6884DFFD46B32FF9C5026C3000000001212122E854522AECC6832FFFF803B
          FFFF8340FF02FF813CFF81F2DACDFF08FFFFFFFF85EBC1AAFFFF813CFFFD8543
          FFFA8647FFF1E2DAFF03FFFFFFFF81EDCBB8FF03FA8749FF88FD813DFFCC6832
          FF773D1D95000000001010102966351B8BCC6832FFF97832FF03FF8441FF81F1
          D3C2FF07FFFFFFFF81DFC4B6FF02FF813CFF82FF8441FFF1E2DAFF04FFFFFFFF
          81DD956EFF03FD8442FF88F97832FFCC6832FF512A1467000000000D0D0D213C
          201159CC6832FFE67232FF03FF8644FF81EAB99FFF08FFFFFFFF82DFD4CEFFE6
          DED9FF05FFFFFFFF81F2D2C1FF04FF8644FF89E67232FFCC6832FF1D0F072600
          0000000A0A0A181717173AA55429D2D16932FFFA8749FF02FA8A4DFF81E9B294
          FF0EFFFFFFFF81F7E4DAFF04FA8A4DFF8AFA8749FFD16932FF9E5027C5020202
          05000000000606060F1313132F68361C8DCC6832FFE6773BFF02F1925EFF81E4
          9E78FF04FFFFFFFF81FCF6F3FF08FFFFFFFF81F6DED1FF05F1925EFF8BE6773B
          FFCC6832FF522A15690000000100000000030303070D0D0D201919193FA55429
          D2CC6832FFEC8E5CFF02EB996DFF81F8E8DFFF02FFFFFFFF84E9B294FFEB996D
          FFEEC2AAFFFAEFE9FF04FFFFFFFF82F8E8DFFFE9B294FF05EB996DFF84EC8E5C
          FFCC6832FF9E5127C70303030702000000008701010102060606101313132F49
          27156ACC6832FFD16F39FFE69D75FF02E5A07AFF82E6A785FFE2986FFF05E5A0
          7AFF02E6A785FF07E5A07AFF85E69D75FFD16F39FFCC6832FF2F180C3D010101
          02030000000087020202050B0B0B1B1717173968371C8ECC6832FFD2723FFFE1
          A380FF10E6A683FF85E1A380FFD2723FFFCC6832FF572D167102020205040000
          000088000000010404040A0D0D0D221818183C68371C8ECC6832FFD0703CFFDD
          9F7EFF0EE8AB8AFF86DD9F7EFFD0703CFFCC6832FF592E17750404040A000000
          01050000000085010101020505050C0E0E0E231818183C68371C8E02CC6832FF
          82DC8759FFE4AC8EFF0AE8AF91FF82E4AC8EFFDC8759FF02CC6832FF835A2F17
          760505050C0101010207000000008B010101020505050C0D0D0D221717173949
          27156AA55429D2CC6832FFCE6D39FFD88557FFD69F82FFE5B194FF04EAB497FF
          89E5B194FFD69F82FFD88557FFCE6D39FFCC6832FFA25328CD371D0F4C050505
          0C01010102090000000087010101020404040A0B0B0B1B1313132F1919193F68
          361C8DA55429D203CC6832FF81CC6E3BFF02D07D4FFF81CC6E3BFF03CC6832FF
          85A35429CF5F31197D0B0B0B1B0404040A010101020B00000000890101010203
          03030A0A0A0A1E0D0D0D201313132F1717173A3C20115966351B8B854522AE03
          A45429D188A45429D0844422AC62331A84321B0E490D0D0D2006060610020202
          05010101020E0000000087010101030404040C0909091B0A0A0A180D0D0D2110
          1010291212122E0213131330871212122E1818184B1313133D0E0E0E2C090909
          1B0404040C010101030900000000}
      end
      item
        Image.Data = {
          640900005844424D020004023610850000424D36100000000000003600000028
          0000000220000000830100200000000000001000002F00000000851B0E062150
          281362763C1D929D5026C29B4F26C2029C5026C385773D1D95512A14671D0F07
          260202020500000001120000000086502813619E4F26C1D16932FFD06932FFCE
          6932FFD46B32FF02DC6D32FF81D46B32FF03CC6832FF849E5027C5522A156903
          030307010101030E000000008828140A319F5026C0D16932FFD46B32FFE47132
          FFF67732FFFF7E38FFF18C55FF02E0A88AFF8AE0A07EFFFF803BFFF97832FFE4
          7132FFD16932FFCC6832FFC46430F6512A156A0404040A010101030B00000000
          815028136102D16932FF85E97232FFFF7E38FFE4B49BFFF0D6C8FFFAF2EEFF05
          FCF8F6FF84F5E4DBFFE6BBA3FFE69366FFEB7332FF02CC6832FF83874522AE07
          0707120202020609000000008650281361D16932FFD86C32FFFE7A32FFE2AB8E
          FFF6E6DDFF07FAF2EEFF04FBF2EDFF87EBC5B0FFF08449FFD86C32FFCC6832FF
          A35429D1090909170101010407000000008550281361D16932FFDB6D32FFF289
          4FFFECC8B4FF0EF9EDE6FF87F4E0D4FFE29A72FFD86C32FFCC6832FF8A4823B5
          0505050C0101010405000000008528140A31D16932FFD66C32FFF3874DFFF1D4
          C4FF05F6E5DCFF84E1C7B8FFD9BEB0FFD8BDAFFFDFC6B8FF02F5DED2FF05F6E5
          DCFF87F5DFD4FFE4976DFFD86C32FFCC6832FF371D0F4C0404040A0101010204
          0000000084AA5629D0CE6932FFFE7A32FFEBC4AFFF04F5DED2FF83CCAE9DFFD7
          C5BCFFE7DEDAFF02FFFFFFFF84EFE9E6FFE5DAD4FFE8D1C5FFF2D6C7FF05F5DE
          D2FF86F2D8CBFFE98A56FFCC6832FFA25328CD0B0B0B1B020202050300000000
          844E281361CE6932FFE87232FFE2AC8FFF04F2D7C8FF81D7C4BAFF08FFFFFFFF
          81F0D3C3FF06F2D7C8FF86EBC4AFFFEB7332FFCC6832FF5F31197D0606061001
          0101020200000000849A4F26C1D16932FFF58649FFEDCBB7FF03F0CFBDFF81D8
          C6BDFF09FFFFFFFF81F1D3C2FF07F0CFBDFF8ADCA383FFD16932FFA35429CF0D
          0D0D2003030307000000001A0D0621CC6832FFE47132FFE2AA8BFF03EDC8B3FF
          81CEB7ABFF09FFFFFFFF82FDFAF8FFEBC2ACFF05EDC8B3FF8CECC4AEFFE6B69B
          FFDFA382FFE47132FFCC6832FF321B0E490606060F000000004E281362CC6832
          FFF67732FFE8B89FFF02EBBFA8FF81D1A48CFF04FFFFFFFF88FCF9F7FFEECCB9
          FFE7B59AFFE6B093FFE9BEA6FFEBC3AEFFE8BAA1FFE6B093FF03EBBFA8FF82E3
          AD90FFE49B72FF03FF803BFF88F67732FFCC6832FF62331A840A0A0A18000000
          00753C1D92CC6832FFF4864AFF03E8B89EFF81E0C8BBFF03FFFFFFFF82FDF9F6
          FFE4AC8DFF09E8B89EFF03FFFFFFFF03FF803BFF88FF7E38FFCC6832FF844422
          AC0D0D0D21000000009B4F26C2D46B32FFEE8F5BFF03E6AF92FF81DFD4CEFF03
          FFFFFFFF81EBC1AAFF07E6AF92FF81CBA089FF05FFFFFFFF81FF813CFF03FF80
          3BFF87D16932FFA45429D010101029000000009B4F26C2DC6D32FFE89669FF02
          E4A887FF81DD936AFF04FFFFFFFF05E6AF92FF82C9AB9AFFDFD4CEFF07FFFFFF
          FF82FF803BFFFF813CFF02FF803BFF87DC6D32FFA45429D11212122E00000000
          9C5026C3DC6D32FFEE915EFF02E49F7AFF81DE885AFF04FFFFFFFF81E4AA8AFF
          03ED9362FF81DBC6BAFF09FFFFFFFF02FF813CFF02FF803BFF87DC6D32FFA454
          29D113131330000000009C5026C3D46B32FFF6884DFF03ED9362FF81EBE0DAFF
          03FFFFFFFF04FF813CFF81DFD4CEFF08FFFFFFFF81FBF5F2FF04FF813CFF87D1
          6932FFA45429D11313133000000000773D1D95CC6832FFFD813DFF03FA8749FF
          81EDCBB8FF03FFFFFFFF85F1E2DAFFFA8647FFFD8543FFFF813CFFEBC1AAFF08
          FFFFFFFF81F2DACDFF02FF813CFF89FF8340FFFF803BFFCC6832FF854522AE12
          12122E00000000512A1467CC6832FFF97832FF03FD8442FF81DD956EFF04FFFF
          FFFF82F1E2DAFFFF8441FF02FF813CFF81DFC4B6FF07FFFFFFFF81F1D3C2FF03
          FF8441FF88F97832FFCC6832FF66351B8B10101029000000001D0F0726CC6832
          FFE67232FF04FF8644FF81F2D2C1FF05FFFFFFFF82E6DED9FFDFD4CEFF08FFFF
          FFFF81EAB99FFF03FF8644FF89E67232FFCC6832FF3C2011590D0D0D21000000
          00020202059E5027C5D16932FFFA8749FF04FA8A4DFF81F7E4DAFF0EFFFFFFFF
          81E9B294FF02FA8A4DFF8AFA8749FFD16932FFA55429D21717173A0A0A0A1800
          00000000000001522A1569CC6832FFE6773BFF05F1925EFF81F6DED1FF08FFFF
          FFFF81FCF6F3FF04FFFFFFFF81E49E78FF02F1925EFF85E6773BFFCC6832FF68
          361C8D1313132F0606060F020000000084030303079E5127C7CC6832FFEC8E5C
          FF05EB996DFF82E9B294FFF8E8DFFF04FFFFFFFF84FAEFE9FFEEC2AAFFEB996D
          FFE9B294FF02FFFFFFFF81F8E8DFFF02EB996DFF86EC8E5CFFCC6832FFA55429
          D21919193F0D0D0D2003030307020000000085010101022F180C3DCC6832FFD1
          6F39FFE69D75FF07E5A07AFF02E6A785FF05E5A07AFF82E2986FFFE6A785FF02
          E5A07AFF87E69D75FFD16F39FFCC6832FF4927156A1313132F06060610010101
          0203000000008502020205572D1671CC6832FFD2723FFFE1A380FF10E6A683FF
          87E1A380FFD2723FFFCC6832FF68371C8E171717390B0B0B1B02020205040000
          000086000000010404040A592E1775CC6832FFD0703CFFDD9F7EFF0EE8AB8AFF
          88DD9F7EFFD0703CFFCC6832FF68371C8E1818183C0D0D0D220404040A000000
          01050000000083010101020505050C5A2F177602CC6832FF82DC8759FFE4AC8E
          FF0AE8AF91FF82E4AC8EFFDC8759FF02CC6832FF8568371C8E1818183C0E0E0E
          230505050C01010102070000000089010101020505050C371D0F4CA25328CDCC
          6832FFCE6D39FFD88557FFD69F82FFE5B194FF04EAB497FF8BE5B194FFD69F82
          FFD88557FFCE6D39FFCC6832FFA55429D24927156A171717390D0D0D22050505
          0C01010102090000000085010101020404040A0B0B0B1B5F31197DA35429CF03
          CC6832FF81CC6E3BFF02D07D4FFF81CC6E3BFF03CC6832FF87A55429D268361C
          8D1919193F1313132F0B0B0B1B0404040A010101020B00000000880101010202
          020205060606100D0D0D20321B0E4962331A84844422ACA45429D003A45429D1
          89854522AE66351B8B3C2011591717173A1313132F0D0D0D200A0A0A1E030303
          0A010101020E0000000087010101030404040C0909091B0E0E0E2C1313133D18
          18184B1212122E0213131330871212122E101010290D0D0D210A0A0A18090909
          1B0404040C010101030700000000}
      end
      item
        Image.Data = {
          860B00005844424D020004023610850000424D36100000000000003600000028
          0000000220000000830100200000000000001000004400000000820000000500
          00000E1C00000013840000000E000000050000000E0000002B1C0000003A9500
          00002B0000000ED27828FFCF7426FFCD7024FFCB6D22FFC86920FFC6651DFFC3
          621BFFC15E19FFBE5A17FFBC5615FFB95213FFB74F11FFB54B0EFFB2470CFFB0
          440AFFAD4008FFAB3C06FFA83804FFA63502FF0BA43200FF980000003A000000
          13D37929FFF5F2F2FFF3F0F0FFF2EEEEFFF0ECECFFEFEAEBFFEDE8E9FFECE6E7
          FFEBE4E5FFE9E2E3FFE8E0E1FFE6DEDFFFE5DCDDFFE3DADBFFE2D8DAFFE0D6D8
          FFDFD4D6FFDDD3D4FFDCD1D2FFDACFD0FFDACECFFFD9CDCFFF02D9CDCEFF81D9
          CCCEFF02D9CCCDFF86D8CBCDFFD4C7C8FFA43200FF0000003A00000013D47B2A
          FF02FFFFFFFF9EFEFDFDFFFDFCFCFFFCFBFBFFFCFAFAFFFBF8F8FFFAF7F7FFF9
          F6F6FFF9F5F5FFF8F3F3FFF7F2F2FFF6F1F1FFF6F0F0FFF5EEEEFFF4EDEDFFF3
          ECECFFF2EAEAFFF2E9E9FFF1E8E8FFF0E7E7FFEFE6E6FFEFE4E4FFEEE3E3FFED
          E2E2FFECE0E0FFECDFDFFFD8CBCDFFA43200FF0000003A00000013D57C2BFF02
          FFFFFFFF9E0822F3FF0D2FF3FF153FF4FF2153F5FFFCFAFAFFFBF8F8FFFAF7F7
          FFF9F6F6FFF9F5F5FFF8F3F3FFF7F2F2FFF6F1F1FFF6EFEFFFF5EEEEFFF4EDED
          FFF3ECECFFF2EAEAFFF2E9E9FFF1E8E8FFF0E7E7FF1B4BF5FF123AF4FF0C2CF3
          FF0822F3FFECE0E0FFD9CCCDFFA43200FF0000003A00000013D67E2CFF02FFFF
          FFFF9E0C2CF3FF143DF4FF1F50F5FFFDFCFCFFFCFBFBFFFCFAFAFFFBF8F8FFFA
          F7F7FFF9F6F6FFF9F4F4FFF8F3F3FFF7F2F2FFF6F1F1FFF6EFEFFFF5EEEEFFF4
          EDEDFFF3ECECFFF2EAEAFFF2E9E9FFF1E8E8FFF0E7E7FF1D4CF5FF143DF4FF0D
          2FF3FFEDE2E2FFD9CCCDFFA43200FF0000003A00000013D77F2CFF02FFFFFFFF
          9E123AF4FF1D4CF5FF2C61F5FF3F77F7FFFDFCFCFFFCFBFBFFFCFAFAFFFBF8F8
          FFFAF7F7FFF9F6F6FFF9F4F4FFF8F3F3FFF7F2F2FFF6F1F1FFF6EFEFFFF5EEEE
          FFF4EDEDFFF3ECECFFF2EAEAFFF2E9E9FF3C74F7FF2C61F5FF1F50F5FF153FF4
          FFEEE3E3FFD9CCCEFFA43200FF0000003A00000013D8812DFF02FFFFFFFF9E1B
          4BF5FFFFFFFFFF3C74F7FF528AF8FF6CA1F9FFFDFCFCFFFCFBFBFFFCF9F9FFFB
          F8F8FFFAF7F7FFF9F6F6FFF9F4F4FFF8F3F3FFF7F2F2FFF6F1F1FFF5EFEFFFF5
          EEEEFFF4EDEDFFF3ECECFF699EF9FF528AF8FF3F77F7FFF0E6E6FF2153F5FFEF
          E4E4FFD9CDCEFFA43200FF0000003A00000013D9822EFF05FFFFFFFF9B699EF9
          FFFFFEFEFFFEFDFDFFFDFCFCFFFCFBFBFFFCF9F9FFFBF8F8FFFAF7F7FFF9F6F6
          FFF9F4F4FFF8F3F3FFF7F2F2FFF6F1F1FFF5EFEFFFF5EEEEFFF4EDEDFFF3ECEC
          FF6CA1F9FFF2E9E9FFF1E8E8FFF0E6E6FFEFE5E5FFD9CDCEFFA43200FF000000
          3A00000013DA832FFF07FFFFFFFF99FFFEFEFFFEFDFDFFFDFCFCFFFCFBFBFFFC
          F9F9FFFBF8F8FFFAF7F7FFF9F6F6FFF8F4F4FFF8F3F3FFF7F2F2FFF6F1F1FFF5
          EFEFFFF5EEEEFFF4EDEDFFF3EBEBFFF2EAEAFFF2E9E9FFF1E8E8FFF0E6E6FFD9
          CDCFFFA43200FF0000003A00000013DA8530FF08FFFFFFFF98FFFEFEFFFEFDFD
          FFFDFCFCFFFCFBFBFFFBF9F9FFFBF8F8FFFAF7F7FFF9F6F6FFF8F4F4FFF8F3F3
          FFF7F2F2FFF6F0F0FFF5EFEFFFF5EEEEFFF4EDEDFFF3EBEBFFF2EAEAFFF2E9E9
          FFF1E8E8FFDACED0FFA43200FF0000003A00000013DB8631FF09FFFFFFFF97FF
          FEFEFFFEFDFDFFFDFCFCFFFCFBFBFFFBF9F9FFFBF8F8FFFAF7F7FFF9F5F5FFF8
          F4F4FFF8F3F3FFF7F2F2FFF6F0F0FFF5EFEFFFF5EEEEFFF4EDEDFFF3EBEBFFF2
          EAEAFFF2E9E9FFDCD1D2FFA43200FF0000003A00000013DC8831FF0AFFFFFFFF
          96FFFEFEFFFEFDFDFFFDFCFCFFFCFBFBFFFBF9F9FFFBF8F8FFFAF7F7FFF9F5F5
          FFF8F4F4FFF8F3F3FFF7F2F2FFF6F0F0FFF5EFEFFFF5EEEEFFF4EDEDFFF3EBEB
          FFF2EAEAFFDED3D4FFA43200FF0000003A00000013DD8932FF0BFFFFFFFF95FF
          FEFEFFFEFDFDFFFDFCFCFFFCFAFAFFFBF9F9FFFBF8F8FFFAF7F7FFF9F5F5FFF8
          F4F4FFF8F3F3FFF7F2F2FFF6F0F0FFF5EFEFFFF5EEEEFFF4EDEDFFF3EBEBFFDF
          D5D6FFA43200FF0000003A00000013DE8B33FF0CFFFFFFFF94FFFEFEFFFEFDFD
          FFFDFCFCFFFCFAFAFFFBF9F9FFFBF8F8FFFAF7F7FFF9F5F5FFF8F4F4FFF8F3F3
          FFF7F2F2FFF6F0F0FFF5EFEFFFF4EEEEFFF4EDEDFFE1D7D8FFA43200FF000000
          3A00000013DF8C34FF0DFFFFFFFF93FEFEFEFFFEFDFDFFFDFCFCFFFCFAFAFFFB
          F9F9FFFBF8F8FFFAF7F7FFF9F5F5FFF8F4F4FFF8F3F3FFF7F2F2FFF6F0F0FFF5
          EFEFFFF4EEEEFFE3D9DAFFA43200FF0000003A00000013E08E35FF05FFFFFFFF
          816CA1F9FF08FFFFFFFF92FEFEFEFFFEFDFDFFFDFBFBFFFCFAFAFFFBF9F9FFFB
          F8F8FFFAF7F7FFF9F5F5FF699EF9FFF7F3F3FFF7F1F1FFF6F0F0FFF5EFEFFFE4
          DCDDFFA43200FF0000003A00000013E18F36FF02FFFFFFFF852153F5FFFFFFFF
          FF3F77F7FF528AF8FF699EF9FF08FFFFFFFF91FEFEFEFFFEFDFDFFFDFBFBFFFC
          FAFAFFFBF9F9FFFBF8F8FF6CA1F9FF528AF8FF3C74F7FFF7F3F3FF1B4BF5FFF6
          F0F0FFE6DEDFFFA43200FF0000003A00000013E29036FF02FFFFFFFF84153FF4
          FF1F50F5FF2C61F5FF3C74F7FF0AFFFFFFFF90FEFEFEFFFEFDFDFFFDFBFBFFFC
          FAFAFFFBF9F9FFFBF8F8FF3F77F7FF2C61F5FF1D4CF5FF123AF4FFF7F1F1FFE7
          E0E1FFA43200FF0000003A00000013E39237FF02FFFFFFFF830D2FF3FF143DF4
          FF1D4CF5FF0CFFFFFFFF8FFEFEFEFFFEFDFDFFFDFBFBFFFCFAFAFFFBF9F9FFFB
          F8F8FF1F50F5FF143DF4FF0C2CF3FFF7F3F3FFE9E2E3FFA43200FF0000003A00
          000013E49338FF02FFFFFFFF840822F3FF0C2CF3FF123AF4FF1B4BF5FF0CFFFF
          FFFF8EFEFEFEFFFEFDFDFFFDFBFBFFFCFAFAFF2153F5FF153FF4FF0D2FF3FF08
          22F3FFF8F4F4FFEBE4E5FFA43200FF0000003A00000013E59439FF13FFFFFFFF
          A4FEFEFEFFFEFDFDFFFDFBFBFFFCFAFAFFFBF9F9FFFAF7F7FFFAF6F6FFF9F5F5
          FFECE6E7FFA43200FF0000003A00000013E59539FFFFE1BFFFFFE0BDFFFFDEBB
          FFFFDBB9FFFFD9B7FFFFD6B4FFFFD4B1FFFFD1AFFFFFCEACFFFFCBA9FFFFC8A6
          FFFFC5A3FFFFC2A0FFFFBF9DFFFFBC9AFFFFB996FFFFB693FFFFB390FFFFB08D
          FFFFAC89FFFFA885FFFEA582FFFEA27FFF02FDA17EFF9DFDA07DFFFCA07DFFE3
          8C76FFA43200FF0000003A00000013E59539FFFFC884FFFFC480FFFFC07BFFFF
          BB77FFFFB671FFFFB16CFFFFAB67FFFFA661FFFFA05BFFFF9A55FFFF944FFFFF
          8E49FFFF8843FFFF823CFFFF7B36FFFF7530FFFF6F29FFFF6823FFFF621CFFFF
          5B16FFFF550FFFFF4F09FF05FF4903FF9CD93003FFA43200FF0000003A000000
          13E59539FFFFCE8AFFFFC985FFFFC580FFFFBF7BFFFFBA76FFFFB570FFFFAF6A
          FFFFA964FFFFA35EFFFF9D58FFFF9752FFFF914CFFFF8B45FFFF843FFFFF7E39
          FFFF7732FFFF712CFFFF6B25FFFF641EFFFF5E18FFFF5711FFFF500BFFFF4A04
          FF04FF4903FF9CD93003FFA43200FF0000003400000010E59539FFF5BB6EFFFF
          CE8AFFFFC985FFFFC480FFFFBE7AFFFFB874FFFFB26EFFFFAC68FFFFA661FFFF
          A05BFFFF9A55FFFF934EFFFF8D48FFFF8641FFFF803BFFFF7A34FFFF732EFFFF
          6C27FFFF6620FFFF5F1AFFFF5913FFFF520CFFFF4B05FF03FF4903FFB4FD4703
          FFC53102FFA43200FF000000200000000856381561E59539FFEBA44EFFE9A04B
          FFE89B48FFE69745FFE49342FFE28F3FFFE08A3BFFDE8638FFDD8235FFDB7D32
          FFD9792EFFD7742BFFD57028FFD36B25FFD26721FFD0631EFFCE5E1BFFCC5A18
          FFCA5514FFC85111FFC74C0EFFC5480AFFC34408FFC14106FFBF3F05FFBB3A03
          FFA53301FF3E13006E0000000A00000002000000002B1C0B3139250E4239250E
          4438240D4438230D4437220C4436210C4436200B44351F0B44351E0A44341D0A
          44331C0944331B0944321A084402311907448E31170644301706442F1605442E
          1505442E1404442D1303442D1203442C1102442B1002442B0F02442A0E01441F
          0A003400000003000000012100000000}
      end
      item
        Image.Data = {
          620A00005844424D020004023610850000424D36100000000000003600000028
          00000002200000008301002000000000000010000036000000008403032A404E
          4EBFE51E1E749D0000030504000000008400000508232377A74B4BB2E002021E
          3313000000008602022B405050CDEF5B5BF9FF6868F3FF1818739E0000040602
          0000000086000005091F1F7BAD8585F6FFACACFFFF4B4BBDE903031D320A0000
          000086230C003B541A008F6F1F00C27F2300DD8A2C00E8441700710200000000
          8E3737BDE34A4AF3FF4646F0FF4444F0FF5757F0FF161570A1642003AF772404
          D3221C7ABB7070F5FFC2C2FEFFDFDFFFFFABABFDFF3434A8DF0800000000880B
          0400135C1D009D8E2900F5A9470FFFC87A3DFFD49A5EFFA64A16FF591C009802
          000000008E1212749C4141EBFF3636E8FF3636E9FF3535E9FF4242E9FF4D2C7A
          FF4E358BFF5B5BF0FFADADFEFFC5C5FFFFD0D0FDFF5E5EEAFF15155D8E070000
          00008915070023752300C9A23E0BFFD67C2EFFFCBA64FFFFDC90FFFFEBA8FFAF
          5B26FF5619009402000000008E000003050D0D739E2F2FE7FF2626E1FF2727E2
          FF2626E1FF2E2EE4FF4646ECFF9797FDFFAFAFFFFFBBBBFCFF4646E8FF10105D
          900000010206000000008A04010006702200BFA24110FFEE9C46FFFFB656FFFF
          C16DFFFFD287FFFBE19FFFAE5823FF5619009403000000008C000004060A0A71
          9E1C1CE1FF1616D9FF1616DAFF2D2DE3FF8383FDFF9999FFFFA6A6FBFF3434E3
          FF0E0E5D900000020407000000008A441500739A370BFFE6A257FFFFA742FFFF
          AB4FFFFFBE6BFFFFDA8EFFFFEBA8FFAE5A25FF5619009404000000008A000003
          05110A72B30909DCFF0606D1FF3838E6FF8686FFFF8E8EFAFF2020DFFF211161
          BF0000010207000000008B0E050018802400DEC6834CFFFFBA5DFFFF9A35FFFF
          AD51FFFFC672FFEBB46DFFC57E44FFA0400CFF5B1D009904000000008A000005
          0826117BE20303DBFF0000D2FF3636E6FF8686FFFF9191FBFF2424E2FF39186B
          F30B04031707000000008B2F10004E973304FFE9B673FFFFA945FFFF9B38FFFF
          B457FFDE934AFF9A3507FF7D2000DC7C2800D03A130060030000000083000005
          091A117AC20B0BE1FF020000DAFF871C1CE3FF8080FDFF9A9AFFFFA9A9FCFF30
          30E6FF2D1965CF010103060600000000894816007BA54F20FFFDC97DFFFFA03D
          FFFF9F3BFFF6A34BFF9F3B09FF5F1D00A20803000E0400000000830000050813
          127BB01313E8FF030000E2FF881818E2FF2F2FE9FF9393FDFFAFAFFFFFBEBEFC
          FF3A3AEBFF1E1862AC0000030505000000008854170090B2693CFFFFCD7EFFFF
          9F3CFFFFA43EFFDF8838FF8E2B00F51E0A0032050000000083151576A61C1CEC
          FF0000E9FF020000EAFF892323E6FF7A5278FF725283FF3C3CEDFFA9A9FEFFC5
          C5FFFFD3D3FDFF4A4AECFF19195E9805000000008855170093B36C3FFFFFCD7D
          FFFF9F3CFFFFA53FFFDD8436FF8A2A00EE1A09002B0500000000822A2AB0E10D
          0DF4FF020000F1FF8A2D2DEDFF845F7DFFFD9A37FFFAA348FF7B5E87FF4646F2
          FFBCBCFEFFE1E1FFFF8585FDFF322E98E10500000000885216008DB36B3EFFFF
          CD7DFFFF9F3CFFFFA53FFFDD8536FF8A2A00EE160700240500000000FD3E131D
          994840C0FF0F0FFBFF3535EEFF866989FFFBA64CFFFF9C36FFFFA646FFF9B05B
          FF7F688EFF5656F1FF7D7DFFFF4F47B1FF5D1B13C5010000021005001A260C00
          41240B003D230C003B631A00ACB26A3EFFFFCE7DFFFF9F3CFFFFA53FFFDD8536
          FF8C2900F33912005F240B003C260C00401F0A00330000000018080028892B04
          E8B89B87FF5C5ABEFF8B7797FFFDBF6CFFFFAB4EFFFF9C39FFFFA748FFFFB45D
          FFFAC579FF887898FF615FB4FFD2C7B7FFA44616FF35100059712701BD9C3C0A
          FB993706F8973806F6962D05FCB66F42FFFFCE7FFFFFA03EFFFFA541FFDE8739
          FF983203FF993705F9983605F79C3C0AFA933606F02B0E00484A15007FB05F2D
          FFF0D79CFFECC180FFECB570FFECAA63FFFBAE5CFFFFA850FFFFB15FFFFEC57D
          FFEFBB7EFFEBBF89FFECCA9CFFF1DDB7FFC58857FF7A2200D37D2300D7CD9666
          FFF4E4BFFFF0CF9EFFEFC289FFF4C081FFFFC277FFFFAE5AFFFFA950FFFAB05F
          FFEFB068FFF0BC77FFF0CC8BFFEDD299FFA34717FF3511005A321000538B3305
          E4903506EC8D3103E8913203EF993403FFE88F3BFFFFA13BFFFFA341FFFCCA7F
          FFA85124FF912E03F48D3002E88F3302EB913507EB5C1F009A3B120065A74C1C
          FFF8EBC5FFFFE9ABFFFFD387FFFFC471FFFFB158FFFFA342FFFF9D39FFFFAE51
          FFFFC46FFFFFD488FFFFF2AFFFCD9761FF8F762000CD0702000B000000001707
          00271C09002F1A08002B3A130061953000FDE78F3AFFFFA13BFFFFA342FFFCCB
          80FFA54F21FF541900901908002A021B09002E02040100078E711D00C5C68150
          FFFFEAB0FFFFCE82FFFFC06FFFFFB258FFFFA341FFFF9D38FFFFAD51FFFFBE6B
          FFFFD68BFFF0CC8BFF9C390EFE300F0051050000000088220B0038963100FDE7
          8F3AFFFFA13BFFFFA342FFFCCB80FFA65021FF4415007405000000008D2D0E00
          4D9C3607FFF1C68FFFFFD98FFFFFC06FFFFFB259FFFFA342FFFF9D39FFFFAD51
          FFFFBE6BFFFFDB8FFFC0763FFF691D00B6060000000088240C003C963100FDE6
          8E3AFFFFA13BFFFFA342FFFCCB80FFA65122FF4816007A06000000008C641D00
          AEBD6832FFFFD995FFFFC16EFFFFB259FFFFA342FFFF9D39FFFFAC50FFFFC672
          FFE7AD67FF922E01F61E0A00330600000000882F10004F973101FFEC943EFFFF
          A13AFFFFA342FFFBCA81FFA34A1CFF4516007506000000008B1D0A00308E2A00
          F2E39E5DFFFFCB79FFFFB258FFFFA342FFFF9D39FFFFAE52FFFEC671FFB45C24
          FF5A1A009C04000000008B010000010702000B1D090030742000CCAE4F18FFFC
          AC4EFFFF9C37FFFFA745FFF2C17AFF9B3C0BFF3612005B07000000008A561900
          96B2511AFFFFC678FFFFB45BFFFFA342FFFF9C39FFFFB659FFDE9249FF8A2B00
          EC1306002004000000008B4E1A0082862A00E2892500F0A64614FFEDA556FFFF
          B051FFFF9934FFFFB353FFDDA96BFF8F2B01F71E0A00320700000000890E0500
          18852700E6DB9052FFFFBF67FFFFA240FFFF9E3AFFF9AB4FFFA74711FF441400
          7405000000008B6B2100B4A64B16FFD79E61FFF7C67AFFFFC26CFFFFA94CFFFF
          9B34FFFDBF68FFB56735FF6D1F00BB050200090800000000884014006DA34513
          FFF8BA6FFFFFA442FFFFA53FFFD1752BFF7A2300D70C04001405000000008A66
          1C00AFB86C35FFFFF1ACFFFFD285FFFFBB66FFFFA94BFFFFAD47FFD28A49FF94
          2D01FF290D00450900000000870A030011752000CECD8B54FFFFBB5DFFF39130
          FFA13B07FF32100056060000000089661C00AFB66731FFFFE5A2FFFFCE82FFFF
          C06BFFFFB353FFDB883CFF973205FF531B008D0B0000000086310F0053A14318
          FFF4C47AFFC7621BFF6D2100BF02010003060000000089651C00AFB86A35FFFF
          F0ABFFFFD486FFF1A653FFC46520FF983203FF5D1E009D0602000A0C00000000
          846A1F00B6B36432FF9A3D0CF9290D00440700000000876A2100B4A84D19FFCA
          884DFFB86128FF9C3502FF7C2500D9431600710E00000000841E0A0032792400
          CF4D190082010000010700000000864C1A007F862A00E2782100D1611C00A840
          15006C1005001B6900000000}
      end
      item
        Image.Data = {
          630C00005844424D020004023610850000424D36100000000000003600000028
          0000000220000000830100200000000000001000001100000000810100000103
          00000000810201010319000000008B0A05020C1D0F07242010082740210F4F46
          231156422110503F200F4D371C0D432513092D00000000070402091200000000
          90040201050804020A472411596C371A86AE582AD6AF592AD8C2622EECD26932
          FFC5632EEDBF602DE7CE6731FBA65328CA81411F9E5B2E166F190D061F090502
          0B0F00000000920E070412381D0E4680411FA0B75D2CE1CD6732FDDD6E32FEE1
          753AFFEA7839FFE97D43FFE78048FFE67E46FFED7332FFDE6E32FEDA6D32FFBD
          5F2DE5AB5629D14B26125C2613092F0D0000000094170C061D6A361A849E5027
          C5D66B32FFE47132FFE78651FFED9869FFE5AC8EFFEEBB9FFFF1C0A6FFF1CBB5
          FFEDC6B1FFEFB494FFEBA884FFFC803CFFE27E47FFE06F32FFBE602EEA7F411F
          9D3E200F4D0B0000000096180C061E864421A7B85D2CE2D77039FFF47D3CFFE9
          A079FFE6B69BFFEDCAB6FFEFCEBCFFF1D6C7FFF4DCCFFFF5E0D6FFF5E3DAFFF8
          ECE5FFF7E9E1FFF4D8C9FFE9C1ACFFF5925CFFE97434FFC76530F3A55428CB45
          231156090000000098180C061E864521A8C0602DE5DD763FFFEE8D58FFEBA783
          FFE8B9A0FFEBC1AAFFECC7B2FFEECCB9FFF0D1C1FFF2D7C8FFF4DCCFFFF5E1D6
          FFF6E6DDFFF8ECE5FFF9F0EAFFF7EAE4FFF8EBE5FFF7A476FFE2824EFFD26830
          F6A55328CC4523115607000000009A11090416783E1E97BD5F2DE5E0763EFFE9
          9364FFE6A37EFFE6B093FFE7B69BFFE9BBA3FFEBC1AAFFECC7B2FFEECCB9FFF0
          D1C1FFF2D7C8FFF4DCCFFFF5E1D6FFF6E6DDFFF8ECE5FFF9F0EAFFFAF3EFFFFB
          F5F2FFE7BDA7FFDE8E63FFCF6730F6A05127C7371C0E4505000000009C080402
          0A4B26135FA55429CFDB7137FFF38A51FFE79A71FFE4A583FFE4AA8BFFE6B093
          FFE7B69BFFE9BBA3FFEBC1AAFFECC7B2FFEECBB8FFF0D1C0FFF2D7C8FFF3DACC
          FFF4DED3FFF6E6DDFFF8EAE2FFF8EAE3FFFAF3F0FFFBF6F3FFE7BBA3FFDC8658
          FFC2622FF1723A1C901E0F072603000000009E01000001130A05198B4622AED8
          6C32FFFB7F3BFFF48B52FFEA9669FFE49F7AFFE4A583FFECC5AFFFEBBFA8FFEB
          C2ADFFF0D0BFFFF0D1C0FFECC5B0FFF0D2C1FFF2D6C7FFEECBB8FFEFCEBCFFF3
          D9CCFFF1D4C5FFECC5B0FFF4DED2FFFAF3F0FFFBF5F2FFFAA475FFE67334FFB8
          5D2DE7391D0E490503020702000000008C000000015B2E1773C96630F5EE7432
          FFFB813EFFFA8648FFF28E57FFEA9669FFF1D0BEFFFFFFFFFFFEFCFBFFFDFBFA
          FF02FFFFFFFF81FDFBF9FF02FFFFFFFF82FEFCFBFFFEFDFCFF02FFFFFFFF89FB
          F2EEFFF1D3C4FFF9F0EAFFFBF3EFFFF8EAE3FFF3915BFFDA6D32FF964C25BC14
          0B051A0200000000881F100828874421A9D06932FEF47F3FFFFE8543FFFC8443
          FFFA8648FFF7AE87FF0DFFFFFFFF94FAF1EDFFEECBB9FFF8EBE4FFFAF0EAFFF7
          EAE2FFE6BBA2FFDB7945FFAD582AD74221105403020104010101022B170C39B8
          5D2DE7E3763BFFFA884AFFFD8646FFFE8543FFFC8443FFFB9E6BFFFEFBF9FF0C
          FFFFFFFF94FDFAF9FFF5E1D6FFF6E6DDFFF8ECE5FFFAF0EAFFF4D8C8FFE78652
          FFD36A32FF783D1E98020202040704020A4624125ABA5F2EEAE37D46FFF48F58
          FFFA894CFFFD8646FFFE8543FFFD9760FFFEF9F6FF07FFFFFFFF98FCF6F3FFFE
          FEFEFFFEFCFCFFFCF7F4FFFDF9F7FFF4DED1FFF4DCCFFFF5E1D6FFF6E6DDFFF8
          ECE5FFF6E5DCFFEAA782FFD26A32FF9C5027C625140A32020202046D381B8BD0
          6D37FFEA8D5BFFEE9362FFF48F58FFFA894CFFFD8646FFFEA97BFF07FFFFFFFF
          99FEFCFBFFEEC9B6FFEEC8B5FFEEC9B5FFECC7B2FFF0D1C0FFF0D1C1FFF2D7C8
          FFF4DCCFFFF5E1D6FFF6E6DDFFF8EBE3FFF1B18EFFDC733AFFBC5F2EEC2E190E
          3F0906040F733B1D93CF6E39FFE49469FFEA996DFFEE9463FFF48F58FFFA894C
          FFFDA676FF08FFFFFFFF99FCF7F4FFEEC9B6FFEBBFA8FFEBC1AAFFECC7B2FFEE
          CCB9FFF0D1C1FFF2D7C8FFF4DCCFFFF5E1D6FFF5E4DBFFECC1A9FFD97946FFB9
          5E2DE8381E114D100A0618703A1C90CB6C39FADF956CFFE69E77FFEA996DFFEE
          9463FFF48F58FFFA955EFFFEF8F4FF08FFFFFFFF97FCF7F4FFEEC9B6FFEBBFA8
          FFEBC1AAFFECC7B2FFEECCB9FFF0D1C1FFF2D7C8FFF4DCCFFFF5DFD4FFEEC4AE
          FFDA743EFFBE612FEE502A176B0A070511743C1D95CF6F3BFFDF9B76FFE5A27E
          FFE69E77FFEA996DFFEE9463FFF5AD86FF04FFFFFFFF81FFFAF8FF05FFFFFFFF
          96FCF7F4FFEDC8B4FFE9BBA3FFEBC1AAFFECC7B2FFEECCB9FFF0D1C1FFF2D7C8
          FFF3DBCEFFECBBA2FFDA7944FFB95F2EEA3A2113530404040A703A1C90CE6F3B
          FFDD9C7AFFE5A683FFE5A27EFFE69E77FFEA996DFFF2B493FF03FFFFFFFF83FF
          EDE4FFFF965DFFFFEFE7FF05FFFFFFFF96FCF6F2FFEBC3AEFFE9BBA3FFEBC0A9
          FFECC6B1FFEECCB9FFF0D1C1FFF2D7C8FFECB08FFFDA753EFFBB5F2EEC2E190E
          400A0705114D281467BD602EEDDB8C62FFE7AA89FFE6A684FFE5A27EFFE69E77
          FFEDA985FFFEFAF8FF02FFFFFFFF84FFFEFEFFFF945AFFFF965DFFFFEFE7FF05
          FFFFFFFF95FCF6F2FFEBC2ACFFE3AB8DFFE5AD8DFFECC4AEFFEECBB8FFEFCDBB
          FFEAA782FFD16A32FE864522AC1B0F092704040409311D1248B95F2EEAD9865A
          FFE5AB8CFFE7AA89FFE6A684FFE5A27EFFEAB293FFFEFCFBFF02FFFFFFFF85FF
          FAF7FFFF9257FFFF813CFFFF965DFFFFEFE7FF05FFFFFFFF93FBF3EFFFF1A378
          FFF38B52FFF8925BFFE9B89DFFE7BBA2FFE19064FFD16931FC6D391E8F060606
          100202020426160D388D4923B5CD6E3AFEE19F7CFFE8AD8EFFE7AA89FFE6A684
          FFEDBFA6FF03FFFFFFFF81FFECE2FF03FF813CFF82FF965DFFFFEFE7FF05FFFF
          FFFF92FFD9C5FFFF823EFFFF803BFFF88B50FFE0A07CFFD87A47FFB1592BDD4C
          2815670705040D010101030808081363351D85C86B38F7D69069FFE3AA8DFFE8
          AD8EFFE7AA89FFECBCA1FF03FFFFFFFF82FCF1EBFFF79864FF03FF813CFF82FF
          965DFFFFEFE7FF04FFFFFFFF81FFCFB5FF02FF803BFF9AFE7F3AFFF37A39FFD9
          6D32FF9B5027C61E130E3103030308010101020404040B24150D38934B25BCCF
          7748FFE2AD8FFFE7B092FFE8AD8EFFEAB395FFFAEEE8FFF9ECE5FFFBF2EEFFEE
          AA86FFEE9463FFF58C52FFFF813CFFFE823EFFFF813CFFFF965DFFFFEFE7FF03
          FFFFFFFFA0FFB288FFFF803BFFFF7F3AFFFF7E39FFE57233FFBA5F2EEB4A2714
          660D0A081A020202040000000002020206120C0A205B30197BAB572BD9D37E51
          FFE9B295FFE8B092FFE8AD8EFFE9AF90FFE6A684FFE7AB89FFE69E77FFEA996D
          FFEE9463FFF48E56FFFA894CFFFD8340FFFF813CFFFF965DFFFFDAC6FFFFCFB6
          FFFFB288FF03FF803BFF85EA7536FFC36330F47F4121A62B190F400404040B03
          00000000930404040B1E151035834422ABBB6436EBD78C62FFE9B295FFE8B092
          FFE8AD8EFFE7AA89FFE6A684FFE5A27EFFE69E77FFEA996DFFEE9463FFF48F58
          FFFA894CFFFD8340FFFF813DFFFF8543FF02FF813CFF02FF803BFF86EF7737FF
          CF6731F8A65529D344271762080808150000000104000000009B07070711271B
          15448F4A25BABC6B3EEBD5875CFFE8B294FFE7AF92FFE8AD8EFFE7AA89FFE6A6
          84FFE5A27EFFE69E77FFEA996DFFEE9463FFF48F58FFFA894CFFFD8645FFFF85
          42FFFF8340FFFE833FFFFF803CFFEC7637FFD36931F8AC572AD8522F1C750B0B
          0B1D0000000106000000009908080814291D16488F4A25BAB96131E9D37C4EFF
          DCA688FFE2A889FFE8AD8EFFE7AA89FFE6A684FFE5A27EFFE69E77FFEA996DFF
          EE9463FFF48F58FFFA894CFFFD8645FFFE8442FFFB7C37FFE87436FFC66430F6
          AB562AD8532F1C770D0D0D220000000108000000009708080815281D16487940
          21A1A6552AD4CE7544FFD78558FFDF9B77FFE3A380FFE7A988FFE4A582FFE4A2
          7DFFE69D76FFEA996DFFEF925FFFF18950FFF98648FFE87537FFDF6F32FFBD61
          2FEF8C4824B64D2C1B700E0E0E23000000010A0000000095080808152018133C
          512B17728E4924B8B96232E9CC6B36FED57B4AFED58256FFD78A61FFDB9168FF
          DC8A5EFFDD8454FFE0804DFFDC7137FFD66D35FFBF602EECAD592BDD62331A85
          382215570D0D0D21000000010C00000000930707071114100E2A2018143F5A32
          1E807E4121A7AA572BD9B15A2CE1C26532F2CD6A34FFC26533F2BE6331EEC966
          31FCAA572BD98C4A26B86D391E942E2019521D140F350B0B0B1B000000010E00
          000000910505050C0A0A0A1A101010291E18153D312118543D23155F57311B7D
          5A331D8158311C7F57301B7D4D2C1A723D24175F17171739191412340D0D0D21
          07070712000000010700000000}
      end
      item
        Image.Data = {
          630C00005844424D020004023610850000424D36100000000000003600000028
          0000000220000000830100200000000000001000000B00000000910000000107
          0707120D0D0D2119141234171717393D24175F4D2C1A7257301B7D58311C7F5A
          331D8157311B7D3D23155F312118541E18153D101010290A0A0A1A0505050C0E
          0000000093000000010B0B0B1B1D140F352E2019526D391E948C4A26B8AA572B
          D9C96631FCBE6331EEC26533F2CD6A34FFC26532F2B15A2CE1AA572BD97E4121
          A75A321E802018143F14100E2A070707110C0000000095000000010D0D0D2138
          22155762331A85AD592BDDBF602EECD66D35FFDC7137FFE0804DFFDD8454FFDC
          8A5EFFDB9168FFD78A61FFD58256FFD57B4AFECC6B36FEB96232E98E4924B851
          2B17722018133C080808150A0000000097000000010E0E0E234D2C1B708C4824
          B6BD612FEFDF6F32FFE87537FFF98648FFF18950FFEF925FFFEA996DFFE69D76
          FFE4A27DFFE4A582FFE7A988FFE3A380FFDF9B77FFD78558FFCE7544FFA6552A
          D4794021A1281D164808080815080000000099000000010D0D0D22532F1C77AB
          562AD8C66430F6E87436FFFB7C37FFFE8442FFFD8645FFFA894CFFF48F58FFEE
          9463FFEA996DFFE69E77FFE5A27EFFE6A684FFE7AA89FFE8AD8EFFE2A889FFDC
          A688FFD37C4EFFB96131E98F4A25BA291D16480808081406000000009B000000
          010B0B0B1D522F1C75AC572AD8D36931F8EC7637FFFF803CFFFE833FFFFF8340
          FFFF8542FFFD8645FFFA894CFFF48F58FFEE9463FFEA996DFFE69E77FFE5A27E
          FFE6A684FFE7AA89FFE8AD8EFFE7AF92FFE8B294FFD5875CFFBC6B3EEB8F4A25
          BA271B154407070711040000000086000000010808081544271762A65529D3CF
          6731F8EF7737FF02FF803BFF02FF813CFF93FF8543FFFF813DFFFD8340FFFA89
          4CFFF48F58FFEE9463FFEA996DFFE69E77FFE5A27EFFE6A684FFE7AA89FFE8AD
          8EFFE8B092FFE9B295FFD78C62FFBB6436EB834422AB1E1510350404040B0300
          000000850404040B2B190F407F4121A6C36330F4EA7536FF03FF803BFFA0FFB2
          88FFFFCFB6FFFFDAC6FFFF965DFFFF813CFFFD8340FFFA894CFFF48E56FFEE94
          63FFEA996DFFE69E77FFE7AB89FFE6A684FFE9AF90FFE8AD8EFFE8B092FFE9B2
          95FFD37E51FFAB572BD95B30197B120C0A200202020600000000020202040D0A
          081A4A271466BA5F2EEBE57233FFFF7E39FFFF7F3AFFFF803BFFFFB288FF03FF
          FFFFFF9AFFEFE7FFFF965DFFFF813CFFFE823EFFFF813CFFF58C52FFEE9463FF
          EEAA86FFFBF2EEFFF9ECE5FFFAEEE8FFEAB395FFE8AD8EFFE7B092FFE2AD8FFF
          CF7748FF934B25BC24150D380404040B01010102030303081E130E319B5027C6
          D96D32FFF37A39FFFE7F3AFF02FF803BFF81FFCFB5FF04FFFFFFFF82FFEFE7FF
          FF965DFF03FF813CFF82F79864FFFCF1EBFF03FFFFFFFF92ECBCA1FFE7AA89FF
          E8AD8EFFE3AA8DFFD69069FFC86B38F763351D8508080813010101030705040D
          4C281567B1592BDDD87A47FFE0A07CFFF88B50FFFF803BFFFF823EFFFFD9C5FF
          05FFFFFFFF82FFEFE7FFFF965DFF03FF813CFF81FFECE2FF03FFFFFFFF93EDBF
          A6FFE6A684FFE7AA89FFE8AD8EFFE19F7CFFCD6E3AFE8D4923B526160D380202
          0204060606106D391E8FD16931FCE19064FFE7BBA2FFE9B89DFFF8925BFFF38B
          52FFF1A378FFFBF3EFFF05FFFFFFFF85FFEFE7FFFF965DFFFF813CFFFF9257FF
          FFFAF7FF02FFFFFFFF95FEFCFBFFEAB293FFE5A27EFFE6A684FFE7AA89FFE5AB
          8CFFD9865AFFB95F2EEA311D1248040404091B0F0927864522ACD16A32FEEAA7
          82FFEFCDBBFFEECBB8FFECC4AEFFE5AD8DFFE3AB8DFFEBC2ACFFFCF6F2FF05FF
          FFFFFF84FFEFE7FFFF965DFFFF945AFFFFFEFEFF02FFFFFFFF96FEFAF8FFEDA9
          85FFE69E77FFE5A27EFFE6A684FFE7AA89FFDB8C62FFBD602EED4D2814670A07
          05112E190E40BB5F2EECDA753EFFECB08FFFF2D7C8FFF0D1C1FFEECCB9FFECC6
          B1FFEBC0A9FFE9BBA3FFEBC3AEFFFCF6F2FF05FFFFFFFF83FFEFE7FFFF965DFF
          FFEDE4FF03FFFFFFFF96F2B493FFEA996DFFE69E77FFE5A27EFFE5A683FFDD9C
          7AFFCE6F3BFF703A1C900404040A3A211353B95F2EEADA7944FFECBBA2FFF3DB
          CEFFF2D7C8FFF0D1C1FFEECCB9FFECC7B2FFEBC1AAFFE9BBA3FFEDC8B4FFFCF7
          F4FF05FFFFFFFF81FFFAF8FF04FFFFFFFF97F5AD86FFEE9463FFEA996DFFE69E
          77FFE5A27EFFDF9B76FFCF6F3BFF743C1D950A070511502A176BBE612FEEDA74
          3EFFEEC4AEFFF5DFD4FFF4DCCFFFF2D7C8FFF0D1C1FFEECCB9FFECC7B2FFEBC1
          AAFFEBBFA8FFEEC9B6FFFCF7F4FF08FFFFFFFF99FEF8F4FFFA955EFFF48F58FF
          EE9463FFEA996DFFE69E77FFDF956CFFCB6C39FA703A1C90100A0618381E114D
          B95E2DE8D97946FFECC1A9FFF5E4DBFFF5E1D6FFF4DCCFFFF2D7C8FFF0D1C1FF
          EECCB9FFECC7B2FFEBC1AAFFEBBFA8FFEEC9B6FFFCF7F4FF08FFFFFFFF99FDA6
          76FFFA894CFFF48F58FFEE9463FFEA996DFFE49469FFCF6E39FF733B1D930906
          040F2E190E3FBC5F2EECDC733AFFF1B18EFFF8EBE3FFF6E6DDFFF5E1D6FFF4DC
          CFFFF2D7C8FFF0D1C1FFF0D1C0FFECC7B2FFEEC9B5FFEEC8B5FFEEC9B6FFFEFC
          FBFF07FFFFFFFF98FEA97BFFFD8646FFFA894CFFF48F58FFEE9362FFEA8D5BFF
          D06D37FF6D381B8B0202020425140A329C5027C6D26A32FFEAA782FFF6E5DCFF
          F8ECE5FFF6E6DDFFF5E1D6FFF4DCCFFFF4DED1FFFDF9F7FFFCF7F4FFFEFCFCFF
          FEFEFEFFFCF6F3FF07FFFFFFFF94FEF9F6FFFD9760FFFE8543FFFD8646FFFA89
          4CFFF48F58FFE37D46FFBA5F2EEA4624125A0704020A02020204783D1E98D36A
          32FFE78652FFF4D8C8FFFAF0EAFFF8ECE5FFF6E6DDFFF5E1D6FFFDFAF9FF0CFF
          FFFFFF94FEFBF9FFFB9E6BFFFC8443FFFE8543FFFD8646FFFA884AFFE3763BFF
          B85D2DE72B170C39010101020302010442211054AD582AD7DB7945FFE6BBA2FF
          F7EAE2FFFAF0EAFFF8EBE4FFEECBB9FFFAF1EDFF0DFFFFFFFF88F7AE87FFFA86
          48FFFC8443FFFE8543FFF47F3FFFD06932FE874421A91F100828020000000089
          140B051A964C25BCDA6D32FFF3915BFFF8EAE3FFFBF3EFFFF9F0EAFFF1D3C4FF
          FBF2EEFF02FFFFFFFF82FEFDFCFFFEFCFBFF02FFFFFFFF81FDFBF9FF02FFFFFF
          FF8CFDFBFAFFFEFCFBFFFFFFFFFFF1D0BEFFEA9669FFF28E57FFFA8648FFFB81
          3EFFEE7432FFC96630F55B2E17730000000102000000009E05030207391D0E49
          B85D2DE7E67334FFFAA475FFFBF5F2FFFAF3F0FFF4DED2FFECC5B0FFF1D4C5FF
          F3D9CCFFEFCEBCFFEECBB8FFF2D6C7FFF0D2C1FFECC5B0FFF0D1C0FFF0D0BFFF
          EBC2ADFFEBBFA8FFECC5AFFFE4A583FFE49F7AFFEA9669FFF48B52FFFB7F3BFF
          D86C32FF8B4622AE130A05190100000103000000009C1E0F0726723A1C90C262
          2FF1DC8658FFE7BBA3FFFBF6F3FFFAF3F0FFF8EAE3FFF8EAE2FFF6E6DDFFF4DE
          D3FFF3DACCFFF2D7C8FFF0D1C0FFEECBB8FFECC7B2FFEBC1AAFFE9BBA3FFE7B6
          9BFFE6B093FFE4AA8BFFE4A583FFE79A71FFF38A51FFDB7137FFA55429CF4B26
          135F0804020A05000000009A371C0E45A05127C7CF6730F6DE8E63FFE7BDA7FF
          FBF5F2FFFAF3EFFFF9F0EAFFF8ECE5FFF6E6DDFFF5E1D6FFF4DCCFFFF2D7C8FF
          F0D1C1FFEECCB9FFECC7B2FFEBC1AAFFE9BBA3FFE7B69BFFE6B093FFE6A37EFF
          E99364FFE0763EFFBD5F2DE5783E1E971109041607000000009845231156A553
          28CCD26830F6E2824EFFF7A476FFF8EBE5FFF7EAE4FFF9F0EAFFF8ECE5FFF6E6
          DDFFF5E1D6FFF4DCCFFFF2D7C8FFF0D1C1FFEECCB9FFECC7B2FFEBC1AAFFE8B9
          A0FFEBA783FFEE8D58FFDD763FFFC0602DE5864521A8180C061E090000000096
          45231156A55428CBC76530F3E97434FFF5925CFFE9C1ACFFF4D8C9FFF7E9E1FF
          F8ECE5FFF5E3DAFFF5E0D6FFF4DCCFFFF1D6C7FFEFCEBCFFEDCAB6FFE6B69BFF
          E9A079FFF47D3CFFD77039FFB85D2CE2864421A7180C061E0B00000000943E20
          0F4D7F411F9DBE602EEAE06F32FFE27E47FFFC803CFFEBA884FFEFB494FFEDC6
          B1FFF1CBB5FFF1C0A6FFEEBB9FFFE5AC8EFFED9869FFE78651FFE47132FFD66B
          32FF9E5027C56A361A84170C061D0D00000000922613092F4B26125CAB5629D1
          BD5F2DE5DA6D32FFDE6E32FEED7332FFE67E46FFE78048FFE97D43FFEA7839FF
          E1753AFFDD6E32FECD6732FDB75D2CE180411FA0381D0E460E0704120F000000
          00900905020B190D061F5B2E166F81411F9EA65328CACE6731FBBF602DE7C563
          2EEDD26932FFC2622EECAF592AD8AE582AD66C371A86472411590804020A0402
          010512000000008B07040209000000002513092D371C0D433F200F4D42211050
          4623115640210F4F201008271D0F07240A05020C190000000081020101030300
          00000081010000010D00000000}
      end>
  end
  object ilButtonsSmall: TcxImageList
    CompressData = True
    Height = 22
    Width = 22
    FormatVersion = 1
    DesignInfo = 680
    ImageInfo = <
      item
        Image.Data = {
          870700005844424D02000402C607850000424DC6070000000000003600000028
          0000000216000000830100200000000000900700000500000000840000000100
          00000F000000230000002A0C0000002B83000000290000001C00000009020000
          0000FD0000000100000017090A3A73272A83B7343794C5353894C5353895C535
          3996C5353897C5353898C5343799C532359AC531349BC531339BC530329BC52F
          319BC5303298C52F3293C317196AA6020218510000000A00000000000004110C
          0D54832F31C4F51B1BC0FE1010C3FF1010C8FF1010CDFF1010D2FF1010D7FF10
          10DCFF0F10E0FF1011E5FF1517E6FF1B1FE8FF2026E9FF262EEBFF2B35ECFF32
          3EEDFF4551EBFD373DBDE403031B4A0000000502021F341818A0D40505B5FF00
          00B8FF0000BEFF0000C3FF0000C9FF0000CEFF0000D3FF0B0BDBFF2020E2FF1B
          1BE5FF0C0EE5FF0E13E6FF141BE8FF1A23E9FF212CEBFF2734ECFF2D3CEDFF3C
          4AEBFD191D73A2000003100303314A0505A8EB0000B3FF0000B8FF0000BDFF00
          00C2FF0C0CCAFF4848DBFFA3A3EEFFDFDFFAFFE6E6FCFFE5E5FCFFD5D5FBFF8A
          8CF3FF3E44ECFF1E27E9FF212CEAFF2734ECFF2E3DEEFF3344EFFF212A9BC100
          000C1D00002F4C0000A5ED0000B1FF0000B7FF0000BDFF1414C6FF8C8CE5FFF3
          F3FCFFFFFFFFFFFAFAFEFFE9E9F9FFEFEFFBFFFEFEFFFFFEFFFFFFE0E1FCFF6E
          73F1FF222EEBFF2634ECFF2D3CEEFF3243EEFF1C259AC200000C1E00002D4C00
          00A0ED0101B0FF0101B5FF0E0EBFFF8F8FE3FFF7F7FDFFF5F5FCFFACACEAFF42
          42D9FF2727DBFF2D2DE0FF5E5FE5FFD2D2F7FFFBFBFEFFFDE7E8FDFF6B72F2FF
          2734ECFF2B3BEDFF3041EDFF1B2596C200000C1E00002A4C04049CED0909B1FF
          0A0AB6FF5656D0FFF5F5FCFFF6F6FDFF7F7FDEFF0F0FCFFF0000D4FF0000D9FF
          0000DFFF0203E3FF282AE3FFB8B9F3FFFDFDFEFFD4D7FBFF3E49EEFF2937EDFF
          2E3FEDFF192291C200000B1E0000284C070798ED1515B3FF1818B9FFB2B2E9FF
          FFFFFFFFC7C7EEFF2A2ACEFF1D1DD2FF1818D6FF0E0ED9FF0303DDFF0102E2FF
          0708E4FF4144E6FFEBECFCFFFCFCFFFF6C74F2FF2633ECFF2B3AEBFF171F8EC2
          00000A1E0000264C0B0B94ED2020B4FF2B2BBCFFE4E4F7FFFFFFFFFF8181DEFF
          2B2BCFFF2D2DD3FF3030D8FF3131DCFF2C2CE1FF1C1CE2FF0C0DE5FF090BE4FF
          C3C4F6FFFFFFFFFF9FA3F6FF212DEBFF2633E9FF151C8DC200000A1E0000244C
          101091ED2A2AB5FF3E3EC0FFE9E9F8FFFFFFFFFF7575DBFF3535CEFF3737D2FF
          3939D7FF3B3BDBFF3D3DE0FF3F3FE4FF3636E7FF2122E7FFAEAFF6FFFFFFFFFF
          ABAEF6FF1C26EAFF202CE6FF11188BC200000A1E0000214C14148CED3535B6FF
          3D3DBCFFE1E1F4FFFFFFFFFF9C9CE4FF4141CEFF4343D2FF6060DCFFB2B2F0FF
          8C8CEBFF4F4FE3FF4D4DE6FF5454EBFFDCDCFBFFFFFFFFFF8E90F1FF141BE8FF
          1821E4FF0E1289C200000A1E0000204C17178AED3F3FB7FF4343BCFFB8B8E3FF
          FFFFFFFFD9D9F4FF5757D1FFFD4D4DD1FF8E8EE4FFFDFDFFFFD7D7F8FF6666E4
          FF5757E5FF8686EEFFF4F4FEFFFDFDFEFF5F60E9FF0D11E6FF1016E2FF0A0D87
          C200000A1E00001F4C1C1C89ED4A4AB8FF4E4EBDFF7676CAFFF0F0F8FFFCFCFE
          FFBFBFEDFF6A6AD6FF9898E4FFFFFFFFFFDDDDF8FF7575E3FF8B8BEAFFE1E1FA
          FFFEFEFFFFD3D3F3FF6D6DEBFF2224E7FF0709DFFF040584C200000A1E00001E
          4C202088ED5454B9FF5858BEFF6060C2FFA9A9D9FFF8F8FBFFFDFDFEFFACACE7
          FF9E9EE4FFFFFFFFFFDFDFF8FF9595E7FFEAEAFBFFFFFFFFFFEDEDF8FF9494E5
          FF7575E9FF6363EAFF1919DEFF000181C200000A1E00001E4C27278AED5F5FBA
          FF6464BFFF6565C2FF6D6DC5FFAAAAD7FFDFDFEFFF9898D8FFA5A5E3FFFFFFFF
          FFE1E1F7FF9E9EE3FFE7E7F5FFE2E2F2FF9999DEFF7E7EE4FF7F7FE6FF8181E8
          FF6262E2FF05057CC200000A1E00001D4C33338DED6A6ABBFF6E6EC0FF7070C3
          FF7272C7FF7373C7FF7474C4FF7676CDFFABABE3FFFFFFFFFFE3E3F7FF8E8EDD
          FF9090D6FF8B8BD8FF8585E0FF8888E2FF8A8AE3FF8C8CE4FF8888E2FF1B1B7C
          C200000A1E01011D4A464696ED7676BDFF7878C1FF7A7AC4FF7C7CC7FF7E7ECA
          FF8080CDFF8282D0FFB0B0E2FFFEFEFEFFE3E3F5FF9797DDFF8D8DDBFF8F8FDD
          FF9090DEFF9393E0FF9494E1FF9797E1FF9494DFFF323282C201010B1D09091F
          3FC05C5C9CE58181C0FF8383C3FF8585C6FF8787C8FF8989CBFF8B8BCEFF8D8D
          D0FF9F9FD5FFCCCCE3FFB9B9DEFF9797D8FF9797DAFF9999DBFF9C9CDDFF9E9E
          DEFFA0A0DEFFA2A2DFFFA2A2DDFF585889B70000071503030D1A535383B78F8F
          C3FE8F8FC5FF9090C8FF9393CAFF9595CCFF9797CFFF9999D1FF9A9AD2FF9D9D
          D2FF9E9ED5FFA1A1D9FFA3A3DAFFA5A5DBFFA7A7DCFFA9A9DDFFABABDDFFAFAF
          DEFFB8B8DDF93C3C5A7A00000104000000000A0A1C2F707096BF9C9CC6F4A7A7
          D2FFAAAAD4FFADADD7FFB0B0D9FFB2B2DAFFB5B5DCFFB7B7DEFFB9B9DFFFBCBC
          E1FFBEBEE2FFC0C0E3FFC2C2E4FFC4C4E4FFC4C4E3FEB4B4CFE764647F990000
          040B0300000000870A0A141F2828374734344251353543513636435137374451
          383844510239394551843A3A46513B3B46513C3C46513C3C4751023D3D475183
          3C3C46502424303C05050A0F0200000000}
      end
      item
        Image.Data = {
          2B0600005844424D02000402C607850000424DC6070000000000003600000028
          00000002160000008301002000000000009007000005000000009D0000000203
          0303210F0F0F50151515581F1F1F5A2B2B2B5F2B2B2B60292929602828286026
          2626602424246023232360212121601F1F1F5F151515590E0E0E580B0B0B5807
          0707580404044B0000000B00000000000000040202022C2F2F2FAD656565E674
          7474EBA1A1A1ECCACACAEFC6C6C6EF02C7C7C7EF97C5C5C5EFC2C2C2EFC0C0C0
          EFBEBEBEEFBBBBBBEF929292EC777777EB707070EB6B6B6BEC525252DD030303
          370000000004040427313131C16B6B6BFD6F6F6FFF707070FFA5A5A5FFAEAEAE
          FF6E6E6EFF7C7C7CFFD9D9D9FFDADADAFF02DBDBDBFF02DADADAFF819C9C9CFF
          02727272FF86707070FF6A6A6AF50C0C0C3C000000000D0D0D384D4D4DDF0260
          6060FFC05F5F5FFF959595FFA0A0A0FF575757FF696969FFD8D8D8FFDCDCDCFF
          E0E0E0FFE2E2E2FFE0E0E0FFD9D9D9FF888888FF646464FF676767FF606060FF
          595959F303030322000000000909092E3E3E3ED5515151FF4F4F4FFF474747FF
          868686FFA6A6A6FF626262FF737373FFDDDDDDFFE1E1E1FFE5E5E5FFE8E8E8FF
          ECECECFFEAEAEAFF818181FF5D5D5DFF606060FF515151FF424242E70000000D
          0000000005050521303030C7434343FF3A3A3AFF383838FF727272FFADADADFF
          949494FF9C9C9CFFC5C5C5FFC8C8C8FFCACACAFFCCCCCCFFCFCFCFFFCCCCCCFF
          787878FF646464FF585858FF404040FF2F2F2FCF000000060000000001010116
          232323B902383838FF843C3C3CFF4C4C4CFF666666FF686868FF02676767FF81
          666666FF02656565FF92646464FF626262FF575757FF555555FF3F3F3FFF2F2F
          2FFF1E1E1EB300000002000000000000000A171717A93F3F3FFF8E8E8EFFC0C0
          C0FFC4C4C4FFC8C8C8FFCACACAFFCBCBCBFF02CCCCCCFF8FC9C9C9FFC8C8C8FF
          C6C6C6FFC8C8C8FFC4C4C4FFBDBDBDFF6B6B6BFF212121FF1010109400000001
          00000000000000050C0C0C97444444FEABABABFF02E7E7E7FF84ECECECFFEFEF
          EFFFF1F1F1FFF3F3F3FF02F4F4F4FF88F3F3F3FFF0F0F0FFEBEBEBFFE5E5E5FF
          DFDFDFFF707070FF151515FF08080876020000000094000000020404047F4040
          40FBA8A8A8FFD2D3D4FF9AA4B0FFB1B7BFFFBFBFBFFFCACACAFFD9D9D9FFE3E3
          E3FFECECECFFF0F0F0FFF2F2F2FFF1F1F1FFEBEBEBFFE0E0E0FF535353FF0808
          08FD02020256020000000094000000010101016B3F3F3FFAA6A6A6FFE9E9EAFF
          C7D5E8FF84A5D4FFA8BFD3FFD0D2D3FFCBCBCBFFCDCDCDFFD3D3D3FFD9D9D9FF
          DDDDDDFFE1E1E1FFE4E4E4FFDDDDDDFF3D3D3DFF020202F30101014302000000
          00940000000100000050414141F7A8A8A8FFE8E8E8FFEAECEDFFA1DAF3FF1DA9
          EEFF8ECCEEFFEFF0F1FFE9E9E9FFE0E0E0FFDBDBDBFFDADADAFFD9D9D9FFDADA
          DAFFD7D7D7FF444444FF010101E0000000320300000000930000003B3E3E3EF5
          ABABABFFE8E8E8FFEEEEEEFFCAE9F3FF50CEF9FF1EABEFFFA3D5F0FFF1F3F4FF
          F3F3F3FFF0F0F0FFEBEBEBFFE7E7E7FFE3E3E3FFD7D7D7FF757575FF070707D0
          0000002603000000009300000021393939F2B2B2B2FFE8E8E8FFEFEFEFFFF0F1
          F1FFCFEDF5FF63D6FAFF1FACF0FF90CEF0FFF1F3F3FFF3F3F3FFF1F1F1FFEFEF
          EFFFECECECFFD9D9D9FF919191FF1A1A1ABA000000190300000000930000000D
          282828E9969696FFB7B7B7FFBBBBBBFFBABABAFFB7B7B7FF97B4BDFF3EBAE3FF
          1BACF0FF8EBFDAFFAFB1B2FFADADADFFABABABFFA9A9A9FF989898FF6E6E6EFE
          0E0E0EA10000000C030000000085000000010404045B1010108F1313138B1313
          138A021212128A8C111212851A3C478D38ABCFD7129FE1FF104B6BDE0F13148B
          0F0F0F750F0F0F740D0D0D740A0A0A6D01010128000000010B00000000870000
          000116313A3E3AB6DEE20EA0E2F6003552800002031400000001100000000086
          000000011B3E484D3EB0D3D70B97D7ED00385785000305151100000000870000
          000119333C4040B4D8DC10A2E3F6123648850101011400000001100000000086
          000000011F404A4E64B5CFDC8A9DA5ED2A2A2C7F010203111100000000860000
          000130303045ADAEB3DB8497C7F3172346680000000111000000008501010102
          30343E4C7491D3D728386770000000010300000000}
      end
      item
        Image.Data = {
          010600005844424D02000402C607850000424DC6070000000000003600000028
          0000000216000000830100200000000000900700000E00000000020000000181
          00000002020000000381000000010A000000008D00000004000000070000000A
          0000000F00000013000000180000001D00000024000000290000003100000030
          000000110000000107000000008F000000010202021708131B57081C266D0821
          2C790C2B38890F344497123D53A610465FAF0F4F70BC0E547EC50D588ED00D53
          90D2091527610000000607000000009000000004141E2859166A97D3107FB0E4
          128EBCEB1199C4ED0E9EC8EC0C9FCBEC0D9BCCEC0C93CAEB0888C7EA0478C3E7
          006CBFE30E2C519600000014000000020600000000850000000623384C7D30A1
          E0F72DAFECFC31B7EFFD0232BBF0FD8932BAF1FE32B6F1FE32AFF0FD31A8F0FD
          2E9BEDFC288DE6FA355279D51111115500000008060000000090000000062439
          4E7F39A0E7F936AEF5FF36B2F5FF36B4F5FF36B5F5FF36B2F5FF36AFF5FF36A9
          F5FF36A3F5FF369BF5FF3693F5FF7992BAFE5656569E0202020F060000000085
          0000000628384D7F409BE7F936A3F5FF36A7F5FF0236A9F5FF8936A7F5FF36A4
          F5FF369FF5FF3699F5FF3692F5FF368BF4FF7F98C0FF646464A4030303100600
          00000085000000062D384C7F4C98E8F93698F5FF369BF5FF02369DF5FF89369B
          F5FF3699F5FF3694F5FF368FF5FF368AF3FF3786EFFF839AC2FF676767A40303
          03100600000000850000000631384A7F5897E7F9368FF5FF3691F5FF023692F5
          FF893691F5FF3990F5FF4493F5FF549AF4FF5E9DF1FF5E9AEDFF8CA0C4FF6969
          69A303030310060000000090000000063539487F6499E3F93686F0FF3687F1FF
          3687F2FF3A8AF2FF5499F3FF70A9F4FF81B2F3FF7EAFF1FF7BABEEFF82AEEDFF
          AAB6CDFF6D6D6DA20303030F06000000009000000006383A467F6E9CDFF93681
          E7FF3682E9FF3E87EAFF6CA4F0FF8CB7F2FF8FB8F1FF8AB5F0FF88B2EEFF8FB5
          ECFFBCCBE4FFD0D0D4FF737373A30303030F060000000091000000063D3B447F
          7BA1DBF9367ADDFF4686E2FF88B1EDFFA0C1F0FF9CBEEFFF9ABCEEFF96B9ECFF
          92B5EAFF89A9DBFFCBCBCFFFE0E0E0FF999999D01616164B0000000805000000
          009200000006403C437F86A5D8F93E7BD7FF86ADE7FFACC7EEFFA9C5EEFFA5C2
          EDFFA2BFECFF9EBCEAFF9BB9E8FF87A4D5FFD0D0D2FFE6E6E6FFE1E1E1FB9292
          92C50D0D0D2B0000000104000000008400000006433D427F95ADD7F979A0DDFF
          02B7CCEDFF8CB3CAECFFAFC7EBFFACC4EAFFA8C1E8FFA5BDE6FF8DA6D3FFD4D4
          D6FFEBEBEBFFF2F2F2FFDFDFDFF02E2E2E4F0000000104000000009200000006
          463D407FB5C1DCF9B5C8E9FFC4D4EEFFC0D1EDFFBDCFECFFB9CCEBFFB6C9E9FF
          B1C5E7FFAEC2E5FF92A8D2FFD8D8D9FFEEEEEEFFF5F5F5FFE3E3E3F030303050
          0000000104000000009200000006493E3F7FDCDEE6F9D1DCEFFFCEDAEEFFCAD7
          EEFFC7D4ECFFC3D1EBFFBFCEE9FFBBCBE7FFB8C7E5FF98AAD1FFDCDCDEFFF1F1
          F1FFF8F8F8FFE6E6E6F03232325000000001040000000092000000064A3E3F7F
          E4E4E8F9DBE3F1FFD8E0F0FFD4DDEFFFD0DAEEFFCCD7EBFFC9D4EAFFC5D0E8FF
          C1CDE6FFADBAD7FFE3E3E4FFF5F5F5FFFCFCFCFFE9E9E9F03333335000000001
          040000000092000000064C41417EE7E6EAF9E7ECF4FFE5E9F4FFE4E9F3FFE3E8
          F3FFE4E8F2FFE5E9F3FFE7EAF3FFE8EBF3FFE3E5ECFFEFEFEFFFFAFAFAFFFEFE
          FEFFEAEAEAF03434345000000001040000000086000000045E5B5B7CE9E9E9F9
          EFEFEFFFEEEEEEFFEDEDEDFF04EBEBECFF88EEEEEEFFF4F4F4FFFAFAFAFFFEFE
          FEFFFFFFFFFFEAEAEAF0353535500000000104000000008C000000026262626D
          E0E0E0F5E3E3E3FDE5E5E5FDE7E7E7FCEBEBEBFCEFEFEFFDF2F2F2FEF7F7F7FF
          FAFAFAFFFDFDFDFF03FFFFFFFF83EBEBEBF03535354D00000001050000000090
          141414177B7B7B7F8989898E848484897F7F7F83808080848888888D8D8D8D92
          9A9A9A9FA5A5A5AAB3B3B3B7C1C1C1C5D2D2D2D6E2E2E2E7C8C8C8CF1E1E1E29
          0E00000000880101010207070709111111141D1D1D202A2A2A2E3838383C2D2D
          2D31010101020300000000}
      end
      item
        Image.Data = {
          C50500005844424D02000402C607850000424DC6070000000000003600000028
          0000000216000000830100200000000000900700000C00000000860000000402
          020224131313620707074500000011000000010F000000008800000008010101
          311F1F1FA0696969E8444444CE0F0F0F6F00000019000000020C000000008C00
          0000030000001A09090966292929CB5D5D5DFC868686FF7A7A7AFE5D5D5DF521
          21219E0505053E0000000C0000000109000000008E000000060101012B101010
          8B343434E64D4D4DFE5C5C5CFF7F7F7FFF747474FF6F6F6FFF616161F9363636
          C80A0A0A5C000000150000000206000000008A0000000200000012060606541A
          1A1ABB363636F5424242FF464646FF525252FF767676FF6B6B6BFF02666666FF
          86626262FE474747E61A1A1A8E03030331000000070000000103000000008B00
          000002010101250A0A0A7B1F1F1FDC2F2F2FFF343434FF383838FF3C3C3CFF48
          4848FF6E6E6EFF626262FF035C5C5CFF855B5B5BFF4F4F4FF82A2A2ABA070707
          4E0000001103000000008B00000012171717A4232323F0272727FE282828FF2B
          2B2BFF2E2E2EFF313131FF3E3E3EFF666666FF595959FF03535353FF86525252
          FF515151FF4B4B4BFC373737DA11111162000000030200000000820303032B38
          3838F305272727FF84292929FF353535FF5E5E5EFF505050FF03494949FF8648
          4848FF474747FF454545FF4C4C4CFF353535AF00000005020000000083040404
          323A3A3AF4272727FF04262626FF84272727FF323232FF5B5B5BFF4B4B4BFF04
          434343FF02424242FF834B4B4BFF393939B30000000502000000008304040432
          3B3B3BF4272727FF04262626FF85272727FF3F3F3FFF6B6B6BFF5C5C5CFF4747
          47FF05424242FF834B4B4BFF393939B300000005020000000083040404323D3D
          3DF4272727FF03262626FF87282828FF4B4B4BFF797979FF7D7D7DFF7A7A7AFF
          707070FF484848FF04424242FF834B4B4BFF393939B30000000502000000008F
          04040432404040F4272727FF262626FF272727FF404040FF757575FF858585FF
          797979FF787878FF747474FF777777FF858585FF636363FF454545FF02424242
          FF834B4B4BFF3D3D3DB30000000502000000008804040432414141F4272727FF
          292929FF585858FF848484FF7B7B7BFF737373FF02747474FF8A707070FF6D6D
          6DFF6F6F6FFF858585FF7C7C7CFF484848FF424242FF4B4B4BFF3D3D3DB30000
          000502000000009404040432434343F4333333FF646464FF7C7C7CFF717171FF
          939393FF8E8E8EFF727272FF6E6E6EFF6B6B6BFF696969FF656565FF636363FF
          747474FF7D7D7DFF535353FF4C4C4CFF3D3D3DB30000000502000000008F0404
          0431545454F45C5C5CFF646464FF5F5F5FFFA8A8A8FFF3F3F3FFCECECEFF9292
          92FF7D7D7DFF808080FF8E8E8EFF888888FF6F6F6FFF676767FF026B6B6BFF83
          5B5B5BFF3F3F3FB30000000502000000009405050521585858E5535353FF5959
          59FF666666FF808080FF9F9F9FFFB8B8B8FFF0F0F0FFE4E4E4FFE1E1E1FFEBEB
          EBFFF3F3F3FFDBDBDBFF7A7A7AFF666666FF636363FF5F5F5FFC3B3B3B9A0000
          0002020000000093000000021B1B1B5D3E3E3ECD5F5F5FFD6F6F6FFF727272FF
          747474FF878787FFB2B2B2FFA3A3A3FF8E8E8EFFAFAFAFFFFBFBFBFFF7F7F7FF
          868686FF686868FF5A5A5AF63131319F0C0C0C2B040000000091010101030A0A
          0A233232329B5D5D5DF1707070FE757575FF767676FF777777FF7F7F7FFF9F9F
          9FFFD8D8D8FFECECECFFAEAEAEFF6D6D6DFC4D4D4DDA1E1E1E63040404100700
          0000008E0202020819191956474747C96C6C6CFF767676FF787878FF9D9D9DFF
          D9D9D9FFC5C5C5FF8C8C8CFF646464F53535359E0B0B0B2A0000000109000000
          008B000000020C0C0C293333339E5F5F5FF1777777FF797979FF848484FF7878
          78FD545454DC20202067040404110D00000000870101010416161650474747D0
          6B6B6BFC656565F0383838A508080821100000000085000000020B0B0B2D2A2A
          2A8D1C1C1C5E040404120900000000}
      end
      item
        Image.Data = {
          D40600005844424D02000402C607850000424DC6070000000000003600000028
          0000000216000000830100200000000000900700000A0000000084232222284A
          433F5D69584F88C3A898F602CCAF9FFF84AC9385D975665D943F383550181818
          1C0B000000008C3B332D509C7F6ECFC79F88F8D09F83FFD9A68AFFDFAD92FFDE
          AC91FFD4A386FACC9C81F9CDA68FFF907564C13F38345008000000008F141312
          1864504386AE7F60E6D7A27DFFE5B08CFFE1A983FFE0A882FFE1A983FFE0A882
          FFE0A881FFE1A982FFE4B08CFFD6A07AFFB58766F73F2D22590600000000911C
          1816248B6F5CB9C28A5EFAD99F70FFD89B6CFFD89B6EFFD59A6FFFD29970FFD3
          9A71FFD29970FFD2986EFFD1976CFFD4986AFFD99B6CFFD3986AFFB78156F13A
          271A510400000000880B0B0A0C6F564496C38956FFD18F57FFD18D57FFD3915D
          FFDDA880FFEBD3C1FF03ECDCD0FF88EBDBCFFFDCBBA2FFCE9161FFD3905CFFCC
          8853FFC68B5AFFB47F54F13A291D590300000000FD574A436FB27640FACC8646
          FFCB8346FFCE874DFFCF8A52FFD2905CFFDCA77EFFFBF4EEFFFFFFFFFFFEFEFE
          FFE7D2C1FFD49869FFD18D56FFCF8950FFCB844BFFBE7D47FFBC8048FFA06E43
          F635302D42000000000F0D0C147B5434B8C68038FFC67935FFC77D3CFFC98042
          FFCB8346FFCC854AFFCE874EFFF5E7DBFFFFFFFFFFFDFCFBFFD3AC8BFFCB844A
          FFCD854AFFCB8345FFC97F40FFC77B39FFC57833FFC37F36FE8E6D50C21D1B1A
          2144352960B37534FFC1722BFFC2722CFFC47530FFC67835FFC87B3AFFC97D3D
          FFCA8042FFF4E5D8FFFFFFFFFFFDFCFAFFD1A784FFC87D3EFFC97D3EFFC77B39
          FFC57733FFC4742EFFC1712BFFC1732BFFB3773DFF50423A6B71594298B97224
          FFBD6D2AFFBF6F2BFFC0712BFFC2732DFFC4742FFFC57632FFC67937FFF3E3D5
          FFFFFFFFFFFDFBFAFFCFA47DFFC37533FFC57632FFC3742FFFC1712CFFC0702A
          FFBE6E2AFFBC6C29FFB26B23FF7F6753ABAF8057FFB5681EFFBA6A2AFFBB6C2A
          FFBD6D2BFFBE6F2BFFBF702BFFC0712BFFC1722DFFF2E2D3FFFFFFFFFFFDFBFA
          FFCEA078FFBF6F29FFC0702BFFBF6E2AFFBE6D2AFFBC6C2AFFBA6A29FFB96829
          FFB6691DFFC19B78FFA46C3FFFB56826FFB96B2FFFBB6D2FFFBC6E2FFFBD6F30
          FFBE7030FFBF712FFFC07332FFF2E2D4FFFFFFFFFFFDFBFAFFCD9E77FFBC6B28
          FFBD6C2AFFBB6B29FFCBBA6A29FFB96829FFB76728FFB66527FFB6671FFFBC8F
          66FFA1693FFFBA733CFFBD7844FFBF7944FFC07944FFC17A45FFC27B45FFC27B
          43FFC6844FFFF5EAE0FFFFFFFFFFFDFBFAFFCC9E79FFB86726FFB96828FFB868
          29FFB76628FFB56528FFB46327FFB36227FFB36421FFB88A63FFA5724DFFBD7C
          4BFFC18356FFC28456FFC38556FFC48657FFC58757FFD19E78FFEAD2C0FFFEFD
          FBFFFFFFFFFFFDFCFBFFD2AD8EFFBB7239FFB7672BFFB46326FFB36327FFB262
          27FFB16127FFAF5F26FFB16222FFA17A5ADDA38068E0C08457FFC7916CFFC892
          6DFFC9936DFFCA936DFFCA946DFFD6AB8CFFE2C3AEFFE5CBB8FFE9D2C1FFEDD9
          CBFFD7AF90FFCA946CFFC88E64FFBC7644FFB46831FFAF5F28FFAD5C24FFAC5B
          24FFAB5E25FF795D49AA46322566B97E53FFCD9F80FF02CE9F80FF9ECFA080FF
          CFA180FFCF9F7DFFCF9E7CFFCFA07DFFD0A281FFCE9F7DFFD0A180FFD0A280FF
          D0A281FFCFA07FFFCB9976FFC2875FFFB56F40FFAF6433FF9D592AF428190F47
          2F251F45986545EBD2A78CFED5AD96FFD5AD95FFD5AE95FFD5AF95FFD6AE95FF
          D8B298FFEAD7C9FFF5EDE6FFE2CBBCFFD1AC93FF02D6AF95FF03D5AE95FF88D4
          AC93FFCB9674FF7D4E2FC21512101D0A0A0A0B6C56489BBE8867FDDDBCA9FF03
          DCBCA9FF88DCBBA7FFE9D4C7FFFFFEFEFFFFFFFFFFFCFAF8FFE2CCBFFFDCBCA8
          FFDDBCA9FF03DCBCA9FF83DAB7A1FFAF7049FF6B54469F02000000008D171412
          1E8C5E42E2CFA78DFCE4CDBEFFE4CCBEFFE4CBBDFFE3CBBCFFEDDED5FFFEFEFD
          FFFFFFFFFFFCFAF9FFE9D9CFFFE3CBBCFF02E4CBBDFF85E4CCBEFFE4CABBFFC3
          8E6DFF8D644BDC1614121E03000000008B38312C498A5E42D6D7B49EFFEDDDD3
          FFEDDED5FFECDDD3FFEDDDD4FFF5EDE8FFFAF6F3FFF4EAE5FFEDDDD4FF02ECDD
          D3FF85EDDED5FFECD9CEFFCA9B7EFF8A5E41DE1E17142D040000000092060605
          07403631548C5F43E4C79D82FFF0E1D8FFF7EEE9FFF6EDE8FFF6ECE7FFF6EDE8
          FFF6EDE7FFF6ECE8FFF6EDE9FFF6EEE9FFEDDACEFFBB8767FB895E44DB1D1713
          2D0504040506000000008E1714131E806657B8A47659F6CAA187FFE1CBBDFFEE
          E1D9FFF2E7E0FFF2E6DFFFECDFD6FFDDC3B3FFC49679FF9B6D4EF35D4A3E890D
          0B0B1009000000008C1413131532292349544034799B7C67DAA1765BFF9D7053
          FF9D6F53FFA2775CFFA88772EC5743367C2F2722450C0C0C0D0500000000}
      end
      item
        Image.Data = {
          B20500005844424D02000402C607850000424DC6070000000000003600000028
          00000002160000008301002000000000009007000020000000008A0215003C0B
          5005E234712DFD3C7532FD3B7231FD3C7131FD3F7131FD3E6E31FD1B4D0DEE07
          1C005F0B000000008C00030008084F07E18FB38BFFF1F5EFFFFBFBFAFFFAFAF8
          FFF9F9F8FFFBFAF9FFF7F8F5FFAFC2A8FF1F5111F5030A00230A000000008C00
          120035266C24FCECF2EAFFF3FAF3FFB0D9B1FFB3DBB4FFB5DDB6FFB0DBB0FFDF
          F2DFFFFFFFFFFF567D45FF041900610A000000008C000F002C286E26FBEEF2EC
          FFBDDFBEFF007F00FF068706FF0B8B0BFF008600FF8CCB8CFFFFFFFFFF5D824C
          FF041700570700000000920004000A001C004F0020005D0027007F1E661BFDEB
          F0E9FFC0E1C1FF088508FF108C10FF159015FF058B05FF91CD91FFFFFFFFFF51
          7A40FF012100980617005A051500550206001703000000009400160038085906
          E5397F35FE478840FF3F8039FF5C9159FFF2F5F0FFBEE0BEFF088508FF108C10
          FF159015FF058B05FF90CD90FFFFFFFFFF829F75FF487039FF55783FFF4F723B
          FF24480EEF09170059020000000083035103D687B486FFF7FAF7FF04FFFFFFFF
          86C4E1C4FF088508FF108B10FF159015FF048B04FF97D097FF04FFFFFFFF83FF
          FEFFFFB0BDA5FF22430EEE0200000000941B6C1BF7E1EDE0FFF7FCF7FF99C89A
          FF9ACA9BFF9BCA9BFF9FCE9FFF74B974FF0C870CFF118C11FF149014FF0C8E0C
          FF5FB65FFFA4D6A4FF9FD69FFFA1D8A1FF9CD79DFFE4F6E6FFFCFBFAFF466431
          FD0200000000941E6C1EF6E2ECE0FFD9EBD9FF007100FF007400FF007800FF00
          7B00FF038103FF118A11FF128D12FF138F13FF179217FF0F910FFF089108FF0A
          940AFF0C980CFF029702FFB2E3B3FFFCF9F9FF486632FD0200000000941D6C1D
          F6E0EBDFFFDCECDCFF087B08FF0A7E0AFF0D810DFF0F840FFF108710FF108A10
          FF128D12FF148F14FF159215FF189518FF199919FF1B9C1BFF1D9E1DFF139D13
          FFB7E4B8FFFAF8F8FF476531FD0200000000941D6C1DF6E0EBDFFFDCECDCFF07
          7907FF087C08FF0B7F0BFF0D820DFF0E870EFF108A10FF128D12FF148F14FF15
          9215FF169516FF179717FF199B19FF1B9E1BFF119D11FFB7E4B8FFFAF8F8FF47
          6531FD0200000000941E6D1EF6E2EDE1FFDAEBDAFF007400FF007700FF017A01
          FF027E02FF078307FF118A11FF128D12FF138F13FF169216FF119211FF0E930E
          FF0F970FFF119A11FF079907FFB4E3B5FFFCF9F9FF496632FD0200000000941A
          6B19F6DFEBDEFFFEFFFEFFB4D7B4FFB4D9B4FFB5D9B5FFB7DAB7FF85C285FF0B
          860BFF118C11FF149014FF098D09FF6ABC6AFFBBE0BBFFB8E1B9FFBAE3BAFFB7
          E3B7FFEFFCF0FFFBFAF8FF44632FFD020000000094014D01CD7AAB79FFEAF1E9
          FFFAFBF9FFF7F9F6FFFAFAF9FFFFFFFFFFC3E2C3FF088508FF108C10FF159015
          FF048B04FF97CF97FFFFFFFFFFFDFAFBFFF8F6F5FFFAF8F8FFF3F4F1FFA2B296
          FF1E400BEA0200000000940010002A045403DD2A7729FE337C30FE2E742EFE4F
          874DFFF0F4F0FFBEE0BFFF088508FF108C10FF159015FF058B05FF90CD90FFFF
          FFFFFF769669FF36622EFE436A30FE41652EFE1D4208EA0813004A0300000000
          920002000400180045001A004A002300701E671CFCEBF0EAFFC0E1C1FF078407
          FF0F8B0FFF148F14FF048A04FF91CD91FFFFFFFFFF537A42FF0120008E051300
          480613004B0205001207000000008C0010002E296E27FBEEF3EDFFBFE0BFFF01
          8201FF098909FF0F8D0FFF008800FF8ECC8EFFFFFFFFFF5E834CFF0417005A0A
          000000008C00110031246B22FCEAF1E9FFFAFFFAFFC5E4C6FFC8E6C9FFCAE7CA
          FFC5E6C6FFEAF7EAFFFFFFFFFF527A42FF0419005F0A00000000850002000606
          4C03D982AB7EFFE6EDE2FFF2F4EFFF02F0F2EDFF85F1F3EEFFECF0E9FFA0B798
          FF1A4C0DF00308001D0B000000008A0210002E074A01D7276824FD2C6C29FD2D
          6828FD2E6728FD306628FD306428FD154606E60615004A1C00000000}
      end
      item
        Image.Data = {
          B60300005844424D02000402C607850000424DC6070000000000003600000028
          000000021600000083010020000000000090070000730000000094000B001B00
          4C00CE1D6C1BFB257123FB246F21FB266D21FB286B21FB296A21FB2A6921FB2B
          6721FB2D6621FB2E6421FB306321FB316221FB326021FB335F21FB365F22FB33
          5A1FFB163A01E10710003A020000000084004200B2559454FFD2E3CFFFE2ECE1
          FF03E0EADEFF03E1E9DEFF02E1E8DEFF02E2E8DEFF02E2E7DEFF84E4E8DFFFDE
          E4D8FF7F9672FF163603D8020000000084126311F1CCDFCAFFFFFFFFFFFCFEFC
          FF03FDFFFDFF02FCFFFDFF07FDFFFEFF84FDFFFDFFFFFFFFFFECF0EAFF385924
          FC0200000000941F6D1EF7E2EDE0FFE5F2E5FF449944FF459B45FF469E46FF47
          A047FF47A347FF48A648FF4AA84AFF4BAA4BFF4CAC4CFF4EAE4EFF4EB04EFF50
          B350FF51B551FF4AB44AFFC9EBC9FFFCFAFAFF496734FD0200000000941D6C1D
          F6E0ECDFFFD9EBD9FF007200FF007500FF007800FF007B00FF008000FF018301
          FF038603FF058805FF068B06FF088F08FF099209FF0B950BFF0E980EFF039703
          FFB3E3B3FFFBF8F8FF476531FD0200000000941D6C1DF6E0EBDFFFDCECDCFF09
          7B09FF0A7E0AFF0D810DFF0F840FFF108810FF118B11FF138E13FF159015FF16
          9216FF189518FF199819FF1B9B1BFF1D9E1DFF139D13FFB7E4B8FFFAF8F8FF47
          6531FD0200000000941D6C1DF6E0EBDFFFDCECDCFF097B09FF0A7E0AFF0D810D
          FF0F840FFF108810FF118B11FF138E13FF159015FF169316FF189618FF199919
          FF1B9C1BFF1D9F1DFF139E13FFB7E4B8FFFAF8F8FF476531FD0200000000941D
          6C1DF6E0ECDFFFD9EBD9FF007100FF007400FF007700FF007B00FF007F00FF00
          8200FF018501FF048704FF058B05FF078E07FF089108FF0A940AFF0C970CFF01
          9501FFB2E2B3FFFBF8F8FF476531FD0200000000941F6D1EF7E3EEE1FFE8F4E8
          FF54A254FF55A355FF56A656FF57A957FF57AB57FF57AC57FF58AF58FF59B159
          FF5AB35AFF5CB45CFF5DB65DFF5EB95EFF60BB60FF59BA59FFCDEDCEFFFCFBFA
          FF496733FD02000000008210610FEFC3D9C2FF10FFFFFFFF82E7EBE3FF365620
          FB020000000084003C00A4448943FFC0D8BEFFD4E3D2FF02D2E1CFFF03D3E0CF
          FF82D4DFCFFFD3DFCFFF03D4DECFFF02D5DDCFFF84D7DFD1FFCED7C6FF6F8860
          FF143300CB02000000009400060010004500BC126311F91D681BFC1B6619FB1B
          6419FB1C6219FB1C6019FB1D5F19FB1F5E19FB1F5D19FB205B19FB225A19FB23
          5819FB255619FB265619FB28551BFB264F16FC133600D7050A00266F00000000}
      end
      item
        Image.Data = {
          200600005844424D02000402C607850000424DC6070000000000003600000028
          0000000216000000830100200000000000900700000B00000000830402010515
          0B051A29150A330231190C3D8329150A34160B051C040201060D00000000842F
          170B39753B1C8F9C4F25BFB45C2BDD02C2612DE885B35B2CDE9A4F26C1743C1D
          9230190C3E0101010309000000008F1D0E0723793D1D93C8642EEDDF763EFDEF
          8B56FFF79E6DFFEAB294FFE7B79DFFF3A57AFFF18F5AFFDA7945FDCA6632F493
          4B24B92D180D3D02020204060000000087190D061F964B24B6E06F32FFE99162
          FFF6C6ACFFF5E3D9FFFAF3EFFF02FBF5F2FF88FBF5F1FFF7E8E0FFF2D0BEFFEA
          9E75FFD97138FFAA572AD6381F114D020202040400000000931D0E0723964B24
          B6DE763EFDEFAC86FFF5DED2FFF8EBE4FFF9ECE5FFF7E8E0FFF0CFBEFFEDC6B2
          FFF2D8C9FFF8EBE4FFF9ECE5FFF6E4DAFFECBBA0FFD97B48FEAC592BD92B180D
          3C010101020300000000847C3F1E98DE6F32FFEFA983FFF4DDD1FF03F6E2D7FF
          94F4DED2FFFBF3EEFFFFFFFFFFF7E6DDFFF5E1D6FFF6E2D7FFF5E2D7FFF5E0D5
          FFECB79BFFD8733CFF7E4120A20505050D00000001000000002E170B39C86530
          EFE79061FFF0CEBBFFF2D7C8FFF2D7C9FF02F2D7C8FF81F7E6DDFF03FFFFFFFF
          82F3DACCFFF2D7C9FF02F2D7C8FF8AF1D3C3FFE89D74FFC66632F0391F114F03
          03030704020105723A1C8FDB763FFDEDB393FFEECCB8FF04EFCCB9FF81F5DFD3
          FF03FFFFFFFF81F0CFBDFF03EFCCB9FF89EECAB6FFE5B69BFFD77945FD7C4121
          A10C090717150B051A994E25BFEC854DFFE9BBA3FF05EBC1AAFF81F3D8CAFF03
          FFFFFFFF8CEDC5AFFFEBC1AAFFEABEA7FFE7AC8BFFF7945EFFF88B50FFF17A39
          FFA15228CC22150E3529150A33B35B2BDDED9261FF02E7B59AFF85E9AF90FFEA
          AA88FFE9AF8FFFE7B59AFFF0D1C0FF03FFFFFFFF84E9B9A0FFE7B498FFE9A986
          FFF28E57FF02FF803BFF8DFC7E39FFB75D2DE53721155331190C3DC2612DE8E8
          976BFFE5AA8AFFE6A786FFF2BC9FFFF9DDCEFFF3C1A5FFE7AA8AFFEFCDBBFF03
          FFFFFFFF8EECA27AFFF19461FFF9D3BFFFFCDAC8FFFF9155FFFF803BFFFD7F3A
          FFC5632FEE4026196031190C3DC2612DE8ED8F5DFFE79B73FFEBAE8DFF03FFFF
          FFFF82F6C5AAFFF7B895FF03FFFFFFFF82FF9357FFFFD9C4FF02FFFFFFFF8BFF
          EFE7FFFF813CFFFD7F3BFFC5632FEE40271A6229150A34B35B2CDEF68446FFF5
          8C52FFF6935DFFFDD9C6FF02FFFFFFFF82FFFCFAFFFFE1D1FF03FFFFFFFF81FF
          DFCDFF03FFFFFFFF88FFB993FFFF823DFFFC7F3CFFB75D2DE63A24185B160B05
          1C9A4F26C1F47A37FF02FD8543FF82FD8849FFFFD5BEFF08FFFFFFFF8BFFF9F6
          FFFFB48BFFFF8543FFFF8442FFF57936FFA35329D0281A124304020106743C1D
          92E07237FDFC8848FF02FC8849FF82FC8F53FFFDDAC7FF07FFFFFFFF82FDBB97
          FFFC8646FF02FC8848FF88E07237FD804424AA14100E2A0000000030190C3EC5
          6531EEEB854DFFF1925EFF02F1925FFF82F19968FFF9DACAFF04FFFFFFFF93FE
          FAF8FFF6C2A5FFF19461FFF1925FFFF1925EFFEB854DFFC66632F2432719650A
          0A0A180000000001010103793E1E99D67540FFE7986DFFE89C74FFE89D74FFE8
          9C74FFE9A078FFF7E1D5FF03FFFFFFFF81F0C6AEFF02E89D74FF86E89C74FFE7
          986DFFD67540FF864623B01111112B0404040B0200000000842011092A964D26
          BDD47D4DFDE2A07CFF03E6A582FF8DE8AC8CFFF7E1D6FFFCF4F0FFF1CEBBFFE6
          A784FFE6A682FFE6A582FFE2A07CFFD47D4DFD9E5229CA322117540808081401
          010102020000000086010101021F110A2B974E27BFD27A4AFFE19973FFE7AC8C
          FF06E8AD8DFF87E7AC8CFFE19973FFD27A4AFF9D5229CA2F1F17510B0B0B1D02
          0202040400000000870101010322130B307E4020A1C36939F0D58356FDDB9C7A
          FFE5AD8EFF02E8AF91FF88E5AD8EFFDB9C7AFFD58356FDC46A3AF2864623B032
          2117540B0B0B1D03030307060000000086010101020505050D391F114F7C4121
          A1A15228CCB55E2FE502BF6A3DEE87B65F2FE6A35329D0804424AA4327196511
          11112B080808140202020408000000008D00000001030303070C09071722150E
          35372115534026196040271A623A24185B281A124314100E2A0A0A0A18040404
          0B010101020400000000}
      end
      item
        Image.Data = {
          200600005844424D02000402C607850000424DC6070000000000003600000028
          00000002160000008301002000000000009007000009000000008D0000000103
          0303070C09071722150E35372115534026196040271A623A24185B281A124314
          100E2A0A0A0A180404040B01010102080000000086010101020505050D391F11
          4F7C4121A1A15228CCB55E2FE502BF6A3DEE87B65F2FE6A35329D0804424AA43
          2719651111112B08080814020202040600000000870101010322130B307E4020
          A1C36939F0D58356FDDB9C7AFFE5AD8EFF02E8AF91FF88E5AD8EFFDB9C7AFFD5
          8356FDC46A3AF2864623B0322117540B0B0B1D03030307040000000086010101
          021F110A2B974E27BFD27A4AFFE19973FFE7AC8CFF06E8AD8DFF87E7AC8CFFE1
          9973FFD27A4AFF9D5229CA2F1F17510B0B0B1D02020204030000000084201109
          2A964D26BDD47D4DFDE2A07CFF03E6A582FF97E8AC8CFFF7E1D6FFFCF4F0FFF1
          CEBBFFE6A784FFE6A682FFE6A582FFE2A07CFFD47D4DFD9E5229CA3221175408
          080814010101020000000001010103793E1E99D67540FFE7986DFFE89C74FFE8
          9D74FFE89C74FFE9A078FFF7E1D5FF03FFFFFFFF81F0C6AEFF02E89D74FF8BE8
          9C74FFE7986DFFD67540FF864623B01111112B0404040B0000000030190C3EC5
          6531EEEB854DFFF1925EFF02F1925FFF82F19968FFF9DACAFF04FFFFFFFF8DFE
          FAF8FFF6C2A5FFF19461FFF1925FFFF1925EFFEB854DFFC66632F2432719650A
          0A0A1804020106743C1D92E07237FDFC8848FF02FC8849FF82FC8F53FFFDDAC7
          FF07FFFFFFFF82FDBB97FFFC8646FF02FC8848FF86E07237FD804424AA14100E
          2A160B051C9A4F26C1F47A37FF02FD8543FF82FD8849FFFFD5BEFF08FFFFFFFF
          8DFFF9F6FFFFB48BFFFF8543FFFF8442FFF57936FFA35329D0281A124329150A
          34B35B2CDEF68446FFF58C52FFF6935DFFFDD9C6FF02FFFFFFFF82FFFCFAFFFF
          E1D1FF03FFFFFFFF81FFDFCDFF03FFFFFFFF8AFFB993FFFF823DFFFC7F3CFFB7
          5D2DE63A24185B31190C3DC2612DE8ED8F5DFFE79B73FFEBAE8DFF03FFFFFFFF
          82F6C5AAFFF7B895FF03FFFFFFFF82FF9357FFFFD9C4FF02FFFFFFFF8FFFEFE7
          FFFF813CFFFD7F3BFFC5632FEE40271A6231190C3DC2612DE8E8976BFFE5AA8A
          FFE6A786FFF2BC9FFFF9DDCEFFF3C1A5FFE7AA8AFFEFCDBBFF03FFFFFFFF8CEC
          A27AFFF19461FFF9D3BFFFFCDAC8FFFF9155FFFF803BFFFD7F3AFFC5632FEE40
          26196029150A33B35B2BDDED9261FF02E7B59AFF85E9AF90FFEAAA88FFE9AF8F
          FFE7B59AFFF0D1C0FF03FFFFFFFF84E9B9A0FFE7B498FFE9A986FFF28E57FF02
          FF803BFF87FC7E39FFB75D2DE537211553150B051A994E25BFEC854DFFE9BBA3
          FF05EBC1AAFF81F3D8CAFF03FFFFFFFF8EEDC5AFFFEBC1AAFFEABEA7FFE7AC8B
          FFF7945EFFF88B50FFF17A39FFA15228CC22150E3504020105723A1C8FDB763F
          FDEDB393FFEECCB8FF04EFCCB9FF81F5DFD3FF03FFFFFFFF81F0CFBDFF03EFCC
          B9FF8CEECAB6FFE5B69BFFD77945FD7C4121A10C090717000000002E170B39C8
          6530EFE79061FFF0CEBBFFF2D7C8FFF2D7C9FF02F2D7C8FF81F7E6DDFF03FFFF
          FFFF82F3DACCFFF2D7C9FF02F2D7C8FF85F1D3C3FFE89D74FFC66632F0391F11
          4F030303070200000000847C3F1E98DE6F32FFEFA983FFF4DDD1FF03F6E2D7FF
          8DF4DED2FFFBF3EEFFFFFFFFFFF7E6DDFFF5E1D6FFF6E2D7FFF5E2D7FFF5E0D5
          FFECB79BFFD8733CFF7E4120A20505050D000000010200000000931D0E072396
          4B24B6DE763EFDEFAC86FFF5DED2FFF8EBE4FFF9ECE5FFF7E8E0FFF0CFBEFFED
          C6B2FFF2D8C9FFF8EBE4FFF9ECE5FFF6E4DAFFECBBA0FFD97B48FEAC592BD92B
          180D3C01010102040000000087190D061F964B24B6E06F32FFE99162FFF6C6AC
          FFF5E3D9FFFAF3EFFF02FBF5F2FF88FBF5F1FFF7E8E0FFF2D0BEFFEA9E75FFD9
          7138FFAA572AD6381F114D0202020406000000008F1D0E0723793D1D93C8642E
          EDDF763EFDEF8B56FFF79E6DFFEAB294FFE7B79DFFF3A57AFFF18F5AFFDA7945
          FDCA6632F4934B24B92D180D3D020202040900000000842F170B39753B1C8F9C
          4F25BFB45C2BDD02C2612DE885B35B2CDE9A4F26C1743C1D9230190C3E010101
          030C000000008304020105150B051A29150A330231190C3D8329150A34160B05
          1C040201060700000000}
      end
      item
        Image.Data = {
          E60500005844424D02000402C607850000424DC6070000000000003600000028
          00000002160000008301002000000000009007000009000000008D0000000103
          0303070C09071722150E35372115534026196040271A623A24185B281A124314
          100E2A0A0A0A180404040B01010102080000000086010101020505050D391F11
          4F7C4121A1A15228CCB55E2FE502BF6A3DEE87B65F2FE6A35329D0804424AA43
          2719651111112B08080814020202040600000000870101010322130B307E4020
          A1C36939F0D58356FDDB9C7AFFE5AD8EFF02E8AF91FF88E5AD8EFFDB9C7AFFD5
          8356FDC46A3AF2864623B0322117540B0B0B1D03030307040000000086010101
          021F110A2B974E27BFD27A4AFFE19973FFE7AC8CFF06E8AD8DFF87E7AC8CFFE1
          9973FFD27A4AFF9D5229CA2F1F17510B0B0B1D02020204030000000084201109
          2A964D26BDD47D4DFDE2A07CFF03E6A582FF84EAB599FFFBF3EFFFF0C9B4FFE6
          A582FF02E6A682FF91E6A582FFE2A07CFFD47D4DFD9E5229CA32211754080808
          14010101020000000001010103793E1E99D67540FFE7986DFFE89C74FFE89D74
          FFE89C74FFEDB192FFFCF2EDFF02FFFFFFFF82E89C74FFE89C73FF02E89D74FF
          8BE89C74FFE7986DFFD67540FF864623B01111112B0404040B0000000030190C
          3EC56531EEEB854DFFF1925EFF02F1925FFF82F3A67DFFFDF3EDFF02FFFFFFFF
          81FDF5F1FF02F2915DFF81F1925EFF02F1925FFF89F1925EFFEB854DFFC66632
          F2432719650A0A0A1804020106743C1D92E07237FDFC8848FF02FC8849FF82FC
          A270FFFEF2EBFF02FFFFFFFF82FFEADEFFFF975EFF02FF813CFF81FD8441FF02
          FC8646FF02FC8848FF86E07237FD804424AA14100E2A160B051C9A4F26C1F47A
          37FF02FD8543FF82FD9B65FFFEEFE7FF02FFFFFFFF82FFF9F6FFFF9C66FF05FF
          8848FF8CFF8745FFFF8440FFFF8442FFF57936FFA35329D0281A124329150A34
          B35B2CDEF68446FFF58C52FFF7A376FFFEF5F1FF0AFFFFFFFF8BFFF0E8FFFF98
          60FFFF823DFFFC7F3CFFB75D2DE63A24185B31190C3DC2612DE8ED8F5DFFE79B
          73FFF4D3C2FF0CFFFFFFFF8BFFC09DFFFF813CFFFD7F3BFFC5632FEE40271A62
          31190C3DC2612DE8E8976BFFE5AA8AFFEFCBB8FFFEFBFAFF0AFFFFFFFF89FEF7
          F3FFFFAB7EFFFF803BFFFD7F3AFFC5632FEE4026196029150A33B35B2BDDED92
          61FF02E7B59AFF81F1D6C6FF03FFFFFFFF81FEFCFBFF07E7B59AFF02FF803BFF
          8FFC7E39FFB75D2DE537211553150B051A994E25BFEC854DFFE9BBA3FFEBC1AA
          FFE7B59AFFF3DACCFFFEFCFBFFFFFFFFFFFEFEFEFFF8EBE3FFECC5B0FF03EBC1
          AAFF8FEABEA7FFE7AC8BFFF7945EFFF88B50FFF17A39FFA15228CC22150E3504
          020105723A1C8FDB763FFDEDB393FFEECCB8FFEFCCB9FFE7B59AFFF5E1D6FF03
          FFFFFFFF81FAEFE9FF05EFCCB9FF8FEECAB6FFE5B69BFFD77945FD7C4121A10C
          090717000000002E170B39C86530EFE79061FFF0CEBBFFF2D7C8FFF2D7C9FFE7
          B59AFFF7E8DFFFFEFDFCFF02FFFFFFFF02F2D7C8FF81F2D7C9FF02F2D7C8FF85
          F1D3C3FFE89D74FFC66632F0391F114F030303070200000000847C3F1E98DE6F
          32FFEFA983FFF4DDD1FF02F6E2D7FF8EE7B59AFFF9EDE7FFFFFFFFFFFBF4F1FF
          E7B59AFFF5E1D7FFF6E2D7FFF5E2D7FFF5E0D5FFECB79BFFD8733CFF7E4120A2
          0505050D000000010200000000871D0E0723964B24B6DE763EFDEFAC86FFF5DE
          D2FFF8EBE4FFF9ECE5FF03E7B59AFF03F9ECE5FF86F6E4DAFFECBBA0FFD97B48
          FEAC592BD92B180D3C01010102040000000087190D061F964B24B6E06F32FFE9
          9162FFF6C6ACFFF5E3D9FFFAF3EFFF02FBF5F2FF88FBF5F1FFF7E8E0FFF2D0BE
          FFEA9E75FFD97138FFAA572AD6381F114D0202020406000000008F1D0E072379
          3D1D93C8642EEDDF763EFDEF8B56FFF79E6DFFEAB294FFE7B79DFFF3A57AFFF1
          8F5AFFDA7945FDCA6632F4934B24B92D180D3D020202040900000000842F170B
          39753B1C8F9C4F25BFB45C2BDD02C2612DE885B35B2CDE9A4F26C1743C1D9230
          190C3E010101030C000000008304020105150B051A29150A330231190C3D8329
          150A34160B051C040201060700000000}
      end
      item
        Image.Data = {
          E90500005844424D02000402C607850000424DC6070000000000003600000028
          00000002160000008301002000000000009007000009000000008D0000000103
          0303070C09071722150E35372115534026196040271A623A24185B281A124314
          100E2A0A0A0A180404040B01010102080000000086010101020505050D391F11
          4F7C4121A1A15228CCB55E2FE502BF6A3DEE87B65F2FE6A35329D0804424AA43
          2719651111112B08080814020202040600000000870101010322130B307E4020
          A1C36939F0D58356FDDB9C7AFFE5AD8EFF02E8AF91FF88E5AD8EFFDB9C7AFFD5
          8356FDC46A3AF2864623B0322117540B0B0B1D03030307040000000086010101
          021F110A2B974E27BFD27A4AFFE19973FFE7AC8CFF06E8AD8DFF87E7AC8CFFE1
          9973FFD27A4AFF9D5229CA2F1F17510B0B0B1D02020204030000000084201109
          2A964D26BDD47D4DFDE2A07CFF04E6A582FF83E7AB89FFEAB599FFE6A683FF02
          E6A682FF8EE6A582FFE2A07CFFD47D4DFD9E5229CA3221175408080814010101
          020000000001010103793E1E99D67540FFE7986DFFE89C74FFE89D74FF02E89C
          74FF85E89D74FFF7DDCFFFFFFFFFFFF1C4ACFFE89C73FF02E89D74FF8BE89C74
          FFE7986DFFD67540FF864623B01111112B0404040B0000000030190C3EC56531
          EEEB854DFFF1925EFF03F1925FFF82F1915DFFF2915DFF02FFFFFFFF83FEF9F7
          FFF7C0A2FFF19360FF02F1925FFF89F1925EFFEB854DFFC66632F2432719650A
          0A0A1804020106743C1D92E07237FDFC8848FF04FC8849FF83FE8442FFFF823E
          FFFFD8C4FF03FFFFFFFF81FDB892FF02FC8646FF02FC8848FF86E07237FD8044
          24AA14100E2A160B051C9A4F26C1F47A37FF04FD8543FF02FF8542FF97FF8340
          FFFF8A4BFFFFD6C0FFFFFEFEFFFFFFFFFFFFF9F5FFFFB48BFFFF823EFFFF8440
          FFFF8442FFF57936FFA35329D0281A124329150A34B35B2CDEF68446FFF58C52
          FFF58B52FFF8AE86FFF9B692FFFDB28AFFFDB289FFFEB187FF02FFB085FF81FF
          FAF7FF03FFFFFFFF8CFFB993FFFF813CFFFF823DFFFC7F3CFFB75D2DE63A2418
          5B31190C3DC2612DE8ED8F5DFFE79B73FFEFBEA5FFFDF9F7FF0AFFFFFFFF8BFF
          FAF7FFFFB187FFFF813CFFFD7F3BFFC5632FEE40271A6231190C3DC2612DE8E8
          976BFFE5AA8AFFF2D5C5FF0CFFFFFFFF8BFFC7A8FFFF803BFFFD7F3AFFC5632F
          EE4026196029150A33B35B2BDDED9261FFE7B59AFFEBC2ADFFFCF6F3FF0AFFFF
          FFFF8CFDF6F1FFFF9A64FFFF803BFFFC7E39FFB75D2DE537211553150B051A99
          4E25BFEC854DFFE9BBA3FFEBC1AAFFECC4AEFF05ECC4AFFF82EFCEBCFFFEFCFB
          FF02FFFFFFFF8CFCF6F3FFEBBBA0FFF7945EFFF88B50FFF17A39FFA15228CC22
          150E3504020105723A1C8FDB763FFDEDB393FFEECCB8FF05EFCCB9FF82F1D5C5
          FFFCF6F3FF02FFFFFFFF8FFDF9F7FFEBBBA0FFEFCCB9FFEECAB6FFE5B69BFFD7
          7945FD7C4121A10C090717000000002E170B39C86530EFE79061FFF0CEBBFFF2
          D7C8FFF2D7C9FF03F2D7C8FF81FDFBFAFF02FFFFFFFF82FDFAF9FFEBBBA0FF02
          F2D7C8FF85F1D3C3FFE89D74FFC66632F0391F114F030303070200000000847C
          3F1E98DE6F32FFEFA983FFF4DDD1FF04F6E2D7FF02FFFFFFFF8AFDFBF9FFEBBB
          A0FFF6E2D7FFF5E2D7FFF5E0D5FFECB79BFFD8733CFF7E4120A20505050D0000
          00010200000000861D0E0723964B24B6DE763EFDEFAC86FFF5DED2FFF8EBE4FF
          02F9ECE5FF83FBF3EFFFFEFCFBFFEBBBA0FF02F9ECE5FF86F6E4DAFFECBBA0FF
          D97B48FEAC592BD92B180D3C01010102040000000087190D061F964B24B6E06F
          32FFE99162FFF6C6ACFFF5E3D9FFFAF3EFFF02FBF5F2FF88FBF5F1FFF7E8E0FF
          F2D0BEFFEA9E75FFD97138FFAA572AD6381F114D0202020406000000008F1D0E
          0723793D1D93C8642EEDDF763EFDEF8B56FFF79E6DFFEAB294FFE7B79DFFF3A5
          7AFFF18F5AFFDA7945FDCA6632F4934B24B92D180D3D02020204090000000084
          2F170B39753B1C8F9C4F25BFB45C2BDD02C2612DE885B35B2CDE9A4F26C1743C
          1D9230190C3E010101030C000000008304020105150B051A29150A330231190C
          3D8329150A34160B051C040201060700000000}
      end
      item
        Image.Data = {
          6C0600005844424D02000402C607850000424DC6070000000000003600000028
          0000000216000000830100200000000000900700000B00000000830402010616
          0B051C29150A340231190C3D8329150A33150B051A040201050C000000008501
          01010330190C3E743C1D929A4F26C1B35B2CDE02C2612DE884B45C2BDD9C4F25
          BF753B1C8F2F170B3909000000008F020202042D180D3D934B24B9CA6632F4DA
          7945FDF18F5AFFF3A57AFFE7B79DFFEAB294FFF79E6DFFEF8B56FFDF763EFDC8
          642EED793D1D931D0E072306000000008702020205381F114DAA572AD6D97138
          FFEA9E75FFF2D0BEFFF7E8E0FF02FBF5F1FF88FBF5F2FFFAF3EFFFF5E3D9FFF6
          C6ACFFE99162FFE06F32FF964B24B6190D061F040000000086010101032B180D
          3CAC592BD9D97B48FEECBBA0FFF6E4DAFF02F9ECE5FF8BF8EBE3FFF6E8E0FFF3
          E5DDFFF4E6DEFFF8ECE5FFF8EBE4FFF5DED2FFEFAC86FFDE763EFD964B24B61D
          0E0723020000000094000000010505050D7E4120A2D8733CFFECB79BFFF5E0D5
          FFF5E1D7FFF6E2D7FFF4DED2FFEED9CEFFE9D9D0FFECDED7FFE7D7CEFFE5D2C8
          FFEDD7CBFFF6E2D7FFF4DDD1FFEFA983FFDE6F32FF7C3F1E9802000000008503
          030307391F114FC66632F0E89D74FFF1D3C3FF03F2D7C9FF93F2D7C8FFFAF7F5
          FFFBFAF9FFFFFFFFFFFCFBFBFFF7F3F1FFEADED8FFEED6C8FFF2D7C9FFF0CEBB
          FFE79061FFC86530EF2E170B39000000000C0907177C4121A1D77945FDE5B69B
          FFEECAB6FF03EFCCB9FF82EFCFBDFFFEFEFDFF05FFFFFFFFA6EADED8FFE8C8B7
          FFEECCB8FFEDB393FFDB763FFD723A1C8F0402010522150E35A15228CCF17A39
          FFF88B50FFF79661FFE8B395FFECC2ACFFEBC1AAFFE9B9A0FFEECDBBFFEFCFBD
          FFEDC5B0FFF0D2C1FFFCF6F3FFFFFFFFFFFDFCFBFFE6CEC1FFE8BEA7FFE9BBA3
          FFEC854DFF994E25BF150B051A37211553B75D2DE5FC7E39FFFF803BFFFF9860
          FFFFFFFFFFFDF9F7FFF1D3C2FFE3B8A1FF04E7B59AFF8EE9BBA2FFFBF3EFFFFF
          FFFFFFEFE6E1FFE6B9A1FFE7B599FFED9261FFB35B2BDD29150A3340261960C5
          632FEEFD7F3AFFFF803BFFFF9860FF03FFFFFFFF83F3E9E4FFEFDBD0FFD7B5A3
          FF02E6AF92FF8FE6B094FFF5DED3FFFFFFFFFFFAF8F7FFE4AE90FFE5AA8AFFE8
          976BFFC2612DE831190C3D40271A62C5632FEEFD7F3BFFFF813CFFFF9860FFFE
          FDFDFF05FFFFFFFF91E3B79FFFF38D56FFF1915DFFF7D4C1FFFFFFFFFFFCFAF9
          FFE7A17CFFE79B72FFED8F5DFFC2612DE831190C3D3A24185BB75D2DE6FC7F3C
          FFFF823DFFFD945AFFFAF2EDFF05FFFFFFFF91EEB291FFFE833FFFFB925AFFFB
          E2D5FFFFFFFFFFF6E9E2FFF39968FFF58C52FFF68446FFB35B2CDE29150A3428
          1A1243A35329D0F57936FFFF8442FFFC9258FFF7E6DCFF04FFFFFFFF92F0E3DC
          FFF79966FFFD9F6CFFF8E6DCFFFFFEFEFFFEFDFCFFF1C4ACFFF9884AFFFD8543
          FFF47A37FF9A4F26C1160B051C14100E2A804424AAE07237FDFC8848FFF99158
          FFF4DACCFF05FFFFFFFF82F2EEEBFFFBFAF9FF02FFFFFFFF92FAE5D9FFF99964
          FFFC8849FFFC8848FFE07237FD743C1D92040201060A0A0A1843271965C66632
          F2EB854DFFEF9563FFF2CDB9FFFFFEFEFFFDF9F6FFFAE9E0FFFDF7F3FFFFFEFE
          FF02FFFFFFFF98FDF8F6FFF8E1D5FFF1A277FFF1925FFFF1925EFFEB854DFFC5
          6531EE30190C3E000000000404040B1111112B864623B0D67540FFE7986DFFEB
          B090FFF2CFBDFFECBCA2FFE8A17AFFECB99EFFF1CDB9FFF3D3C2FFF2D1BFFFED
          BEA4FFE8A27CFF02E89D74FF93E7986DFFD67540FF793E1E9901010103000000
          000101010208080814322117549E5229CAD47D4DFDE2A07CFFE6A683FFE6A581
          FFE6A682FFE6A582FFE6A682FFE6A784FFE6A683FFE6A682FF02E6A582FF84E2
          A07CFFD47D4DFD964D26BD2011092A030000000087020202040B0B0B1D2F1F17
          519D5229CAD27A4AFFE19973FFE7AC8CFF06E8AD8DFF86E7AC8CFFE19973FFD2
          7A4AFF974E27BF1F110A2B01010102040000000088030303070B0B0B1D322117
          54864623B0C46A3AF2D58356FDDB9C7AFFE5AD8EFF02E8AF91FF87E5AD8EFFDB
          9C7AFFD58356FDC36939F07E4120A222130B3001010103060000000087020202
          04090909171212122E43271965804424AAA35329D0B65F2FE602BF6A3DEE86B5
          5E2FE5A15228CC7C4121A1391F114F0505050D0101010208000000008D010101
          040505050F0B0B0B1F14100E2A281A12433A24185B40271A6241281A673C261A
          68241710410D0A081C03030307000000010500000000}
      end
      item
        Image.Data = {
          6C0600005844424D02000402C607850000424DC6070000000000003600000028
          0000000216000000830100200000000000900700000B00000000830402010515
          0B051A29150A330231190C3D8329150A34160B051C040201060D00000000842F
          170B39753B1C8F9C4F25BFB45C2BDD02C2612DE885B35B2CDE9A4F26C1743C1D
          9230190C3E0101010309000000008F1D0E0723793D1D93C8642EEDDF763EFDEF
          8B56FFF79E6DFFEAB294FFE7B79DFFF3A57AFFF18F5AFFDA7945FDCA6632F493
          4B24B92D180D3D02020204060000000088190D061F964B24B6E06F32FFE99162
          FFF6C6ACFFF5E3D9FFFAF3EFFFFBF5F2FF02FBF5F1FF87F7E8E0FFF2D0BEFFEA
          9E75FFD97138FFAA572AD6381F114D0202020504000000008B1D0E0723964B24
          B6DE763EFDEFAC86FFF5DED2FFF8EBE4FFF8ECE5FFF4E6DEFFF3E5DDFFF6E8E0
          FFF8EBE3FF02F9ECE5FF86F6E4DAFFECBBA0FFD97B48FEAC592BD92B180D3C01
          0101030300000000A27C3F1E98DE6F32FFEFA983FFF4DDD1FFF6E2D7FFEDD7CB
          FFE5D2C8FFE7D7CEFFECDED7FFE9D9D0FFEED9CEFFF4DED2FFF6E2D7FFF5E1D7
          FFF5E0D5FFECB79BFFD8733CFF7E4120A20505050D00000001000000002E170B
          39C86530EFE79061FFF0CEBBFFF2D7C9FFEED6C8FFEADED8FFF7F3F1FFFCFBFB
          FFFFFFFFFFFBFAF9FFFAF7F5FFF2D7C8FF03F2D7C9FF8CF1D3C3FFE89D74FFC6
          6632F0391F114F0303030704020105723A1C8FDB763FFDEDB393FFEECCB8FFE8
          C8B7FFEADED8FF05FFFFFFFF82FEFEFDFFEFCFBDFF03EFCCB9FFA4EECAB6FFE5
          B69BFFD77945FD7C4121A10C090717150B051A994E25BFEC854DFFE9BBA3FFE8
          BEA7FFE6CEC1FFFDFCFBFFFFFFFFFFFCF6F3FFF0D2C1FFEDC5B0FFEFCFBDFFEE
          CDBBFFE9B9A0FFEBC1AAFFECC2ACFFE8B395FFF79661FFF88B50FFF17A39FFA1
          5228CC22150E3529150A33B35B2BDDED9261FFE7B599FFE6B9A1FFEFE6E1FFFF
          FFFFFFFBF3EFFFE9BBA2FF04E7B59AFF92E3B8A1FFF1D3C2FFFDF9F7FFFFFFFF
          FFFF9860FFFF803BFFFC7E39FFB75D2DE53721155331190C3DC2612DE8E8976B
          FFE5AA8AFFE4AE90FFFAF8F7FFFFFFFFFFF5DED3FFE6B094FF02E6AF92FF83D7
          B5A3FFEFDBD0FFF3E9E4FF03FFFFFFFF90FF9860FFFF803BFFFD7F3AFFC5632F
          EE4026196031190C3DC2612DE8ED8F5DFFE79B72FFE7A17CFFFCFAF9FFFFFFFF
          FFF7D4C1FFF1915DFFF38D56FFE3B79FFF05FFFFFFFF91FEFDFDFFFF9860FFFF
          813CFFFD7F3BFFC5632FEE40271A6229150A34B35B2CDEF68446FFF58C52FFF3
          9968FFF6E9E2FFFFFFFFFFFBE2D5FFFB925AFFFE833FFFEEB291FF05FFFFFFFF
          92FAF2EDFFFD945AFFFF823DFFFC7F3CFFB75D2DE63A24185B160B051C9A4F26
          C1F47A37FFFD8543FFF9884AFFF1C4ACFFFEFDFCFFFFFEFEFFF8E6DCFFFD9F6C
          FFF79966FFF0E3DCFF04FFFFFFFF8DF7E6DCFFFC9258FFFF8442FFF57936FFA3
          5329D0281A124304020106743C1D92E07237FDFC8848FFFC8849FFF99964FFFA
          E5D9FF02FFFFFFFF82FBFAF9FFF2EEEBFF05FFFFFFFF8FF4DACCFFF99158FFFC
          8848FFE07237FD804424AA14100E2A0000000030190C3EC56531EEEB854DFFF1
          925EFFF1925FFFF1A277FFF8E1D5FFFDF8F6FF02FFFFFFFF90FFFEFEFFFDF7F3
          FFFAE9E0FFFDF9F6FFFFFEFEFFF2CDB9FFEF9563FFEB854DFFC66632F2432719
          650A0A0A180000000001010103793E1E99D67540FFE7986DFF02E89D74FF8FE8
          A27CFFEDBEA4FFF2D1BFFFF3D3C2FFF1CDB9FFECB99EFFE8A17AFFECBCA2FFF2
          CFBDFFEBB090FFE7986DFFD67540FF864623B01111112B0404040B0200000000
          842011092A964D26BDD47D4DFDE2A07CFF02E6A582FF8EE6A682FFE6A683FFE6
          A784FFE6A682FFE6A582FFE6A682FFE6A581FFE6A683FFE2A07CFFD47D4DFD9E
          5229CA322117540808081401010102020000000086010101021F110A2B974E27
          BFD27A4AFFE19973FFE7AC8CFF06E8AD8DFF87E7AC8CFFE19973FFD27A4AFF9D
          5229CA2F1F17510B0B0B1D020202040400000000870101010322130B307E4120
          A2C36939F0D58356FDDB9C7AFFE5AD8EFF02E8AF91FF88E5AD8EFFDB9C7AFFD5
          8356FDC46A3AF2864623B0322117540B0B0B1D03030307060000000086010101
          020505050D391F114F7C4121A1A15228CCB55E2FE502BF6A3DEE87B65F2FE6A3
          5329D0804424AA432719651212122E090909170202020408000000008D000000
          01030303070D0A081C241710413C261A6841281A6740271A623A24185B281A12
          4314100E2A0B0B0B1F0505050F010101040400000000}
      end
      item
        Image.Data = {
          CE0500005844424D02000402C607850000424DC6070000000000003600000028
          00000002160000008301002000000000009007000030000000008ED47F35FFD7
          9157FFD48C54FFD18851FFCE834EFFCA7E4BFFC77A48FFC47545FFC17142FFBE
          6C40FFBB683DFFB8633AFFB55F37FFB25A34FF07B05732FF99A73B0CFFDE9A5E
          FFFBFAFAFFFAF9F9FFF9F6F7FFF7F4F5FFF6F2F2FFF5F0F1FFF3EEEFFFF2ECED
          FFF1EAEBFFEFE8E9FFEEE6E7FFEDE4E4FFEBE2E3FFEAE0E1FFE9DFDFFFE8DDDE
          FFE7DCDCFFE6DBDBFFE6D9DAFFE0D3D4FFB05732FFDF9D60FFFFFFFFFF031A45
          F6FF931D4AF6FFFBF8F8FFFAF6F6FFF9F4F4FFF8F3F3FFF7F1F1FFF5EFEFFFF4
          EEEEFFF3ECECFFF2EAEAFFF1E8E8FF1B4BF5FF123AF4FF0C2CF3FF0822F3FFE6
          D9DAFFB05732FFE19F61FFFFFFFFFF031A45F6FF93FDFBFBFFFCFAFAFFFBF8F8
          FFFAF6F6FFF9F4F4FFF7F3F3FFF7F1F1FFF5EFEFFFF4EEEEFFF3ECECFFF2EAEA
          FFF1E8E8FF1D4CF5FF143DF4FF0D2FF3FFE6DBDBFFB05732FFE1A062FFFFFFFF
          FF021A45F6FFA92659F6FF3D73F7FFFDFBFBFFFCFAFAFFFBF8F8FFFAF6F6FFF9
          F4F4FFF7F3F3FFF6F1F1FFF5EFEFFFF4EEEEFFF3ECECFF3C74F7FF2C61F5FF1F
          50F5FF153FF4FFE7DCDCFFB05732FFE2A262FFFFFFFFFF1A45F6FFFFFFFFFF38
          6EF7FF548BF8FF75A7F9FFFDFBFBFFFCFAFAFFFBF8F8FFFAF6F6FFF9F4F4FFF7
          F3F3FFF6F1F1FFF5EFEFFF699EF9FF528AF8FF3F77F7FFF1E8E8FF2153F5FFE8
          DDDEFFB05732FFE3A363FF04FFFFFFFF926DA1F9FFFFFFFFFFFEFDFDFFFDFBFB
          FFFCF9F9FFFBF8F8FFFAF6F6FFF8F4F4FFF7F3F3FFF6F1F1FFF5EFEFFF6CA1F9
          FFF3ECECFFF2EAEAFFF1E8E8FFE9DFDFFFB05732FFE4A564FF07FFFFFFFF8FFE
          FDFDFFFDFBFBFFFCF9F9FFFBF8F8FFFAF6F6FFF8F4F4FFF7F3F3FFF6F1F1FFF5
          EFEFFFF4EDEDFFF3ECECFFF2EAEAFFEAE1E1FFB05833FFE5A665FF08FFFFFFFF
          8EFEFDFDFFFDFBFBFFFCF9F9FFFBF8F8FFF9F6F6FFF8F4F4FFF7F3F3FFF6F1F1
          FFF5EFEFFFF4EDEDFFF3ECECFFECE3E3FFB15833FFE6A766FF04FFFFFFFF816F
          A2F9FF04FFFFFFFF93FEFDFDFFFDFBFBFFFCF9F9FFFBF8F8FFF9F6F6FFF8F4F4
          FF95BFFBFFF6F1F1FFF5EFEFFFF4EDEDFFEDE5E5FFB25934FFE7A967FFFFFFFF
          FF2A5DF7FFFFFFFFFF457DF7FF558CF8FF679DF9FF03FFFFFFFF92FFFEFEFFFE
          FDFDFFFDFBFBFFFBF9F9FFFBF8F8FF9DC5FBFF73A6F9FF4C85F8FFF6F1F1FF19
          46F5FFEEE7E7FFB25A35FFE8AA68FFFFFFFFFF1D4AF6FF2658F6FF3167F7FF3F
          76F7FF05FFFFFFFF8DFFFEFEFFFEFDFDFFFDFBFBFFFBF9F9FFFAF7F7FF538BF9
          FF336BF7FF1C4CF5FF0E32F3FFF0E9E9FFB35B36FFE9AC69FFFFFFFFFF021A45
          F6FF812352F6FF07FFFFFFFF8CFFFEFEFFFEFDFDFFFDFBFBFFFBF9F9FFFAF7F7
          FF2052F5FF1037F4FF0822F3FFF2EBECFFB45C37FFEAAE69FFFFFFFFFF031A45
          F6FF811F4CF6FF07FFFFFFFF8AFFFEFEFFFEFDFDFFFCFBFBFF2458F5FF123BF4
          FF0926F3FF0822F3FFF3EDEEFFB45D38FFEBAF6AFF0DFFFFFFFFAFFFFEFEFFFE
          FDFDFFFCFBFBFFFBF9F9FFFAF7F7FFF9F6F6FFF4EFF0FFB55E38FFEBA85BFFFF
          E1BFFFFFDEBCFFFFDBB9FFFFD7B5FFFFD4B1FFFFD0AEFFFFCCAAFFFFC8A6FFFF
          C4A2FFFFC09DFFFFBC99FFFFB895FFFFB390FFFFAF8CFFFFAA87FFFEA582FFFE
          A27FFFFDA17EFFFDA07DFFF59A7AFFB3481DFFECA34DFFFFC884FFFFC27EFFFF
          BB77FFFFB470FFFFAD68FFFFA560FFFF9D58FFFF9550FFFF8D48FFFF843FFFFF
          7B36FFFF732DFFFF6A24FFFF611CFFFF5813FFFF4F0AFF03FF4903FF94F64303
          FFB13201FFE89D44FFFFCF8BFFFFC984FFFFC17DFFFFBA75FFFFB26DFFFFAA65
          FFFFA15DFFFF9954FFFF904BFFFF8742FFFF7F39FFFF7630FFFF6D27FFFF641E
          FFFF5B15FFFF520CFFFF4A04FF02FF4903FF98F14003FFAB3200FF8F5D249FE8
          9D44FFEAA04BFFE79B47FFE59543FFE28F3FFFE0893AFFDD8336FFDB7D32FFD8
          772DFFD67129FFD36B24FFD16520FFCE5F1BFFCC5917FFC95312FFC74D0EFFC4
          470AFFC24207FFBF3F05FFB23802FF661F009F1600000000}
      end
      item
        Image.Data = {
          040600005844424D02000402C607850000424DC6070000000000003600000028
          0000000216000000830100200000000000900700001000000000830101080C13
          13333F04041016030000000083050511181313303E0000060A0C000000008B00
          00080C2020647B5252D6EA2A2A7E9802020B0F0000000002020C12353583A079
          79D5E91F1F58730101060A040000000092010000010D0400163A1200626F2A09
          B1893B14D46F2704B7150700240D0D323E3D3DD1E94343EFFF4747EAFC2F2480
          BA5F2323C4423388CB9898F6FCCDCDFEFF6A6ACDE60D0D2C3C04000000009215
          070024662303A7B1561BF4DE9A52FFE7BB7AFF8C3E13D81B08002F0202101619
          197D983030E3FC2D2DE5FF3331DCFF4336BCFF7977EEFFB6B6FEFF8D8DEFFB23
          23709003030D140300000000920803000E6C2706B0C9712CFCF7AA50FFFFC979
          FFF8D894FF8E4117D71B08002E0000000001010B0F10107E9F1817D5F91A1ADB
          FF5656EFFF9191FCFF6D6BE4FA1D1C74980101080D030000000089020100033A
          110064B3642FF4F9A74BFFFFAD50FFFBC475FFE3B372FF893A0FD81C08002F02
          0000000087070320370F09B0E80D0DD7FF5F5FF3FF8080F8FF271CABEE0F061B
          3F0400000000930B040012672304ACDF9E5AFEFFA340FFFAA94EFFC37234FA85
          340FD35E20019B1206001E0000000002010C12120D83B30705D5FD0606DCFF4C
          4CEFFF9191FDFF6F6DE7FE2D217ABC0302091003000000008713060021813D19
          C9F4B567FFFFA03CFFE48C3AFE722603BE1406002202000000008B0303111812
          1281A10909E3FC0000E6FF1714DBFF4838B8FF6F6CECFFB5B5FEFF8989F0FC23
          21739C04040E1602000000008715060024894723CFF5B869FFFFA23DFFD98032
          FD5A1C009A0702000B0200000000EE0C0B2F401B1ACFED0303EFFF1817EAFF7D
          5890FFDA8C4FFF84659BFF8887F5FFC9C9FEFF5956C9EC0F0C28400803000E0E
          040017200900378B4623D2F5B869FFFFA23DFFD98031FD5D1C00A0130600200D
          04001604010006220B06436A4872E43B37DBFF8A6FA1FFF4A24FFFFFA13FFFF2
          AB5DFF8F79A6FF716EDBFF7D5B77F13412065C5E21029B762B05BF782904C6A1
          4F26F3F6B96AFFFFA23FFFDB8133FF892E03E5752904C0742B06BC3713015B5C
          250A92C9986AFCC5A38EFFE2AA70FFFBAC57FFFFA950FFFDBC6FFFE2B584FFC6
          AB9FFFD7B18BFF803715C7843D19CBE2BF96FFF5D49EFFF6C481FFFEBA6AFFFF
          A84EFFFBAE59FFF4BC72FFF4D18FFFC58E5BF9491B05783813015C6A2604AE6D
          2502B3892E02E4E28734FFFFA23EFFF2B468FF963E14ED6F2501B76B2603B04E
          1B02813B140361B97B51F1FDDFA0FFFFC879FFFFB157FFFFA03DFFFFAD50FFFF
          C979FFF4D18EFF89421CCF1907002B030100050A0300101206001E672100AEE2
          8733FFFFA23FFFF2B468FF7E3713C71A08002C0A030011040100070C04001569
          2506ABE6B379FEFFCB7DFFFFB157FFFFA03DFFFFAC50FFFCC777FFC27E45F739
          110062010000020200000000870A030010652100ABE28734FFFFA23EFFF2B469
          FF7C3612C41205001E030000000089250B0040AF5E2CF0F8C075FFFFB258FFFF
          A03DFFFFAD51FFE8A75CFF823810C70803000E02000000008802010004210A00
          38823008D1ED953DFFFFA23EFFEDAF65FF742E0ABC0F05001A03000000008802
          0100046325079ED88E4CFDFEB35AFFFFA03DFFF9AA4EFFB26128EE3110015202
          000000008917080027692403AE924016E1D0803EFCFCA94BFFFFA745FFD69554
          FD5A1C019A0702000C0400000000871E09003397491CDAF5AD5CFFFFA23FFFE0
          8837FD632405A20A03001102000000008920090037944517E2EBC27FFFFDC473
          FFFFAB4DFFF3A44BFFA65423EF2B0D004A01000001040000000087050200084A
          17027ECD864AF8F7A346FFA44B12E6220A003A01000001020000000088200900
          37984C20E1FADA95FFFEC473FFF3A34BFFBB6224F9591F039404010007060000
          0000850F05001A8A411ACFC67638FE5920048E01000001030000000087200900
          3796461AE2E2B473FFD58843FFA04812E8541B018D0C04001408000000008339
          14025E6E2908B31909002904000000008618080029722804BB803510C9602305
          9C2B0D00490803000E3100000000}
      end
      item
        Image.Data = {
          B80600005844424D02000402C607850000424DC6070000000000003600000028
          0000000216000000830100200000000000900700000B00000000880201000207
          0402090E070311150B051A140A0519130905170905020B020100020C00000000
          8C020100020A05020C381D0E466C371A8583421FA09A4D25BB924A23B1934A23
          B36E371A8645231054140A05180201010309000000008E0A05030D3A1D0E4887
          4421A6C36432EADA753EFAE2834FFDEA8B58FFE79061FEE98652FEDE7842FBCC
          6932EDA35227C34F281361160B051B07000000009007040209582D166EAA572A
          CFDF753BFAE79568FFEBB08FFFEDC3ADFFF2CEBBFFF3D7C8FFF3D5C4FFF3C6AE
          FFEEAA85FFE7824BFDBF612DE2773C1D92160B051B0500000000920C06030F5B
          2E1671BD6131DFE2834FFDEAA27AFFE9B9A0FFECC5AFFFEFCDBBFFF1D5C5FFF4
          DDD1FFF6E4DAFFF8EBE3FFF7E9E1FFF7D8C8FFEA9B70FECC6F3DEF7C3F1E991A
          0D06210300000000940201010343221155B05A2CD6E5814BFDE79D76FFE5AC8D
          FFE7B59BFFEABDA5FFECC6B1FFEECDBAFFF2D6C6FFF4DCCFFFF5E3DAFFF8EBE4
          FFF9EFEAFFF6E7DFFFE3A888FEC56A39ED673519810905020C0200000000A110
          080415924A23B3E57436FBF38B52FFE89A71FFE6AD8DFFEDC7B2FFEDC8B4FFF1
          D4C4FFEFCFBEFFF2D9CAFFF2D7C8FFF3D9CBFFF5DFD3FFF1D6C7FFF7EAE3FFF7
          E3D9FFEC905FFEB45C2CDA2A160B3602010103050201064A26125DD06831F4F7
          7E3CFFFA8647FFF39663FFF7DBCCFFFFFEFEFFFEFDFDFFFFFFFFFFFEFDFDFFFF
          FFFFFF02FFFEFEFF8FFFFFFFFFF9EDE7FFF4DFD3FFFAF0EBFFF3CBB5FFDC7D49
          FC733A1C900D0703110E0804137B3F1E9BE1763CFCFB8647FFFD8544FFFB935B
          FFFEEBE1FF07FFFFFFFF8FFFFFFEFFFAF2EEFFF5E1D6FFF8ECE5FFF5E2D6FFE5
          956BFEA65428CD25130A301E1008279A4F27C0E68450FEF58E55FFFC8749FFFE
          9257FFFEEADFFF04FFFFFFFF92FCF6F3FFF8E8E0FFF7E8E0FFF7E8DFFFF3DBCE
          FFF4DDD0FFF6E4DAFFF7E9E1FFEEB697FFC56431EF502A156828150B35AC5B2E
          D6E69163FFEE9464FFF68D54FFFC9761FFFFEEE6FF04FFFFFFFF92FCF7F5FFF2
          D5C6FFECC3ADFFECC7B2FFEFCEBCFFF2D6C7FFF4DDD1FFF6E4DBFFEEC2AAFFCE
          6D3AF75F311A7B2D180D3CAA5A2FD4E0966EFFE79D74FFED9565FFF59763FFFD
          E9DEFF02FFFFFFFF81FFFEFEFF02FFFFFFFF95FEFCFAFFF1D4C5FFEBC0AAFFEC
          C5B0FFEECDBBFFF1D5C5FFF4DCCFFFEEC4AEFFCF6E39F86D391D8E28160C36AB
          5B30D6DF9B77FFE5A27EFFE89C72FFEFA47CFFFDF0EAFFFFFFFFFFFFF3EDFFFF
          D1B8FFFFFCFAFF02FFFFFFFF95FCF6F3FFF0D0BFFFEABFA7FFECC5B0FFEFCDBB
          FFF1D6C7FFECB99EFFCE6E39F85D31197A1C100929914B25B9DC9069FEE6A887
          FFE6A27EFFE9A581FFFBEDE5FFFFFFFFFFFFF6F2FFFF955BFFFFC5A5FFFFFCFB
          FF02FFFFFFFF95FDF9F7FFEFCCB9FFE8A885FFEEB698FFEDC8B3FFE8A885FFB4
          5B2CDE391E104D0F0A0618743D1F97D38155FBE5A888FFE7A886FFE9AF90FFFB
          F1ECFFFFFFFFFFFFEFE6FFFF8643FFFF8746FFFFCFB5FFFFFCFAFF02FFFFFFFF
          C9FDF0E9FFF9A475FFFA8A4EFFEBA47DFFDC8B60FE9A4E26C020130B2F040403
          093E221356BE6B3FEADE9E7CFFE7AC8DFFE9B294FFFBF0E9FFFEFCFBFFFBE5D9
          FFF98E53FFFE823DFFFF8C4DFFFFC7A9FFFFFBF9FFFFFFFFFFFFF5F0FFFFA675
          FFFF803BFFF77F3EFFD66E36F866361C860C08061501010103120C081F834524
          A9CE8158F7E6AD8EFFE9AF91FFF0C8B3FFF0CBB8FFECAE8CFFEE9463FFF78A4E
          FFFD8443FFFF8847FFFFCAADFFFFE9DEFFFFCEB4FFFF8D4EFFFE7F3AFFE77335
          FDA45428CD28170D3B0303020700000000040403093B221455A1562FCCD68F68
          FAE7AE8FFFE8AE8FFFE7A987FFE6A37FFFE89C72FFED9565FFF68D53FFFC8545
          FFFF894AFFFF9257FFFF8949FFFE7F3BFFED7637FDBC5F2EE45B311B7B090706
          12000000010200000000920907061242261861A65C35D2D4885FFAE2A889FFE6
          AB8CFFE7A887FFE5A27EFFE79D74FFEE9564FFF58E56FFFC8747FFFE8442FFFB
          7F3CFFE87437FDBF612EE662351E85120D0A20040000000092000000010A0807
          144629196798512BC3C97A4FF5DB926CFEE3A17EFFE5A582FFE4A17CFFE8996F
          FFED9261FFF3874DFFF07D3FFEDE6F33FAAB572BD662361D86120D0B22010101
          0206000000008E080706112819114163361D88A1552CCEC06A3AECCB7749F6D3
          8052FDD27B4BFAD57744FCC66632EEAB582CD6784022A1382014540D0B091B08
          000000008E000000010605050D120F0D26311F1650512F1D766A391F917C4324
          A6794123A2743F219E58311D7E37231858191310310907071301010102040000
          0000}
      end
      item
        Image.Data = {
          B60600005844424D02000402C607850000424DC6070000000000003600000028
          00000002160000008301002000000000009007000008000000008E0101010209
          070713191310313723185858311D7E743F219E794123A27C4324A66A391F9151
          2F1D76311F1650120F0D260605050D0000000108000000008E0D0B091B382014
          54784022A1AB582CD6C66632EED57744FCD27B4BFAD38052FDCB7749F6C06A3A
          ECA1552CCE63361D88281911410807061106000000009201010102120D0B2262
          361D86AB572BD6DE6F33FAF07D3FFEF3874DFFED9261FFE8996FFFE4A17CFFE5
          A582FFE3A17EFFDB926CFEC97A4FF598512BC3462919670A0807140000000104
          0000000092120D0A2062351E85BF612EE6E87437FDFB7F3CFFFE8442FFFC8747
          FFF58E56FFEE9564FFE79D74FFE5A27EFFE7A887FFE6AB8CFFE2A889FFD4885F
          FAA65C35D242261861090706120200000000C900000001090706125B311B7BBC
          5F2EE4ED7637FDFE7F3BFFFF8949FFFF9257FFFF894AFFFC8545FFF68D53FFED
          9565FFE89C72FFE6A37FFFE7A987FFE8AE8FFFE7AE8FFFD68F68FAA1562FCC3B
          22145504040309000000000303020728170D3BA45428CDE77335FDFE7F3AFFFF
          8D4EFFFFCEB4FFFFE9DEFFFFCAADFFFF8847FFFD8443FFF78A4EFFEE9463FFEC
          AE8CFFF0CBB8FFF0C8B3FFE9AF91FFE6AD8EFFCE8158F7834524A9120C081F01
          0101030C08061566361C86D66E36F8F77F3EFFFF803BFFFFA675FFFFF5F0FFFF
          FFFFFFFFFBF9FFFFC7A9FFFF8C4DFFFE823DFFF98E53FFFBE5D9FFFEFCFBFFFB
          F0E9FFE9B294FFE7AC8DFFDE9E7CFFBE6B3FEA3E2213560404030920130B2F9A
          4E26C0DC8B60FEEBA47DFFFA8A4EFFF9A475FFFDF0E9FF02FFFFFFFF95FFFCFA
          FFFFCFB5FFFF8746FFFF8643FFFFEFE6FFFFFFFFFFFBF1ECFFE9AF90FFE7A886
          FFE5A888FFD38155FB743D1F970F0A0618391E104DB45B2CDEE8A885FFEDC8B3
          FFEEB698FFE8A885FFEFCCB9FFFDF9F7FF02FFFFFFFF95FFFCFBFFFFC5A5FFFF
          955BFFFFF6F2FFFFFFFFFFFBEDE5FFE9A581FFE6A27EFFE6A887FFDC9069FE91
          4B25B91C1009295D31197ACE6E39F8ECB99EFFF1D6C7FFEFCDBBFFECC5B0FFEA
          BFA7FFF0D0BFFFFCF6F3FF02FFFFFFFF95FFFCFAFFFFD1B8FFFFF3EDFFFFFFFF
          FFFDF0EAFFEFA47CFFE89C72FFE5A27EFFDF9B77FFAB5B30D628160C366D391D
          8ECF6E39F8EEC4AEFFF4DCCFFFF1D5C5FFEECDBBFFECC5B0FFEBC0AAFFF1D4C5
          FFFEFCFAFF02FFFFFFFF81FFFEFEFF02FFFFFFFF92FDE9DEFFF59763FFED9565
          FFE79D74FFE0966EFFAA5A2FD42D180D3C5F311A7BCE6D3AF7EEC2AAFFF6E4DB
          FFF4DDD1FFF2D6C7FFEFCEBCFFECC7B2FFECC3ADFFF2D5C6FFFCF7F5FF04FFFF
          FFFF8FFFEEE6FFFC9861FFF68D54FFEE9464FFE69163FFAC5B2ED628150B3550
          2A1568C56431EFEEB697FFF7E9E1FFF6E4DAFFF4DDD0FFF3DBCEFFF7E8DFFF02
          F8E8E0FF81FCF6F3FF04FFFFFFFF8FFEEADFFFFE9257FFFC8749FFF58E55FFE6
          8450FE9A4F27C01E10082725130A30A65428CDE5956BFEF5E2D6FFF8ECE5FFF5
          E1D6FFFAF2EEFFFFFFFEFF07FFFFFFFF8FFEEBE1FFFB935BFFFD8544FFFB8647
          FFE1763CFC7B3F1E9B0E0804130D070311733A1C90DC7D49FCF3CBB5FFFAF0EB
          FFF4DFD3FFF9EDE7FFFFFFFFFF02FFFEFEFFA1FFFFFFFFFEFDFDFFFFFFFFFFFE
          FDFDFFFFFEFEFFF7DBCCFFF39663FFFA8647FFF77E3CFFD06831F44A26125D05
          020106020101032A160B36B45C2CDAEC905FFEF7E3D9FFF7EAE3FFF1D6C7FFF4
          DFD3FFF3D9CBFFF2D7C8FFF2D9CAFFEFCFBEFFF1D4C4FFEDC8B4FFEDC7B2FFE6
          AD8DFFE89A71FFF38B52FFE57436FB924A23B310080415020000000094090502
          0C67351981C56A39EDE3A888FEF6E7DFFFF9EFEAFFF8EBE4FFF5E3DAFFF4DCCF
          FFF2D6C6FFEECDBAFFECC6B1FFEABDA5FFE7B59BFFE5AC8DFFE79D76FFE5814B
          FDB05A2CD643221155020101030300000000921A0D06217C3F1E99CC6F3DEFEA
          9B70FEF7D8C8FFF7E9E1FFF8EBE3FFF6E4DAFFF4DDD1FFF1D5C5FFEFCDBBFFEC
          C5AFFFE9B9A0FFEAA27AFFE2834FFDBD6131DF5B2E16710C06030F0500000000
          90160B051B773C1D92BF612DE2E7824BFDEEAA85FFF3C6AEFFF3D5C4FFF3D7C8
          FFF2CEBBFFEDC3ADFFEBB08FFFE79568FFDF753BFAAA572ACF582D166E070402
          0907000000008E160B051B4F281361A35227C3CC6932EDDE7842FBE98652FEE7
          9061FEEA8B58FFE2834FFDDA753EFAC36432EA874421A63A1D0E480A05030D09
          000000008C02010103140A0518452310546E371A86934A23B3924A23B19A4D25
          BB83421FA06C371A85381D0E460A05020C020100020C00000000880201000209
          05020B13090517140A0519150B051A0E07031107040209020100020700000000}
      end>
  end
  object FMaterials: TGLMaterialLibrary
    Materials = <
      item
        Name = 'SelectRoom'
        Tag = 0
        Material.BackProperties.Diffuse.Color = {000000000000803F000000000000003F}
        Material.FrontProperties.Diffuse.Color = {000000000000803F000000000000003F}
        Material.BlendingMode = bmTransparency
      end
      item
        Name = 'ActiveRoom'
        Tag = 0
        Material.FrontProperties.Diffuse.Color = {00000000BFBEBE3E0000803F0000003F}
        Material.BlendingMode = bmTransparency
      end
      item
        Name = 'InactiveRoom'
        Tag = 0
        Material.FrontProperties.Diffuse.Color = {0000000000000000000000000000803F}
      end>
    Left = 325
  end
  object FCadencer: TGLCadencer
    Scene = FScene
    Enabled = False
    Left = 355
  end
  object FSounds: TGLSoundLibrary
    Samples = <>
    Left = 385
  end
  object od: TRzOpenDialog
    FrameVisible = True
    HotTrack = True
    Options = [osoFileMustExist, osoHideReadOnly, osoPathMustExist, osoAllowTree, osoShowTree, osoShowHints, osoOleDrag, osoOleDrop]
    Filter = '*.*|*.*'
    Left = 415
  end
  object cxGridViewRepository: TcxGridViewRepository
    Left = 710
    object tvModels: TcxGridBandedTableView
      OnEditValueChanged = tvModelsEditValueChanged
      OnFocusedItemChanged = tvModelsFocusedItemChanged
      OnFocusedRecordChanged = tvModelsFocusedRecordChanged
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.ShowEditButtons = gsebAlways
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      Bands = <
        item
          Caption = #1052#1086#1076#1077#1083#1100
          Width = 228
        end
        item
          Caption = #1052#1072#1089#1096#1090#1072#1073' (Scale)'
          Width = 40
        end
        item
          Caption = #1053#1072#1087#1088#1072#1074#1083#1077#1085#1080#1077' (Direction)'
          Width = 40
        end
        item
          Caption = #1042#1077#1088#1093' (Up)'
          Width = 40
        end
        item
          Caption = #1057#1084#1077#1097#1077#1085#1080#1077
          Width = 40
        end>
      object clmnID: TcxGridBandedColumn
        Caption = #8470
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Visible = False
        MinWidth = 40
        Options.Filtering = False
        Options.HorzSizing = False
        Width = 40
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object clmnModel: TcxGridBandedColumn
        Caption = #1052#1086#1076#1077#1083#1100
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.OnValidate = clmnModelPropertiesValidate
        Width = 45
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object clmnFile: TcxGridBandedColumn
        Caption = #1060#1072#1081#1083
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Buttons = <
          item
            Caption = #1054#1090#1082#1088'.'
            Default = True
            Kind = bkEllipsis
          end>
        Properties.OnButtonClick = clmnFilePropertiesButtonClick
        Width = 32
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 1
      end
      object clmnMaterial: TcxGridBandedColumn
        Caption = #1052#1072#1090#1077#1088#1080#1072#1083
        PropertiesClassName = 'TcxComboBoxProperties'
        Properties.DropDownListStyle = lsEditFixedList
        Properties.DropDownRows = 10
        Properties.DropDownSizeable = True
        Properties.ImmediatePost = True
        Properties.OnChange = clmnMaterialPropertiesChange
        Width = 56
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 2
      end
      object clmnScaleX: TcxGridBandedColumn
        Caption = 'X'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0.00'
        HeaderAlignmentHorz = taCenter
        Options.Filtering = False
        Options.Sorting = False
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object clmnScaleY: TcxGridBandedColumn
        Caption = 'Y'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0.00'
        HeaderAlignmentHorz = taCenter
        Options.Filtering = False
        Options.Sorting = False
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 1
      end
      object clmnScaleZ: TcxGridBandedColumn
        Caption = 'Z'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0.00'
        HeaderAlignmentHorz = taCenter
        Options.Filtering = False
        Options.Sorting = False
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 2
      end
      object clmnDirectionX: TcxGridBandedColumn
        Caption = 'X'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0.00'
        HeaderAlignmentHorz = taCenter
        Options.Filtering = False
        Options.Sorting = False
        Position.BandIndex = 2
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object clmnDirectionY: TcxGridBandedColumn
        Caption = 'Y'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0.00'
        HeaderAlignmentHorz = taCenter
        Options.Filtering = False
        Options.Sorting = False
        Position.BandIndex = 2
        Position.ColIndex = 0
        Position.RowIndex = 1
      end
      object clmnDirectionZ: TcxGridBandedColumn
        Caption = 'Z'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0.00'
        HeaderAlignmentHorz = taCenter
        Options.Filtering = False
        Options.Sorting = False
        Position.BandIndex = 2
        Position.ColIndex = 0
        Position.RowIndex = 2
      end
      object clmnUpX: TcxGridBandedColumn
        Caption = 'X'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0.00'
        HeaderAlignmentHorz = taCenter
        Options.Filtering = False
        Options.Sorting = False
        Position.BandIndex = 3
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object clmnUpY: TcxGridBandedColumn
        Caption = 'Y'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0.00'
        HeaderAlignmentHorz = taCenter
        Options.Filtering = False
        Options.Sorting = False
        Position.BandIndex = 3
        Position.ColIndex = 0
        Position.RowIndex = 1
      end
      object clmnUpZ: TcxGridBandedColumn
        Caption = 'Z'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0.00'
        HeaderAlignmentHorz = taCenter
        Options.Filtering = False
        Options.Sorting = False
        Position.BandIndex = 3
        Position.ColIndex = 0
        Position.RowIndex = 2
      end
      object clmnBiasX: TcxGridBandedColumn
        Caption = 'DX'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0.00'
        HeaderAlignmentHorz = taCenter
        Options.Filtering = False
        Options.Sorting = False
        Position.BandIndex = 4
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object clmnBiasY: TcxGridBandedColumn
        Caption = 'DY'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0.00'
        HeaderAlignmentHorz = taCenter
        Options.Filtering = False
        Options.Sorting = False
        Position.BandIndex = 4
        Position.ColIndex = 0
        Position.RowIndex = 1
      end
      object clmnBiasZ: TcxGridBandedColumn
        Caption = 'DZ'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0.00'
        HeaderAlignmentHorz = taCenter
        Options.Filtering = False
        Options.Sorting = False
        Position.BandIndex = 4
        Position.ColIndex = 0
        Position.RowIndex = 2
      end
    end
    object tvMenuItems: TcxGridBandedTableView
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnFiltering = False
      OptionsCustomize.ColumnMoving = False
      OptionsCustomize.ColumnSorting = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsView.ShowEditButtons = gsebAlways
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      OptionsView.IndicatorWidth = 10
      Bands = <
        item
          Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099' '#1087#1091#1085#1082#1090#1086#1074' '#1084#1077#1085#1102
          Width = 381
        end>
      object clmnName: TcxGridBandedColumn
        Caption = #1053#1072#1079#1074#1072#1085#1080#1077
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object clmnFilePic: TcxGridBandedColumn
        Caption = #1060#1072#1081#1083' '#1082#1072#1088#1090#1080#1085#1082#1080
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.OnButtonClick = clmnFilePicPropertiesButtonClick
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 1
      end
      object clmnAnimateMenuItem: TcxGridBandedColumn
        Caption = #1040#1085#1080#1084#1080#1088#1086#1074#1072#1090#1100
        PropertiesClassName = 'TcxCheckBoxProperties'
        Width = 30
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 2
      end
      object clmnCountFrames: TcxGridBandedColumn
        Caption = #1050#1086#1083'-'#1074#1086' '#1082#1072#1076#1088#1086#1074
        PropertiesClassName = 'TcxSpinEditProperties'
        Properties.OnValidate = clmnCountFramesPropertiesValidate
        Width = 64
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 2
      end
      object clmnBeforeInterval: TcxGridBandedColumn
        Caption = #1048#1085#1090#1077#1088#1074#1072#1083' '#1089#1074#1077#1088#1093#1091
        PropertiesClassName = 'TcxSpinEditProperties'
        Width = 63
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 2
      end
      object clmnHeightMenuItem: TcxGridBandedColumn
        Caption = #1042#1099#1089#1086#1090#1072' '#1087#1091#1085#1082#1090#1072' '#1084#1077#1085#1102
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Width = 64
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 2
      end
      object clmnPicWidth: TcxGridBandedColumn
        Caption = #1064#1080#1088#1080#1085#1072' '#1082#1072#1088#1090#1080#1085#1082#1080
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Width = 64
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 2
      end
      object clmnPicHeight: TcxGridBandedColumn
        Caption = #1042#1099#1089#1086#1090#1072' '#1082#1072#1088#1090#1080#1085#1082#1080
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Width = 63
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 2
      end
    end
  end
  object pmAddModel: TdxRibbonPopupMenu
    BarManager = dxBarManager
    ItemLinks = <>
    UseOwnFont = False
    Ribbon = dxRibbon
    Left = 445
  end
end
