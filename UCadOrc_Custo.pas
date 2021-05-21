unit UCadOrc_Custo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UDMCadOrdemServico, ExtCtrls, StdCtrls, Mask, ToolEdit, CurrEdit,
  RzPanel, Grids, DBGrids, RzDBGrid, NxCollection, Buttons, DBCtrls, Menus;

type
  TfrmCadOrc_Custo = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label23: TLabel;
    Label29: TLabel;
    cePercMarkup: TCurrencyEdit;
    Label31: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label50: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label59: TLabel;
    ceVlrTotalCusto: TCurrencyEdit;
    cePercPisCofins: TCurrencyEdit;
    cePercISSQN: TCurrencyEdit;
    cePercComissao: TCurrencyEdit;
    cePercFrete: TCurrencyEdit;
    cePercIR: TCurrencyEdit;
    cePercMargemOpe: TCurrencyEdit;
    cePreco: TCurrencyEdit;
    cePrecoSugerido: TCurrencyEdit;
    cePercMargOpe2: TCurrencyEdit;
    cePercCustoFinanceiro: TCurrencyEdit;
    cePrazoDias: TCurrencyEdit;
    cePercCustoPeriodo: TCurrencyEdit;
    ceVlrMargem: TCurrencyEdit;
    ceVlrIR: TCurrencyEdit;
    ceVlrMargemLiquida: TCurrencyEdit;
    cePercMargemLiquida: TCurrencyEdit;
    cePercPeriodo: TCurrencyEdit;
    RzGroupBox1: TRzGroupBox;
    RzDBGrid1: TRzDBGrid;
    RzGroupBox2: TRzGroupBox;
    RzDBGrid2: TRzDBGrid;
    RzGroupBox3: TRzGroupBox;
    RzDBGrid3: TRzDBGrid;
    RzDBGrid13: TRzDBGrid;
    btnCalcular_Custo: TNxButton;
    cePercICMS: TCurrencyEdit;
    btnConfirmar: TNxButton;
    Panel4: TPanel;
    Label2: TLabel;
    cePercProcesso: TCurrencyEdit;
    ceVlrProcesso: TCurrencyEdit;
    Panel5: TPanel;
    cePercMaterial: TCurrencyEdit;
    Label49: TLabel;
    ceVlrMaterial: TCurrencyEdit;
    Panel6: TPanel;
    cePercTerceiro: TCurrencyEdit;
    Label51: TLabel;
    ceVlrTerceiro: TCurrencyEdit;
    cePercTotalCusto: TCurrencyEdit;
    PopupMenu1: TPopupMenu;
    Incluir1: TMenuItem;
    Alterar1: TMenuItem;
    Label1: TLabel;
    Label3: TLabel;
    PopupMenu2: TPopupMenu;
    Incluir2: TMenuItem;
    Alterar2: TMenuItem;
    Shape1: TShape;
    Label4: TLabel;
    DBMemo1: TDBMemo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnCalcular_CustoClick(Sender: TObject);
    procedure cePercCustoFinanceiroKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cePrazoDiasKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnConfirmarClick(Sender: TObject);
    procedure Incluir1Click(Sender: TObject);
    procedure Alterar1Click(Sender: TObject);
    procedure RzDBGrid3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Incluir2Click(Sender: TObject);
    procedure Alterar2Click(Sender: TObject);
    procedure DBMemo1Exit(Sender: TObject);
    procedure cePercICMSExit(Sender: TObject);
    procedure cePrecoSugeridoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cePercMargOpe2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    procedure prc_Calcular_Custo;
    procedure prc_Mover_Custo;
    procedure prc_Mover_Filial_Custo;
    procedure prc_Gravar_OrdemServico_Custo;
    procedure prc_Percentual;
    procedure prc_Calcular_Margem(Tipo : String);

  public
    { Public declarations }
    fDMCadOrdemServico: TDMCadOrdemServico;
  end;

var
  frmCadOrc_Custo: TfrmCadOrc_Custo;

implementation

uses rsDBUtils, DB, UCadOrdemServico_Mat, USel_Setor_Proc2, UCadOrdemServico_Terc;     

{$R *.dfm}

procedure TfrmCadOrc_Custo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if fDMCadOrdemServico.cdsOrdemServico_Itens.State in [dsEdit,dsInsert] then
    fDMCadOrdemServico.cdsOrdemServico_Itens.Post;
  Action := Cafree;
end;

procedure TfrmCadOrc_Custo.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadOrdemServico);

  fDMCadOrdemServico.qFilial_Custo.Close;
  fDMCadOrdemServico.qFilial_Custo.ParamByName('ID').AsInteger := fDMCadOrdemServico.cdsOrdemServicoFILIAL.AsInteger;
  fDMCadOrdemServico.qFilial_Custo.Open;

  Panel2.Enabled            := (fDMCadOrdemServico.cdsOrdemServico.State in [dsEdit,dsInsert]);
  btnCalcular_Custo.Enabled := (fDMCadOrdemServico.cdsOrdemServico.State in [dsEdit,dsInsert]);

  if (fDMCadOrdemServico.cdsOrdemServico.State in [dsEdit,dsInsert]) then
    DBMemo1.ReadOnly := False
  else
    DBMemo1.ReadOnly := True;

  RzDBGrid1.SetFocus;
  
  if not(fDMCadOrdemServico.cdsOrdemServico.State in [dsEdit,dsInsert]) then
  begin
    prc_Mover_Custo;
    exit;
  end;
  
  if fDMCadOrdemServico.cdsOrdemServico_Custo.RecordCount <= 0 then
    prc_Mover_Filial_Custo
  else
    prc_Mover_Custo;
  btnCalcular_CustoClick(Sender);

  cePercICMS.Value  := fDMCadOrdemServico.qFilial_CustoPERC_ICMS.AsFloat;
  cePercMarkup.Value  := fDMCadOrdemServico.qFilial_CustoPERC_MARK_UP.AsFloat;
  cePercPisCofins.Value  := fDMCadOrdemServico.cdsFilialPERC_PIS.AsFloat + fDMCadOrdemServico.cdsFilialPERC_COFINS.AsFloat;
  cePercISSQN.Value  := fDMCadOrdemServico.cdsFilialPERC_ISS.AsFloat;
  cePercComissao.Value := fDMCadOrdemServico.qFilial_CustoPERC_COMISSAO.AsFloat;
  cePercFrete.Value := fDMCadOrdemServico.qFilial_CustoPERC_FRETE.AsFloat;
  cePercIR.Value := fDMCadOrdemServico.qFilial_CustoPERC_IR_CONTRSOCIAL.AsFloat;
  cePercMargemOpe.Value := fDMCadOrdemServico.qFilial_CustoPERC_MARGEM_OPE.AsFloat;

  cePercCustoFinanceiro.Value := fDMCadOrdemServico.qFilial_CustoPERC_CUSTO_FINANCEIRO.AsFloat;

  //btnCalcular_CustoClick(Sender);

  if Panel2.Enabled then
    cePrecoSugerido.SetFocus;
end;

procedure TfrmCadOrc_Custo.btnCalcular_CustoClick(Sender: TObject);
var
  vVlrProcesso: Real;
  vVlrMaterial: Real;
  vVlrTerceiro: Real;
  vVlrSetor   : Real;
begin
  vVlrProcesso := 0;
  vVlrMaterial := 0;
  vVlrTerceiro := 0;
  fDMCadOrdemServico.cdsOrdemServico_Setor.First;
  while not fDMCadOrdemServico.cdsOrdemServico_Setor.Eof do
  begin
    vVlrProcesso := StrToCurr(FormatCurr('0.00',vVlrProcesso + fDMCadOrdemServico.cdsOrdemServico_SetorVLR_TOTAL.AsFloat));
    fDMCadOrdemServico.cdsOrdemServico_Setor.Next;
  end;
  fDMCadOrdemServico.cdsOrdemServico_Mat.First;
  while not fDMCadOrdemServico.cdsOrdemServico_Mat.Eof do
  begin
    fDMCadOrdemServico.prc_Monta_qProduto(fDMCadOrdemServico.cdsOrdemServico_MatID_PRODUTO.AsInteger,'');
    vVlrMaterial := StrToCurr(FormatCurr('0.00',vVlrMaterial + fDMCadOrdemServico.cdsOrdemServico_MatVLR_TOTAL.AsFloat));
    fDMCadOrdemServico.cdsOrdemServico_Mat.Next;
  end;
  fDMCadOrdemServico.cdsOrdemServico_Terc.First;
  while not fDMCadOrdemServico.cdsOrdemServico_Terc.Eof do
  begin
    vVlrTerceiro := StrToCurr(FormatCurr('0.00',vVlrTerceiro + fDMCadOrdemServico.cdsOrdemServico_TercVALOR.AsFloat));
    fDMCadOrdemServico.cdsOrdemServico_Terc.Next;
  end;

  ceVlrProcesso.Value := vVlrProcesso;
  ceVlrMaterial.Value := vVlrMaterial;
  ceVlrTerceiro.Value := vVlrTerceiro;

  ceVlrTotalCusto.Value := vVlrProcesso + vVlrMaterial + vVlrTerceiro;

  //if fDMCadOrdemServico.cdsOrdemServico_Custo.RecordCount <= 0 then
    prc_Calcular_Custo;

  if (cePreco.Value > 0) and (ceVlrProcesso.Value > 0) then
    cePercProcesso.Value := (ceVlrProcesso.Value / cePreco.Value) * 100;
  if (cePreco.Value > 0) and (ceVlrMaterial.Value > 0) then
    cePercMaterial.Value := (ceVlrMaterial.Value / cePreco.Value) * 100;
  if (cePreco.Value > 0) and (ceVlrTerceiro.Value > 0) then
    cePercTerceiro.Value := (ceVlrTerceiro.Value / cePreco.Value) * 100;
  if (cePreco.Value > 0) and (ceVlrTotalCusto.Value > 0) then
    cePercTotalCusto.Value := (ceVlrTotalCusto.Value / cePreco.Value) * 100;
end;

procedure TfrmCadOrc_Custo.prc_Calcular_Custo;
var
  vDivPeriodo: Real;
  vVF: Real;
  vVlrAux: Real;
  vCustoFinParcial: Real;
  vv: Currency;
begin
  //Calculando
  if (ceVlrTotalCusto.Value <= 0) then
    exit;
  
  vDivPeriodo := 1;
  if (cePrazoDias.Value > 0) then
  begin
    if fDMCadOrdemServico.qFilial_CustoPRAZO_BASE.AsInteger > 0 then
      vDivPeriodo := StrToFloat(FormatFloat('0.00',cePrazoDias.Value / fDMCadOrdemServico.qFilial_CustoPRAZO_BASE.AsInteger))
    else
      vDivPeriodo := StrToFloat(FormatFloat('0.00',cePrazoDias.Value / 30));
  end;
  cePercPeriodo.Value := vDivPeriodo;

  if (cePercCustoFinanceiro.Value > 0) and (StrToFloat(FormatFloat('0.00',vDivPeriodo)) > 0) then
  begin
    vVF := StrToFloat(FormatFloat('0.00',(cePercCustoFinanceiro.Value * vDivPeriodo)  + 100));
    vCustoFinParcial := StrToFloat(FormatFloat('0.00',cePercCustoFinanceiro.Value * vDivPeriodo));
    cePercCustoPeriodo.Value := vCustoFinParcial;
  end
  else
  begin
    vVF                      := StrToFloat(FormatFloat('0.00',0));
    vCustoFinParcial         := StrToFloat(FormatFloat('0.00',0));
    cePercCustoPeriodo.Value := 0;
  end;
  //********

  //Cálcular o Preço

  {vVlrAux := StrToFloat(FormatFloat('0.00',ceVlrTotalCusto.Value / ( 1-(cePercICMS.Value+cePercMarkup.Value + cePercPisCofins.Value + cePercISSQN.Value
                                       + cePercComissao.Value + cePercFrete.Value + cePercIR.Value + ceVlrMaterial.Value
                                       + cePercCustoPeriodo.Value) / 100)));}

  vVlrAux := StrToFloat(FormatFloat('0.00',cePercICMS.Value+cePercMarkup.Value + cePercPisCofins.Value + cePercISSQN.Value
                                       + cePercComissao.Value + cePercFrete.Value + cePercIR.Value
                                       + cePercCustoPeriodo.Value));

  vVlrAux := StrToFloat(FormatFloat('0.00',ceVlrTotalCusto.Value / ( 1-(vVlrAux) / 100)));

  cePreco.Value         := vVlrAux;
  cePrecoSugerido.Value := cePreco.Value;

  //Percentual Margem Operacional
  prc_Calcular_Margem('V');
end;

procedure TfrmCadOrc_Custo.cePercCustoFinanceiroKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = VK_RETURN then
    prc_Calcular_Custo;
end;

procedure TfrmCadOrc_Custo.cePrazoDiasKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = VK_RETURN then
    prc_Calcular_Custo;
end;

procedure TfrmCadOrc_Custo.prc_Mover_Custo;
begin
  cePercICMS.Value  := fDMCadOrdemServico.cdsOrdemServico_CustoPERC_ICMS.AsFloat;
  cePercMarkup.Value  := fDMCadOrdemServico.cdsOrdemServico_CustoPERC_MARKUP.AsFloat;
  cePercPisCofins.Value  := fDMCadOrdemServico.cdsOrdemServico_CustoPERC_PISCOFINS.AsFloat;
  cePercISSQN.Value  := fDMCadOrdemServico.cdsOrdemServico_CustoPERC_ISSQN.AsFloat;
  cePercComissao.Value := fDMCadOrdemServico.cdsOrdemServico_CustoPERC_COMISSAO.AsFloat;
  cePercFrete.Value := fDMCadOrdemServico.cdsOrdemServico_CustoPERC_FRETE.AsFloat;
  cePercIR.Value := fDMCadOrdemServico.cdsOrdemServico_CustoPERC_IR_CSOCIAL.AsFloat;
  cePercMargemOpe.Value := fDMCadOrdemServico.cdsOrdemServico_CustoPERC_MARG1.AsFloat;
  cePercCustoFinanceiro.Value := fDMCadOrdemServico.cdsOrdemServico_CustoPERC_CUSTO_FINANCEIRO.AsFloat;


  ceVlrMaterial.Value := fDMCadOrdemServico.cdsOrdemServico_CustoVLR_MATERIAIS.AsFloat;
  ceVlrProcesso.Value := fDMCadOrdemServico.cdsOrdemServico_CustoVLR_PROCESSO.AsFloat;
  ceVlrTerceiro.Value := fDMCadOrdemServico.cdsOrdemServico_CustoVLR_TERCEIRO.AsFloat;
  ceVlrTotalCusto.Value := fDMCadOrdemServico.cdsOrdemServico_CustoTOTAL_CUSTO.AsFloat;
  cePercMargOpe2.Value := fDMCadOrdemServico.cdsOrdemServico_CustoPERC_MARG2.AsFloat;
  cePreco.Value := fDMCadOrdemServico.cdsOrdemServico_CustoPRECO.AsFloat;
  cePrecoSugerido.Value := fDMCadOrdemServico.cdsOrdemServico_CustoVLR_PROPOSTA.AsFloat;
  cePrazoDias.Value := fDMCadOrdemServico.cdsOrdemServico_CustoPRAZO_DIAS.AsInteger;
  cePercCustoPeriodo.Value := fDMCadOrdemServico.cdsOrdemServico_CustoPERC_CUSTO_PERIODO.AsFloat;
  ceVlrMargem.Value := fDMCadOrdemServico.cdsOrdemServico_CustoVLR_MARGEM.AsFloat;
  ceVlrIR.Value := fDMCadOrdemServico.cdsOrdemServico_CustoVLR_IR_PJ.AsFloat;
  ceVlrMargemLiquida.Value := fDMCadOrdemServico.cdsOrdemServico_CustoVLR_MARGEM_LIQ.AsFloat;
  cePercMargemLiquida.Value := fDMCadOrdemServico.cdsOrdemServico_CustoPERC_MARGEM_LIQ.AsFloat;
  prc_Percentual;
end;

procedure TfrmCadOrc_Custo.prc_Mover_Filial_Custo;
begin
  cePercICMS.Value  := fDMCadOrdemServico.qFilial_CustoPERC_ICMS.AsFloat;
  cePercMarkup.Value  := fDMCadOrdemServico.qFilial_CustoPERC_MARK_UP.AsFloat;
  cePercPisCofins.Value  := fDMCadOrdemServico.cdsFilialPERC_PIS.AsFloat + fDMCadOrdemServico.cdsFilialPERC_COFINS.AsFloat;
  cePercISSQN.Value  := fDMCadOrdemServico.cdsFilialPERC_ISS.AsFloat;
  cePercComissao.Value := fDMCadOrdemServico.qFilial_CustoPERC_COMISSAO.AsFloat;
  cePercFrete.Value := fDMCadOrdemServico.qFilial_CustoPERC_FRETE.AsFloat;
  cePercIR.Value := fDMCadOrdemServico.qFilial_CustoPERC_IR_CONTRSOCIAL.AsFloat;
  cePercMargemOpe.Value := fDMCadOrdemServico.qFilial_CustoPERC_MARGEM_OPE.AsFloat;
  cePercCustoFinanceiro.Value := fDMCadOrdemServico.qFilial_CustoPERC_CUSTO_FINANCEIRO.AsFloat;
end;

procedure TfrmCadOrc_Custo.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_OrdemServico_Custo;
  if fDMCadOrdemServico.cdsOrdemServico_Mat.RecordCount > 0 then
  begin
    fDMCadOrdemServico.cdsOrdemServico_Mat.Edit;
    fDMCadOrdemServico.cdsOrdemServico_Mat.Post;
  end;
  if fDMCadOrdemServico.cdsOrdemServico_Terc.RecordCount > 0 then
  begin
    fDMCadOrdemServico.cdsOrdemServico_Terc.Edit;
    fDMCadOrdemServico.cdsOrdemServico_Terc.Post;
  end;
  if fDMCadOrdemServico.cdsOrdemServico_Setor.RecordCount > 0 then
  begin
    fDMCadOrdemServico.cdsOrdemServico_Setor.Edit;
    fDMCadOrdemServico.cdsOrdemServico_Setor.Post;
    fDMCadOrdemServico.cdsOrdemServico_Setor_Proc.Edit;
    fDMCadOrdemServico.cdsOrdemServico_Setor_Proc.Post;
  end;
  if fDMCadOrdemServico.cdsOrdemServico_Itens.State in [dsEdit] then
    fDMCadOrdemServico.cdsOrdemServico_Itens.Post;
  prc_Percentual;
  {fDMCadOrdemServico.cdsOrdemServico_Setor.First;
  while not fDMCadOrdemServico.cdsOrdemServico_Setor.Eof do
  begin
    fDMCadOrdemServico.cdsOrdemServico_Setor_Proc.First;
    while not fDMCadOrdemServico.cdsOrdemServico_Setor_Proc.Eof do
    begin
      fDMCadOrdemServico.cdsOrdemServico_Setor_Proc.Edit;
      fDMCadOrdemServico.cdsOrdemServico_Setor_ProcclPerc_Total.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadOrdemServico.cdsOrdemServico_Setor_ProcVLR_TOTAL.AsFloat
                                                                         / fDMCadOrdemServico.cdsOrdemServico_CustoPRECO.AsFloat));

      fDMCadOrdemServico.cdsOrdemServico_Setor_Proc.Post;
      fDMCadOrdemServico.cdsOrdemServico_Setor_Proc.Next;
    end;

    fDMCadOrdemServico.cdsOrdemServico_Setor.Next;
  end;}

end;

procedure TfrmCadOrc_Custo.prc_Gravar_OrdemServico_Custo;
begin
  if fDMCadOrdemServico.cdsOrdemServico_CustoID.AsInteger > 0 then
    fDMCadOrdemServico.cdsOrdemServico_Custo.Edit
  else
  begin
    fDMCadOrdemServico.cdsOrdemServico_Custo.Insert;
    fDMCadOrdemServico.cdsOrdemServico_CustoID.AsInteger := fDMCadOrdemServico.cdsOrdemServicoID.AsInteger;
  end;
  fDMCadOrdemServico.cdsOrdemServico_CustoPERC_ICMS.AsFloat             := cePercICMS.Value;
  fDMCadOrdemServico.cdsOrdemServico_CustoPERC_MARKUP.AsFloat           := cePercMarkup.Value;
  fDMCadOrdemServico.cdsOrdemServico_CustoPERC_PISCOFINS.AsFloat        := cePercPisCofins.Value;
  fDMCadOrdemServico.cdsOrdemServico_CustoPERC_ISSQN.AsFloat            := cePercISSQN.Value;
  fDMCadOrdemServico.cdsOrdemServico_CustoPERC_COMISSAO.AsFloat         := cePercComissao.Value;
  fDMCadOrdemServico.cdsOrdemServico_CustoPERC_FRETE.AsFloat            := cePercFrete.Value; 
  fDMCadOrdemServico.cdsOrdemServico_CustoPERC_IR_CSOCIAL.AsFloat       := cePercIR.Value;
  fDMCadOrdemServico.cdsOrdemServico_CustoPERC_MARG1.AsFloat            := cePercMargemOpe.Value;
  fDMCadOrdemServico.cdsOrdemServico_CustoPERC_CUSTO_FINANCEIRO.AsFloat := cePercCustoFinanceiro.Value; 

  fDMCadOrdemServico.cdsOrdemServico_CustoVLR_MATERIAIS.AsFloat := ceVlrMaterial.Value;
  fDMCadOrdemServico.cdsOrdemServico_CustoVLR_PROCESSO.AsFloat  := ceVlrProcesso.Value;
  fDMCadOrdemServico.cdsOrdemServico_CustoVLR_TERCEIRO.AsFloat  := ceVlrTerceiro.Value;
  fDMCadOrdemServico.cdsOrdemServico_CustoVLR_SETOR.AsFloat     := 0;
  fDMCadOrdemServico.cdsOrdemServico_CustoTOTAL_CUSTO.AsFloat   := ceVlrTotalCusto.Value;
  fDMCadOrdemServico.cdsOrdemServico_CustoPERC_MARG2.AsFloat    := cePercMargOpe2.Value;
  fDMCadOrdemServico.cdsOrdemServico_CustoPRECO.AsFloat         := cePreco.Value;
  fDMCadOrdemServico.cdsOrdemServico_CustoVLR_PROPOSTA.AsFloat  := cePrecoSugerido.Value; 
  fDMCadOrdemServico.cdsOrdemServico_CustoPRAZO_DIAS.AsInteger  := cePrazoDias.AsInteger; 
  fDMCadOrdemServico.cdsOrdemServico_CustoPERC_CUSTO_PERIODO.AsFloat := cePercCustoPeriodo.Value;
  fDMCadOrdemServico.cdsOrdemServico_CustoVLR_MARGEM.AsFloat         := ceVlrMargem.Value;
  fDMCadOrdemServico.cdsOrdemServico_CustoVLR_IR_PJ.AsFloat          := ceVlrIR.Value;
  fDMCadOrdemServico.cdsOrdemServico_CustoVLR_MARGEM_LIQ.AsFloat     := ceVlrMargemLiquida.Value;
  fDMCadOrdemServico.cdsOrdemServico_CustoPERC_MARGEM_LIQ.AsFloat    := cePercMargemLiquida.Value;
  fDMCadOrdemServico.cdsOrdemServico_Custo.Post;
end;

procedure TfrmCadOrc_Custo.prc_Percentual;
begin
  if (cePreco.Value > 0) and (ceVlrProcesso.Value > 0) then
    cePercProcesso.Value := (ceVlrProcesso.Value / cePreco.Value) * 100;
  if (cePreco.Value > 0) and (ceVlrMaterial.Value > 0) then
    cePercMaterial.Value := (ceVlrMaterial.Value / cePreco.Value) * 100;
  if (cePreco.Value > 0) and (ceVlrTerceiro.Value > 0) then
    cePercTerceiro.Value := (ceVlrTerceiro.Value / cePreco.Value) * 100;
  if (cePreco.Value > 0) and (ceVlrTotalCusto.Value > 0) then
    cePercTotalCusto.Value := (ceVlrTotalCusto.Value / cePreco.Value) * 100;
end;

procedure TfrmCadOrc_Custo.Incluir1Click(Sender: TObject);
var
  ffrmCadOrdemServico_Mat: TfrmCadOrdemServico_Mat;
  vCont:  Integer;
begin
  if not(fDMCadOrdemServico.cdsOrdemServico.State in [dsEdit,dsInsert]) then
    exit;
  vCont := fDMCadOrdemServico.cdsOrdemServico_Mat.RecordCount;
  fDMCadOrdemServico.prc_Inserir_Mat;
  ffrmCadOrdemServico_Mat := TfrmCadOrdemServico_Mat.Create(self);
  ffrmCadOrdemServico_Mat.fDMCadOrdemServico := fDMCadOrdemServico;
  ffrmCadOrdemServico_Mat.ShowModal;
  FreeAndNil(ffrmCadOrdemServico_Mat);
  if vCont <> fDMCadOrdemServico.cdsOrdemServico_Mat.RecordCount then
  begin
    cePrecoSugerido.Value := 0;
    btnCalcular_CustoClick(Sender);
  end;
end;

procedure TfrmCadOrc_Custo.Alterar1Click(Sender: TObject);
var
  ffrmCadOrdemServico_Mat: TfrmCadOrdemServico_Mat;
  vVlr: Real;
begin
  if not(fDMCadOrdemServico.cdsOrdemServico.State in [dsEdit,dsInsert]) then
    exit;
  if fDMCadOrdemServico.cdsOrdemServico_MatITEM_MAT.AsInteger <= 0 then
  begin
    MessageDlg('*** Não existe registro para alterar!', mtInformation, [mbOk], 0);
    exit;
  end;
  vVlr := StrToFloat(FormatFloat('0.00',fDMCadOrdemServico.cdsOrdemServico_MatVLR_TOTAL.AsFloat));
  fDMCadOrdemServico.cdsOrdemServico_Mat.Edit;
  ffrmCadOrdemServico_Mat := TfrmCadOrdemServico_Mat.Create(self);
  ffrmCadOrdemServico_Mat.fDMCadOrdemServico := fDMCadOrdemServico;
  ffrmCadOrdemServico_Mat.ShowModal;
  FreeAndNil(ffrmCadOrdemServico_Mat);
  if StrToFloat(FormatFloat('0.00',vVlr)) <> StrToFloat(FormatFloat('0.00',fDMCadOrdemServico.cdsOrdemServico_MatVLR_TOTAL.AsFloat)) then
  begin
    cePrecoSugerido.Value := 0;
    btnCalcular_CustoClick(Sender);
  end;
end;

procedure TfrmCadOrc_Custo.RzDBGrid3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  VIDSetor: Integer;  
begin
  if (Key = vk_f2) and (fDMCadOrdemServico.cdsOrdemServico.State in [dsEdit,dsInsert]) then
  begin
    VIDSetor := fDMCadOrdemServico.cdsOrdemServico_SetorID_SETOR.AsInteger;
    fDMCadOrdemServico.vConfSelecao := False;
    frmSel_Setor_Proc2 := TfrmSel_Setor_Proc2.Create(Self);
    frmSel_Setor_Proc2.fDMCadOrdemServico := fDMCadOrdemServico;
    frmSel_Setor_Proc2.vID_Setor_Local    := 0;
    frmSel_Setor_Proc2.ShowModal;
    FreeAndNil(frmSel_Setor_Proc2);
    fDMCadOrdemServico.prc_Somar_Setor;
    if fDMCadOrdemServico.vConfSelecao then
    begin
      cePrecoSugerido.Value := 0;
      btnCalcular_CustoClick(Sender);
    end;
    fDMCadOrdemServico.cdsOrdemServico_Setor.Locate('ID_SETOR',VIDSetor,[loCaseInsensitive]);
  end;
end;

procedure TfrmCadOrc_Custo.Incluir2Click(Sender: TObject);
var
  ffrmCadOrdemServico_Terc: TfrmCadOrdemServico_Terc;
  vCont: Integer;
begin
  if not(fDMCadOrdemServico.cdsOrdemServico.State in [dsEdit,dsInsert]) then
    exit;

  vCont := fDMCadOrdemServico.cdsOrdemServico_Terc.RecordCount;
  fDMCadOrdemServico.prc_Inserir_Terc;
  ffrmCadOrdemServico_Terc := TfrmCadOrdemServico_Terc.Create(self);
  ffrmCadOrdemServico_Terc.fDMCadOrdemServico := fDMCadOrdemServico;
  ffrmCadOrdemServico_Terc.ShowModal;
  FreeAndNil(ffrmCadOrdemServico_Terc);
  if vCont <> fDMCadOrdemServico.cdsOrdemServico_Terc.RecordCount then
  begin
    cePrecoSugerido.Value := 0;
    btnCalcular_CustoClick(sender);
  end;
end;

procedure TfrmCadOrc_Custo.Alterar2Click(Sender: TObject);
var
  ffrmCadOrdemServico_Terc: TfrmCadOrdemServico_Terc;
  vVlr: Real;
begin
  if not(fDMCadOrdemServico.cdsOrdemServico.State in [dsEdit,dsInsert]) then
    exit;

  if fDMCadOrdemServico.cdsOrdemServico_TercITEM_TERC.AsInteger <= 0 then
  begin
    MessageDlg('*** Não existe registro para alterar!', mtInformation, [mbOk], 0);
    exit;
  end;

  vVlr := StrToFloat(FormatFloat('0.00',fDMCadOrdemServico.cdsOrdemServico_TercVALOR.AsFloat));
  fDMCadOrdemServico.cdsOrdemServico_Terc.Edit;
  ffrmCadOrdemServico_Terc := TfrmCadOrdemServico_Terc.Create(self);
  ffrmCadOrdemServico_Terc.fDMCadOrdemServico := fDMCadOrdemServico;
  ffrmCadOrdemServico_Terc.ShowModal;
  FreeAndNil(ffrmCadOrdemServico_Terc);

  if StrToFloat(FormatFloat('0.00',vVlr)) <> StrToFloat(FormatFloat('0.00',fDMCadOrdemServico.cdsOrdemServico_TercVALOR.AsFloat)) then
  begin
    cePrecoSugerido.Value := 0;
    btnCalcular_CustoClick(sender);
  end;
end;

procedure TfrmCadOrc_Custo.DBMemo1Exit(Sender: TObject);
begin
  if fDMCadOrdemServico.cdsOrdemServico_Itens.State in [dsEdit,dsInsert] then
    fDMCadOrdemServico.cdsOrdemServico_Itens.Post;
end;

procedure TfrmCadOrc_Custo.cePercICMSExit(Sender: TObject);
begin
  prc_Calcular_Custo;
end;

procedure TfrmCadOrc_Custo.prc_Calcular_Margem(Tipo : String);
var
  vVlrAux: Real;
  vSomaAux: Real;
begin
  vVlrAux := StrToFloat(FormatFloat('0.00',((1-(ceVlrTotalCusto.Value/cePrecoSugerido.Value)) - ((cePercICMS.Value + cePercMarkup.Value + cePercPisCofins.Value
                                                               +cePercISSQN.Value + cePercComissao.Value + cePercFrete.Value
                                                               +cePercCustoPeriodo.value)/100))*100));
  {vVlrAux  := StrToFloat(FormatFloat('0.00',1-(ceVlrTotalCusto.Value/cePrecoSugerido.Value)));
  vSomaAux := (cePercICMS.Value + cePercMarkup.Value + cePercPisCofins.Value + cePercISSQN.Value + cePercComissao.Value + cePercFrete.Value + cePercCustoPeriodo.value);
  vSomaAux := vSomaAux / 100;
  vVlrAux  := vVlrAux - vSomaAux;
  //vVlrAux  := vVlrAux / 100;
  vVlrAux  := vVlrAux * 100;}

  cePercMargOpe2.Value := vVlrAux;
  //***********************

  //Margem Líquida %
  if (ceVlrMargemLiquida.Value > 0) and (cePrecoSugerido.Value > 0) then
    vVlrAux := StrToFloat(FormatFloat('0.00',(ceVlrMargemLiquida.Value / cePrecoSugerido.Value) * 100))
  else
    vVlrAux := 0;
  cePercMargemLiquida.Value := vVlrAux;
  //****************************

  vVlrAux := StrToFloat(FormatFloat('0.00',-cePrecoSugerido.Value * ((cePercCustoPeriodo.Value + cePercICMS.Value + cePercMarkup.Value + cePercPisCofins.Value
                                      + cePercISSQN.Value + cePercComissao.Value + cePercFrete.Value + cePercIR.Value)/100)
                                    + cePrecoSugerido.Value - ceVlrTotalCusto.Value));
  ceVlrMargem.Value := vVlrAux;

   //=-I26*(I31+I17+I18+I19+I20+I21+I22+I23)+I26-I8

  //*****************

  //IR Pessoa Jurídica
  vVlrAux := StrToFloat(FormatFloat('0.00',(ceVlrMargem.Value * fDMCadOrdemServico.qFilial_CustoPERC_IR_PJ.AsFloat) / 100));
  ceVlrIR.Value := vVlrAux;
  //*************

  //Margem Líquida R$
  ceVlrMargemLiquida.Value := ceVlrMargem.Value - ceVlrIR.Value;
  //******************

  btnConfirmarClick(btnConfirmar);
  //************
end;

procedure TfrmCadOrc_Custo.cePrecoSugeridoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = VK_RETURN then
  begin
    if cePrecoSugerido.Value > 0 then
      prc_Calcular_Margem('V')
    else
      prc_Calcular_Custo;
  end;
end;

procedure TfrmCadOrc_Custo.cePercMargOpe2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = VK_RETURN then
    prc_Calcular_Margem('P');
end;

end.
