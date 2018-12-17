unit UDMAprova_Orc;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, LogTypes;

type
  TDMAprova_Orc = class(TDataModule)
    sdsOrdemServico_Aprov: TSQLDataSet;
    sdsOrdemServico_AprovID: TIntegerField;
    sdsOrdemServico_AprovITEM: TIntegerField;
    sdsOrdemServico_AprovDATA: TDateField;
    sdsOrdemServico_AprovHORA: TTimeField;
    sdsOrdemServico_AprovUSUARIO: TStringField;
    sdsOrdemServico_AprovOBS: TMemoField;
    sdsOrdemServico_AprovTIPO: TStringField;
    sdsOrdemServico_AprovID_MOTIVO: TIntegerField;
    dspOrdemServico_Aprov: TDataSetProvider;
    cdsOrdemServico_Aprov: TClientDataSet;
    cdsOrdemServico_AprovID: TIntegerField;
    cdsOrdemServico_AprovITEM: TIntegerField;
    cdsOrdemServico_AprovDATA: TDateField;
    cdsOrdemServico_AprovHORA: TTimeField;
    cdsOrdemServico_AprovUSUARIO: TStringField;
    cdsOrdemServico_AprovOBS: TMemoField;
    cdsOrdemServico_AprovTIPO: TStringField;
    cdsOrdemServico_AprovID_MOTIVO: TIntegerField;
    dsOrdemServico_Aprov: TDataSource;
    sdsMotivo: TSQLDataSet;
    dspMotivo: TDataSetProvider;
    cdsMotivo: TClientDataSet;
    dsMotivo: TDataSource;
    cdsMotivoID: TIntegerField;
    cdsMotivoNOME: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure cdsOrdemServico_AprovNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    procedure DoLogAdditionalValues(ATableName: string; var AValues: TArrayLogData; var UserName: string);

  public
    { Public declarations }
    procedure prc_Inserir(ID,Item : Integer);
    procedure prc_Localizar(ID,Item : Integer);

  end;

var
  DMAprova_Orc: TDMAprova_Orc;

implementation

uses DmdDatabase, LogProvider, uUtilPadrao;

{$R *.dfm}

{ TDMAprova_Orc }

procedure TDMAprova_Orc.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

procedure TDMAprova_Orc.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  vIndices: string;
  aIndices: array of string;
begin
  cdsMotivo.Open;
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

procedure TDMAprova_Orc.cdsOrdemServico_AprovNewRecord(DataSet: TDataSet);
begin
  cdsOrdemServico_AprovDATA.AsDateTime  := Date;
  cdsOrdemServico_AprovHORA.AsDateTime  := Now;
  cdsOrdemServico_AprovUSUARIO.AsString := vUsuario;
end;

procedure TDMAprova_Orc.prc_Localizar(ID, Item: Integer);
begin
  cdsOrdemServico_Aprov.Close;
  sdsOrdemServico_Aprov.ParamByName('ID').AsInteger   := ID;
  sdsOrdemServico_Aprov.ParamByName('ITEM').AsInteger := Item;
  cdsOrdemServico_Aprov.Open;
end;

procedure TDMAprova_Orc.prc_Inserir(ID,Item : Integer);
begin
  cdsOrdemServico_Aprov.Insert;
  cdsOrdemServico_AprovID.AsInteger   := ID;
  cdsOrdemServico_AprovITEM.AsInteger := Item;
end;

end.
