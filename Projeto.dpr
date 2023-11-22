program Projeto;

uses
  Vcl.Forms,
  uMenu in 'uMenu.pas' {frmMenu},
  uCidades in 'View\uCidades.pas' {frmCidades},
  dmProjeto in 'Database\dmProjeto.pas' {dataProjeto: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMenu, frmMenu);
  Application.CreateForm(TfrmCidades, frmCidades);
  Application.CreateForm(TdataProjeto, dataProjeto);
  Application.Run;
end.
