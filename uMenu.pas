unit uMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, uCidades, dmProjeto;

type
  TfrmMenu = class(TForm)
    mnuPrincipal: TMainMenu;
    mnuItemCidades: TMenuItem;
    mnuItemClientes: TMenuItem;
    mnuItemRelatorio: TMenuItem;
    mnuItem001: TMenuItem;
    mnuItem002: TMenuItem;
    mnuItem003: TMenuItem;
    mnuItem004: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure mnuItem001Click(Sender: TObject);
    procedure conexaoBanco();
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMenu: TfrmMenu;

implementation

{$R *.dfm}

procedure TfrmMenu.conexaoBanco;
var
   dataModule: TdataProjeto;
begin
   dataModule := TdataProjeto.Create(nil);
   dataModule.fdConexao.Connected := True;
end;

procedure TfrmMenu.FormCreate(Sender: TObject);

begin
   Left := (Screen.Width - Width) div 2;
   Top  := (Screen.Height - Height) div 2;

   //conexaoBanco();
end;

procedure TfrmMenu.mnuItem001Click(Sender: TObject);
var
   frmCidades: TfrmCidades;
begin
   frmCidades := TfrmCidades.Create(nil);
   frmCidades.Show;
end;
end.
