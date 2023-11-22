unit dmProjeto;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  Data.DB, FireDAC.Comp.Client, FireDAC.Phys.FB, FireDAC.Phys.FBDef,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, Datasnap.DBClient, Datasnap.Provider, Data.FMTBcd,
  Data.DBXInterBase, Data.SqlExpr, FireDAC.Comp.UI, FireDAC.Phys.IBBase;

type
  TdataProjeto = class(TDataModule)
    fdConexao: TFDConnection;
    fdDriverLink: TFDPhysFBDriverLink;
    fdtCidades: TFDTable;
    fdtCidadesCIDADE_ID: TIntegerField;
    fdtCidadesCIDADE_NOME: TStringField;
    fdtCidadesCIDADE_UF: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dataProjeto: TdataProjeto;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TdataProjeto.DataModuleCreate(Sender: TObject);
begin
   fdConexao.Connected := True;
end;

end.
