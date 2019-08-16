unit UDMCanc_OS;

interface

uses
  SysUtils, Classes, FMTBcd, DB, SqlExpr, DBClient, LogTypes, Provider;

type
  TDMCanc_OS = class(TDataModule)
    sdsOrdemServico_Canc: TSQLDataSet;
    sdsOrdemServico_CancID: TIntegerField;
    sdsOrdemServico_CancITEM: TIntegerField;
    sdsOrdemServico_CancITEM_CANC: TIntegerField;
    sdsOrdemServico_CancDATA: TDateField;
    sdsOrdemServico_CancDTUSUARIO: TDateField;
    sdsOrdemServico_CancHRUSUARIO: TTimeField;
    sdsOrdemServico_CancUSUARIO: TStringField;
    sdsOrdemServico_CancQTD: TFloatField;
    sdsOrdemServico_CancMOTIVO: TStringField;
    dspOrdemServico_Canc: TDataSetProvider;
    cdsOrdemServico_Canc: TClientDataSet;
    cdsOrdemServico_CancID: TIntegerField;
    cdsOrdemServico_CancITEM: TIntegerField;
    cdsOrdemServico_CancITEM_CANC: TIntegerField;
    cdsOrdemServico_CancDATA: TDateField;
    cdsOrdemServico_CancDTUSUARIO: TDateField;
    cdsOrdemServico_CancHRUSUARIO: TTimeField;
    cdsOrdemServico_CancUSUARIO: TStringField;
    cdsOrdemServico_CancQTD: TFloatField;
    cdsOrdemServico_CancMOTIVO: TStringField;
    dsOrdemServico_Canc: TDataSource;
    qOSItem: TSQLQuery;
    qOSItemID: TIntegerField;
    qOSItemITEM: TIntegerField;
    qOSItemQTD: TFloatField;
    qOSItemQTD_NOTA: TFloatField;
    qOSItemQTD_PECA_CANC: TFloatField;
    qOSItemQTD_NOTA_CANC: TFloatField;
    sdsOrdemServico_CancQTD_NOTA: TFloatField;
    cdsOrdemServico_CancQTD_NOTA: TFloatField;
    qOSItemID_PEDIDO: TIntegerField;
    qOSItemITEM_PEDIDO: TIntegerField;
    qOSItemQTD_RESTANTE: TFloatField;
    qOSItemQTD_FATURADO: TFloatField;
    qOSItemNUM_PEDIDO: TIntegerField;
    sdsOrdemServico_CancID_PEDIDO: TIntegerField;
    sdsOrdemServico_CancITEM_PEDIDO: TIntegerField;
    cdsOrdemServico_CancID_PEDIDO: TIntegerField;
    cdsOrdemServico_CancITEM_PEDIDO: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    procedure DoLogAdditionalValues(ATableName: string; var AValues: TArrayLogData; var UserName: string);
  public
    { Public declarations }
  end;

var
  DMCanc_OS: TDMCanc_OS;

implementation

uses DmdDatabase, uUtilPadrao, LogProvider;

{$R *.dfm}

{ TDMCanc_OS }

procedure TDMCanc_OS.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

procedure TDMCanc_OS.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  SR: TSearchRec;
  Origem, Destino: string;
  vIndices: string;
  aIndices: array of string;
begin
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

end.
