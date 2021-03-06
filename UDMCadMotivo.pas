unit UDMCadMotivo;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, LogTypes;

type
  TDMCadMotivo = class(TDataModule)
    sdsMotivo: TSQLDataSet;
    dspMotivo: TDataSetProvider;
    cdsMotivo: TClientDataSet;
    dsMotivo: TDataSource;
    sdsMotivoID: TIntegerField;
    sdsMotivoNOME: TStringField;
    cdsMotivoID: TIntegerField;
    cdsMotivoNOME: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure dspMotivoUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
  private
    { Private declarations }
    procedure DoLogAdditionalValues(ATableName: string; var AValues: TArrayLogData; var UserName: string);

  public
    { Public declarations }
    vMsgErro: String;
    ctCommand: String;

    procedure prc_Localizar(ID: Integer); //-1 = Inclus�o
    procedure prc_Inserir;
    procedure prc_Gravar;
    procedure prc_Excluir;
  end;

var
  DMCadMotivo: TDMCadMotivo;

implementation

uses DmdDatabase, LogProvider, uUtilPadrao;

{$R *.dfm}

{ TDMCadMotivo }

procedure TDMCadMotivo.prc_Inserir;
var
  vAux: Integer;
begin
  if not cdsMotivo.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('MOTIVO',0);

  cdsMotivo.Insert;
  cdsMotivoID.AsInteger := vAux;
end;

procedure TDMCadMotivo.prc_Excluir;
begin
  if not(cdsMotivo.Active) or (cdsMotivo.IsEmpty) then
    exit;
  cdsMotivo.Delete;
  cdsMotivo.ApplyUpdates(0);
end;

procedure TDMCadMotivo.prc_Gravar;
begin
  vMsgErro := '';
  if trim(cdsMotivoNOME.AsString) = '' then
    vMsgErro := '*** Nome n�o informado!';
  if vMsgErro <> '' then
    exit;
    
  cdsMotivo.Post;
  cdsMotivo.ApplyUpdates(0);
end;

procedure TDMCadMotivo.prc_Localizar(ID: Integer);
begin
  cdsMotivo.Close;
  sdsMotivo.CommandText := ctCommand;
  if ID <> 0 then
    sdsMotivo.CommandText := sdsMotivo.CommandText + ' WHERE ID = ' + IntToStr(ID);
  cdsMotivo.Open;
end;

procedure TDMCadMotivo.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  vIndices: string;
  aIndices: array of string;
begin
  ctCommand := sdsMotivo.CommandText;
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

procedure TDMCadMotivo.dspMotivoUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

procedure TDMCadMotivo.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

end.
