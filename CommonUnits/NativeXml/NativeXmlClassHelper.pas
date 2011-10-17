unit NativeXmlClassHelper;

interface

uses NativeXML, Classes;

type
 TXMLNode_ = class helper for TXMLNode
 private
   function GetNameUnicode: string;
   procedure SetNodeUnicode(const aName: string);
   function GetAttributeUnicodeValue(Index: integer): string;
   procedure SetAttributeUnicodeValue(Index: integer; const aValue:string);
   function GetAttributeUnicodeName(Index: integer):string;
   procedure SetAttributeUnicodeName(Index: integer; aValue:string);
   function GetAttributeByUnicodeName(const aName: string):string;
   procedure SetAttributeByUnicodeName(const aName, aValue: string);
 public
   function  NodeNew(const AName: string): TXmlNode; overload;
   function  FindNode(const NodeName: string): TXmlNode; overload;
   function  ReadAttributestring(const AName: string; const ADefault: string = ''): string; overload;
   procedure AttributeAdd(const AName, AValue: string); overload;
   procedure WriteAttributestring(const AName: string; const AValue: string; const ADefault: string = ''); overload;
   procedure NodesByName(const AName: string; AList: TList); overload;

   property  NameUnicode: string                                read GetNameUnicode            write SetNodeUnicode;
   property  AttributeUnicodeValue[Index: integer]: string      read GetAttributeUnicodeValue  write SetAttributeUnicodeValue;
   property  AttributeUnicodeName[Index: integer]: string       read GetAttributeUnicodeName   write SetAttributeUnicodeName;
   property AttributeByUnicodeName[const AName: string]: string read GetAttributeByUnicodeName write SetAttributeByUnicodeName;
end;


implementation

{ TXMLNode_ }

procedure TXMLNode_.AttributeAdd(const AName, AValue: string);
begin
  AttributeAdd(UTF8String(AName), UTF8String(AValue));
end;

function TXMLNode_.FindNode(const NodeName: string): TXmlNode;
begin
  Result:= FindNode(UTF8String(NodeName))
end;

function TXMLNode_.GetAttributeByUnicodeName(const aName: string): string;
begin
  Result:= string(AttributeByName[UTF8String(aName)]);
end;

function TXMLNode_.GetAttributeUnicodeName(index: integer): string;
begin
  Result:= string(AttributeName[Index])
end;

function TXMLNode_.GetAttributeUnicodeValue(Index: integer): string;
begin
  Result:= string(AttributeValue[Index])
end;

function TXMLNode_.GetNameUnicode: string;
begin
  Result:= string(Name);
end;

function TXMLNode_.NodeNew(const AName: string): TXmlNode;
begin
  Result:= NodeNew(UTF8String(AName));
end;

procedure TXMLNode_.NodesByName(const AName: string; AList: TList);
begin
  if AList = nil then
    AList:= TsdNodeList.Create(true);
  AList.Clear;
  NodesByName(UTF8String(AName), AList);
end;

function TXMLNode_.ReadAttributestring(const AName, ADefault: string): string;
begin
  Result:= string(ReadAttributestring(UTF8String(AName), UTF8String(ADefault)))
end;

procedure TXMLNode_.SetAttributeByUnicodeName(const aName, aValue: string);
begin
  AttributeValueByName[UTF8String(aName)]:= UTF8String(aValue);
end;

procedure TXMLNode_.SetAttributeUnicodeName(index: integer; aValue: string);
begin
  AttributeValue[Index]:= UTF8String(aValue);
end;

procedure TXMLNode_.SetAttributeUnicodeValue(Index: integer; const aValue: string);
begin
  AttributeValue[Index]:= UTF8String(aValue);
end;

procedure TXMLNode_.SetNodeUnicode(const aName: string);
begin
  Name:= UTF8String(aName);
end;

procedure TXMLNode_.WriteAttributestring(const AName, AValue, ADefault: string);
begin
  WriteAttributestring(UTF8String(AName), UTF8String(AValue), UTF8String(ADefault));
end;

end.
