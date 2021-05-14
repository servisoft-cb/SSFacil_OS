unit UDMCadObs;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, LogTypes;

type
  TDMCadObs = class(TDataModule)
    sdsObs_OS: TSQLDataSet;
    dspObs_OS: TDataSetProvider;
    cdsObs_OS: TClientDataSet;
    dsObs_OS: TDataSource;
    sdsObs_OSID: TIntegerField;
    sdsObs_OSNOME: TStringField;
    sdsObs_OSOBS: TMemoField;
    cdsObs_OSID: TIntegerField;
    cdsObs_OSNOME: TStringField;
    cdsObs_OSOBS: TMemoField;
    procedure DataModuleCreate(Sender: TObject);
    procedure dspObs_OSUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
  private
    { Private declarations }
    procedure DoLogAdditionalValues(ATableName: string; var AValues: TArrayLogData; var UserName: string);

  public
    { Public declarations }
    vMsgErro: String;
    ctCommand: String;

    procedure prc_Localizar(ID: Integer); //-1 = Inclusão
    procedure prc_Inserir;
    procedure prc_Gravar;
    procedure prc_Excluir;

  end;

var
  DMCadObs: TDMCadObs;

implementation

uses DmdDatabase, LogProvider, uUtilPadrao;

{$R *.dfm}

{ TDMCadParada }

procedure TDMCadObs.prc_Inserir;
var
  vAux: Integer;
begin
  if not cdsOBS_OS.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('OBS_OS',0);

  cdsOBS_OS.Insert;
  cdsOBS_OSID.AsInteger := vAux;
end;

procedure TDMCadObs.prc_Excluir;
begin
  if not(cdsOBS_OS.Active) or (cdsOBS_OS.IsEmpty) then
    exit;
  cdsOBS_OS.Delete;
  cdsOBS_OS.ApplyUpdates(0);
end;

procedure TDMCadObs.prc_Gravar;
begin
  vMsgErro := '';
  if trim(cdsOBS_OSNOME.AsString) = '' then
    vMsgErro := '*** Nome não informado!';
  if vMsgErro <> '' then
    exit;
    
  cdsOBS_OS.Post;
  cdsOBS_OS.ApplyUpdates(0);
end;

procedure TDMCadObs.prc_Localizar(ID: Integer);
begin
  cdsOBS_OS.Close;
  sdsOBS_OS.CommandText := ctCommand;
  if ID <> 0 then
    sdsOBS_OS.CommandText := sdsOBS_OS.CommandText + ' WHERE ID = ' + IntToStr(ID);
  cdsOBS_OS.Open;
end;

procedure TDMCadObs.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  vIndices: string;
  aIndices: array of string;
begin
  ctCommand := sdsOBS_OS.CommandText;
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

procedure TDMCadObs.dspObs_OSUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

procedure TDMCadObs.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

end.
