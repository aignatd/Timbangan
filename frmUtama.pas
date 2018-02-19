unit frmUtama;

interface

uses
  Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.AppEvnts, Vcl.StdCtrls, IdHTTPWebBrokerBridge, Web.HTTPApp, Vcl.Menus,
  System.ImageList, Vcl.ImgList;

type
  TUtama = class(TForm)
    EditPort: TEdit;
    Label1: TLabel;
    ApplicationEvents1: TApplicationEvents;
    ButtonOpenBrowser: TButton;
    mmUtama: TMainMenu;
    imbangan1: TMenuItem;
    mmStart: TMenuItem;
    mmKeluar: TMenuItem;
    mmData: TMenuItem;
    mmSetting: TMenuItem;
    imgList: TImageList;
    procedure FormCreate(Sender: TObject);
    procedure ButtonOpenBrowserClick(Sender: TObject);
    procedure mmStartClick(Sender: TObject);
  private
    FServer: TIdHTTPWebBrokerBridge;
    procedure mmStopClick(Sender: TObject);
    procedure StartServer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Utama: TUtama;

implementation

{$R *.dfm}

uses
  WinApi.Windows, Winapi.ShellApi, Datasnap.DSSession;

procedure TUtama.ButtonOpenBrowserClick(Sender: TObject);
var
  LURL: string;
begin
  StartServer;
  LURL := Format('http://localhost:%s', [EditPort.Text]);
  ShellExecute(0,
        nil,
        PChar(LURL), nil, nil, SW_SHOWNOACTIVATE);
end;

procedure TerminateThreads;
begin
  if TDSSessionManager.Instance <> nil then
    TDSSessionManager.Instance.TerminateAllSessions;
end;

procedure TUtama.FormCreate(Sender: TObject);
begin
  FServer := TIdHTTPWebBrokerBridge.Create(Self);
end;

procedure TUtama.mmStartClick(Sender: TObject);
begin
  StartServer;
end;

procedure TUtama.mmStopClick(Sender: TObject);
begin
  TerminateThreads;
  FServer.Active := False;
  FServer.Bindings.Clear;
  mmStart.OnClick := mmStartClick;
  mmStart.Caption := 'Start';
  mmStart.ImageIndex := 1;
end;

procedure TUtama.StartServer;
begin
  if not FServer.Active then
  begin
    FServer.Bindings.Clear;
    FServer.DefaultPort := StrToInt(EditPort.Text);
    FServer.Active := True;
    mmStart.OnClick := mmStopClick;
    mmStart.Caption := 'Stop';
    mmStart.ImageIndex := 0;
  end;
end;

end.
