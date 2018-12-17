unit UDMProcesso_ES;

interface

uses
  SysUtils, Classes, FMTBcd, DB, SqlExpr, DBClient, Provider, LogTypes;

type
  TDMProcesso_ES = class(TDataModule)
    qOS_Proc: TSQLQuery;
    qOS_ProcID: TIntegerField;
    qOS_ProcITEM: TIntegerField;
    qOS_ProcITEM_PROC: TIntegerField;
    qOS_ProcID_PROCESSO: TIntegerField;
    qOS_ProcQTD_HORAS: TFloatField;
    qOS_ProcDTENTREGA: TDateField;
    qOS_ProcOBS: TMemoField;
    qOS_ProcQTD: TIntegerField;
    qOS_ProcID_SERVICO_OS: TIntegerField;
    qOS_ProcDTCONCLUIDO: TDateField;
    qOS_ProcQTD_RESTANTE: TIntegerField;
    qOS_ProcQTD_CONCLUIDO: TIntegerField;
    qOS_ProcDTENTRADA: TDateField;
    qOS_ProcNUM_OS: TIntegerField;
    qOS_ProcNOME_PROCESSO: TStringField;
    qOS_ProcQTD_ITEM: TIntegerField;
    qOS_ProcNOME_PRODUTO: TStringField;
    sdsBaixa_OS: TSQLDataSet;
    dspBaixa_OS: TDataSetProvider;
    cdsBaixa_OS: TClientDataSet;
    dsBaixa_OS: TDataSource;
    sdsBaixa_OSID: TIntegerField;
    sdsBaixa_OSDTENTRADA: TDateField;
    sdsBaixa_OSHRENTRADA: TTimeField;
    sdsBaixa_OSDTSAIDA: TDateField;
    sdsBaixa_OSID_OS: TIntegerField;
    sdsBaixa_OSNUM_OS: TIntegerField;
    sdsBaixa_OSITEM_PROC: TIntegerField;
    sdsBaixa_OSID_FUNCIONARIO: TIntegerField;
    sdsBaixa_OSQTD: TIntegerField;
    sdsBaixa_OSID_PROCESSO: TIntegerField;
    sdsBaixa_OSID_SERVICO_OS: TIntegerField;
    cdsBaixa_OSID: TIntegerField;
    cdsBaixa_OSDTENTRADA: TDateField;
    cdsBaixa_OSHRENTRADA: TTimeField;
    cdsBaixa_OSDTSAIDA: TDateField;
    cdsBaixa_OSID_OS: TIntegerField;
    cdsBaixa_OSNUM_OS: TIntegerField;
    cdsBaixa_OSITEM_PROC: TIntegerField;
    cdsBaixa_OSID_FUNCIONARIO: TIntegerField;
    cdsBaixa_OSQTD: TIntegerField;
    cdsBaixa_OSID_PROCESSO: TIntegerField;
    cdsBaixa_OSID_SERVICO_OS: TIntegerField;
    qFuncionario: TSQLQuery;
    qFuncionarioCODIGO: TIntegerField;
    qFuncionarioNOME: TStringField;
    sdsOrdemServico_Proc: TSQLDataSet;
    dspOrdemServico_Proc: TDataSetProvider;
    cdsOrdemServico_Proc: TClientDataSet;
    dsOrdemServico_Proc: TDataSource;
    sdsOrdemServico_ProcID: TIntegerField;
    sdsOrdemServico_ProcITEM: TIntegerField;
    sdsOrdemServico_ProcITEM_PROC: TIntegerField;
    sdsOrdemServico_ProcID_PROCESSO: TIntegerField;
    sdsOrdemServico_ProcQTD_HORAS: TFloatField;
    sdsOrdemServico_ProcDTENTREGA: TDateField;
    sdsOrdemServico_ProcOBS: TMemoField;
    sdsOrdemServico_ProcQTD: TIntegerField;
    sdsOrdemServico_ProcID_SERVICO_OS: TIntegerField;
    sdsOrdemServico_ProcDTCONCLUIDO: TDateField;
    sdsOrdemServico_ProcQTD_RESTANTE: TIntegerField;
    sdsOrdemServico_ProcQTD_CONCLUIDO: TIntegerField;
    sdsOrdemServico_ProcDTENTRADA: TDateField;
    cdsOrdemServico_ProcID: TIntegerField;
    cdsOrdemServico_ProcITEM: TIntegerField;
    cdsOrdemServico_ProcITEM_PROC: TIntegerField;
    cdsOrdemServico_ProcID_PROCESSO: TIntegerField;
    cdsOrdemServico_ProcQTD_HORAS: TFloatField;
    cdsOrdemServico_ProcDTENTREGA: TDateField;
    cdsOrdemServico_ProcOBS: TMemoField;
    cdsOrdemServico_ProcQTD: TIntegerField;
    cdsOrdemServico_ProcID_SERVICO_OS: TIntegerField;
    cdsOrdemServico_ProcDTCONCLUIDO: TDateField;
    cdsOrdemServico_ProcQTD_RESTANTE: TIntegerField;
    cdsOrdemServico_ProcQTD_CONCLUIDO: TIntegerField;
    cdsOrdemServico_ProcDTENTRADA: TDateField;
    sdsBaixa_OSHRSAIDA: TTimeField;
    cdsBaixa_OSHRSAIDA: TTimeField;
    sdsOrdemServico_ProcHRENTRADA: TTimeField;
    sdsOrdemServico_ProcHRCONCLUIDO: TTimeField;
    cdsOrdemServico_ProcHRENTRADA: TTimeField;
    cdsOrdemServico_ProcHRCONCLUIDO: TTimeField;
    qVerifica_Proc: TSQLQuery;
    qVerifica_ProcID: TIntegerField;
    qVerifica_ProcDTENTRADA: TDateField;
    qVerifica_ProcHRENTRADA: TTimeField;
    qVerifica_ProcDTSAIDA: TDateField;
    qVerifica_ProcID_OS: TIntegerField;
    qVerifica_ProcNUM_OS: TIntegerField;
    qVerifica_ProcITEM_PROC: TIntegerField;
    qVerifica_ProcID_FUNCIONARIO: TIntegerField;
    qVerifica_ProcQTD: TIntegerField;
    qVerifica_ProcID_PROCESSO: TIntegerField;
    qVerifica_ProcID_SERVICO_OS: TIntegerField;
    qVerifica_ProcHRSAIDA: TTimeField;
    qVerifica_ProcNOME_PROCESSO: TStringField;
    sdsBaixa_OSORDEM: TIntegerField;
    cdsBaixa_OSORDEM: TIntegerField;
    qFuncionarioBAIXA_OS_MANUAL: TStringField;
    sdsBaixa_OSTOTAL_HORAS: TFloatField;
    cdsBaixa_OSTOTAL_HORAS: TFloatField;
    qFuncionarioNUM_CARTAO: TIntegerField;
    qOS_ProcHRENTRADA: TTimeField;
    qOS_ProcHRCONCLUIDO: TTimeField;
    qOS_ProcORDEM: TIntegerField;
    qOS_ProcQTD_CONCLUIDO_ANT: TIntegerField;
    sdsBaixa_OS_Pausa: TSQLDataSet;
    dspBaixa_OS_Pausa: TDataSetProvider;
    cdsBaixa_OS_Pausa: TClientDataSet;
    dsBaixa_OS_Pausa: TDataSource;
    sdsBaixa_OS_PausaID: TIntegerField;
    sdsBaixa_OS_PausaITEM: TIntegerField;
    sdsBaixa_OS_PausaID_PARADA: TIntegerField;
    sdsBaixa_OS_PausaDTINICIO: TDateField;
    sdsBaixa_OS_PausaHRINICIO: TTimeField;
    sdsBaixa_OS_PausaDTFINAL: TDateField;
    sdsBaixa_OS_PausaHRFINAL: TTimeField;
    cdsBaixa_OS_PausaID: TIntegerField;
    cdsBaixa_OS_PausaITEM: TIntegerField;
    cdsBaixa_OS_PausaID_PARADA: TIntegerField;
    cdsBaixa_OS_PausaDTINICIO: TDateField;
    cdsBaixa_OS_PausaHRINICIO: TTimeField;
    cdsBaixa_OS_PausaDTFINAL: TDateField;
    cdsBaixa_OS_PausaHRFINAL: TTimeField;
    sdsBaixa_OS_PausaOBS: TStringField;
    cdsBaixa_OS_PausaOBS: TStringField;
    qParada: TSQLQuery;
    qParadaID: TIntegerField;
    qParadaNOME: TStringField;
    sdsOrdemServico_ProcORDEM: TIntegerField;
    sdsOrdemServico_ProcSTATUS: TStringField;
    cdsOrdemServico_ProcORDEM: TIntegerField;
    cdsOrdemServico_ProcSTATUS: TStringField;
    sdsBaixa_OS_PausaID_OS: TIntegerField;
    sdsBaixa_OS_PausaORDEM: TIntegerField;
    cdsBaixa_OS_PausaID_OS: TIntegerField;
    cdsBaixa_OS_PausaORDEM: TIntegerField;
    qOS_ProcSTATUS: TStringField;
    qVer: TSQLQuery;
    sdsBaixa_OSTIPO_BAIXA: TStringField;
    cdsBaixa_OSTIPO_BAIXA: TStringField;
    sdsBaixa_OS_PausaTOTAL_HORAS: TFloatField;
    cdsBaixa_OS_PausaTOTAL_HORAS: TFloatField;
    sdsPRC_Atualiza_OS: TSQLDataSet;
    qVerNOME_PROCESSO: TStringField;
    qVerID_PROCESSO: TIntegerField;
    qVerSTATUS: TStringField;
    qVerQTD: TIntegerField;
    qVerORDEM: TIntegerField;
    qVerNUM_OS: TIntegerField;
    qVerITEM_PROC: TIntegerField;
    qVerID_SERVICO_OS: TIntegerField;
    qVerID: TIntegerField;
    qVerQTD_CONCLUIDO: TFMTBCDField;
    qVerQTD_EM_ABERTO: TIntegerField;
    qVerDTENTRADA: TDateField;
    qVerHRENTRADA: TTimeField;
    qVerQTD_ANT: TIntegerField;
    qVerQTD_CONCLUIDA_ANT2: TFMTBCDField;
    qVerQTD_JA_CONCLUIDA: TFMTBCDField;
    qVerQTD_RESTANTE: TFMTBCDField;
    qVerQTD_CONCLUIDA_ANT: TFMTBCDField;
    sdsBaixa_OS_PausaITEM_PROC: TIntegerField;
    cdsBaixa_OS_PausaITEM_PROC: TIntegerField;
    qVer_Pausa: TSQLQuery;
    qVer_PausaID_PARADA: TIntegerField;
    qVer_PausaOBS: TStringField;
    qVer_PausaID_OS: TIntegerField;
    qVer_PausaITEM_PROC: TIntegerField;
    sdsBaixa_OSOBS: TStringField;
    cdsBaixa_OSOBS: TStringField;
    qProcesso: TSQLQuery;
    qProcessoID: TIntegerField;
    qProcessoNOME: TStringField;
    mBaixaAux: TClientDataSet;
    mBaixaAuxID_OS: TIntegerField;
    mBaixaAuxNum_OS: TIntegerField;
    mBaixaAuxItem_Proc: TIntegerField;
    mBaixaAuxDtEntrada: TDateField;
    mBaixaAuxDtSaida: TDateField;
    mBaixaAuxHrEntrada: TTimeField;
    mBaixaAuxHrSaida: TTimeField;
    mBaixaAuxID_Funcionario: TIntegerField;
    mBaixaAuxQtd: TIntegerField;
    mBaixaAuxID_Processo: TIntegerField;
    mBaixaAuxID_Servico_OS: TIntegerField;
    mBaixaAuxOrdem: TIntegerField;
    mBaixaAuxTipo_Baixa: TStringField;
    mBaixaAuxObs: TStringField;
    dsmBaixaAux: TDataSource;
    mBaixaAuxNome_Processo: TStringField;
    mBaixaAuxTotal_Horas: TFloatField;
    mBaixaAuxID: TIntegerField;
    qParametros_Ser: TSQLQuery;
    qParametros_SerCONTROLAR_PROCESSO_ANT: TStringField;
    qVer_Enc: TSQLQuery;
    qVer_EncPROCESSO: TStringField;
    qVer_EncMATERIAL: TStringField;
    qVer_EncDTPROCESSO: TDateField;
    qVer_EncDTMATERIAL: TDateField;
    qVer_EncHRPROCESSO: TTimeField;
    qVer_EncHRMATERIAL: TTimeField;
    sdsBaixa_OSRETRABALHO: TStringField;
    cdsBaixa_OSRETRABALHO: TStringField;
    qVerRETRABALHO: TStringField;
    sdsOS_Proc: TSQLDataSet;
    dspOS_Proc: TDataSetProvider;
    cdsOS_Proc: TClientDataSet;
    DSOS_Proc: TDataSource;
    cdsOS_ProcID: TIntegerField;
    cdsOS_ProcITEM: TIntegerField;
    cdsOS_ProcITEM_PROC: TIntegerField;
    cdsOS_ProcID_PROCESSO: TIntegerField;
    cdsOS_ProcQTD_HORAS: TFloatField;
    cdsOS_ProcDTENTREGA: TDateField;
    cdsOS_ProcOBS: TMemoField;
    cdsOS_ProcQTD: TIntegerField;
    cdsOS_ProcID_SERVICO_OS: TIntegerField;
    cdsOS_ProcDTCONCLUIDO: TDateField;
    cdsOS_ProcQTD_RESTANTE: TIntegerField;
    cdsOS_ProcQTD_CONCLUIDO: TIntegerField;
    cdsOS_ProcDTENTRADA: TDateField;
    cdsOS_ProcHRENTRADA: TTimeField;
    cdsOS_ProcHRCONCLUIDO: TTimeField;
    cdsOS_ProcORDEM: TIntegerField;
    cdsOS_ProcSTATUS: TStringField;
    cdsOS_ProcNUM_OS: TIntegerField;
    cdsOS_ProcRETRABALHO: TStringField;
    cdsOS_ProcNOME_PROCESSO: TStringField;
    cdsOS_ProcNOME_SERVICO_OS: TStringField;
    procedure dspBaixa_OSUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
    procedure dspOrdemServico_ProcUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
    procedure DataModuleCreate(Sender: TObject);
    procedure cdsBaixa_OSBeforePost(DataSet: TDataSet);
    procedure cdsBaixa_OSNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    procedure DoLogAdditionalValues(ATableName: string; var AValues: TArrayLogData; var UserName: string);
  public
    { Public declarations }
    ctBaixa_OS : String;
    ctBaixa_OS_Pausa : String;
    vCodBarra_Proc : String;
    procedure prc_Inserir_Baixa;
    procedure prc_Inserir_Pausa;

    procedure prc_Localizar(ID: Integer); //-1 = Inclusão
    procedure prc_Localizar_Pausa(ID: Integer); //-1 = Inclusão

  end;

var
  DMProcesso_ES: TDMProcesso_ES;

implementation

uses DmdDatabase, LogProvider, uUtilPadrao;

{$R *.dfm}

{ TDMProcesso_ES }

procedure TDMProcesso_ES.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

procedure TDMProcesso_ES.prc_Inserir_Baixa;
var
  vAux: Integer;
begin
  if not cdsBaixa_OS.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('BAIXA_OS',0);

  cdsBaixa_OS.Insert;
  cdsBaixa_OSID.AsInteger := vAux;
end;

procedure TDMProcesso_ES.dspBaixa_OSUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

procedure TDMProcesso_ES.dspOrdemServico_ProcUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

procedure TDMProcesso_ES.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  SR: TSearchRec;
  Origem, Destino: string;
  vIndices: string;
  aIndices: array of string;
begin
  ctBaixa_OS       := sdsBaixa_OS.CommandText;
  ctBaixa_OS_Pausa := sdsBaixa_OS_Pausa.CommandText;
  qParametros_Ser.Open;
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

procedure TDMProcesso_ES.prc_Localizar(ID: Integer);
begin
  cdsBaixa_OS.Close;
  sdsBaixa_OS.CommandText := ctBaixa_OS;
  if ID <> 0 then
    sdsBaixa_OS.CommandText := sdsBaixa_OS.CommandText + ' WHERE B.ID = ' + IntToStr(ID);
  cdsBaixa_OS.Open;
end;

procedure TDMProcesso_ES.prc_Inserir_Pausa;
var
  vItemAux : Integer;
begin
  prc_Localizar_Pausa(cdsBaixa_OSID.AsInteger);
  cdsBaixa_OS_Pausa.Last;
  vItemAux := cdsBaixa_OS_PausaITEM.AsInteger;

  cdsBaixa_OS_Pausa.Insert;
  cdsBaixa_OS_PausaID.AsInteger    := cdsBaixa_OSID.AsInteger;
  cdsBaixa_OS_PausaITEM.AsInteger  := vItemAux + 1;
  cdsBaixa_OS_PausaID_OS.AsInteger := cdsBaixa_OSID_OS.AsInteger;
  cdsBaixa_OS_PausaORDEM.AsInteger := cdsBaixa_OSORDEM.AsInteger;
  cdsBaixa_OS_PausaITEM_PROC.AsInteger := cdsBaixa_OSITEM_PROC.AsInteger;
end;

procedure TDMProcesso_ES.prc_Localizar_Pausa(ID: Integer);
begin
  cdsBaixa_OS_Pausa.Close;
  sdsBaixa_OS_Pausa.CommandText := ctBaixa_OS_Pausa;
  sdsBaixa_OS_Pausa.ParamByName('ID').AsInteger := ID;
  cdsBaixa_OS_Pausa.Open;
end;

procedure TDMProcesso_ES.cdsBaixa_OSBeforePost(DataSet: TDataSet);
begin
  if cdsBaixa_OSID_SERVICO_OS.AsInteger <= 0 then
    cdsBaixa_OSID_SERVICO_OS.Clear;
end;

procedure TDMProcesso_ES.cdsBaixa_OSNewRecord(DataSet: TDataSet);
begin
  cdsBaixa_OSRETRABALHO.AsString := 'N';
end;

end.
