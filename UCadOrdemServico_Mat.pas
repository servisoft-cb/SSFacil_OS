unit UCadOrdemServico_Mat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, UDMCadOrdemServico, RxLookup,
  StdCtrls, Mask, DBCtrls, NxCollection, ExtCtrls, DB, Buttons, ToolEdit,
  CurrEdit;

type
  TfrmCadOrdemServico_Mat = class(TForm)
    Label1: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Panel5: TPanel;
    btnConfBaixa: TNxButton;
    NxButton1: TNxButton;
    SpeedButton5: TSpeedButton;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    CurrencyEdit1: TCurrencyEdit;
    Label4: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure RxDBLookupCombo1Exit(Sender: TObject);
    procedure btnConfBaixaClick(Sender: TObject);
    procedure NxButton1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure CurrencyEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBLookupCombo1Enter(Sender: TObject);
    procedure CurrencyEdit1Exit(Sender: TObject);
    procedure RxDBLookupCombo1Change(Sender: TObject);
  private
    { Private declarations }
    function fnc_Calcular(Vlr_Unitario, Qtd: Real): Real;
  public
    { Public declarations }
    fDMCadOrdemServico: TDMCadOrdemServico;

  end;

var
  frmCadOrdemServico_Mat: TfrmCadOrdemServico_Mat;

implementation

uses rsDBUtils, uUtilPadrao, USel_Produto;

{$R *.dfm}

procedure TfrmCadOrdemServico_Mat.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if fDMCadOrdemServico.cdsOrdemServico_Mat.State in [dsEdit,dsInsert] then
    fDMCadOrdemServico.cdsOrdemServico_Mat.Cancel;
  Action := Cafree;
end;

procedure TfrmCadOrdemServico_Mat.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadOrdemServico);
end;

procedure TfrmCadOrdemServico_Mat.RxDBLookupCombo1Exit(Sender: TObject);
begin
  if RxDBLookupCombo1.Text <> '' then
  begin
    fDMCadOrdemServico.cdsMaterial.Locate('ID',fDMCadOrdemServico.cdsOrdemServico_MatID_PRODUTO.AsInteger,[loCaseInsensitive]);
    if fDMCadOrdemServico.qParametros_SerPRECO_CUSTO_MATERIAL.AsString = 'S' then
      fDMCadOrdemServico.cdsOrdemServico_MatVLR_UNITARIO.AsFloat := fDMCadOrdemServico.cdsMaterialPRECO_CUSTO.AsFloat
    else
      fDMCadOrdemServico.cdsOrdemServico_MatVLR_UNITARIO.AsFloat := fDMCadOrdemServico.cdsMaterialPRECO_VENDA.AsFloat;
  end;
end;

function TfrmCadOrdemServico_Mat.fnc_Calcular(Vlr_Unitario, Qtd: Real): Real;
begin
  Result := 0;
  if (StrToFloat(FormatFloat('0.00000',Vlr_Unitario)) > 0) and (StrToFloat(FormatFloat('0.00000',Qtd)) > 0) then
    Result := StrToFloat(FormatFloat('0.00',Vlr_Unitario)) * StrToFloat(FormatFloat('0.00',Qtd));
end;

procedure TfrmCadOrdemServico_Mat.btnConfBaixaClick(Sender: TObject);
begin
  if trim(RxDBLookupCombo1.Text) = '' then
  begin
    MessageDlg('*** Peça não informada!', mtError, [mbok], 0);
    exit;
  end;
  if StrToFloat(FormatFloat('0.00000',fDMCadOrdemServico.cdsOrdemServico_MatQTD.AsFloat)) <= 0 then
  begin
    MessageDlg('*** Quantidade não informada!', mtError, [mbok], 0);
    exit;
  end;
  fDMCadOrdemServico.cdsMaterial.Locate('ID',fDMCadOrdemServico.cdsOrdemServico_MatID_PRODUTO.AsInteger,[loCaseInsensitive]);
  fDMCadOrdemServico.cdsOrdemServico_MatQTD_AFATURAR.AsInteger := 0;
  fDMCadOrdemServico.cdsOrdemServico_MatQTD_FATURADO.AsInteger := 0;
  fDMCadOrdemServico.cdsOrdemServico_MatQTD_RESTANTE.AsFloat   := StrToFloat(FormatFloat('0.0000',fDMCadOrdemServico.cdsOrdemServico_MatQTD.AsFloat));
  fDMCadOrdemServico.cdsOrdemServico_MatVLR_TOTAL.AsFloat      := StrToFloat(FormatFloat('0.00',fDMCadOrdemServico.cdsOrdemServico_MatQTD.AsFloat *
                                                                  fDMCadOrdemServico.cdsOrdemServico_MatVLR_UNITARIO.AsFloat));
  fDMCadOrdemServico.cdsOrdemServico_Mat.Post;
  Close;
end;

procedure TfrmCadOrdemServico_Mat.NxButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmCadOrdemServico_Mat.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
  begin
    vCodProduto_Pos := fDMCadOrdemServico.cdsOrdemServico_MatID_PRODUTO.AsInteger;
    frmSel_Produto  := TfrmSel_Produto.Create(Self);
    frmSel_Produto.ComboBox1.ItemIndex := 1;
    frmSel_Produto.ShowModal;
    fDMCadOrdemServico.cdsOrdemServico_MatID_PRODUTO.AsInteger := vCodProduto_Pos;
    if fDMCadOrdemServico.cdsOrdemServico_MatID_PRODUTO.AsInteger > 0 then
      RxDBLookupCombo1.SetFocus;
  end;
end;

procedure TfrmCadOrdemServico_Mat.DBEdit1Exit(Sender: TObject);
begin
  fDMCadOrdemServico.cdsOrdemServico_MatVLR_TOTAL.AsFloat := fnc_Calcular(fDMCadOrdemServico.cdsOrdemServico_MatVLR_UNITARIO.AsFloat,
                                                                          fDMCadOrdemServico.cdsOrdemServico_MatQTD.AsFloat);
end;

procedure TfrmCadOrdemServico_Mat.DBEdit2Exit(Sender: TObject);
begin
  fDMCadOrdemServico.cdsOrdemServico_MatVLR_TOTAL.AsFloat := fnc_Calcular(fDMCadOrdemServico.cdsOrdemServico_MatVLR_UNITARIO.AsFloat,
                                                                          fDMCadOrdemServico.cdsOrdemServico_MatQTD.AsFloat);
end;

procedure TfrmCadOrdemServico_Mat.SpeedButton5Click(Sender: TObject);
begin
  fDMCadOrdemServico.cdsMaterial.Close;
  fDMCadOrdemServico.cdsMaterial.Open;
end;

procedure TfrmCadOrdemServico_Mat.CurrencyEdit1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = Vk_Return then
  begin
    CurrencyEdit1Exit(Sender);
  end;
end;

procedure TfrmCadOrdemServico_Mat.RxDBLookupCombo1Enter(Sender: TObject);
begin
  fDMCadOrdemServico.cdsMaterial.IndexFieldNames := 'NOME';
end;

procedure TfrmCadOrdemServico_Mat.CurrencyEdit1Exit(Sender: TObject);
begin
  fDMCadOrdemServico.cdsMaterial.IndexFieldNames := 'ID';
  if fDMCadOrdemServico.cdsMaterial.FindKey([CurrencyEdit1.Value]) then
    RxDBLookupCombo1.KeyValue := CurrencyEdit1.Value
  else
    RxDBLookupCombo1.ClearValue; 
end;

procedure TfrmCadOrdemServico_Mat.RxDBLookupCombo1Change(Sender: TObject);
begin
  CurrencyEdit1.Value := RxDBLookupCombo1.KeyValue;
end;

end.
