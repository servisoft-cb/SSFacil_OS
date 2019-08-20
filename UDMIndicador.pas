unit UDMIndicador;

interface

uses
  SysUtils, Classes, FMTBcd, DB, SqlExpr, Provider, DBClient;

type
  TDMIndicador = class(TDataModule)
    sdsPrazoEntrega: TSQLDataSet;
    dspPrazoEntrega: TDataSetProvider;
    cdsPrazoEntrega: TClientDataSet;
    cdsPrazoEntregaID_NOTA: TIntegerField;
    cdsPrazoEntregaNUMNOTA: TIntegerField;
    cdsPrazoEntregaDTEMISSA_NOTA: TDateField;
    cdsPrazoEntregaITEM_NOTA: TIntegerField;
    cdsPrazoEntregaID_OS_SERV: TIntegerField;
    cdsPrazoEntregaNUM_OS: TIntegerField;
    cdsPrazoEntregaDTRECEBIMENTO: TDateField;
    cdsPrazoEntregaDT_AGENDA: TDateField;
    cdsPrazoEntregaREFERENCIA: TStringField;
    cdsPrazoEntregaNOME_PRODUTO: TStringField;
    cdsPrazoEntregaID_CLIENTE: TIntegerField;
    cdsPrazoEntregaNOME_CLIENTE: TStringField;
    cdsPrazoEntregaQTD: TFloatField;
    cdsPrazoEntregaUNIDADE: TStringField;
    dsPrazoEntrega: TDataSource;
    sdsPrazoCliente: TSQLDataSet;
    dspPrazoCliente: TDataSetProvider;
    cdsPrazoCliente: TClientDataSet;
    dsPrazoCliente: TDataSource;
    cdsPrazoClienteCONTADOR: TIntegerField;
    cdsPrazoClienteID_CLIENTE: TIntegerField;
    cdsPrazoClienteNOME_CLIENTE: TStringField;
    cdsPrazoClienteQTD_FORAPRAZO: TFloatField;
    cdsPrazoClienteQTD_NOPRAZO: TFloatField;
    cdsPrazoClientePERC_ENTREGA: TFloatField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    ctPrazoEntrega : String;
    
  end;

var
  DMIndicador: TDMIndicador;

implementation

uses DmdDatabase;

{$R *.dfm}

procedure TDMIndicador.DataModuleCreate(Sender: TObject);
begin
  ctPrazoEntrega := sdsPrazoEntrega.CommandText;
end;

end.
