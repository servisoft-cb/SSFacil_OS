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
    CurrencyEdit7: TCurrencyEdit;
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
    CurrencyEdit6: TCurrencyEdit;
    CurrencyEdit8: TCurrencyEdit;
    CurrencyEdit9: TCurrencyEdit;
    CurrencyEdit10: TCurrencyEdit;
    CurrencyEdit11: TCurrencyEdit;
    CurrencyEdit12: TCurrencyEdit;
    CurrencyEdit13: TCurrencyEdit;
    CurrencyEdit14: TCurrencyEdit;
    CurrencyEdit15: TCurrencyEdit;
    CurrencyEdit16: TCurrencyEdit;
    CurrencyEdit17: TCurrencyEdit;
    CurrencyEdit18: TCurrencyEdit;
    CurrencyEdit19: TCurrencyEdit;
    CurrencyEdit20: TCurrencyEdit;
    CurrencyEdit21: TCurrencyEdit;
    CurrencyEdit22: TCurrencyEdit;
    CurrencyEdit23: TCurrencyEdit;
    CurrencyEdit25: TCurrencyEdit;
    RzGroupBox1: TRzGroupBox;
    RzDBGrid1: TRzDBGrid;
    RzGroupBox2: TRzGroupBox;
    RzDBGrid2: TRzDBGrid;
    RzGroupBox3: TRzGroupBox;
    RzDBGrid3: TRzDBGrid;
    RzDBGrid13: TRzDBGrid;
    btnCalcular_Custo: TNxButton;
    CurrencyEdit4: TCurrencyEdit;
    btnConfirmar: TNxButton;
    Panel4: TPanel;
    Label2: TLabel;
    CurrencyEdit27: TCurrencyEdit;
    CurrencyEdit2: TCurrencyEdit;
    Panel5: TPanel;
    CurrencyEdit26: TCurrencyEdit;
    Label49: TLabel;
    CurrencyEdit3: TCurrencyEdit;
    Panel6: TPanel;
    CurrencyEdit28: TCurrencyEdit;
    Label51: TLabel;
    CurrencyEdit5: TCurrencyEdit;
    CurrencyEdit29: TCurrencyEdit;
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
    btnCalcular_Proposta: TNxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnCalcular_CustoClick(Sender: TObject);
    procedure CurrencyEdit17KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CurrencyEdit18KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnConfirmarClick(Sender: TObject);
    procedure Incluir1Click(Sender: TObject);
    procedure Alterar1Click(Sender: TObject);
    procedure RzDBGrid3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Incluir2Click(Sender: TObject);
    procedure Alterar2Click(Sender: TObject);
    procedure DBMemo1Exit(Sender: TObject);
    procedure CurrencyEdit4Exit(Sender: TObject);
  private
    { Private declarations }
    procedure prc_Calcular_Custo;
    procedure prc_Mover_Custo;
    procedure prc_Mover_Filial_Custo;
    procedure prc_Gravar_OrdemServico_Custo;
    procedure prc_Percentual;
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

  {CurrencyEdit4.Value  := fDMCadOrdemServico.qFilial_CustoPERC_ICMS.AsFloat;
  CurrencyEdit7.Value  := fDMCadOrdemServico.qFilial_CustoPERC_MARK_UP.AsFloat;
  CurrencyEdit8.Value  := fDMCadOrdemServico.cdsFilialPERC_PIS.AsFloat + fDMCadOrdemServico.cdsFilialPERC_COFINS.AsFloat;
  CurrencyEdit9.Value  := fDMCadOrdemServico.cdsFilialPERC_ISS.AsFloat;
  CurrencyEdit10.Value := fDMCadOrdemServico.qFilial_CustoPERC_COMISSAO.AsFloat;
  CurrencyEdit11.Value := fDMCadOrdemServico.qFilial_CustoPERC_FRETE.AsFloat;
  CurrencyEdit12.Value := fDMCadOrdemServico.qFilial_CustoPERC_IR_CONTRSOCIAL.AsFloat;
  CurrencyEdit13.Value := fDMCadOrdemServico.qFilial_CustoPERC_MARGEM_OPE.AsFloat;

  CurrencyEdit17.Value := fDMCadOrdemServico.qFilial_CustoPERC_CUSTO_FINANCEIRO.AsFloat;}

  //btnCalcular_CustoClick(Sender);

  if Panel2.Enabled then
    CurrencyEdit15.SetFocus;
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

  CurrencyEdit2.Value := vVlrProcesso;
  CurrencyEdit3.Value := vVlrMaterial;
  CurrencyEdit5.Value := vVlrTerceiro;

  CurrencyEdit6.Value := vVlrProcesso + vVlrMaterial + vVlrTerceiro;

  //if fDMCadOrdemServico.cdsOrdemServico_Custo.RecordCount <= 0 then
    prc_Calcular_Custo;

  if (CurrencyEdit14.Value > 0) and (CurrencyEdit2.Value > 0) then
    CurrencyEdit27.Value := (CurrencyEdit2.Value / CurrencyEdit14.Value) * 100;
  if (CurrencyEdit14.Value > 0) and (CurrencyEdit3.Value > 0) then
    CurrencyEdit26.Value := (CurrencyEdit3.Value / CurrencyEdit14.Value) * 100;
  if (CurrencyEdit14.Value > 0) and (CurrencyEdit5.Value > 0) then
    CurrencyEdit28.Value := (CurrencyEdit5.Value / CurrencyEdit14.Value) * 100;
  if (CurrencyEdit14.Value > 0) and (CurrencyEdit6.Value > 0) then
    CurrencyEdit29.Value := (CurrencyEdit6.Value / CurrencyEdit14.Value) * 100;
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
  if (CurrencyEdit6.Value <= 0) then
    exit;
  
  vDivPeriodo := 1;
  if (CurrencyEdit18.Value > 0) then
  begin
    if fDMCadOrdemServico.qFilial_CustoPRAZO_BASE.AsInteger > 0 then
      vDivPeriodo := StrToFloat(FormatFloat('0.00',CurrencyEdit18.Value / fDMCadOrdemServico.qFilial_CustoPRAZO_BASE.AsInteger))
    else
      vDivPeriodo := StrToFloat(FormatFloat('0.00',CurrencyEdit18.Value / 30));
  end;
  CurrencyEdit25.Value := vDivPeriodo;

  vVF := StrToFloat(FormatFloat('0.00',(CurrencyEdit17.Value * vDivPeriodo)  + 100));
  vCustoFinParcial := StrToFloat(FormatFloat('0.00',CurrencyEdit17.Value * vDivPeriodo));
  CurrencyEdit19.Value := vCustoFinParcial;

  //********

  //Cálcular o Preço
  vVlrAux := StrToFloat(FormatFloat('0.00',CurrencyEdit6.Value / ( 1-(CurrencyEdit4.Value+CurrencyEdit7.Value + CurrencyEdit8.Value + CurrencyEdit9.Value
                                       + CurrencyEdit10.Value + CurrencyEdit11.Value + CurrencyEdit12.Value + CurrencyEdit3.Value
                                       + CurrencyEdit19.Value) / 100)));


  //vVlrAux := CurrencyEdit6.Value / (1-((CurrencyEdit4.Value+CurrencyEdit7.Value+CurrencyEdit8.Value+CurrencyEdit9.Value
    //                                   +CurrencyEdit10.Value+CurrencyEdit11.Value+CurrencyEdit12.Value+CurrencyEdit3.Value
      //                                 +CurrencyEdit19.Value)/100));
  CurrencyEdit14.Value := vVlrAux;
  if (CurrencyEdit15.Value <= 0) then
    CurrencyEdit15.Value := CurrencyEdit14.Value;
  //**************
  //Percentual Margem Operacional
  vVlrAux := StrToFloat(FormatFloat('0.00',((1-(CurrencyEdit6.Value/CurrencyEdit15.Value)) - ((CurrencyEdit4.Value + CurrencyEdit7.Value + CurrencyEdit8.Value
                                                               +CurrencyEdit9.Value + CurrencyEdit10.Value + CurrencyEdit11.Value
                                                               +CurrencyEdit19.value)/100))*100));
  CurrencyEdit16.Value := vVlrAux;
  //***********************

  //Margem Líquida %
  if (CurrencyEdit22.Value > 0) and (CurrencyEdit15.Value > 0) then
    vVlrAux := StrToFloat(FormatFloat('0.00',(CurrencyEdit22.Value / CurrencyEdit15.Value) * 100))
  else
    vVlrAux := 0;
  CurrencyEdit23.Value := vVlrAux;
  //****************************

  vVlrAux := StrToFloat(FormatFloat('0.00',-CurrencyEdit15.Value * ((CurrencyEdit19.Value + CurrencyEdit4.Value + CurrencyEdit7.Value + CurrencyEdit8.Value
                                      + CurrencyEdit9.Value + CurrencyEdit10.Value + CurrencyEdit11.Value + CurrencyEdit12.Value)/100)
                                    + CurrencyEdit15.Value - CurrencyEdit6.Value));
  CurrencyEdit20.Value := vVlrAux;

   //=-I26*(I31+I17+I18+I19+I20+I21+I22+I23)+I26-I8

  //*****************

  //IR Pessoa Jurídica
  vVlrAux := StrToFloat(FormatFloat('0.00',(CurrencyEdit20.Value * fDMCadOrdemServico.qFilial_CustoPERC_IR_PJ.AsFloat) / 100));
  CurrencyEdit21.Value := vVlrAux; 
  //*************

  //Margem Líquida R$
  CurrencyEdit22.Value := CurrencyEdit20.Value - CurrencyEdit21.Value;
  //******************
  
  //************
  btnConfirmarClick(btnConfirmar);
end;

procedure TfrmCadOrc_Custo.CurrencyEdit17KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = VK_RETURN then
    prc_Calcular_Custo;
end;

procedure TfrmCadOrc_Custo.CurrencyEdit18KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = VK_RETURN then
    prc_Calcular_Custo;
end;

procedure TfrmCadOrc_Custo.prc_Mover_Custo;
begin
  CurrencyEdit4.Value  := fDMCadOrdemServico.cdsOrdemServico_CustoPERC_ICMS.AsFloat;
  CurrencyEdit7.Value  := fDMCadOrdemServico.cdsOrdemServico_CustoPERC_MARKUP.AsFloat;
  CurrencyEdit8.Value  := fDMCadOrdemServico.cdsOrdemServico_CustoPERC_PISCOFINS.AsFloat;
  CurrencyEdit9.Value  := fDMCadOrdemServico.cdsOrdemServico_CustoPERC_ISSQN.AsFloat;
  CurrencyEdit10.Value := fDMCadOrdemServico.cdsOrdemServico_CustoPERC_COMISSAO.AsFloat;
  CurrencyEdit11.Value := fDMCadOrdemServico.cdsOrdemServico_CustoPERC_FRETE.AsFloat;
  CurrencyEdit12.Value := fDMCadOrdemServico.cdsOrdemServico_CustoPERC_IR_CSOCIAL.AsFloat;
  CurrencyEdit13.Value := fDMCadOrdemServico.cdsOrdemServico_CustoPERC_MARG1.AsFloat;
  CurrencyEdit17.Value := fDMCadOrdemServico.cdsOrdemServico_CustoPERC_CUSTO_FINANCEIRO.AsFloat;


  CurrencyEdit3.Value := fDMCadOrdemServico.cdsOrdemServico_CustoVLR_MATERIAIS.AsFloat;
  CurrencyEdit2.Value := fDMCadOrdemServico.cdsOrdemServico_CustoVLR_PROCESSO.AsFloat;
  CurrencyEdit5.Value := fDMCadOrdemServico.cdsOrdemServico_CustoVLR_TERCEIRO.AsFloat;
  CurrencyEdit6.Value := fDMCadOrdemServico.cdsOrdemServico_CustoTOTAL_CUSTO.AsFloat;
  CurrencyEdit16.Value := fDMCadOrdemServico.cdsOrdemServico_CustoPERC_MARG2.AsFloat;    
  CurrencyEdit14.Value := fDMCadOrdemServico.cdsOrdemServico_CustoPRECO.AsFloat;
  CurrencyEdit15.Value := fDMCadOrdemServico.cdsOrdemServico_CustoVLR_PROPOSTA.AsFloat;
  CurrencyEdit18.Value := fDMCadOrdemServico.cdsOrdemServico_CustoPRAZO_DIAS.AsInteger;
  CurrencyEdit19.Value := fDMCadOrdemServico.cdsOrdemServico_CustoPERC_CUSTO_PERIODO.AsFloat;
  CurrencyEdit20.Value := fDMCadOrdemServico.cdsOrdemServico_CustoVLR_MARGEM.AsFloat;
  CurrencyEdit21.Value := fDMCadOrdemServico.cdsOrdemServico_CustoVLR_IR_PJ.AsFloat;
  CurrencyEdit22.Value := fDMCadOrdemServico.cdsOrdemServico_CustoVLR_MARGEM_LIQ.AsFloat;
  CurrencyEdit23.Value := fDMCadOrdemServico.cdsOrdemServico_CustoPERC_MARGEM_LIQ.AsFloat;
  prc_Percentual;
end;

procedure TfrmCadOrc_Custo.prc_Mover_Filial_Custo;
begin
  CurrencyEdit4.Value  := fDMCadOrdemServico.qFilial_CustoPERC_ICMS.AsFloat;
  CurrencyEdit7.Value  := fDMCadOrdemServico.qFilial_CustoPERC_MARK_UP.AsFloat;
  CurrencyEdit8.Value  := fDMCadOrdemServico.cdsFilialPERC_PIS.AsFloat + fDMCadOrdemServico.cdsFilialPERC_COFINS.AsFloat;
  CurrencyEdit9.Value  := fDMCadOrdemServico.cdsFilialPERC_ISS.AsFloat;
  CurrencyEdit10.Value := fDMCadOrdemServico.qFilial_CustoPERC_COMISSAO.AsFloat;
  CurrencyEdit11.Value := fDMCadOrdemServico.qFilial_CustoPERC_FRETE.AsFloat;
  CurrencyEdit12.Value := fDMCadOrdemServico.qFilial_CustoPERC_IR_CONTRSOCIAL.AsFloat;
  CurrencyEdit13.Value := fDMCadOrdemServico.qFilial_CustoPERC_MARGEM_OPE.AsFloat;
  CurrencyEdit17.Value := fDMCadOrdemServico.qFilial_CustoPERC_CUSTO_FINANCEIRO.AsFloat;
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
  fDMCadOrdemServico.cdsOrdemServico_CustoPERC_ICMS.AsFloat             := CurrencyEdit4.Value;
  fDMCadOrdemServico.cdsOrdemServico_CustoPERC_MARKUP.AsFloat           := CurrencyEdit7.Value; 
  fDMCadOrdemServico.cdsOrdemServico_CustoPERC_PISCOFINS.AsFloat        := CurrencyEdit8.Value; 
  fDMCadOrdemServico.cdsOrdemServico_CustoPERC_ISSQN.AsFloat            := CurrencyEdit9.Value; 
  fDMCadOrdemServico.cdsOrdemServico_CustoPERC_COMISSAO.AsFloat         := CurrencyEdit10.Value; 
  fDMCadOrdemServico.cdsOrdemServico_CustoPERC_FRETE.AsFloat            := CurrencyEdit11.Value; 
  fDMCadOrdemServico.cdsOrdemServico_CustoPERC_IR_CSOCIAL.AsFloat       := CurrencyEdit12.Value; 
  fDMCadOrdemServico.cdsOrdemServico_CustoPERC_MARG1.AsFloat            := CurrencyEdit13.Value; 
  fDMCadOrdemServico.cdsOrdemServico_CustoPERC_CUSTO_FINANCEIRO.AsFloat := CurrencyEdit17.Value; 

  fDMCadOrdemServico.cdsOrdemServico_CustoVLR_MATERIAIS.AsFloat := CurrencyEdit3.Value;
  fDMCadOrdemServico.cdsOrdemServico_CustoVLR_PROCESSO.AsFloat  := CurrencyEdit2.Value;
  fDMCadOrdemServico.cdsOrdemServico_CustoVLR_TERCEIRO.AsFloat  := CurrencyEdit5.Value;
  fDMCadOrdemServico.cdsOrdemServico_CustoVLR_SETOR.AsFloat     := 0;
  fDMCadOrdemServico.cdsOrdemServico_CustoTOTAL_CUSTO.AsFloat   := CurrencyEdit6.Value;
  fDMCadOrdemServico.cdsOrdemServico_CustoPERC_MARG2.AsFloat    := CurrencyEdit16.Value;
  fDMCadOrdemServico.cdsOrdemServico_CustoPRECO.AsFloat         := CurrencyEdit14.Value;
  fDMCadOrdemServico.cdsOrdemServico_CustoVLR_PROPOSTA.AsFloat  := CurrencyEdit15.Value; 
  fDMCadOrdemServico.cdsOrdemServico_CustoPRAZO_DIAS.AsInteger  := CurrencyEdit18.AsInteger; 
  fDMCadOrdemServico.cdsOrdemServico_CustoPERC_CUSTO_PERIODO.AsFloat := CurrencyEdit19.Value;  
  fDMCadOrdemServico.cdsOrdemServico_CustoVLR_MARGEM.AsFloat         := CurrencyEdit20.Value; 
  fDMCadOrdemServico.cdsOrdemServico_CustoVLR_IR_PJ.AsFloat          := CurrencyEdit21.Value; 
  fDMCadOrdemServico.cdsOrdemServico_CustoVLR_MARGEM_LIQ.AsFloat     := CurrencyEdit22.Value;
  fDMCadOrdemServico.cdsOrdemServico_CustoPERC_MARGEM_LIQ.AsFloat    := CurrencyEdit23.Value;
  fDMCadOrdemServico.cdsOrdemServico_Custo.Post;
end;

procedure TfrmCadOrc_Custo.prc_Percentual;
begin
  if (CurrencyEdit14.Value > 0) and (CurrencyEdit2.Value > 0) then
    CurrencyEdit27.Value := (CurrencyEdit2.Value / CurrencyEdit14.Value) * 100;
  if (CurrencyEdit14.Value > 0) and (CurrencyEdit3.Value > 0) then
    CurrencyEdit26.Value := (CurrencyEdit3.Value / CurrencyEdit14.Value) * 100;
  if (CurrencyEdit14.Value > 0) and (CurrencyEdit5.Value > 0) then
    CurrencyEdit28.Value := (CurrencyEdit5.Value / CurrencyEdit14.Value) * 100;
  if (CurrencyEdit14.Value > 0) and (CurrencyEdit6.Value > 0) then
    CurrencyEdit29.Value := (CurrencyEdit6.Value / CurrencyEdit14.Value) * 100;
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
    CurrencyEdit15.Value := 0;
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
    CurrencyEdit15.Value := 0;
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
      CurrencyEdit15.Value := 0;
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
    CurrencyEdit15.Value := 0;
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
    CurrencyEdit15.Value := 0;
    btnCalcular_CustoClick(sender);
  end;
end;

procedure TfrmCadOrc_Custo.DBMemo1Exit(Sender: TObject);
begin
  if fDMCadOrdemServico.cdsOrdemServico_Itens.State in [dsEdit,dsInsert] then
    fDMCadOrdemServico.cdsOrdemServico_Itens.Post;
end;

procedure TfrmCadOrc_Custo.CurrencyEdit4Exit(Sender: TObject);
begin
  prc_Calcular_Custo;
end;

end.
