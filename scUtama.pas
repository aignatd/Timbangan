unit scUtama;

interface

uses System.SysUtils, System.Classes,
  Datasnap.DSServer, Datasnap.DSCommonServer,
  Datasnap.DSClientMetadata, Datasnap.DSHTTPServiceProxyDispatcher,
  Datasnap.DSProxyJavaAndroid, Datasnap.DSProxyJavaBlackBerry,
  Datasnap.DSProxyObjectiveCiOS, Datasnap.DSProxyCsharpSilverlight,
  Datasnap.DSProxyFreePascal_iOS,
  Datasnap.DSAuth;

type
  TSerCont = class(TDataModule)
    DSServer1: TDSServer;
    DSServerClass1: TDSServerClass;
    procedure DSServerClass1GetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
  private
    { Private declarations }
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  end;

function DSServer: TDSServer;

implementation


{$R *.dfm}

uses Winapi.Windows, smUtama;

var
  FModule: TComponent;
  FDSServer: TDSServer;

function DSServer: TDSServer;
begin
  Result := FDSServer;
end;

constructor TSerCont.Create(AOwner: TComponent);
begin
  inherited;
  FDSServer := DSServer1;
end;

destructor TSerCont.Destroy;
begin
  inherited;
  FDSServer := nil;
end;

procedure TSerCont.DSServerClass1GetClass(
  DSServerClass: TDSServerClass; var PersistentClass: TPersistentClass);
begin
  PersistentClass := smUtama.TServerMethods1;
end;


initialization
  FModule := TSerCont.Create(nil);
finalization
  FModule.Free;
end.

