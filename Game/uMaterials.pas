unit uMaterials;

interface

uses
  Windows, SysUtils, Graphics, GLMaterial, GLMaterialEx, GLTexture, GLState, pngimage, ddsimage, tga,

  NativeXML, NativeXMLClassHelper,

  uCommonFuncProc;

  // загрузить в текстуру картинку
  function LoadTextureFromFile(AFileName: string; ATexture: TGLTexture; ADisabled: boolean = false): boolean;

  // список материалов
  function LoadMaterialsFromXMLFile(AFileName: string; ALibMaterials: TGLLibMaterialsEx): boolean;
  function LoadMaterialsFromXMLNode(ANode: TXMLNode; ALibMaterials: TGLLibMaterialsEx): boolean;
  function SaveMaterialsToXMLFile(AFileName: string; ALibMaterials: TGLLibMaterialsEx): boolean;
  function SaveMaterialsToXMLNode(ANode: TXMLNode; ALibMaterials: TGLLibMaterialsEx): boolean;

  // список копонентов материалов
  function LoadMatLibComponentsFromXMLFile(AFileName: string; AMatLibComponents: TGLMatLibComponents): boolean;
  function LoadMatLibComponentsFromXMLNode(ANode: TXMLNode; AMatLibComponents: TGLMatLibComponents): boolean;
  function SaveMatLibComponentsToXMLFile(AFileName: string; AMatLibComponents: TGLMatLibComponents): boolean;
  function SaveMatLibComponentsToXMLNode(ANode: TXMLNode; AMatLibComponents: TGLMatLibComponents): boolean;

  // отдельный материал
  function LoadLibMaterialFromXMLFile(AFileName: string; ALibMaterial: TGLLibMaterialEx): boolean;
  function LoadLibMaterialFromXMLNode(ANode: TXMLNode; ALibMaterial: TGLLibMaterialEx): boolean;
  function SaveLibMaterialToXMLFile(AFileName: string; ALibMaterial: TGLLibMaterialEx): boolean;
  function SaveLibMaterialToXMLNode(ANode: TXMLNode; ALibMaterial: TGLLibMaterialEx): boolean;

  // отдельный компонент материала
  function LoadMatLibComponentFromXMLFile(AFileName: string; AMatLibComponent: TGLBaseMaterialCollectionItem): boolean;
  function LoadMatLibComponentFromXMLNode(ANode: TXMLNode; AMatLibComponent: TGLBaseMaterialCollectionItem): boolean;
  function SaveMatLibComponentToXMLFile(AFileName: string; AMatLibComponent: TGLBaseMaterialCollectionItem): boolean;
  function SaveMatLibComponentToXMLNode(ANode: TXMLNode; AMatLibComponent: TGLBaseMaterialCollectionItem): boolean;

  // TGLTextureProperties
  function LoadTexturePropertiesFromXMLNode(ANode: TXMLNode; ATextureProperties: TGLTextureProperties): boolean;
  function SaveTexturePropertiesToXMLNode(ANode: TXMLNode; ATextureProperties: TGLTextureProperties): boolean;

  // TGLFixedFunctionProperties
  function LoadFixedFunctionPropertiesFromXMLNode(ANode: TXMLNode; AFixedFunctionProperties: TGLFixedFunctionProperties): boolean;
  function SaveFixedFunctionPropertiesToXMLNode(ANode: TXMLNode; AFixedFunctionProperties: TGLFixedFunctionProperties): boolean;

  // TGLMultitexturingProperties
  function LoadMultitexturingPropertiesFromXMLNode(ANode: TXMLNode; AMultitexturingProperties: TGLMultitexturingProperties): boolean;
  function SaveMultitexturingPropertiesToXMLNode(ANode: TXMLNode; AMultitexturingProperties: TGLMultitexturingProperties): boolean;

  // TGLShaderModel3
  function LoadShaderModel3FromXMLNode(ANode: TXMLNode; AShaderModel: TGLShaderModel3): boolean;
  function SaveShaderModel3ToXMLNode(ANode: TXMLNode; AShaderModel: TGLShaderModel3): boolean;

  // TGLShaderModel4
  function LoadShaderModel4FromXMLNode(ANode: TXMLNode; AShaderModel: TGLShaderModel4): boolean;
  function SaveShaderModel4ToXMLNode(ANode: TXMLNode; AShaderModel: TGLShaderModel4): boolean;

  // TGLShaderModel5
  function LoadShaderModel5FromXMLNode(ANode: TXMLNode; AShaderModel: TGLShaderModel5): boolean;
  function SaveShaderModel5ToXMLNode(ANode: TXMLNode; AShaderModel: TGLShaderModel5): boolean;

  // TGLFaceProperties
  function LoadFacePropertiesFromXMLNode(ANode: TXMLNode; AFaceProperties: TGLFaceProperties): boolean;
  function SaveFacePropertiesToXMLNode(ANode: TXMLNode; AFaceProperties: TGLFaceProperties): boolean;

  // TGLDepthProperties
  function LoadDepthPropertiesFromXMLNode(ANode: TXMLNode; ADepthProperties: TGLDepthProperties): boolean;
  function SaveDepthPropertiesToXMLNode(ANode: TXMLNode; ADepthProperties: TGLDepthProperties): boolean;

  // TGLBlendingParameters
  function LoadBlendingParametersFromXMLNode(ANode: TXMLNode; ABlendingParameters: TGLBlendingParameters): boolean;
  function SaveBlendingParametersToXMLNode(ANode: TXMLNode; ABlendingParameters: TGLBlendingParameters): boolean;

  // доп.ф-ции
  function GetXMLNodeFromMaterial(AlibMaterial: TGLLibMaterialEx): TXMLNode;
  function GetBitmapFromPicFile(AFileName: string): TBitmap;

implementation

function LoadTextureFromFile(AFileName: string; ATexture: TGLTexture; ADisabled: boolean): boolean;
var
  FImage: TPngImage;
begin
  Result:= false;
  if FileExists(AFileName) and Assigned(ATexture) then try
    try
      ATexture.BeginUpdate;
      FImage:= nil;
      if AnsiLowerCase(ExtractFileExt(AFileName)) = '.png' then begin
        FImage:= TPngImage.Create;
        FImage.LoadFromFile(AFileName);
        FImage.CreateAlpha;
        ATexture.Image.Assign(FImage);
      end else
        ATexture.Image.LoadFromFile(AFileName);

      ATexture.Disabled:= ADisabled;
      Result:= true;
    except
      on E: Exception do MessageBox(0, pchar('Ошибка при загрузке файла в текстуру'#13#13 + AFileName + #13#13 + E.Message), 'Ошибка', MB_OK or MB_ICONERROR);
    end;
  finally
    ATexture.EndUpdate;
    if FImage <> nil then
      FreeAndNil(FImage);
  end;
end;

function LoadMaterialsFromXMLFile(AFileName: string; ALibMaterials: TGLLibMaterialsEx): boolean;
var
  i: integer;
begin
  // загрузить материалы из XML-файла
  Result:= false;
  if FileExists(AFileName) and Assigned(AlibMaterials) then with TNativeXml.Create(nil) do try
    try
      LoadFromFile(AFileName);
      Result:= true;
      for i:= 0 to Root.NodeCount - 1 do
        Result:= Result and LoadMaterialsFromXMLNode(Root, AlibMaterials);
    except
      on E: Exception do MessageBox(0, pchar('Ошибка при загрузке из XML-файла конфигурации материалов'#13#13 + AFileName + #13#13 + E.Message), 'Ошибка', MB_OK or MB_ICONERROR);
    end;
  finally
    Free;
  end;
end;

function LoadMaterialsFromXMLNode(ANode: TXMLNode; ALibMaterials: TGLLibMaterialsEx): boolean;
var
  i: integer;
begin
  // загрузить материалы из XML-узла
  Result:= false;
  if Assigned(ANode) and Assigned(AlibMaterials) then with ANode do try
    Result:= true;
    for i:= 0 to NodeCount - 1 do
      Result:= Result and LoadMaterialsFromXMLNode(Nodes[i], ALibMaterials);
  except
    on E: Exception do MessageBox(0, pchar('Ошибка при загрузке из XML-узла конфигурации материалов'#13#13 + string(ANode.Name) + #13#13 + E.Message), 'Ошибка', MB_OK or MB_ICONERROR);
  end;
end;

function SaveMaterialsToXMLFile(AFileName: string; ALibMaterials: TGLLibMaterialsEx): boolean;
begin
  Result:= false;
  with TNativeXml.Create(nil) do try
    try
      VersionString:= '1.0';
      EncodingString:= 'windows-1251';
      Result:= SaveMaterialsToXMLNode(Root, AlibMaterials);
      XmlFormat:= xfReadable;
      SaveToFile(AFileName);
      Result:= true;
    except
      on E: Exception do MessageBox(0, pchar('Ошибка при записи в XML-файл конфигурации материалов'#13#13 + AFileName + #13#13 + E.Message), 'Ошибка', MB_OK or MB_ICONERROR);
    end;
  finally
    Free;
  end;
end;

function SaveMaterialsToXMLNode(ANode: TXMLNode; AlibMaterials: TGLLibMaterialsEx): boolean;
var
  i: integer;
begin
  Result:= false;
  if Assigned(ANode) and Assigned(AlibMaterials) and (AlibMaterials.Count > 0) then with ANode do try
    Result:= true;
    for i:= 0 to AlibMaterials.Count - 1 do
      Result:= Result and SaveLibMaterialToXMLNode(NodeNew(UTF8String(AlibMaterials[i].Name)), AlibMaterials[i]);
  except
    on E: Exception do MessageBox(0, pchar('Ошибка при сохранении в XML-узел конфигурации материалов'#13#13 + string(ANode.Name) + #13#13 + E.Message), 'Ошибка', MB_OK or MB_ICONERROR);
  end;
end;

function LoadMatLibComponentsFromXMLFile(AFileName: string; AMatLibComponents: TGLMatLibComponents): boolean;
var
  i: integer;
begin
  // загрузить компоненты материалов из XML-файла
  Result:= false;
  if FileExists(AFileName) and Assigned(AMatLibComponents) then with TNativeXml.Create(nil) do try
    try
      LoadFromFile(AFileName);
      Result:= true;
      for i:= 0 to Root.NodeCount - 1 do
        Result:= Result and LoadMatLibComponentsFromXMLNode(Root, AMatLibComponents);
    except
      on E: Exception do MessageBox(0, pchar('Ошибка при загрузке из XML-файла конфигурации компонентов материалов'#13#13 + AFileName + #13#13 + E.Message), 'Ошибка', MB_OK or MB_ICONERROR);
    end;
  finally
    Free;
  end;
end;

function LoadMatLibComponentsFromXMLNode(ANode: TXMLNode; AMatLibComponents: TGLMatLibComponents): boolean;
var
  i: integer;
begin
  // загрузить компоненты материалов из XML-узла
  Result:= false;
  if Assigned(ANode) and Assigned(AMatLibComponents) then with ANode do try
    Result:= true;
    for i:= 0 to NodeCount - 1 do
      Result:= Result and LoadMatLibComponentsFromXMLNode(Nodes[i], AMatLibComponents);
  except
    on E: Exception do MessageBox(0, pchar('Ошибка при загрузке из XML-узла конфигурации компонентов материалов'#13#13 + string(ANode.Name) + #13#13 + E.Message), 'Ошибка', MB_OK or MB_ICONERROR);
  end;
end;

function SaveMatLibComponentsToXMLFile(AFileName: string; AMatLibComponents: TGLMatLibComponents): boolean;
begin
  Result:= false;
  with TNativeXml.Create(nil) do try
    try
      VersionString:= '1.0';
      EncodingString:= 'windows-1251';
      Result:= SaveMatLibComponentsToXMLNode(Root, AMatLibComponents);
      XmlFormat:= xfReadable;
      SaveToFile(AFileName);
      Result:= true;
    except
      on E: Exception do MessageBox(0, pchar('Ошибка при записи в XML-узел конфигурации копонентов материалов'#13#13 + AFileName + #13#13 + E.Message), 'Ошибка', MB_OK or MB_ICONERROR);
    end;
  finally
    Free;
  end;
end;

function SaveMatLibComponentsToXMLNode(ANode: TXMLNode; AMatLibComponents: TGLMatLibComponents): boolean;
var
  i: integer;
begin
  Result:= false;
  if Assigned(ANode) and Assigned(AMatLibComponents) and (AMatLibComponents.Count > 0) then with ANode do try
    Result:= true;
    for i:= 0 to AMatLibComponents.Count - 1 do
      Result:= Result and SaveMatLibComponentToXMLNode(NodeNew(UTF8String(AMatLibComponents[i].Name)), AMatLibComponents[i]);
  except
    on E: Exception do MessageBox(0, pchar('Ошибка при сохранении в XML-узел конфигурации материалов'#13#13 + string(ANode.Name) + #13#13 + E.Message), 'Ошибка', MB_OK or MB_ICONERROR);
  end;
end;

function LoadLibMaterialFromXMLFile(AFileName: string; ALibMaterial: TGLLibMaterialEx): boolean;
begin
  // загрузить материал из XML-файла
  Result:= false;
  if FileExists(AFileName) and Assigned(AlibMaterial) then with TNativeXml.Create(nil) do try
    try
      LoadFromFile(AFileName);
      if Root.NodeCount >= 1 then
        Result:= LoadLibMaterialFromXMLNode(Root.Nodes[0], ALibMaterial);
    except
      on E: Exception do MessageBox(0, pchar('Ошибка при загрузке из XML-файла конфигурации материала'#13#13 + AFileName + #13#13 + E.Message), 'Ошибка', MB_OK or MB_ICONERROR);
    end;
  finally
    Free;
  end;
end;

function LoadLibMaterialFromXMLNode(ANode: TXMLNode; ALibMaterial: TGLLibMaterialEx): boolean;
begin
  // загрузить материал из XML-узла
  Result:= false;
  if Assigned(ANode) and Assigned(AlibMaterial) then with ANode do try
    if NodeByName('Name') <> nil then
      ALibMaterial.Name:=            Name;
    if NodeByName('ApplicableLevel') <> nil then
      ALibMaterial.ApplicableLevel:= TGLMaterialLevel(NodeByName('ApplicableLevel').ValueAsInteger);

    Result:= true;
    if NodeByName('FixedFunction') <> nil then
      Result:= Result and LoadFixedFunctionPropertiesFromXMLNode(NodeByName('FixedFunction'), ALibMaterial.FixedFunction);
    if NodeByName('Multitexturing') <> nil then
      Result:= Result and LoadMultitexturingPropertiesFromXMLNode(NodeByName('Multitexturing'), ALibMaterial.Multitexturing);
    if NodeByName('FixedFunction') <> nil then
      Result:= Result and LoadShaderModel3FromXMLNode(NodeByName('ShaderModel3'), ALibMaterial.ShaderModel3);
    if NodeByName('FixedFunction') <> nil then
      Result:= Result and LoadShaderModel4FromXMLNode(NodeByName('ShaderModel4'), ALibMaterial.ShaderModel4);
    if NodeByName('FixedFunction') <> nil then
      Result:= Result and LoadShaderModel5FromXMLNode(NodeByName('ShaderModel5'), ALibMaterial.ShaderModel5);
  except
    on E: Exception do MessageBox(0, pchar('Ошибка при загрузке из XML-узла кофигурации материала:'#13#13 + ALibMaterial.Name + #13#13 + E.Message), 'Ошибка', MB_OK or MB_ICONERROR);
  end;
end;

function SaveLibMaterialToXMLFile(AFileName: string; ALibMaterial: TGLLibMaterialEx): boolean;
begin
  Result:= false;
  with TNativeXml.Create(nil) do try
    try
      VersionString:= '1.0';
      EncodingString:= 'windows-1251';
      Result:= SaveLibMaterialToXMLNode(Root.NodeNew(UTF8String(ALibMaterial.Name)), ALibMaterial);
      XmlFormat:= xfReadable;
      SaveToFile(AFileName);
      Result:= true;
    except
      on E: Exception do MessageBox(0, pchar('Ошибка при записи в XML-файл конфигурации материала'#13#13 + AFileName + #13#13 + E.Message), 'Ошибка', MB_OK or MB_ICONERROR);
    end;
  finally
    Free;
  end;
end;

function SaveLibMaterialToXMLNode(ANode: TXMLNode; ALibMaterial: TGLLibMaterialEx): boolean;
begin
  Result:= false;
  if Assigned(ANode) and Assigned(AlibMaterial) then with ANode do try
    Name:= UTF8String(AlibMaterial.Name);
    with NodeNew('ApplicableLevel') do ValueAsInteger:= integer(AlibMaterial.ApplicableLevel);

    Result:= true;
    Result:= Result and SaveFixedFunctionPropertiesToXMLNode(NodeNew('FixedFunction'), AlibMaterial.FixedFunction);
    Result:= Result and SaveMultitexturingPropertiesToXMLNode(NodeNew('Multitexturing'), AlibMaterial.Multitexturing);
    Result:= Result and SaveShaderModel3ToXMLNode(NodeNew('ShaderModel3'), AlibMaterial.ShaderModel3);
    Result:= Result and SaveShaderModel4ToXMLNode(NodeNew('ShaderModel4'), AlibMaterial.ShaderModel4);
    Result:= Result and SaveShaderModel5ToXMLNode(NodeNew('ShaderModel5'), AlibMaterial.ShaderModel5);
  except
    on E: Exception do MessageBox(0, pchar('Ошибка при записи в XML-узел конфигурации материала'#13#13 + string(ANode.Name) + #13#13 + E.Message), 'Ошибка', MB_OK or MB_ICONERROR);
  end;
end;

function LoadMatLibComponentFromXMLFile(AFileName: string; AMatLibComponent: TGLBaseMaterialCollectionItem): boolean;
begin
  Result:= false;
end;

function LoadMatLibComponentFromXMLNode(ANode: TXMLNode; AMatLibComponent: TGLBaseMaterialCollectionItem): boolean;
begin
  Result:= false;
end;

function SaveMatLibComponentToXMLFile(AFileName: string; AMatLibComponent: TGLBaseMaterialCollectionItem): boolean;
begin
  Result:= false;
end;

function SaveMatLibComponentToXMLNode(ANode: TXMLNode; AMatLibComponent: TGLBaseMaterialCollectionItem): boolean;
begin
  Result:= false;
end;

function LoadTexturePropertiesFromXMLNode(ANode: TXMLNode; ATextureProperties: TGLTextureProperties): boolean;
begin
  Result:= false;
  if Assigned(ANode) and Assigned(ATextureProperties) then with ANode do try
    if NodeByName('Enabled') <> nil then
      ATextureProperties.Enabled:= NodeByName('Enabled').ValueAsBool;
    if NodeByName('EnvColor') <> nil then
      ATextureProperties.EnvColor.Color:= StringToVector(NodeByName('Enabled').ValueUnicode);
    if NodeByName('LibSamplerName') <> nil then
      ATextureProperties.LibSamplerName:= NodeByName('LibSamplerName').ValueUnicode;
    if NodeByName('LibTextureName') <> nil then
      ATextureProperties.LibTextureName:= NodeByName('LibTextureName').ValueUnicode;
    if NodeByName('MappingMode') <> nil then
      ATextureProperties.MappingMode:= TGLTextureMappingMode(NodeByName('MappingMode').ValueAsInteger);

    if NodeByName('MappingSCoordinates') <> nil then
      ATextureProperties.MappingSCoordinates.AsVector:= StringToVector(NodeByName('MappingSCoordinates').ValueUnicode);
    if NodeByName('MappingTCoordinates') <> nil then
      ATextureProperties.MappingTCoordinates.AsVector:= StringToVector(NodeByName('MappingTCoordinates').ValueUnicode);
    if NodeByName('MappingRCoordinates') <> nil then
      ATextureProperties.MappingRCoordinates.AsVector:= StringToVector(NodeByName('MappingRCoordinates').ValueUnicode);
    if NodeByName('MappingQCoordinates') <> nil then
      ATextureProperties.MappingQCoordinates.AsVector:= StringToVector(NodeByName('MappingQCoordinates').ValueUnicode);

    if NodeByName('Swizzling') <> nil then with NodeByName('Swizzling') do begin
      if NodeByName('AlphaFrom') <> nil then
        ATextureProperties.EnvColor.Color:= StringToVector(NodeByName('AlphaFrom').ValueUnicode);
      if NodeByName('BlueFrom') <> nil then
        ATextureProperties.EnvColor.Color:= StringToVector(NodeByName('BlueFrom').ValueUnicode);
      if NodeByName('GreenFrom') <> nil then
        ATextureProperties.EnvColor.Color:= StringToVector(NodeByName('GreenFrom').ValueUnicode);
      if NodeByName('RedFrom') <> nil then
        ATextureProperties.EnvColor.Color:= StringToVector(NodeByName('RedFrom').ValueUnicode);
    end;

    if NodeByName('TextureOffset') <> nil then
      ATextureProperties.TextureOffset.AsAffineVector:= StringToAffineVector(NodeByName('TextureOffset').ValueUnicode);
    if NodeByName('TextureRotate') <> nil then
      ATextureProperties.TextureRotate:= NodeByName('TextureOffset').ValueAsFloat;
    if NodeByName('TextureScale') <> nil then
      ATextureProperties.TextureScale.AsAffineVector:= StringToAffineVector(NodeByName('TextureScale').ValueUnicode);
    Result:= true;
  except
    on E: Exception do MessageBox(0, pchar('Ошибка при загрузке TextureProperties из XML-узла:'#13#13 + string(ANode.Name) + #13#13 + E.Message), 'Ошибка', MB_OK or MB_ICONERROR);
  end;
end;

function SaveTexturePropertiesToXMLNode(ANode: TXMLNode; ATextureProperties: TGLTextureProperties): boolean;
begin
  Result:= false;
  if Assigned(ANode) and Assigned(ATextureProperties) then with ANode do try
    with NodeNew('Enabled') do             ValueAsBool:= ATextureProperties.Enabled;
    with NodeNew('EnvColor') do            ValueUnicode:= VectorToString(ATextureProperties.EnvColor.Color);
    with NodeNew('LibSamplerName') do      ValueUnicode:= ATextureProperties.LibSamplerName;
    with NodeNew('LibTextureName') do      ValueUnicode:= ATextureProperties.LibTextureName;
    with NodeNew('MappingMode') do         ValueUnicode:= IntToStr(integer(ATextureProperties.MappingMode));
    with NodeNew('MappingSCoordinates') do ValueUnicode:= VectorToString(ATextureProperties.MappingSCoordinates.AsVector);
    with NodeNew('MappingTCoordinates') do ValueUnicode:= VectorToString(ATextureProperties.MappingTCoordinates.AsVector);
    with NodeNew('MappingRCoordinates') do ValueUnicode:= VectorToString(ATextureProperties.MappingRCoordinates.AsVector);
    with NodeNew('MappingQCoordinates') do ValueUnicode:= VectorToString(ATextureProperties.MappingQCoordinates.AsVector);

    with NodeNew('Swizzling') do begin
      with NodeNew('AlphaFrom') do         ValueAsInteger:= integer(ATextureProperties.Swizzling.AlphaFrom);
      with NodeNew('BlueFrom') do          ValueAsInteger:= integer(ATextureProperties.Swizzling.BlueFrom);
      with NodeNew('GreenFrom') do         ValueAsInteger:= integer(ATextureProperties.Swizzling.GreenFrom);
      with NodeNew('RedFrom') do           ValueAsInteger:= integer(ATextureProperties.Swizzling.RedFrom);
    end; // with NodeNew('Swizzling') do begin

    with NodeNew('TextureOffset') do       ValueUnicode:= AffineVectorToString(ATextureProperties.TextureOffset.AsAffineVector);
    with NodeNew('TextureRotate') do       ValueUnicode:= FloatToStr(ATextureProperties.TextureRotate);
    with NodeNew('TextureScale') do        ValueUnicode:= AffineVectorToString(ATextureProperties.TextureScale.AsAffineVector);

    Result:= true;
  except

  end;
end;

function LoadFixedFunctionPropertiesFromXMLNode(ANode: TXMLNode; AFixedFunctionProperties: TGLFixedFunctionProperties): boolean;
begin
  Result:= false;
  if Assigned(ANode) and Assigned(AFixedFunctionProperties) then with ANode do try
    if NodeByName('Enabled') <> nil then
      AFixedFunctionProperties.Enabled:=      NodeByName('Enabled').ValueAsBool;
    if NodeByName('BlendingMode') <> nil then
      AFixedFunctionProperties.BlendingMode:= TBlendingMode(NodeByName('BlendingMode').ValueAsInteger);
    if NodeByName('FaceCulling') <> nil then
      AFixedFunctionProperties.FaceCulling:=  TFaceCulling(NodeByName('FaceCulling').ValueAsInteger);
    if NodeByName('PolygonMode') <> nil then
      AFixedFunctionProperties.PolygonMode:=  TPolygonMode(NodeByName('PolygonMode').ValueAsInteger);
    if NodeByName('TextureMode') <> nil then
      AFixedFunctionProperties.TextureMode:=  TGLTextureMode(NodeByName('TextureMode').ValueAsInteger);
    if NodeByName('NextPass') <> nil then
      AFixedFunctionProperties.NextPass:=     NodeByName('NextPass').ValueUnicode;

    Result:= true;
    if NodeByName('BackProperties') <> nil then
      Result:= Result and LoadFacePropertiesFromXMLNode(NodeByName('BackProperties'), AFixedFunctionProperties.BackProperties);
    if NodeByName('FrontProperties') <> nil then
      Result:= Result and LoadFacePropertiesFromXMLNode(NodeByName('FrontProperties'), AFixedFunctionProperties.FrontProperties);
    if NodeByName('BlendingParams') <> nil then
      Result:= Result and LoadBlendingParametersFromXMLNode(NodeByName('BlendingParams'), AFixedFunctionProperties.BlendingParams);
    if NodeByName('DepthProperties') <> nil then
      Result:= Result and LoadDepthPropertiesFromXMLNode(NodeByName('DepthProperties'), AFixedFunctionProperties.DepthProperties);
    if NodeByName('Texture') <> nil then
      Result:= Result and LoadTexturePropertiesFromXMLNode(NodeByName('Texture'), AFixedFunctionProperties.Texture);
  except
    on E: Exception do MessageBox(0, pchar('Ошибка при загрузке FixedFunctionProperties из XML-узла:'#13#13 + string(ANode.Name) + #13#13 + E.Message), 'Ошибка', MB_OK or MB_ICONERROR);
  end;
end;

function SaveFixedFunctionPropertiesToXMLNode(ANode: TXMLNode; AFixedFunctionProperties: TGLFixedFunctionProperties): boolean;
begin
  Result:= false;
  if Assigned(ANode) and Assigned(AFixedFunctionProperties) then with ANode do try
      with NodeNew('Enabled') do                  ValueAsBool:=    AFixedFunctionProperties.Enabled;
      with NodeNew('BlendingMode') do             ValueAsInteger:= integer(AFixedFunctionProperties.BlendingMode);
      with NodeNew('FaceCulling') do              ValueAsInteger:= integer(AFixedFunctionProperties.FaceCulling);
      with NodeNew('PolygonMode') do              ValueAsInteger:= integer(AFixedFunctionProperties.PolygonMode);
      with NodeNew('TextureMode') do              ValueAsInteger:= integer(AFixedFunctionProperties.TextureMode);
      with NodeNew('NextPass') do                 ValueUnicode:=   AFixedFunctionProperties.NextPass;

      Result:= true;
      Result:= Result and SaveFacePropertiesToXMLNode(NodeNew('BackProperties'), AFixedFunctionProperties.BackProperties);
      Result:= Result and SaveFacePropertiesToXMLNode(NodeNew('FrontProperties'), AFixedFunctionProperties.BackProperties);
      Result:= Result and SaveBlendingParametersToXMLNode(NodeNew('BlendingParams'), AFixedFunctionProperties.BlendingParams);
      Result:= Result and SaveDepthPropertiesToXMLNode(NodeNew('DepthProperties'), AFixedFunctionProperties.DepthProperties);
      Result:= Result and SaveTexturePropertiesToXMLNode(NodeNew('Texture'), AFixedFunctionProperties.Texture);
  except
    on E: Exception do MessageBox(0, pchar('Ошибка при сохранении FixedFunctionProperties в XML-узел:'#13#13 + string(ANode.Name) + #13#13 + E.Message), 'Ошибка', MB_OK or MB_ICONERROR);
  end;
end;

function LoadMultitexturingPropertiesFromXMLNode(ANode: TXMLNode; AMultitexturingProperties: TGLMultitexturingProperties): boolean;
begin
  Result:= false;
  if Assigned(ANode) and Assigned(AMultitexturingProperties) then with ANode do try
    if NodeByName('Enabled') <> nil then
      AMultitexturingProperties.Enabled:=          NodeByName('Enabled').ValueAsBool;
    if NodeByName('LibAsmProgName') <> nil then
      AMultitexturingProperties.LibAsmProgName:=   NodeByName('LibAsmProgName').ValueUnicode;
    if NodeByName('LibCombinerName') <> nil then
      AMultitexturingProperties.LibCombinerName:=  NodeByName('LibCombinerName').ValueUnicode;
    if NodeByName('NextPass') <> nil then
      AMultitexturingProperties.NextPass:=         NodeByName('NextPass').ValueUnicode;
    if NodeByName('LightSourceIndex') <> nil then
      AMultitexturingProperties.LightSourceIndex:= NodeByName('LightSourceIndex').ValueAsInteger;
    if NodeByName('LightDirTo') <> nil then
      AMultitexturingProperties.LightDirTo:=       TLightDir2TexEnvColor(NodeByName('LightDirTo').ValueAsInteger);

    Result:= true;
    if NodeByName('Texture0') <> nil then
      Result:= Result and LoadTexturePropertiesFromXMLNode(NodeByName('Texture0'), AMultitexturingProperties.Texture0);
    if NodeByName('Texture1') <> nil then
      Result:= Result and LoadTexturePropertiesFromXMLNode(NodeByName('Texture1'), AMultitexturingProperties.Texture1);
    if NodeByName('Texture2') <> nil then
      Result:= Result and LoadTexturePropertiesFromXMLNode(NodeByName('Texture2'), AMultitexturingProperties.Texture2);
    if NodeByName('Texture3') <> nil then
      Result:= Result and LoadTexturePropertiesFromXMLNode(NodeByName('Texture3'), AMultitexturingProperties.Texture3);
  except
    on E: Exception do MessageBox(0, pchar('Ошибка при загрузке MultitexturingProperties из XML-узла:'#13#13 + string(ANode.Name) + #13#13 + E.Message), 'Ошибка', MB_OK or MB_ICONERROR);
  end;
end;

function SaveMultitexturingPropertiesToXMLNode(ANode: TXMLNode; AMultitexturingProperties: TGLMultitexturingProperties): boolean;
begin
  Result:= false;
  if Assigned(ANode) and Assigned(AMultitexturingProperties) then with ANode do try
    with NodeNew('Enabled') do          ValueAsBool:=    AMultitexturingProperties.Enabled;
    with NodeNew('LibAsmProgName') do   ValueUnicode:=   AMultitexturingProperties.LibAsmProgName;
    with NodeNew('LibCombinerName') do  ValueUnicode:=   AMultitexturingProperties.LibCombinerName;
    with NodeNew('NextPass') do         ValueUnicode:=   AMultitexturingProperties.NextPass;
    with NodeNew('LightSourceIndex') do ValueAsInteger:= AMultitexturingProperties.LightSourceIndex;
    with NodeNew('LightDirTo') do       ValueAsInteger:= integer(AMultitexturingProperties.LightDirTo);

    Result:= true;
    Result:= Result and SaveTexturePropertiesToXMLNode(NodeNew('Texture0'), AMultitexturingProperties.Texture0);
    Result:= Result and SaveTexturePropertiesToXMLNode(NodeNew('Texture1'), AMultitexturingProperties.Texture1);
    Result:= Result and SaveTexturePropertiesToXMLNode(NodeNew('Texture2'), AMultitexturingProperties.Texture2);
    Result:= Result and SaveTexturePropertiesToXMLNode(NodeNew('Texture3'), AMultitexturingProperties.Texture3);
  except
    on E: Exception do MessageBox(0, pchar('Ошибка при сохранении MultitexturingProperties в XML-узел:'#13#13 + string(ANode.Name) + #13#13 + E.Message), 'Ошибка', MB_OK or MB_ICONERROR);
  end;
end;

function LoadShaderModel3FromXMLNode(ANode: TXMLNode; AShaderModel: TGLShaderModel3): boolean;
begin
  Result:= false;
  if Assigned(ANode) and Assigned(AShaderModel) then with ANode do try
    if NodeByName('Enabled') <> nil then
      AShaderModel.Enabled:=               NodeByName('Enabled').ValueAsBool;
    if NodeByName('LibFragmentShaderName') <> nil then
      AShaderModel.LibFragmentShaderName:= NodeByName('LibFragmentShaderName').ValueUnicode;
    if NodeByName('LibVertexShaderName') <> nil then
      AShaderModel.LibVertexShaderName:=   NodeByName('LibVertexShaderName').ValueUnicode;
    if NodeByName('NextPass') <> nil then
      AShaderModel.NextPass:=              NodeByName('NextPass').ValueUnicode;
    Result:= true;
  except
    on E: Exception do MessageBox(0, pchar('Ошибка при загрузке ShaderModel3 из XML-узла:'#13#13 + string(ANode.Name) + #13#13 + E.Message), 'Ошибка', MB_OK or MB_ICONERROR);
  end;
end;

function SaveShaderModel3ToXMLNode(ANode: TXMLNode; AShaderModel: TGLShaderModel3): boolean;
begin
  Result:= false;
  if Assigned(ANode) and Assigned(AShaderModel) then with ANode do try
    with NodeNew('Enabled') do               ValueAsBool:=  AShaderModel.Enabled;
    with NodeNew('LibFragmentShaderName') do ValueUnicode:= AShaderModel.LibFragmentShaderName;
    with NodeNew('LibVertexShaderName') do   ValueUnicode:= AShaderModel.LibVertexShaderName;
    with NodeNew('NextPass') do              ValueUnicode:= AShaderModel.NextPass;
    Result:= true;
  except
    on E: Exception do MessageBox(0, pchar('Ошибка при сохранении ShaderModel3 в XML-узел:'#13#13 + string(ANode.Name) + #13#13 + E.Message), 'Ошибка', MB_OK or MB_ICONERROR);
  end;
end;

function LoadShaderModel4FromXMLNode(ANode: TXMLNode; AShaderModel: TGLShaderModel4): boolean;
begin
  Result:= false;
  if Assigned(ANode) and Assigned(AShaderModel) then with ANode do try
    if NodeByName('Enabled') <> nil then
      AShaderModel.Enabled:=               NodeByName('Enabled').ValueAsBool;
    if NodeByName('LibFragmentShaderName') <> nil then
      AShaderModel.LibFragmentShaderName:= NodeByName('LibFragmentShaderName').ValueUnicode;
    if NodeByName('LibVertexShaderName') <> nil then
      AShaderModel.LibVertexShaderName:=   NodeByName('LibVertexShaderName').ValueUnicode;
    if NodeByName('LibGeometryShaderName') <> nil then
      AShaderModel.LibGeometryShaderName:= NodeByName('LibGeometryShaderName').ValueUnicode;
    if NodeByName('NextPass') <> nil then
      AShaderModel.NextPass:=              NodeByName('NextPass').ValueUnicode;

    Result:= true;
  except
    on E: Exception do MessageBox(0, pchar('Ошибка при загрузке ShaderModel4 из XML-узла:'#13#13 + string(ANode.Name) + #13#13 + E.Message), 'Ошибка', MB_OK or MB_ICONERROR);
  end;
end;

function SaveShaderModel4ToXMLNode(ANode: TXMLNode; AShaderModel: TGLShaderModel4): boolean;
begin
  Result:= false;
  if Assigned(ANode) and Assigned(AShaderModel) then with ANode do try
    with NodeNew('Enabled') do               ValueAsBool:=  AShaderModel.Enabled;
    with NodeNew('LibFragmentShaderName') do ValueUnicode:= AShaderModel.LibFragmentShaderName;
    with NodeNew('LibVertexShaderName') do   ValueUnicode:= AShaderModel.LibVertexShaderName;
    with NodeNew('LibGeometryShaderName') do ValueUnicode:= AShaderModel.LibGeometryShaderName;
    with NodeNew('NextPass') do              ValueUnicode:= AShaderModel.NextPass;
    Result:= true;
  except
    on E: Exception do MessageBox(0, pchar('Ошибка при сохранении ShaderModel4 в XML-узел:'#13#13 + string(ANode.Name) + #13#13 + E.Message), 'Ошибка', MB_OK or MB_ICONERROR);
  end;
end;

function LoadShaderModel5FromXMLNode(ANode: TXMLNode; AShaderModel: TGLShaderModel5): boolean;
begin
  Result:= false;
  if Assigned(ANode) and Assigned(AShaderModel) then with ANode do try
    if NodeByName('Enabled') <> nil then
      AShaderModel.Enabled:=                  NodeByName('Enabled').ValueAsBool;
    if NodeByName('LibFragmentShaderName') <> nil then
      AShaderModel.LibFragmentShaderName:=    NodeByName('LibFragmentShaderName').ValueUnicode;
    if NodeByName('LibVertexShaderName') <> nil then
      AShaderModel.LibVertexShaderName:=      NodeByName('LibVertexShaderName').ValueUnicode;
    if NodeByName('LibGeometryShaderName') <> nil then
      AShaderModel.LibGeometryShaderName:=    NodeByName('LibGeometryShaderName').ValueUnicode;
    if NodeByName('LibTessEvalShaderName') <> nil then
      AShaderModel.LibTessEvalShaderName:=    NodeByName('LibTessEvalShaderName').ValueUnicode;
    if NodeByName('LibTessControlShaderName') <> nil then
      AShaderModel.LibTessControlShaderName:= NodeByName('LibTessControlShaderName').ValueUnicode;
    if NodeByName('NextPass') <> nil then
      AShaderModel.NextPass:=                 NodeByName('NextPass').ValueUnicode;
    Result:= true;
  except
    on E: Exception do MessageBox(0, pchar('Ошибка при загрузке ShaderModel5 из XML-узла:'#13#13 + string(ANode.Name) + #13#13 + E.Message), 'Ошибка', MB_OK or MB_ICONERROR);
  end;
end;

function SaveShaderModel5ToXMLNode(ANode: TXMLNode; AShaderModel: TGLShaderModel5): boolean;
begin
  Result:= false;
  if Assigned(ANode) and Assigned(AShaderModel) then with ANode do try
    with NodeNew('Enabled') do                  ValueAsBool:=  AShaderModel.Enabled;
    with NodeNew('LibFragmentShaderName') do    ValueUnicode:= AShaderModel.LibFragmentShaderName;
    with NodeNew('LibVertexShaderName') do      ValueUnicode:= AShaderModel.LibVertexShaderName;
    with NodeNew('LibGeometryShaderName') do    ValueUnicode:= AShaderModel.LibGeometryShaderName;
    with NodeNew('LibTessEvalShaderName') do    ValueUnicode:= AShaderModel.LibTessEvalShaderName;
    with NodeNew('LibTessControlShaderName') do ValueUnicode:= AShaderModel.LibTessControlShaderName;
    with NodeNew('NextPass') do                 ValueUnicode:= AShaderModel.NextPass;
    Result:= true;
  except
    on E: Exception do MessageBox(0, pchar('Ошибка при сохранении ShaderModel5 в XML-узел:'#13#13 + string(ANode.Name) + #13#13 + E.Message), 'Ошибка', MB_OK or MB_ICONERROR);
  end;
end;

function LoadFacePropertiesFromXMLNode(ANode: TXMLNode; AFaceProperties: TGLFaceProperties): boolean;
begin
  Result:= false;
  if Assigned(ANode) and Assigned(AFaceProperties) then with ANode do try
    if NodeByName('Shininess') <> nil then
      AFaceProperties.Shininess:= NodeByName('Shininess').ValueAsInteger;
    if NodeByName('Ambient') <> nil then
      AFaceProperties.Ambient.Color:= StringToVector(NodeByName('Ambient').ValueUnicode);
    if NodeByName('Diffuse') <> nil then
       AFaceProperties.Ambient.Color:= StringToVector(NodeByName('Diffuse').ValueUnicode);
    if NodeByName('Emission') <> nil then
       AFaceProperties.Ambient.Color:= StringToVector(NodeByName('Emission').ValueUnicode);
    if NodeByName('Specular') <> nil then
       AFaceProperties.Ambient.Color:= StringToVector(NodeByName('Specular').ValueUnicode);
    Result:= true;
  except
    on E: Exception do MessageBox(0, pchar('Ошибка при загрузке FaceProperties из XML-узла:'#13#13 + string(ANode.Name) + #13#13 + E.Message), 'Ошибка', MB_OK or MB_ICONERROR);
  end;
end;

function SaveFacePropertiesToXMLNode(ANode: TXMLNode; AFaceProperties: TGLFaceProperties): boolean;
begin
  Result:= false;
  if Assigned(ANode) and Assigned(AFaceProperties) then with ANode do try
    with NodeNew('Shininess') do ValueAsInteger:= AFaceProperties.Shininess;
    with NodeNew('Ambient') do   ValueUnicode:=   VectorToString(AFaceProperties.Ambient.Color);
    with NodeNew('Diffuse') do   ValueUnicode:=   VectorToString(AFaceProperties.Diffuse.Color);
    with NodeNew('Emission') do  ValueUnicode:=   VectorToString(AFaceProperties.Emission.Color);
    with NodeNew('Specular') do  ValueUnicode:=   VectorToString(AFaceProperties.Specular.Color);
    Result:= true;
  except
    on E: Exception do MessageBox(0, pchar('Ошибка при сохранении FaceProperties в XML-узел:'#13#13 + string(ANode.Name) + #13#13 + E.Message), 'Ошибка', MB_OK or MB_ICONERROR);
  end;
end;

function LoadDepthPropertiesFromXMLNode(ANode: TXMLNode; ADepthProperties: TGLDepthProperties): boolean;
begin
  Result:= false;
  if Assigned(ANode) and Assigned(ADepthProperties) then with ANode do try
    if NodeByName('DepthClamp') <> nil then
      ADepthProperties.DepthClamp:= NodeByName('DepthClamp').ValueAsBool;
    if NodeByName('DepthTest') <> nil then
      ADepthProperties.DepthTest:= NodeByName('DepthTest').ValueAsBool;
    if NodeByName('DepthWrite') <> nil then
      ADepthProperties.DepthWrite:= NodeByName('DepthWrite').ValueAsBool;
    if NodeByName('ZFar') <> nil then
      ADepthProperties.ZFar:= NodeByName('ZFar').ValueAsFloat;
    if NodeByName('ZNear') <> nil then
      ADepthProperties.ZNear:= NodeByName('ZNear').ValueAsFloat;
    Result:= true;
  except
    on E: Exception do MessageBox(0, pchar('Ошибка при загрузке DepthProperties из XML-узла:'#13#13 + string(ANode.Name) + #13#13 + E.Message), 'Ошибка', MB_OK or MB_ICONERROR);
  end;
end;

function SaveDepthPropertiesToXMLNode(ANode: TXMLNode; ADepthProperties: TGLDepthProperties): boolean;
begin
  Result:= false;
  if Assigned(ANode) and Assigned(ADepthProperties) then with ANode do try
    with NodeNew('DepthClamp') do ValueAsBool:=  ADepthProperties.DepthClamp;
    with NodeNew('DepthTest') do  ValueAsBool:=  ADepthProperties.DepthTest;
    with NodeNew('DepthWrite') do ValueAsBool:=  ADepthProperties.DepthWrite;
    with NodeNew('ZFar') do       ValueAsFloat:= ADepthProperties.ZFar;
    with NodeNew('ZNear') do      ValueAsFloat:= ADepthProperties.ZNear;
    Result:= true
  except
    on E: Exception do MessageBox(0, pchar('Ошибка при сохранении DepthProperties в XML-узел:'#13#13 + string(ANode.Name) + #13#13 + E.Message), 'Ошибка', MB_OK or MB_ICONERROR);
  end;
end;

function LoadBlendingParametersFromXMLNode(ANode: TXMLNode; ABlendingParameters: TGLBlendingParameters): boolean;
begin
  Result:= false;
  if Assigned(ANode) and Assigned(ABlendingParameters) then with ANode do try
    if NodeByName('UseAlphaFunc') <> nil then
      ABlendingParameters.UseAlphaFunc:= NodeByName('UseAlphaFunc').ValueAsBool;
    if NodeByName('UseBlendFunc') <> nil then
      ABlendingParameters.UseBlendFunc:= NodeByName('UseBlendFunc').ValueAsBool;
    if NodeByName('SeparateBlendFunc') <> nil then
      ABlendingParameters.SeparateBlendFunc:= NodeByName('SeparateBlendFunc').ValueAsBool;

    if NodeByName('AlphaBlendFuncDFactor') <> nil then
      ABlendingParameters.AlphaBlendFuncDFactor:= TBlendFunction(NodeByName('AlphaBlendFuncDFactor').ValueAsInteger);
    if NodeByName('SeparateBlendFunc') <> nil then
      ABlendingParameters.SeparateBlendFunc:= NodeByName('SeparateBlendFunc').ValueAsBool;
    if NodeByName('SeparateBlendFunc') <> nil then
      ABlendingParameters.SeparateBlendFunc:= NodeByName('SeparateBlendFunc').ValueAsBool;

    if NodeByName('SeparateBlendFunc') <> nil then
      ABlendingParameters.SeparateBlendFunc:= NodeByName('SeparateBlendFunc').ValueAsBool;
    if NodeByName('SeparateBlendFunc') <> nil then
      ABlendingParameters.SeparateBlendFunc:= NodeByName('SeparateBlendFunc').ValueAsBool;
    if NodeByName('SeparateBlendFunc') <> nil then
      ABlendingParameters.SeparateBlendFunc:= NodeByName('SeparateBlendFunc').ValueAsBool;
    Result:= true;
  except
    on E: Exception do MessageBox(0, pchar('Ошибка при загрузке BlendingParameters из XML-узла:'#13#13 + string(ANode.Name) + #13#13 + E.Message), 'Ошибка', MB_OK or MB_ICONERROR);
  end;
end;

function SaveBlendingParametersToXMLNode(ANode: TXMLNode; ABlendingParameters: TGLBlendingParameters): boolean;
begin
  Result:= false;
  if Assigned(ANode) and Assigned(ABlendingParameters) then with ANode do try
    with NodeNew('UseAlphaFunc') do           ValueAsBool:=    ABlendingParameters.UseAlphaFunc;
    with NodeNew('UseBlendFunc') do           ValueAsBool:=    ABlendingParameters.UseBlendFunc;
    with NodeNew('SeparateBlendFunc') do      ValueAsBool:=    ABlendingParameters.SeparateBlendFunc;
    with NodeNew('AlphaBlendFuncDFactor') do  ValueAsInteger:= integer(ABlendingParameters.AlphaBlendFuncDFactor);
    with NodeNew('AlphaBlendFuncSFactor') do  ValueAsInteger:= integer(ABlendingParameters.AlphaBlendFuncSFactor);
    with NodeNew('AlphaFuncRef') do           ValueAsFloat:=   ABlendingParameters.AlphaFuncRef;
    with NodeNew('AlphaFunctType') do         ValueAsInteger:= integer(ABlendingParameters.AlphaFunctType);
    with NodeNew('BlendFuncDFactor') do       ValueAsInteger:= integer(ABlendingParameters.BlendFuncDFactor);
    with NodeNew('BlendFuncSFactor') do       ValueAsInteger:= integer(ABlendingParameters.BlendFuncSFactor);
    Result:= true;
  except
    on E: Exception do MessageBox(0, pchar('Ошибка при сохранении BlendingParameters в XML-узел:'#13#13 + string(ANode.Name) + #13#13 + E.Message), 'Ошибка', MB_OK or MB_ICONERROR);
  end;
end;

function GetXMLNodeFromMaterial(AlibMaterial: TGLLibMaterialEx): TXMLNode;
begin
  Result:= TXMLNode.Create(nil);
  if Assigned(AlibMaterial) then with Result do try
    with NodeNew('Name') do            ValueUnicode:=   AlibMaterial.Name;
    with NodeNew('ApplicableLevel') do ValueAsInteger:= integer(AlibMaterial.ApplicableLevel);
    SaveFixedFunctionPropertiesToXMLNode(NodeNew('FixedFunction'), AlibMaterial.FixedFunction);
    SaveMultitexturingPropertiesToXMLNode(NodeNew('Multitexturing'), AlibMaterial.Multitexturing);
    SaveShaderModel3ToXMLNode(NodeNew('ShaderModel3'), AlibMaterial.ShaderModel3);
    SaveShaderModel4ToXMLNode(NodeNew('ShaderModel4'), AlibMaterial.ShaderModel4);
    SaveShaderModel5ToXMLNode(NodeNew('ShaderModel5'), AlibMaterial.ShaderModel5);
  except
    on E: Exception do MessageBox(0, pchar('Ошибка при формировании XML-узла кофигурации материала:'#13#13 + AlibMaterial.Name + #13#13 + E.Message), 'Ошибка', MB_OK or MB_ICONERROR);
  end;
end;

function GetBitmapFromPicFile(AFileName: string): TBitmap;
var
  FPNGPic: TPngImage;
  FDDSPic: TDDSImage;
  FTGAPic: TTGAImage;
begin
  if FileExists(AFileName) then begin
    Result:= TBitmap.Create;
    Result.PixelFormat:= pf32bit;
    if AnsiLowerCase(ExtractFileExt(AFileName)) = '.png' then begin
      FPNGPic:= TPngImage.Create;
      FPNGPic.LoadFromFile(AFileName);
      FPNGPic.CreateAlpha;
      Result.Assign(FPNGPic);
    end else
    if AnsiLowerCase(ExtractFileExt(AFileName)) = '.dds' then try
      FDDSPic:= TDDSImage.Create;
      FDDSPic.LoadFromFile(AFileName);
      Result.Assign(FDDSPic);
    finally
      FreeAndNil(FDDSPic);
    end else
    if AnsiLowerCase(ExtractFileExt(AFileName)) = '.tga' then try
      FTGAPic:= TTGAImage.Create;
      FTGAPic.LoadFromFile(AFileName);
      Result.Assign(FTGAPic);
    finally
      FreeAndNil(FTGAPic);
    end else
      Result.LoadFromFile(AFileName);
  end else
    Result:= nil;
end;

end.
