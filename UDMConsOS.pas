unit UDMConsOS;

interface

uses
  SysUtils, Classes, FMTBcd, DB, SqlExpr, DBClient, Provider;

type
  TDMConsOS = class(TDataModule)
    sdsConsProcesso: TSQLDataSet;
    dspConsProcesso: TDataSetProvider;
    cdsConsProcesso: TClientDataSet;
    cdsConsProcessoID: TIntegerField;
    cdsConsProcessoITEM: TIntegerField;
    cdsConsProcessoITEM_PROC: TIntegerField;
    cdsConsProcessoID_PROCESSO: TIntegerField;
    cdsConsProcessoID_SERVICO_OS: TIntegerField;
    cdsConsProcessoQTD_HORAS: TFloatField;
    cdsConsProcessoDTENTREGA: TDateField;
    cdsConsProcessoDTENTRADA: TDateField;
    cdsConsProcessoDTCONCLUIDO: TDateField;
    cdsConsProcessoHRENTRADA: TTimeField;
    cdsConsProcessoHRCONCLUIDO: TTimeField;
    cdsConsProcessoNUM_OS: TIntegerField;
    cdsConsProcessoORDEM: TIntegerField;
    cdsConsProcessoSTATUS: TStringField;
    cdsConsProcessoDESC_STATUS: TStringField;
    cdsConsProcessoNOME_PROCESSO: TStringField;
    cdsConsProcessoNOME_SERVICO: TStringField;
    cdsConsProcessoDTEMISSAO: TDateField;
    dsConsProcesso: TDataSource;
    sdsProcesso: TSQLDataSet;
    dspProcesso: TDataSetProvider;
    cdsProcesso: TClientDataSet;
    dsProcesso: TDataSource;
    cdsProcessoID: TIntegerField;
    cdsProcessoNOME: TStringField;
    cdsConsProcessoNOME_CLIENTE: TStringField;
    qCliente: TSQLQuery;
    qClienteCODIGO: TIntegerField;
    qClienteNOME: TStringField;
    qClienteCNPJ_CPF: TStringField;
    cdsConsProcessoQTD: TFloatField;
    cdsConsProcessoRETRABALHO: TStringField;
    cdsConsProcessoQTD_RETRABALHO: TFloatField;
    cdsConsProcessoagQtd_Retrabalho: TAggregateField;
    cdsConsProcessoagQtd_Total: TAggregateField;
    cdsConsProcessoagQtd: TAggregateField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    ctConsProcesso : String;
  end;

var
  DMConsOS: TDMConsOS;

implementation

uses DmdDatabase;

{$R *.dfm}

procedure TDMConsOS.DataModuleCreate(Sender: TObject);
begin
  ctConsProcesso := sdsConsProcesso.CommandText;
  cdsProcesso.Open;
end;

end.
