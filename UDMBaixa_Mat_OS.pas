unit UDMBaixa_Mat_OS;

interface

uses
  SysUtils, Classes, FMTBcd, DB, SqlExpr, DBClient, Provider, LogTypes;

type
  TDMBaixa_Mat_OS = class(TDataModule)
    sdsBaixa_Mat_OS: TSQLDataSet;
    dspBaixa_Mat_OS: TDataSetProvider;
    cdsBaixa_Mat_OS: TClientDataSet;
    dsBaixa_Mat_OS: TDataSource;
    qFuncionario: TSQLQuery;
    qFuncionarioCODIGO: TIntegerField;
    qFuncionarioNOME: TStringField;
    sdsOrdemServico_Mat: TSQLDataSet;
    dspOrdemServico_Mat: TDataSetProvider;
    cdsOrdemServico_Mat: TClientDataSet;
    dsOrdemServico_Mat: TDataSource;
    qFuncionarioBAIXA_OS_MANUAL: TStringField;
    qFuncionarioNUM_CARTAO: TIntegerField;
    sdsBaixa_Mat_OSID: TIntegerField;
    sdsBaixa_Mat_OSID_OS: TIntegerField;
    sdsBaixa_Mat_OSITEM_OS: TIntegerField;
    sdsBaixa_Mat_OSITEM_MAT: TIntegerField;
    sdsBaixa_Mat_OSID_PRODUTO: TIntegerField;
    sdsBaixa_Mat_OSQTD: TFloatField;
    sdsBaixa_Mat_OSID_FUNCIONARIO: TIntegerField;
    sdsBaixa_Mat_OSDATA: TDateField;
    sdsBaixa_Mat_OSHORA: TTimeField;
    sdsBaixa_Mat_OSID_MOVESTOQUE: TIntegerField;
    cdsBaixa_Mat_OSID: TIntegerField;
    cdsBaixa_Mat_OSID_OS: TIntegerField;
    cdsBaixa_Mat_OSITEM_OS: TIntegerField;
    cdsBaixa_Mat_OSITEM_MAT: TIntegerField;
    cdsBaixa_Mat_OSID_PRODUTO: TIntegerField;
    cdsBaixa_Mat_OSQTD: TFloatField;
    cdsBaixa_Mat_OSID_FUNCIONARIO: TIntegerField;
    cdsBaixa_Mat_OSDATA: TDateField;
    cdsBaixa_Mat_OSHORA: TTimeField;
    cdsBaixa_Mat_OSID_MOVESTOQUE: TIntegerField;
    sdsOrdemServico_MatID: TIntegerField;
    sdsOrdemServico_MatITEM: TIntegerField;
    sdsOrdemServico_MatITEM_MAT: TIntegerField;
    sdsOrdemServico_MatID_PRODUTO: TIntegerField;
    sdsOrdemServico_MatQTD: TFloatField;
    sdsOrdemServico_MatVLR_UNITARIO: TFloatField;
    sdsOrdemServico_MatVLR_TOTAL: TFloatField;
    sdsOrdemServico_MatQTD_RESTANTE: TFloatField;
    sdsOrdemServico_MatQTD_FATURADO: TFloatField;
    sdsOrdemServico_MatFATURAR: TStringField;
    sdsOrdemServico_MatQTD_AFATURAR: TFloatField;
    sdsOrdemServico_MatQTD_ESTOQUE: TFloatField;
    cdsOrdemServico_MatID: TIntegerField;
    cdsOrdemServico_MatITEM: TIntegerField;
    cdsOrdemServico_MatITEM_MAT: TIntegerField;
    cdsOrdemServico_MatID_PRODUTO: TIntegerField;
    cdsOrdemServico_MatQTD: TFloatField;
    cdsOrdemServico_MatVLR_UNITARIO: TFloatField;
    cdsOrdemServico_MatVLR_TOTAL: TFloatField;
    cdsOrdemServico_MatQTD_RESTANTE: TFloatField;
    cdsOrdemServico_MatQTD_FATURADO: TFloatField;
    cdsOrdemServico_MatFATURAR: TStringField;
    cdsOrdemServico_MatQTD_AFATURAR: TFloatField;
    cdsOrdemServico_MatQTD_ESTOQUE: TFloatField;
    qOS: TSQLQuery;
    qOSID: TIntegerField;
    qOSNUM_OS: TIntegerField;
    sdsOrdemServico_MatNOME: TStringField;
    sdsOrdemServico_MatQTD_ESTOQUE_PEND: TFloatField;
    cdsOrdemServico_MatNOME: TStringField;
    cdsOrdemServico_MatQTD_ESTOQUE_PEND: TFloatField;
    sdsOrdemServico_MatREFERENCIA: TStringField;
    sdsOrdemServico_MatUNIDADE: TStringField;
    sdsOrdemServico_MatPRECO_CUSTO: TFloatField;
    cdsOrdemServico_MatREFERENCIA: TStringField;
    cdsOrdemServico_MatUNIDADE: TStringField;
    cdsOrdemServico_MatPRECO_CUSTO: TFloatField;
    sdsOrdemServico_MatFILIAL: TIntegerField;
    cdsOrdemServico_MatFILIAL: TIntegerField;
    qVer_Enc: TSQLQuery;
    qVer_EncPROCESSO: TStringField;
    qVer_EncMATERIAL: TStringField;
    qVer_EncDTPROCESSO: TDateField;
    qVer_EncDTMATERIAL: TDateField;
    qVer_EncHRPROCESSO: TTimeField;
    qVer_EncHRMATERIAL: TTimeField;
    sdsOS_Mat: TSQLDataSet;
    dspOS_Mat: TDataSetProvider;
    cdsOS_Mat: TClientDataSet;
    dsOS_Mat: TDataSource;
    sdsOS_MatID: TIntegerField;
    sdsOS_MatITEM: TIntegerField;
    sdsOS_MatITEM_MAT: TIntegerField;
    sdsOS_MatID_PRODUTO: TIntegerField;
    sdsOS_MatQTD: TFloatField;
    sdsOS_MatVLR_UNITARIO: TFloatField;
    sdsOS_MatVLR_TOTAL: TFloatField;
    sdsOS_MatQTD_RESTANTE: TFloatField;
    sdsOS_MatQTD_FATURADO: TFloatField;
    sdsOS_MatFATURAR: TStringField;
    sdsOS_MatQTD_AFATURAR: TFloatField;
    sdsOS_MatQTD_ESTOQUE: TFloatField;
    sdsOS_MatTIPO: TStringField;
    sdsOS_MatDTTIPO: TDateField;
    sdsOS_MatUSUARIO_TIPO: TStringField;
    sdsProduto: TSQLDataSet;
    sdsProdutoID: TIntegerField;
    sdsProdutoREFERENCIA: TStringField;
    sdsProdutoNOME: TStringField;
    sdsProdutoINATIVO: TStringField;
    sdsProdutoPRECO_CUSTO: TFloatField;
    sdsProdutoPRECO_VENDA: TFloatField;
    sdsProdutoCOD_BARRA: TStringField;
    dspProduto: TDataSetProvider;
    cdsProduto: TClientDataSet;
    cdsProdutoID: TIntegerField;
    cdsProdutoREFERENCIA: TStringField;
    cdsProdutoNOME: TStringField;
    cdsProdutoINATIVO: TStringField;
    cdsProdutoPRECO_CUSTO: TFloatField;
    cdsProdutoPRECO_VENDA: TFloatField;
    cdsProdutoCOD_BARRA: TStringField;
    dsProduto: TDataSource;
    cdsOS_MatID: TIntegerField;
    cdsOS_MatITEM: TIntegerField;
    cdsOS_MatITEM_MAT: TIntegerField;
    cdsOS_MatID_PRODUTO: TIntegerField;
    cdsOS_MatQTD: TFloatField;
    cdsOS_MatVLR_UNITARIO: TFloatField;
    cdsOS_MatVLR_TOTAL: TFloatField;
    cdsOS_MatQTD_RESTANTE: TFloatField;
    cdsOS_MatQTD_FATURADO: TFloatField;
    cdsOS_MatFATURAR: TStringField;
    cdsOS_MatQTD_AFATURAR: TFloatField;
    cdsOS_MatQTD_ESTOQUE: TFloatField;
    cdsOS_MatTIPO: TStringField;
    cdsOS_MatDTTIPO: TDateField;
    cdsOS_MatUSUARIO_TIPO: TStringField;
    sdsOrdemServico_MatTIPO: TStringField;
    sdsOrdemServico_MatDESC_TIPO: TStringField;
    cdsOrdemServico_MatTIPO: TStringField;
    cdsOrdemServico_MatDESC_TIPO: TStringField;
    sdsOrdemServico_MatDTTIPO: TDateField;
    sdsOrdemServico_MatUSUARIO_TIPO: TStringField;
    cdsOrdemServico_MatDTTIPO: TDateField;
    cdsOrdemServico_MatUSUARIO_TIPO: TStringField;
    procedure dspBaixa_Mat_OSUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
    procedure dspOrdemServico_MatUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    procedure DoLogAdditionalValues(ATableName: string; var AValues: TArrayLogData; var UserName: string);
  public
    { Public declarations }
    ctBaixa_Mat_OS : String;
    ctOrdem_Servico_Mat : String;
    vEscolheu_Mat : Boolean;
    procedure prc_Inserir_Baixa;

    procedure prc_Localizar(ID: Integer); //-1 = Inclusão

    procedure prc_Abrir_OrdemServico_Mat(ID_OS, Item_Mat : Integer);

  end;

var
  DMBaixa_Mat_OS: TDMBaixa_Mat_OS;

implementation

uses DmdDatabase, LogProvider, uUtilPadrao;

{$R *.dfm}

{ TDMProcesso_ES }

procedure TDMBaixa_Mat_OS.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

procedure TDMBaixa_Mat_OS.prc_Inserir_Baixa;
var
  vAux: Integer;
begin
  if not cdsBaixa_Mat_OS.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('BAIXA_MAT_OS',0);

  cdsBaixa_Mat_OS.Insert;
  cdsBaixa_Mat_OSID.AsInteger := vAux;
end;

procedure TDMBaixa_Mat_OS.dspBaixa_Mat_OSUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

procedure TDMBaixa_Mat_OS.dspOrdemServico_MatUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

procedure TDMBaixa_Mat_OS.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  SR: TSearchRec;
  Origem, Destino: string;
  vIndices: string;
  aIndices: array of string;
begin
  ctBaixa_Mat_OS      := sdsBaixa_Mat_OS.CommandText;
  ctOrdem_Servico_Mat := sdsOrdemServico_Mat.CommandText;
  //*** Logs Implantado na versão .353
  LogProviderList.OnAdditionalValues := DoLogAdditionalValues;
  for i := 0 to (Self.ComponentCount - 1) do
  begin
    if (Self.Components[i] is TClientDataSet) then
    begin
      SetLength(aIndices, 0);
      vIndices := TClientDataSet(Components[i]).IndexFieldNames;
      while (vIndices <> EmptyStr) do
      begin
        SetLength(aIndices, Length(aIndices) + 1);
        x := Pos(';', vIndices);
        if (x = 0) then
        begin
          aIndices[Length(aIndices) - 1] := vIndices;
          vIndices := EmptyStr;
        end
        else
        begin
          aIndices[Length(aIndices) - 1] := Copy(vIndices, 1, x - 1);
          vIndices := Copy(vIndices, x + 1, MaxInt);
        end;
      end;
      LogProviderList.AddProvider(TClientDataSet(Self.Components[i]), TClientDataSet(Self.Components[i]).Name, aIndices);
    end;
  end;
  //***********************
end;

procedure TDMBaixa_Mat_OS.prc_Localizar(ID: Integer);
begin
  cdsBaixa_Mat_OS.Close;
  sdsBaixa_Mat_OS.CommandText := ctBaixa_Mat_OS;
  sdsBaixa_Mat_OS.ParamByName('ID').AsInteger := ID;
  cdsBaixa_Mat_OS.Open;
end;

procedure TDMBaixa_Mat_OS.prc_Abrir_OrdemServico_Mat(ID_OS,Item_Mat: Integer);
begin
  cdsOrdemServico_Mat.Close;
  sdsOrdemServico_Mat.CommandText := ctOrdem_Servico_Mat;
  if Item_Mat > 0 then
  begin
    sdsOrdemServico_Mat.CommandText := sdsOrdemServico_Mat.CommandText + '  AND OSM.ITEM_MAT = :ITEM_MAT ';
    sdsOrdemServico_Mat.ParamByName('ITEM_MAT').AsInteger := Item_Mat;
  end;
  sdsOrdemServico_Mat.ParamByName('ID').AsInteger := qOSID.AsInteger;
  cdsOrdemServico_Mat.Open;
end;

end.
