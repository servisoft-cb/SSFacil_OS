unit UDMCadEnsaio;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, LogTypes;

type
  TDMCadEnsaio = class(TDataModule)
    sdsEnsaio: TSQLDataSet;
    dspEnsaio: TDataSetProvider;
    cdsEnsaio: TClientDataSet;
    dsEnsaio: TDataSource;
    sdsEnsaioID: TIntegerField;
    sdsEnsaioNOME: TStringField;
    cdsEnsaioID: TIntegerField;
    cdsEnsaioNOME: TStringField;
    sdsEnsaioINATIVO: TStringField;
    cdsEnsaioINATIVO: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure dspEnsaioUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
    procedure cdsEnsaioNewRecord(DataSet: TDataSet);
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
  DMCadEnsaio: TDMCadEnsaio;

implementation

uses DmdDatabase, LogProvider, uUtilPadrao;

{$R *.dfm}

{ TDMCadEnsaio }

procedure TDMCadEnsaio.prc_Inserir;
var
  vAux: Integer;
begin
  if not cdsEnsaio.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('ENSAIO_OS',0);

  cdsEnsaio.Insert;
  cdsEnsaioID.AsInteger := vAux;
end;

procedure TDMCadEnsaio.prc_Excluir;
begin
  if not(cdsEnsaio.Active) or (cdsEnsaio.IsEmpty) then
    exit;
  cdsEnsaio.Delete;
  cdsEnsaio.ApplyUpdates(0);
end;

procedure TDMCadEnsaio.prc_Gravar;
begin
  vMsgErro := '';
  if trim(cdsEnsaioNOME.AsString) = '' then
    vMsgErro := '*** Nome não informado!';
  if vMsgErro <> '' then
    exit;
    
  cdsEnsaio.Post;
  cdsEnsaio.ApplyUpdates(0);
end;

procedure TDMCadEnsaio.prc_Localizar(ID: Integer);
begin
  cdsEnsaio.Close;
  sdsEnsaio.CommandText := ctCommand;
  if ID <> 0 then
    sdsEnsaio.CommandText := sdsEnsaio.CommandText + ' WHERE ID = ' + IntToStr(ID);
  cdsEnsaio.Open;
end;

procedure TDMCadEnsaio.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  vIndices: string;
  aIndices: array of string;
begin
  ctCommand := sdsEnsaio.CommandText;
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
end;

procedure TDMCadEnsaio.dspEnsaioUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

procedure TDMCadEnsaio.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

procedure TDMCadEnsaio.cdsEnsaioNewRecord(DataSet: TDataSet);
begin
  cdsEnsaioINATIVO.AsString := 'N';
end;

end.
