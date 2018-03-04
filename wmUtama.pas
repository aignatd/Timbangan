unit wmUtama;

interface

uses
  System.SysUtils, System.Classes, Web.HTTPApp, Datasnap.DSHTTPCommon,
  Datasnap.DSHTTPWebBroker, Datasnap.DSServer,
  Web.WebFileDispatcher, Web.HTTPProd,
  DataSnap.DSAuth, System.JSON, REST.Json, REST.Json.Types,
  Datasnap.DSProxyDispatcher, Datasnap.DSProxyJavaAndroid,
  Datasnap.DSProxyJavaBlackBerry, Datasnap.DSProxyObjectiveCiOS,
  Datasnap.DSProxyCsharpSilverlight,
  Datasnap.DSProxyFreePascal_iOS,
  Datasnap.DSProxyJavaScript, IPPeerServer, Datasnap.DSMetadata,
  Datasnap.DSServerMetadata, Datasnap.DSClientMetadata,
  Datasnap.DSCommonServer, Datasnap.DSHTTP;

type
  TWebMod = class(TWebModule)
    DSRESTWebDispatcher1: TDSRESTWebDispatcher;
    ServerFunctionInvoker: TPageProducer;
    ReverseString: TPageProducer;
    WebFileDispatcher1: TWebFileDispatcher;
    DSProxyGenerator1: TDSProxyGenerator;
    DSServerMetaDataProvider1: TDSServerMetaDataProvider;
    DSProxyDispatcher1: TDSProxyDispatcher;
    procedure ServerFunctionInvokerHTMLTag(Sender: TObject; Tag: TTag;
      const TagString: string; TagParams: TStrings; var ReplaceText: string);
    procedure WebModuleDefaultAction(Sender: TObject;
      Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
    procedure WebModuleBeforeDispatch(Sender: TObject;
      Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
    procedure WebFileDispatcher1BeforeDispatch(Sender: TObject;
      const AFileName: string; Request: TWebRequest; Response: TWebResponse;
      var Handled: Boolean);
    procedure WebModuleCreate(Sender: TObject);
    procedure WebModTimbanganAction(Sender: TObject; Request: TWebRequest;
      Response: TWebResponse; var Handled: Boolean);
  private
    { Private declarations }
    FServerFunctionInvokerAction: TWebActionItem;
    function AllowServerFunctionInvoker: Boolean;
  public
    { Public declarations }
  end;

type
  TTampungCore = class
    [JSONName('Kode')]
    kode  : String;
    [JSONName('Pesan')]
    pesan : String;
  end;

  TTampungTimbang = class
    [JSONName('Timbangan')]
    timbangan  : Integer;
  end;

  TTimbangResponse = class
    [JSONName('CoreResponse')]
    coreresponse  : TTampungCore;
    [JSONName('TimbanganRsp')]
    timbanganrsp  : TTampungTimbang;
  end;

type
  TTerimaTimbang = class
    [JSONName('JenisTimbang')]
    JenisTimbang  : Integer;
    [JSONName('Warehouse')]
    Warehouse     : String;
  end;

  TTimbangResquest = class
    [JSONName('DataAutoTimbang')]
    DataAutoTimbang  : TTerimaTimbang;
  end;

var
  WebModuleClass: TComponentClass = TWebMod;

implementation


{$R *.dfm}

uses smUtama, scUtama, Web.WebReq, frmUtama;

procedure TWebMod.ServerFunctionInvokerHTMLTag(Sender: TObject; Tag: TTag;
  const TagString: string; TagParams: TStrings; var ReplaceText: string);
begin
  if SameText(TagString, 'urlpath') then
    ReplaceText := string(Request.InternalScriptName)
  else if SameText(TagString, 'port') then
    ReplaceText := IntToStr(Request.ServerPort)
  else if SameText(TagString, 'host') then
    ReplaceText := string(Request.Host)
  else if SameText(TagString, 'classname') then
    ReplaceText := smUtama.TServerMethods1.ClassName
  else if SameText(TagString, 'loginrequired') then
    if DSRESTWebDispatcher1.AuthenticationManager <> nil then
      ReplaceText := 'true'
    else
      ReplaceText := 'false'
  else if SameText(TagString, 'serverfunctionsjs') then
    ReplaceText := string(Request.InternalScriptName) + '/js/serverfunctions.js'
  else if SameText(TagString, 'servertime') then
    ReplaceText := DateTimeToStr(Now)
  else if SameText(TagString, 'serverfunctioninvoker') then
    if AllowServerFunctionInvoker then
      ReplaceText :=
      '<div><a href="' + string(Request.InternalScriptName) +
      '/ServerFunctionInvoker" target="_blank">Server Functions</a></div>'
    else
      ReplaceText := '';
end;

procedure TWebMod.WebModuleDefaultAction(Sender: TObject;
  Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
begin
  if (Request.InternalPathInfo = '') or (Request.InternalPathInfo = '/')then
    Response.Content := ReverseString.Content
  else
    Response.SendRedirect(Request.InternalScriptName + '/');
end;

procedure TWebMod.WebModTimbanganAction(Sender: TObject;
  Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
var
  vTimbangResquest : TTimbangResquest;
  vTerimaTimbang  : TTerimaTimbang;

  vTimbangResponse : TTimbangResponse;
  vTampungCore  : TTampungCore;
  vTampungTimbang  : TTampungTimbang;

  JenisTimbang  : Integer;
begin
  vTimbangResquest  := TTimbangResquest.Create;
  vTerimaTimbang  :=  TTerimaTimbang.Create;

  vTimbangResquest := TJson.JsonToObject<TTimbangResquest>(Request.Content);
  JenisTimbang := vTimbangResquest.DataAutoTimbang.JenisTimbang;

  vTimbangResponse := TTimbangResponse.Create;
  vTampungCore := TTampungCore.Create;
  vTampungTimbang := TTampungTimbang.Create;

  try
    vTampungCore.kode := '0';
    vTampungCore.pesan := 'Ambil data timbang sukses';

    if JenisTimbang = 1 then
      vTampungTimbang.timbangan := StrToInt(Utama.tonKecil1.Caption)
    else
      vTampungTimbang.timbangan := StrToInt(Utama.tonBesar1.Caption);
   finally
    Response.ContentType := 'application/json';
    vTimbangResponse.coreresponse := vTampungCore;
    vTimbangResponse.timbanganrsp := vTampungTimbang;
    Response.Content := TJson.ObjectToJsonString(vTimbangResponse);

    vTimbangResquest.Free;
    vTerimaTimbang.Free;
    vTimbangResponse.Free;
    vTampungCore.Free;
    vTampungTimbang.Free;
  end;
end;

procedure TWebMod.WebModuleBeforeDispatch(Sender: TObject;
  Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
begin
  if FServerFunctionInvokerAction <> nil then
    FServerFunctionInvokerAction.Enabled := AllowServerFunctionInvoker;
end;

function TWebMod.AllowServerFunctionInvoker: Boolean;
begin
  Result := (Request.RemoteAddr = '127.0.0.1') or
    (Request.RemoteAddr = '0:0:0:0:0:0:0:1') or (Request.RemoteAddr = '::1');
end;

procedure TWebMod.WebFileDispatcher1BeforeDispatch(Sender: TObject;
  const AFileName: string; Request: TWebRequest; Response: TWebResponse;
  var Handled: Boolean);
var
  D1, D2: TDateTime;
begin
  Handled := False;
  if SameFileName(ExtractFileName(AFileName), 'serverfunctions.js') then
    if not FileExists(AFileName) or (FileAge(AFileName, D1) and FileAge(WebApplicationFileName, D2) and (D1 < D2)) then
    begin
      DSProxyGenerator1.TargetDirectory := ExtractFilePath(AFileName);
      DSProxyGenerator1.TargetUnitName := ExtractFileName(AFileName);
      DSProxyGenerator1.Write;
    end;
end;

procedure TWebMod.WebModuleCreate(Sender: TObject);
begin
  FServerFunctionInvokerAction := ActionByName('ServerFunctionInvokerAction');
  DSServerMetaDataProvider1.Server := DSServer;
  DSRESTWebDispatcher1.Server := DSServer;
  if DSServer.Started then
  begin
    DSRESTWebDispatcher1.DbxContext := DSServer.DbxContext;
    DSRESTWebDispatcher1.Start;
  end;
end;

initialization
finalization
  Web.WebReq.FreeWebModules;

end.

