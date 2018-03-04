program Timbangan;
{$APPTYPE GUI}

{$R *.dres}

uses
  Vcl.Forms,
  Web.WebReq,
  IdHTTPWebBrokerBridge,
  frmUtama in 'frmUtama.pas' {Utama},
  smUtama in 'smUtama.pas',
  scUtama in 'scUtama.pas' {SerCont: TDataModule},
  wmUtama in 'wmUtama.pas' {WebMod: TWebModule};

{$R *.res}

begin
  if WebRequestHandler <> nil then
    WebRequestHandler.WebModuleClass := WebModuleClass;
  Application.Initialize;
  Application.Title := 'Timbangan';
  Application.CreateForm(TUtama, Utama);
  Application.Run;
end.
