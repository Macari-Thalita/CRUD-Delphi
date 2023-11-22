unit uCidades;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, dmProjeto, Vcl.Buttons;

type
  TfrmCidades = class(TForm)
    btIncluir: TButton;
    btAlterar: TButton;
    btExcluir: TButton;
    btVoltar: TButton;
    edCidade: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    edUF: TEdit;
    dbgCidades: TDBGrid;
    dsCidades: TDataSource;
    btSalvar: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure btVoltarClick(Sender: TObject);
    procedure btIncluirClick(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCidades: TfrmCidades;

implementation

{$R *.dfm}

procedure TfrmCidades.btIncluirClick(Sender: TObject);
begin
   edCidade.Enabled     := True;
   edCidade.Color       := clWhite;
   edUF.Enabled         := True;
   edUF.Color           := clWhite;
   btSalvar.Enabled     := True;
   btAlterar.Enabled    := False;
   btExcluir.Enabled    := False;
end;

procedure TfrmCidades.btSalvarClick(Sender: TObject);
var
  dataModule: TdataProjeto;
begin
   if (Trim(edCidade.Text) = EmptyStr) or (Trim(edUF.Text) = EmptyStr) then
   begin
      MessageDlg('Preencha os campos corretamente!', TMsgDlgType.mtWarning, [TMsgDlgBtn.mbOK], 0);
   end;
   dataModule := TdataProjeto.Create(nil);
   dataModule.fdtCidades.Open();
   dataModule.fdtCidades.Append;
   dataModule.fdtCidadesCIDADE_ID.AsInteger   := 7;
   dataModule.fdtCidadesCIDADE_NOME.AsString  := edCidade.Text;
   dataModule.fdtCidadesCIDADE_UF.AsString    := edUF.Text;
   dataModule.fdtCidades.Post;
   dataModule.fdtCidades.Close;
   dataModule.fdtCidades.Open();
   //dataModule.fdtCidades.ApplyUpdates();
end;

procedure TfrmCidades.btVoltarClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmCidades.FormCreate(Sender: TObject);
var
   dataModule: TdataProjeto;
begin
   Left := (Screen.Width - Width) div 2;
   Top  := (Screen.Height - Height) div 2;

   dataModule                    := TdataProjeto.Create(nil);
   dataModule.fdtCidades.Open();
   dsCidades.DataSet             := dataModule.fdtCidades;
end;
end.
