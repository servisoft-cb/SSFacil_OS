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
    sdsOrdemServico_Ped: TSQLDataSet;
    dspOrdemServico_Ped: TDataSetProvider;
    cdsOrdemServico_Ped: TClientDataSet;
    dsOrdemServico_Ped: TDataSource;
    cdsOrdemServico_PedID: TIntegerField;
    cdsOrdemServico_PedITEM: TIntegerField;
    cdsOrdemServico_PedID_PEDIDO: TIntegerField;
    cdsOrdemServico_PedITEM_PEDIDO: TIntegerField;
    cdsOrdemServico_PedNUM_PEDIDO: TIntegerField;
    cdsOrdemServico_PedPEDIDO_CLIENTE: TStringField;
    cdsOrdemServico_PedDTPEDIDO: TDateField;
    cdsOrdemServico_PedQTD_PEDIDO: TFloatField;
    cdsOrdemServico_PedQTD_RESTANTE: TFloatField;
    cdsOrdemServico_PedNOME_CLIENTE: TStringField;
    cdsOrdemServico_PedCNPJ_CPF: TStringField;
    cdsOrdemServico_PedCIDADE: TStringField;
    cdsOrdemServico_PedUF: TStringField;
    cdsOrdemServico_PedNUM_OS: TIntegerField;
    cdsOrdemServico_PedQTD_FATURADO: TFloatField;
    cdsOrdemServico_PedDATA_OS: TDateField;
    cdsOrdemServico_NotaDATA_OS: TDateField;
    cdsOrdemServico_NotaDTRECEBIMENTO: TDateField;
    cdsOrdemServico_PedDTRECEBIMENTO: TDateField;
    sdsOrdemServico: TSQLDataSet;
    dspOrdemServico: TDataSetProvider;
    cdsOrdemServico: TClientDataSet;
    dsOrdemServico: TDataSource;
    cdsOrdemServicoQTD_FATURADO: TFloatField;
    cdsOrdemServicoID: TIntegerField;
    cdsOrdemServicoITEM: TIntegerField;
    cdsOrdemServicoQTD_PEDIDO: TFloatField;
    cdsOrdemServicoQTD_RESTANTE: TFloatField;
    cdsOrdemServicoNOME_CLIENTE: TStringField;
    cdsOrdemServicoCNPJ_CPF: TStringField;
    cdsOrdemServicoCIDADE: TStringField;
    cdsOrdemServicoUF: TStringField;
    cdsOrdemServicoNUM_OS: TIntegerField;
    cdsOrdemServicoDATA_OS: TDateField;
    cdsOrdemServicoDTRECEBIMENTO: TDateField;
    cdsOrdemServico_NotaQTD_OS: TFloatField;
    cdsOrdemServico_PedQTD_OS: TFloatField;
    cdsOrdemServicoQTD_OS: TFloatField;
    cdsOrdemServico_NotaDT_AGENDA: TDateField;
    cdsOrdemServico_PedDT_AGENDA: TDateField;
    cdsOrdemServicoDT_AGENDA: TDateField;
    cdsOrdemServico_NotaQTD_OS_NOTA: TFloatField;
    cdsOrdemServico_PedQTD_NOTA: TFloatField;
    cdsOrdemServicoQTD_NOTA: TFloatField;
    cdsOrdemServico_NotaDTEMISSAO_NOTA: TDateField;
    cdsOrdemServico_NotaFATURADO_NOTA: TStringField;
    cdsOrdemServico_NotaCOPIADO_PEDIDO: TStringField;
    cdsOrdemServico_NotaPRODUZIDO: TStringField;
    cdsOrdemServico_PedFATURADO_NOTA: TStringField;
    cdsOrdemServico_PedCOPIADO_PEDIDO: TStringField;
    cdsOrdemServico_PedPRODUZIDO: TStringField;
    cdsOrdemServicoFATURADO_NOTA: TStringField;
    cdsOrdemServicoCOPIADO_PEDIDO: TStringField;
    cdsOrdemServicoPRODUZIDO: TStringField;
    sdsConsCancelada: TSQLDataSet;
    dspConsCancelada: TDataSetProvider;
    cdsConsCancelada: TClientDataSet;
    dsConsCancelada: TDataSource;
    cdsConsCanceladaREFERENCIA: TStringField;
    cdsConsCanceladaID: TIntegerField;
    cdsConsCanceladaITEM: TIntegerField;
    cdsConsCanceladaITEM_CANC: TIntegerField;
    cdsConsCanceladaDATA: TDateField;
    cdsConsCanceladaDTUSUARIO: TDateField;
    cdsConsCanceladaHRUSUARIO: TTimeField;
    cdsConsCanceladaUSUARIO: TStringField;
    cdsConsCanceladaQTD: TFloatField;
    cdsConsCanceladaMOTIVO: TStringField;
    cdsConsCanceladaNOME_CLIENTE: TStringField;
    cdsConsCanceladaID_PRODUTO: TIntegerField;
    cdsConsCanceladaNOME_PRODUTO: TStringField;
    cdsConsCanceladaNUM_OS: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    ctOrdemServico_Nota, ctOrdemServico_Ped, ctOrdemServico : String;
    ctConsCancelada: String;
    
  end;

var
  DMConsOrdemServico: TDMConsOrdemServico;

implementation

uses DmdDatabase, rsDBUtils;

{$R *.dfm}

procedure TDMConsOrdemServico.DataModuleCreate(Sender: TObject);
begin
  ctOrdemServico_Ped  := sdsOrdemServico_Ped.CommandText;
  ctOrdemServico_Nota := sdsOrdemServico_Nota.CommandText;
  ctOrdemServico      := sdsOrdemServico.CommandText;
  ctConsCancelada     := sdsConsCancelada.CommandText;
end;

end.
