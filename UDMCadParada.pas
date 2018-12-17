unit UDMCadParada;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, LogTypes;

type
  TDMCadParada = class(TDataModule)
    sdsParada: TSQLDataSet;
    dspParada: TDataSetProvider;
    cdsParada: TClientDataSet;
    dsParada: TDataSource;
    sdsParadaID: TIntegerField;
    sdsParadaNOME: TStringField;
    cdsParadaID: TIntegerField;
    cdsParadaNOME: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure dspParadaUpdateError(Sender: TObject;
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
  DMCadParada: TDMCadParada;

implementation

uses DmdDatabase, LogProvider, uUtilPadrao;

{$R *.dfm}

{ TDMCadParada }

procedure TDMCadParada.prc_Inserir;
var
  vAux: Integer;
begin
  if not cdsParada.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('PARADA',0);

  cdsParada.Insert;
  cdsParadaID.AsInteger := vAux;
end;

procedure TDMCadParada.prc_Excluir;
begin
  if not(cdsParada.Active) or (cdsParada.IsEmpty) then
    exit;
  cdsParada.Delete;
  cdsParada.ApplyUpdates(0);
end;

procedure TDMCadParada.prc_Gravar;
begin
  vMsgErro := '';
  if trim(cdsParadaNOME.AsString) = '' then
    vMsgErro := '*** Nome não informado!';
  if vMsgErro <> '' then
    exit;
    
  cdsParada.Post;
  cdsParada.ApplyUpdates(0);
end;

procedure TDMCadParada.prc_Localizar(ID: Integer);
begin
  cdsParada.Close;
  sdsParada.CommandText := ctCommand;
  if ID <> 0 then
    sdsParada.CommandText := sdsParada.CommandText + ' WHERE ID = ' + IntToStr(ID);
  cdsParada.Open;
end;

procedure TDMCadParada.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  vIndices: string;
  aIndices: array of string;
begin
  ctCommand := sdsParada.CommandText;
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

procedure TDMCadParada.dspParadaUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

procedure TDMCadParada.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

end.
