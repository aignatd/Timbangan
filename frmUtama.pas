unit frmUtama;

interface

uses
  Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.AppEvnts, Vcl.StdCtrls, IdHTTPWebBrokerBridge, Web.HTTPApp, Vcl.Menus,
  System.ImageList, Vcl.ImgList, Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TUtama = class(TForm)
    ApplicationEvents1: TApplicationEvents;
    mmUtama: TMainMenu;
    imbangan1: TMenuItem;
    mmStart: TMenuItem;
    mmData: TMenuItem;
    mmSetting: TMenuItem;
    imgList: TImageList;
    Browser1: TMenuItem;
    sbUtama: TStatusBar;
    tUtama: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure mmStartClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure mmSettingClick(Sender: TObject);
    procedure Browser1Click(Sender: TObject);
    procedure tUtamaTimer(Sender: TObject);
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

procedure TUtama.Browser1Click(Sender: TObject);
var
  LURL: string;
begin
	if sbUtama.Panels[1].Text <> '' then
 	begin
	  StartServer;
  	LURL := Format('http://localhost:%s', [sbUtama.Panels[1].Text]);
  	ShellExecute(0,
        nil,
        PChar(LURL), nil, nil, SW_SHOWNOACTIVATE);
  end;
end;

procedure TerminateThreads;
begin
  if TDSSessionManager.Instance <> nil then
    TDSSessionManager.Instance.TerminateAllSessions;
end;

procedure TUtama.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if MessageDlg('Tutup aplikasi, anda yakin ?', mtConfirmation, [mbOk, mbCancel], 0) = mrCancel then CanClose := False;
end;

procedure TUtama.FormCreate(Sender: TObject);
begin
  FServer := TIdHTTPWebBrokerBridge.Create(Self);
end;

procedure TUtama.mmSettingClick(Sender: TObject);
var
	value :	String;
begin
	if InputQuery('Setting port', 'Masukan port host : ', value)
  then sbUtama.Panels[1].Text := value;
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
	if sbUtama.Panels[1].Text <> '' then
 	begin
	  if not FServer.Active then
  	begin
    	FServer.Bindings.Clear;
    	FServer.DefaultPort := StrToInt(sbUtama.Panels[1].Text);
    	FServer.Active := True;
    	mmStart.OnClick := mmStopClick;
    	mmStart.Caption := 'Stop';
    	mmStart.ImageIndex := 0;
  	end;
  end;
end;

procedure TUtama.tUtamaTimer(Sender: TObject);
var
  today : TDateTime;
begin
	sbUtama.Panels[0].Text := TimeToStr(Now());
end;

end.
