unit frmUtama;

interface

uses
  Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.AppEvnts, Vcl.StdCtrls, IdHTTPWebBrokerBridge, Web.HTTPApp, Vcl.Menus,
  System.ImageList, Vcl.ImgList, Vcl.ExtCtrls, Vcl.ComCtrls, CPortCtl,
  CPort, Vcl.ToolWin;

type
  TUtama = class(TForm)
    ApplicationEvents1: TApplicationEvents;
    mmUtama: TMainMenu;
    imbangan1: TMenuItem;
    mmStart: TMenuItem;
    mmSetting: TMenuItem;
    imgList: TImageList;
    Browser1: TMenuItem;
    sbUtama: TStatusBar;
    tUtama: TTimer;
    cpBesar1: TComPort;
    pcUtama: TPageControl;
    tsBesar1: TTabSheet;
    tsKecil1: TTabSheet;
    tbUtama: TToolBar;
    tbKonek1: TToolButton;
    ToolButton2: TToolButton;
    tbSetting1: TToolButton;
    ToolButton3: TToolButton;
    tbSave1: TToolButton;
    ToolButton5: TToolButton;
    tbLoad1: TToolButton;
    cbTimbang1: TComboBox;
    ToolBar1: TToolBar;
    tbKonek2: TToolButton;
    ToolButton4: TToolButton;
    tbSetting2: TToolButton;
    ToolButton7: TToolButton;
    tbSave2: TToolButton;
    ToolButton9: TToolButton;
    tbLoad2: TToolButton;
    cbTimbang2: TComboBox;
    gbState1: TGroupBox;
    ComLed1: TComLed;
    Label1: TLabel;
    ComLed2: TComLed;
    Label2: TLabel;
    GroupBox1: TGroupBox;
    ComLed3: TComLed;
    Label3: TLabel;
    ComLed4: TComLed;
    Label4: TLabel;
    tonBesar1: TLabel;
    tonKecil1: TLabel;
    cpKecil1: TComPort;
    procedure FormCreate(Sender: TObject);
    procedure mmStartClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure mmSettingClick(Sender: TObject);
    procedure Browser1Click(Sender: TObject);
    procedure tUtamaTimer(Sender: TObject);
    procedure tbKonek1Click(Sender: TObject);
    procedure tbSetting1Click(Sender: TObject);
    procedure tbSave1Click(Sender: TObject);
    procedure tbLoad1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cpBesar1AfterClose(Sender: TObject);
    procedure cpBesar1AfterOpen(Sender: TObject);
    procedure cpBesar1RxChar(Sender: TObject; Count: Integer);
    procedure tbKonek2Click(Sender: TObject);
    procedure tbSetting2Click(Sender: TObject);
    procedure tbSave2Click(Sender: TObject);
    procedure tbLoad2Click(Sender: TObject);
    procedure cpKecil1AfterClose(Sender: TObject);
    procedure cpKecil1AfterOpen(Sender: TObject);
    procedure cpKecil1RxChar(Sender: TObject; Count: Integer);
  private
    FServer: TIdHTTPWebBrokerBridge;
    procedure mmStopClick(Sender: TObject);
    procedure StartServer;
    procedure ProsesDataTimbangan(Str : String; cbTimbang : TComboBox; cbTonase : TLabel; intState : Integer);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Utama: TUtama;
  strTimbangBesar1  : String;
  strTimbangKecil1  : String;

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

procedure TUtama.cpBesar1AfterClose(Sender: TObject);
begin
  if tbKonek1 <> nil then
    tbKonek1.ImageIndex := 3;
end;

procedure TUtama.cpBesar1AfterOpen(Sender: TObject);
begin
  tbKonek1.ImageIndex := 0;
end;

procedure TUtama.cpBesar1RxChar(Sender: TObject; Count: Integer);
var
  Str : String;
begin
  cpBesar1.ReadStr(Str, Count);
  ProsesDataTimbangan(str, cbTimbang1, tonBesar1, 1);
end;

procedure TUtama.cpKecil1AfterClose(Sender: TObject);
begin
  if tbKonek2 <> nil then
    tbKonek2.ImageIndex := 3;
end;

procedure TUtama.cpKecil1AfterOpen(Sender: TObject);
begin
  tbKonek2.ImageIndex := 0;
end;

procedure TUtama.cpKecil1RxChar(Sender: TObject; Count: Integer);
var
  Str : String;
begin
  cpKecil1.ReadStr(Str, Count);
  ProsesDataTimbangan(str, cbTimbang2, tonKecil1, 2);
end;

procedure TUtama.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if MessageDlg('Tutup aplikasi, anda yakin ?', mtConfirmation, [mbOk, mbCancel], 0) = mrCancel then CanClose := False;
end;

procedure TUtama.FormCreate(Sender: TObject);
begin
  FServer := TIdHTTPWebBrokerBridge.Create(Self);
end;

procedure TUtama.FormShow(Sender: TObject);
begin
  cpBesar1.LoadSettings(stRegistry, 'HKEY_LOCAL_MACHINE\Software\Warehouse\Besar1');
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
  sbUtama.Panels[2].Text := 'Stop';
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
      sbUtama.Panels[2].Text := 'Start';
  	end;
  end;
end;

procedure TUtama.tbKonek1Click(Sender: TObject);
begin
  if cpBesar1.Connected then
  begin
    cpBesar1.Close;
    tbKonek1.ImageIndex := 3;
  end
  else
  Begin
    cpBesar1.Open;
    tbKonek1.ImageIndex := 0;
  End;
end;

procedure TUtama.tbKonek2Click(Sender: TObject);
begin
  if cpKecil1.Connected then
  begin
    cpKecil1.Close;
    tbKonek2.ImageIndex := 3;
  end
  else
  Begin
    cpKecil1.Open;
    tbKonek2.ImageIndex := 0;
  End;
end;

procedure TUtama.tbLoad1Click(Sender: TObject);
begin
  cpBesar1.LoadSettings(stRegistry, 'HKEY_LOCAL_MACHINE\Software\Warehouse\Besar1');
end;

procedure TUtama.tbLoad2Click(Sender: TObject);
begin
  cpKecil1.LoadSettings(stRegistry, 'HKEY_LOCAL_MACHINE\Software\Warehouse\Kecil1');
end;

procedure TUtama.tbSave1Click(Sender: TObject);
begin
  cpBesar1.StoreSettings(stRegistry, 'HKEY_LOCAL_MACHINE\Software\Warehouse\Besar1');
end;

procedure TUtama.tbSave2Click(Sender: TObject);
begin
  cpKecil1.StoreSettings(stRegistry, 'HKEY_LOCAL_MACHINE\Software\Warehouse\Kecil1');
end;

procedure TUtama.tbSetting1Click(Sender: TObject);
begin
  cpBesar1.ShowSetupDialog;
end;

procedure TUtama.tbSetting2Click(Sender: TObject);
begin
  cpKecil1.ShowSetupDialog;
end;

procedure TUtama.tUtamaTimer(Sender: TObject);
var
  today : TDateTime;
begin
	sbUtama.Panels[0].Text := TimeToStr(Now());
end;

procedure TUtama.ProsesDataTimbangan(Str : String; cbTimbang : TComboBox; cbTonase : TLabel; intState : Integer);
begin
  if not Str.IsEmpty then
  begin
    if cbTimbang.Text = 'GST' then
    begin
      if intState = 1 then
        strTimbangBesar1 := strTimbangBesar1 + Str.Trim
      else
      if intState = 2 then
        strTimbangKecil1 := strTimbangKecil1 + Str.Trim;

      if Str.Trim = '+' then
      begin
        if intState = 1 then
        begin
          cbTonase.Caption := strTimbangBesar1.Substring(0, 6);
          strTimbangBesar1 := '';
        end
        else
        if intState = 2 then
        begin
          cbTonase.Caption := strTimbangKecil1.Substring(0, 6);
          strTimbangKecil1 := '';
        end;
      end;
    end
    else
    if cbTimbang.Text = 'HERBER' then
    begin
      if Str.Trim <> '=' then
        cbTonase.Caption := Str.Trim;
    end;
  end;
end;

end.
