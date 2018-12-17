unit UDMCadServico_OS;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, LogTypes;

type
  TDMCadServico_OS = class(TDataModule)
    sdsServico_OS: TSQLDataSet;
    dspServico_OS: TDataSetProvider;
    cdsServico_OS: TClientDataSet;
    dsServico_OS: TDataSource;
    sdsServico_OSID: TIntegerField;
    sdsServico_OSNOME: TStringField;
    sdsServico_OSVLR_HORA: TFloatField;
    sdsServico_OSINATIVO: TStringField;
    cdsServico_OSID: TIntegerField;
    cdsServico_OSNOME: TStringField;
    cdsServico_OSVLR_HORA: TFloatField;
    cdsServico_OSINATIVO: TStringField;
    sdsServico_OSTERCEIRO: TStringField;
    cdsServico_OSTERCEIRO: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure dspServico_OSUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
    procedure cdsServico_OSNewRecord(DataSet: TDataSet);
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
  DMCadServico_OS: TDMCadServico_OS;

implementation

uses DmdDatabase, LogProvider, uUtilPadrao;

{$R *.dfm}

{ TDMCadServico_OS }

procedure TDMCadServico_OS.prc_Inserir;
var
  vAux: Integer;
begin
  if not cdsServico_OS.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('SERVICO_OS',0);

  cdsServico_OS.Insert;
  cdsServico_OSID.AsInteger := vAux;
end;

procedure TDMCadServico_OS.prc_Excluir;
begin
  if not(cdsServico_OS.Active) or (cdsServico_OS.IsEmpty) then
    exit;
  cdsServico_OS.Delete;
  cdsServico_OS.ApplyUpdates(0);
end;

procedure TDMCadServico_OS.prc_Gravar;
begin
  vMsgErro := '';
  if trim(cdsServico_OSNOME.AsString) = '' then
    vMsgErro := '*** Nome não informado!';
  if vMsgErro <> '' then
    exit;
    
  cdsServico_OS.Post;
  cdsServico_OS.ApplyUpdates(0);
end;

procedure TDMCadServico_OS.prc_Localizar(ID: Integer);
begin
  cdsServico_OS.Close;
  sdsServico_OS.CommandText := ctCommand;
  if ID <> 0 then
    sdsServico_OS.CommandText := sdsServico_OS.CommandText
                         + ' WHERE ID = ' + IntToStr(ID);
  cdsServico_OS.Open;
end;

procedure TDMCadServico_OS.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  vIndices: string;
  aIndices: array of string;
begin
  ctCommand := sdsServico_OS.CommandText;
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

procedure TDMCadServico_OS.dspServico_OSUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

procedure TDMCadServico_OS.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

procedure TDMCadServico_OS.cdsServico_OSNewRecord(DataSet: TDataSet);
begin
  cdsServico_OSINATIVO.AsString  := 'N';
  cdsServico_OSTERCEIRO.AsString := 'N';
end;

end.
