unit UDMConsOrdemServico;

interface

uses
  SysUtils, Classes, FMTBcd, DB, SqlExpr, DBClient, Provider;

type
  TDMConsOrdemServico = class(TDataModule)
    sdsOrdemServico_Nota: TSQLDataSet;
    dspOrdemServico_Nota: TDataSetProvider;
    cdsOrdemServico_Nota: TClientDataSet;
    cdsOrdemServico_NotaID: TIntegerField;
    cdsOrdemServico_NotaITEM: TIntegerField;
    cdsOrdemServico_NotaQTD_OS: TIntegerField;
    cdsOrdemServico_NotaNUMNOTA: TIntegerField;
    cdsOrdemServico_NotaID_PEDIDO: TIntegerField;
    cdsOrdemServico_NotaITEM_PEDIDO: TIntegerField;
    cdsOrdemServico_NotaID_NOTA: TIntegerField;
    cdsOrdemServico_NotaNUM_PEDIDO: TIntegerField;
    cdsOrdemServico_NotaPEDIDO_CLIENTE: TStringField;
    cdsOrdemServico_NotaDTPEDIDO: TDateField;
    cdsOrdemServico_NotaDTNOTA: TDateField;
    cdsOrdemServico_NotaQTD_NOTA: TFloatField;
    cdsOrdemServico_NotaQTD_PEDIDO: TFloatField;
    cdsOrdemServico_NotaQTD_RESTANTE: TFloatField;
    cdsOrdemServico_NotaNOME_CLIENTE: TStringField;
    cdsOrdemServico_NotaCNPJ_CPF: TStringField;
    cdsOrdemServico_NotaCIDADE: TStringField;
    cdsOrdemServico_NotaUF: TStringField;
    dsOrdemServico_Nota: TDataSource;
    cdsOrdemServico_NotaNUM_OS: TIntegerField;
    sdsOrdemServico: TSQLDataSet;
    dspOrdemServico: TDataSetProvider;
    cdsOrdemServico: TClientDataSet;
    dsOrdemServico: TDataSource;
    cdsOrdemServicoID: TIntegerField;
    cdsOrdemServicoITEM: TIntegerField;
    cdsOrdemServicoQTD_OS: TIntegerField;
    cdsOrdemServicoID_PEDIDO: TIntegerField;
    cdsOrdemServicoITEM_PEDIDO: TIntegerField;
    cdsOrdemServicoNUM_PEDIDO: TIntegerField;
    cdsOrdemServicoPEDIDO_CLIENTE: TStringField;
    cdsOrdemServicoDTPEDIDO: TDateField;
    cdsOrdemServicoQTD_PEDIDO: TFloatField;
    cdsOrdemServicoQTD_RESTANTE: TFloatField;
    cdsOrdemServicoNOME_CLIENTE: TStringField;
    cdsOrdemServicoCNPJ_CPF: TStringField;
    cdsOrdemServicoCIDADE: TStringField;
    cdsOrdemServicoUF: TStringField;
    cdsOrdemServicoNUM_OS: TIntegerField;
    cdsOrdemServicoQTD_FATURADO: TFloatField;
    cdsOrdemServicoDATA_OS: TDateField;
    cdsOrdemServico_NotaDATA_OS: TDateField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    ctOrdemServico_Nota, ctOrdemServico : String;
    
  end;

var
  DMConsOrdemServico: TDMConsOrdemServico;

implementation

uses DmdDatabase;

{$R *.dfm}

procedure TDMConsOrdemServico.DataModuleCreate(Sender: TObject);
begin
  ctOrdemServico      := sdsOrdemServico.CommandText;
  ctOrdemServico_Nota := sdsOrdemServico_Nota.CommandText;
end;

end.
