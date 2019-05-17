unit UCadOrc;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadOrdemServico,
  DB, DBGrids, ExtCtrls, StdCtrls, FMTBcd, SqlExpr, RzTabs, Mask, DBCtrls, ToolEdit, CurrEdit, RxLookup, RxDBComb, Menus,
  RXDBCtrl, RzEdit, RzDBEdit, RzButton, UEscolhe_Filial, UCBase, RzPanel, dbXPress, NxCollection, StrUtils, DateUtils, RzDTP,
  RzDBDTP, RzLstBox, RzChkLst, SMBox, ToolWin, SMToolBar, NxScrollControl, NxToolBox, UCadOrdemServico_Mat, ImgList, NxEdit, 
  UCadOrdemServico_Terc, ComCtrls, RzDBGrid;

type
  TfrmCadOrc = class(TForm)
    RzPageControl1: TRzPageControl;
    TS_Consulta: TRzTabSheet;
    TS_Cadastro: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    pnlPesquisa: TPanel;
    Panel1: TPanel;
    pnlCadastro: TPanel;
    lblCliente: TLabel;
    Edit2: TEdit;
    StaticText1: TStaticText;
    lblNumNota: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    Label12: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    pnlNota: TPanel;
    Label16: TLabel;
    Panel11: TPanel;
    lblNome_Filial: TLabel;
    DBText1: TDBText;
    btnInserir: TNxButton;
    btnExcluir: TNxButton;
    btnPesquisar: TNxButton;
    btnConsultar: TNxButton;
    btnAlterar: TNxButton;
    btnConfirmar: TNxButton;
    btnCancelar: TNxButton;
    UCControls1: TUCControls;
    Label9: TLabel;
    DBText2: TDBText;
    btnImprimir: TNxButton;
    pnlCliente: TPanel;
    Label2: TLabel;
    Label18: TLabel;
    Label14: TLabel;
    Label22: TLabel;
    SpeedButton1: TSpeedButton;
    DBDateEdit1: TDBDateEdit;
    DBEdit1: TDBEdit;
    RxDBLookupCombo3: TRxDBLookupCombo;
    RzPageControl2: TRzPageControl;
    TS_Materiais: TRzTabSheet;
    Panel6: TPanel;
    btnInserir_Mat: TNxButton;
    btnExcluir_Mat: TNxButton;
    btnAlterar_Mat: TNxButton;
    SMDBGrid5: TSMDBGrid;
    TS_Terceiro: TRzTabSheet;
    Panel7: TPanel;
    btnInserir_Terc: TNxButton;
    btnExcluir_Terc: TNxButton;
    btnAlterar_Terc: TNxButton;
    SMDBGrid6: TSMDBGrid;
    TS_CondEntrada: TRzTabSheet;
    Panel8: TPanel;
    DBMemo6: TDBMemo;
    Label35: TLabel;
    Label41: TLabel;
    NxDatePicker1: TNxDatePicker;
    Label42: TLabel;
    NxDatePicker2: TNxDatePicker;
    Shape5: TShape;
    Label43: TLabel;
    Label44: TLabel;
    Shape7: TShape;
    Shape8: TShape;
    Label45: TLabel;
    Label25: TLabel;
    RxDBLookupCombo4: TRxDBLookupCombo;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    TS_Produto: TRzTabSheet;
    Label28: TLabel;
    DBDateEdit6: TDBDateEdit;
    Label26: TLabel;
    DBEdit23: TDBEdit;
    Label27: TLabel;
    DBEdit24: TDBEdit;
    TS_Setor: TRzTabSheet;
    Panel2: TPanel;
    btnSelSetor: TNxButton;
    RzDBGrid13: TRzDBGrid;
    Panel3: TPanel;
    RzDBGrid1: TRzDBGrid;
    Label54: TLabel;
    btnExcluir_Setor: TNxButton;
    btnExcluir_Setor_Proc: TNxButton;
    TS_Ensaio: TRzTabSheet;
    Panel4: TPanel;
    btnSelEnsaio: TNxButton;
    btnExcluir_Ensaio: TNxButton;
    btnCusto: TNxButton;
    pnlProduto: TPanel;
    Label30: TLabel;
    Label1: TLabel;
    Label32: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    Label15: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label24: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit12: TDBEdit;
    cbTipoRevestimento: TNxComboBox;
    Label60: TLabel;
    cbTipoProduto: TNxComboBox;
    SpeedButton2: TSpeedButton;
    btnAprovar: TNxButton;
    Shape1: TShape;
    Label23: TLabel;
    Shape2: TShape;
    Label29: TLabel;
    SMDBGrid2: TSMDBGrid;
    btnGerarEnsaio: TNxButton;
    Label31: TLabel;
    TS_Escopo: TRzTabSheet;
    Panel5: TPanel;
    Label33: TLabel;
    dbMemoEscopo: TDBMemo;
    Panel9: TPanel;
    btnSelecionrFunc: TNxButton;
    btnExcluirFunc: TNxButton;
    SMDBGrid3: TSMDBGrid;
    Label34: TLabel;
    rxdbTransp: TRxDBLookupCombo;
    SpeedButton3: TSpeedButton;
    Label36: TLabel;
    RxDBComboBox1: TRxDBComboBox;
    DBCheckBox1: TDBCheckBox;
    SpeedButton4: TSpeedButton;
    TS_Gerador: TRzTabSheet;
    Panel10: TPanel;
    Label17: TLabel;
    DBEdit17: TDBEdit;
    btIncluiProduto: TSpeedButton;
    btBuscaProduto: TSpeedButton;
    DBEdit21: TDBEdit;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label55: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    RxDBLookupCombo5: TRxDBLookupCombo;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    DBEdit29: TDBEdit;
    RxDBLookupCombo6: TRxDBLookupCombo;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    DBEdit32: TDBEdit;
    DBEdit33: TDBEdit;
    DBEdit34: TDBEdit;
    RxDBLookupCombo7: TRxDBLookupCombo;
    Label37: TLabel;
    NxButton1: TNxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure RzPageControl1Change(Sender: TObject);
    procedure pnlClienteExit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure edtSerieKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CurrencyEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBLookupCombo3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure Panel4Enter(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure SMDBGrid4GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure RxDBLookupCombo3Change(Sender: TObject);
    procedure DBEdit6Exit(Sender: TObject);
    procedure DBDateEdit4Exit(Sender: TObject);
    procedure NxFlipProdEnter(Sender: TObject);
    procedure DBEdit8Enter(Sender: TObject);
    procedure DBEdit7KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit7Exit(Sender: TObject);
    procedure btnInserir_MatClick(Sender: TObject);
    procedure btnAlterar_MatClick(Sender: TObject);
    procedure btnExcluir_MatClick(Sender: TObject);
    procedure btnInserir_TercClick(Sender: TObject);
    procedure btnAlterar_TercClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure SMDBGrid5GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure SpeedButton2Click(Sender: TObject);
    procedure btnSelSetorClick(Sender: TObject);
    procedure btnExcluir_SetorClick(Sender: TObject);
    procedure btnExcluir_EnsaioClick(Sender: TObject);
    procedure btnSelEnsaioClick(Sender: TObject);
    procedure cbTipoProdutoChange(Sender: TObject);
    procedure DBEdit10Exit(Sender: TObject);
    procedure DBEdit12Exit(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure DBEdit14Exit(Sender: TObject);
    procedure btnExcluir_Setor_ProcClick(Sender: TObject);
    procedure btnCustoClick(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure btnAprovarClick(Sender: TObject);
    procedure SMDBGrid2GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure btnGerarEnsaioClick(Sender: TObject);
    procedure SMDBGrid2DblClick(Sender: TObject);
    procedure btnSelecionrFuncClick(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure cbTipoProdutoExit(Sender: TObject);
    procedure DBCheckBox1Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure DBEdit17KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit21Exit(Sender: TObject);
    procedure btBuscaProdutoClick(Sender: TObject);
    procedure DBEdit21KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    vTipoNotaAnt: String;
    vID_Cliente_Ant: Integer;

    fDMCadOrdemServico: TDMCadOrdemServico;
    ffrmEscolhe_Filial: TfrmEscolhe_Filial;
    ffrmCadOrdemServico_Mat: TfrmCadOrdemServico_Mat;
    ffrmCadOrdemServico_Terc: TfrmCadOrdemServico_Terc;

    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar(ID: Integer);

    procedure prc_Posiciona_OS;
    procedure prc_Posicionar_Cliente;

    procedure prc_Habilitar_Campos;

    function fnc_Verifica_Registro: Boolean;
    function fnc_Cancelar: Boolean;
    function fnc_Existe_Fat(Item: Integer): Boolean;

    procedure prc_Limpar_Edit_Consulta;

    procedure prc_Calcular_DtEntrega;

    procedure prc_Calcular_Area;

    procedure prc_Opcao_Tipo_Produto;
    procedure prc_Gerar_Ass_Usuario;
    procedure prc_Monta_Grid;      
  public
    { Public declarations }
    cTXTStream: TMemoryStream;
    cXMLStream: TMemoryStream;
    sXMLNFSe: TMemoryStream;                                                                                                 
  end;

var
  frmCadOrc: TfrmCadOrc;

implementation

uses DmdDatabase, rsDBUtils, uUtilPadrao, USel_Pessoa, USel_Produto, UDMImpOrdemServico, UCadProduto, USel_Setor_Proc2,
  USel_Ensaio, UCadOrc_Custo, UCadOrc_Aprov, USel_Funcionario, uCadPessoa;

{$R *.dfm}

procedure TfrmCadOrc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadOrc.btnExcluirClick(Sender: TObject);
begin
  if not fnc_Verifica_Registro then
    exit;

  prc_Posiciona_OS;

  if fDMCadOrdemServico.cdsOrdemServico.IsEmpty then
    exit;

  if fnc_Existe_Fat(0) then
    exit;

  if (fDMCadOrdemServico.qVerBaixaOSCONT_BAIXAS.AsInteger > 0) or (fDMCadOrdemServico.qVerBaixaOSCONT_MAT.AsInteger > 0) then
  begin
    MessageDlg('*** OS não pode ser excluida, pois já possui baixas (Processos ou Materiais)!', mtInformation, [mbOk], 0);
    exit;
  end;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  prc_Excluir_Registro;

  btnConsultarClick(Sender);
end;

procedure TfrmCadOrc.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadOrc.prc_Excluir_Registro;
begin
  fDMCadOrdemServico.prc_Excluir;
end;

procedure TfrmCadOrc.prc_Gravar_Registro;
var
  vIDAux: Integer;
  ID: TTransactionDesc;
  vVlrTotal: Real;
begin
  if (fDMCadOrdemServico.cdsOrdemServicoNUM_ORCAMENTO.AsInteger <= 0) and (fDMCadOrdemServico.cdsOrdemServicoTP_ORCAMENTO.AsString = 'R') then
  begin
    fDMCadOrdemServico.qProximo_NumOrc.Close;
    fDMCadOrdemServico.qProximo_NumOrc.Open;
    fDMCadOrdemServico.cdsOrdemServicoNUM_ORCAMENTO.AsInteger := fDMCadOrdemServico.qProximo_NumOrcNUM_ORCAMENTO.AsInteger + 1;
    fDMCadOrdemServico.qProximo_NumOrc.Close;
  end;

  if not(fDMCadOrdemServico.cdsOrdemServico_Itens.State in [dsEdit,dsInsert]) then
    fDMCadOrdemServico.cdsOrdemServico_Itens.Edit;

  case cbTipoRevestimento.ItemIndex of
    0: fDMCadOrdemServico.cdsOrdemServico_ItensTIPO_REVESTIMENTO.AsString := 'CRO';
    1: fDMCadOrdemServico.cdsOrdemServico_ItensTIPO_REVESTIMENTO.AsString := 'CES';
    2: fDMCadOrdemServico.cdsOrdemServico_ItensTIPO_REVESTIMENTO.AsString := 'MET';
    3: fDMCadOrdemServico.cdsOrdemServico_ItensTIPO_REVESTIMENTO.AsString := 'MCR';
  end;
  case cbTipoProduto.ItemIndex of
    0: fDMCadOrdemServico.cdsOrdemServico_ItensTIPO_PROD.AsString := 'C';
    1: fDMCadOrdemServico.cdsOrdemServico_ItensTIPO_PROD.AsString := 'R';
    else fDMCadOrdemServico.cdsOrdemServico_ItensTIPO_PROD.AsString := '';
  end;
  if cbTipoRevestimento.ItemIndex < 0 then
    fDMCadOrdemServico.cdsOrdemServico_ItensTIPO_REVESTIMENTO.AsString := '';

  fDMCadOrdemServico.prc_Gravar;
  vIDAux := fDMCadOrdemServico.cdsOrdemServicoID.AsInteger;
  if fDMCadOrdemServico.cdsOrdemServico.State in [dsEdit,dsInsert] then
  begin
    MessageDlg(fDMCadOrdemServico.vMsgOS, mtError, [mbOk], 0);
    exit;
  end;

  {fDMCadOrdemServico.sdsPRC_Atualiza_OS.Close;
  fDMCadOrdemServico.sdsPRC_Atualiza_OS.ParamByName('P_ID').AsInteger := vIDAux;
  fDMCadOrdemServico.sdsPRC_Atualiza_OS.ExecSQL;}

  TS_Consulta.TabEnabled := True;
  prc_Habilitar_Campos;
  RzPageControl1.ActivePage := TS_Consulta;
  prc_Consultar(vIDAux);
end;

procedure TfrmCadOrc.prc_Inserir_Registro;
begin
  fDMCadOrdemServico.qParametros.Close;
  fDMCadOrdemServico.qParametros.Open;
  if fDMCadOrdemServico.cdsFilial.RecordCount > 1 then
  begin
    ffrmEscolhe_Filial := TfrmEscolhe_Filial.Create(self);
    ffrmEscolhe_Filial.ShowModal;
    FreeAndNil(ffrmEscolhe_Filial);
  end
  else
  begin
    fDMCadOrdemServico.cdsFilial.Last;
    vFilial      := fDMCadOrdemServico.cdsFilialID.AsInteger;
    vFilial_Nome := fDMCadOrdemServico.cdsFilialNOME.AsString;
  end;
  if vFilial <= 0 then
  begin
    ShowMessage('Filial não informada!');
    exit;
  end;
  fDMCadOrdemServico.cdsFilial.Locate('ID',vFilial,[loCaseInsensitive]);
  fDMCadOrdemServico.prc_Inserir('2');
  lblNome_Filial.Caption := vFilial_Nome;
  if fDMCadOrdemServico.cdsOrdemServico.State in [dsBrowse] then
    exit;
  prc_Habilitar_Campos;
  RzPageControl1.ActivePage := TS_Cadastro;
  TS_Consulta.TabEnabled    := False;
  fDMCadOrdemServico.cdsOrdemServicoFILIAL.AsInteger    := vFilial;
  fDMCadOrdemServico.cdsOrdemServicoTP_SIMPLES.AsString := 'N';
  fDMCadOrdemServico.cdsOrdemServicoSTATUS.AsString     := '1';
  fDMCadOrdemServico.cdsOrdemServicoTP_ORCAMENTO.AsString := 'R';
  pnlCliente.Enabled := True;

  fDMCadOrdemServico.prc_Inserir_Itens;
  prc_Opcao_Tipo_Produto;
  btnGerarEnsaioClick(frmCadOrc);

  prc_Gerar_Ass_Usuario;
end;

procedure TfrmCadOrc.FormShow(Sender: TObject);
var
  i: Integer;
  vData: TDateTime;
begin
  fDMCadOrdemServico := TDMCadOrdemServico.Create(Self);

  oDBUtils.SetDataSourceProperties(Self, fDMCadOrdemServico);
  fDMCadOrdemServico.prc_Abrir_cdsCliente;

  vData := EncodeDate(YearOf(Date),MonthOf(Date),01);
  NxDatePicker1.Date := vData;
  NxDatePicker2.Date := Date;

  for i := 0 to SMDBGrid1.ColCount - 2 do
  begin
    if SMDBGrid1.Columns[i].FieldName = 'DESC_STATUS' then
      SMDBGrid1.Columns[i].Visible := (fDMCadOrdemServico.qParametros_SerMOSTRAR_STATUS.AsString = 'S');
  end;

  btnCusto.Visible := (fDMCadOrdemServico.qParametros_UsuarioMOSTRAR_CUSTO_OS.AsString = 'S');

  fDMCadOrdemServico.qParametros_Prod.Active := True;
  if fDMCadOrdemServico.qParametros_ProdGERADORES_ELETRICOS.AsString = 'S' then
  begin
    TS_Produto.TabVisible := False;
    TS_Gerador.TabVisible := True;
    RzPageControl2.ActivePage := TS_Gerador;
    fDMCadOrdemServico.cdsFabricanteGerador.Open;
    fDMCadOrdemServico.cdsMarca_Montadora.Open;
    fDMCadOrdemServico.cdsFabricanteMotor.Open;
    fDMCadOrdemServico.cdsProdutoGerador.Open;
  end
  else
  begin
    TS_Produto.TabVisible := True;
    TS_Gerador.TabVisible := False;
    prc_Monta_Grid;    
  end;
  fDMCadOrdemServico.qParametros_Prod.Active := True;
end;

procedure TfrmCadOrc.prc_Consultar(ID: Integer);
begin
  fDMCadOrdemServico.cdsOrdemServico_Consulta.Close;
  fDMCadOrdemServico.cdsOrdemServico_Consulta.IndexFieldNames := 'NUM_ORCAMENTO';
  fDMCadOrdemServico.SdsOrdemServico_Consulta.CommandText     := fDMCadOrdemServico.ctConsulta +
                                                                 'WHERE OS.TP_ORCAMENTO = ''R''';

  if ID > 0 then
    fDMCadOrdemServico.sdsOrdemServico_Consulta.CommandText := fDMCadOrdemServico.SdsOrdemServico_Consulta.CommandText +
                                                               ' AND OS.ID = ' + IntToStr(ID)
  else
  begin
    if NxDatePicker1.Text <> '' then
      fDMCadOrdemServico.sdsOrdemServico_Consulta.CommandText := fDMCadOrdemServico.sdsOrdemServico_Consulta.CommandText
                          + ' AND OS.DTEMISSAO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',NxDatePicker1.date));
    if NxDatePicker2.Text <> '' then
      fDMCadOrdemServico.sdsOrdemServico_Consulta.CommandText := fDMCadOrdemServico.sdsOrdemServico_Consulta.CommandText
                          + ' AND OS.DTEMISSAO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',NxDatePicker2.date));

    if not(RxDBLookupCombo1.Text = '') then
      fDMCadOrdemServico.SdsOrdemServico_Consulta.CommandText := fDMCadOrdemServico.SdsOrdemServico_Consulta.CommandText +
                                                                 ' AND OS.FILIAL = ' + IntToStr(RxDBLookupCombo1.KeyValue);
    if CurrencyEdit1.AsInteger > 0 then
      fDMCadOrdemServico.SdsOrdemServico_Consulta.CommandText := fDMCadOrdemServico.SdsOrdemServico_Consulta.CommandText +
                                                                 ' AND OS.NUM_ORCAMENTO = ' + CurrencyEdit1.Text;
    if Trim(Edit2.Text) <> '' then
      fDMCadOrdemServico.sdsOrdemServico_Consulta.CommandText := fDMCadOrdemServico.SdsOrdemServico_Consulta.CommandText
                                      + ' AND ((CLI.NOME LIKE ' + QuotedStr('%'+Edit2.Text+'%') + ')'
                                      + ' OR (CLI.FANTASIA LIKE ' + QuotedStr('%'+Edit2.Text+'%') + '))';
  end;
  fDMCadOrdemServico.cdsOrdemServico_Consulta.Open;
end;

procedure TfrmCadOrc.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar(0);
end;

procedure TfrmCadOrc.btnCancelarClick(Sender: TObject);
begin
  if (fDMCadOrdemServico.cdsOrdemServico.State in [dsBrowse]) or not(fDMCadOrdemServico.cdsOrdemServico.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadOrdemServico.cdsOrdemServico.CancelUpdates;

  prc_Habilitar_Campos;

  TS_Consulta.TabEnabled    := True;
  RzPageControl1.ActivePage := TS_Consulta;
end;

procedure TfrmCadOrc.btnAlterarClick(Sender: TObject);
var
  vCodAux: String;
begin
  if not fnc_Verifica_Registro then
    exit;


  if (fDMCadOrdemServico.cdsOrdemServico.IsEmpty) or not(fDMCadOrdemServico.cdsOrdemServico.Active) or
     (fDMCadOrdemServico.cdsOrdemServicoID.AsInteger < 1) then
    exit;

    

  fDMCadOrdemServico.qParametros.Close;
  fDMCadOrdemServico.qParametros.Open;

  fDMCadOrdemServico.cdsOrdemServico.Edit;

  prc_Posicionar_Cliente;

  TS_Consulta.TabEnabled := False;
  prc_Habilitar_Campos;
end;

procedure TfrmCadOrc.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfrmCadOrc.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadOrdemServico);
end;

procedure TfrmCadOrc.prc_Posiciona_OS;
begin
  fDMCadOrdemServico.prc_Localizar(fDMCadOrdemServico.cdsOrdemServico_ConsultaID.AsInteger);
  fDMCadOrdemServico.cdsOrdemServico_Itens.Close;
  fDMCadOrdemServico.cdsOrdemServico_Itens.Open;
  fDMCadOrdemServico.cdsOrdemServico_Mat.Close;
  fDMCadOrdemServico.cdsOrdemServico_Mat.Open;
  fDMCadOrdemServico.cdsProdutoGerador.Close;
  vFilial      := fDMCadOrdemServico.cdsOrdemServicoFILIAL.AsInteger;
  vFilial_Nome := '';
  if fDMCadOrdemServico.cdsFilial.Locate('ID',vFilial,[loCaseInsensitive]) then
    vFilial_Nome := fDMCadOrdemServico.cdsFilialNOME_INTERNO.AsString;
  lblNome_Filial.Caption := vFilial_Nome;

  if fDMCadOrdemServico.cdsOrdemServico_ItensTIPO_REVESTIMENTO.AsString = 'CRO' then
    cbTipoRevestimento.ItemIndex := 0
  else
  if fDMCadOrdemServico.cdsOrdemServico_ItensTIPO_REVESTIMENTO.AsString = 'CES' then
    cbTipoRevestimento.ItemIndex := 1
  else
  if fDMCadOrdemServico.cdsOrdemServico_ItensTIPO_REVESTIMENTO.AsString = 'MET' then
    cbTipoRevestimento.ItemIndex := 2
  else
  if fDMCadOrdemServico.cdsOrdemServico_ItensTIPO_REVESTIMENTO.AsString = 'MCR' then
    cbTipoRevestimento.ItemIndex := 3
  else
  begin
    cbTipoRevestimento.ItemIndex := -1;
    cbTipoRevestimento.Text      := '';
  end;
  if fDMCadOrdemServico.cdsOrdemServico_ItensTIPO_PROD.AsString = 'C' then
    cbTipoProduto.ItemIndex := 0
  else
  if fDMCadOrdemServico.cdsOrdemServico_ItensTIPO_PROD.AsString = 'R' then
    cbTipoProduto.ItemIndex := 1
  else
  begin
    cbTipoProduto.ItemIndex := -1;
    cbTipoProduto.Text      := '';
  end;
  fDMCadOrdemServico.qFilial_Custo.Close;
  fDMCadOrdemServico.qFilial_Custo.ParamByName('ID').AsInteger := fDMCadOrdemServico.cdsOrdemServicoFILIAL.AsInteger;
  fDMCadOrdemServico.qFilial_Custo.Open;

  if not fDMCadOrdemServico.cdsOrdemServico_ItensID_PRODUTO.IsNull then
  begin
    fDMCadOrdemServico.cdsProduto.IndexFieldNames := 'ID';
    fDMCadOrdemServico.cdsProduto.Close;
    fDMCadOrdemServico.cdsProduto.Open;
    fDMCadOrdemServico.cdsProduto.FindKey([fDMCadOrdemServico.cdsOrdemServico_ItensID_PRODUTO.AsInteger]);
    fDMCadOrdemServico.cdsProdutoGerador.Open;
  end
end;

function TfrmCadOrc.fnc_Verifica_Registro: Boolean;
begin
  Result := False;
  if not(fDMCadOrdemServico.cdsOrdemServico_Consulta.Active) or (fDMCadOrdemServico.cdsOrdemServico_Consulta.IsEmpty) or
        (fDMCadOrdemServico.cdsOrdemServico_ConsultaID.AsInteger < 1) then
    exit;

  fDMCadOrdemServico.qVerAprov.Close;
  fDMCadOrdemServico.qVerAprov.ParamByName('ID').AsInteger := fDMCadOrdemServico.cdsOrdemServico_ConsultaID.AsInteger;
  fDMCadOrdemServico.qVerAprov.Open;
  if fDMCadOrdemServico.qVerAprovTIPO.AsString = 'A' then
  begin
    MessageDlg('*** Orçamento já está Aprovado!', mtError, [mbOk], 0);
    exit;
  end
  else
  if fDMCadOrdemServico.qVerAprovTIPO.AsString = 'N' then
  begin
    MessageDlg('*** Orçamento está como Não Aprovado!', mtError, [mbOk], 0);
    exit;
  end;

  Result := True;
end;

procedure TfrmCadOrc.RzPageControl1Change(Sender: TObject);
begin
  if not(fDMCadOrdemServico.cdsOrdemServico.State in [dsEdit, dsInsert]) then
  begin
    if RzPageControl1.ActivePage = TS_Cadastro then
    begin
      if not(fDMCadOrdemServico.cdsOrdemServico_Consulta.Active) or (fDMCadOrdemServico.cdsOrdemServico_Consulta.IsEmpty) or
            (fDMCadOrdemServico.cdsOrdemServico_ConsultaID.AsInteger <= 0) then
        exit;
      prc_Posiciona_OS;
      prc_Opcao_Tipo_Produto;
    end;
  end;
end;

procedure TfrmCadOrc.pnlClienteExit(Sender: TObject);
begin
  prc_Posicionar_Cliente;
end;

procedure TfrmCadOrc.prc_Posicionar_Cliente;
begin
  if fDMCadOrdemServico.cdsClienteCODIGO.AsInteger <> fDMCadOrdemServico.cdsOrdemServicoID_CLIENTE.AsInteger then
    fDMCadOrdemServico.cdsCliente.Locate('CODIGO',fDMCadOrdemServico.cdsOrdemServicoID_CLIENTE.AsInteger,[loCaseInsensitive]);
  if (fDMCadOrdemServico.cdsFilialID.AsInteger <> fDMCadOrdemServico.cdsOrdemServicoFILIAL.AsInteger) then
    fDMCadOrdemServico.cdsFilial.Locate('ID',fDMCadOrdemServico.cdsOrdemServicoFILIAL.AsInteger,[loCaseInsensitive]);
end;

procedure TfrmCadOrc.prc_Habilitar_Campos;
begin
  btnConfirmar.Enabled     := not(btnConfirmar.Enabled);
  btnAlterar.Enabled       := not(btnAlterar.Enabled);
  pnlCadastro.Enabled      := not(pnlCadastro.Enabled);

  btnSelSetor.Enabled := not(btnSelSetor.Enabled);
  btnExcluir_Setor.Enabled := not(btnExcluir_Setor.Enabled);
  btnExcluir_Setor_Proc.Enabled := not(btnExcluir_Setor_Proc.Enabled);

  btnInserir_Mat.Enabled := not(btnInserir_Mat.Enabled);
  btnAlterar_Mat.Enabled := not(btnAlterar_Mat.Enabled);
  btnExcluir_Mat.Enabled := not(btnExcluir_Mat.Enabled);

  btnInserir_Terc.Enabled := not(btnInserir_Terc.Enabled);
  btnAlterar_Terc.Enabled := not(btnAlterar_Terc.Enabled);
  btnExcluir_Terc.Enabled := not(btnExcluir_Terc.Enabled);

  DBMemo6.ReadOnly      := not(DBMemo6.ReadOnly);
  pnlProduto.Enabled    := not(pnlProduto.Enabled);
  dbMemoEscopo.ReadOnly := not(dbMemoEscopo.ReadOnly);
  rxdbTransp.ReadOnly   := not(rxdbTransp.ReadOnly);

  btnSelecionrFunc.Enabled := not(btnSelecionrFunc.Enabled);
  btnExcluirFunc.Enabled   := not(btnExcluirFunc.Enabled);
end;

function TfrmCadOrc.fnc_Cancelar: Boolean;
begin
  Result := True;
  fDMCadOrdemServico.vMsgOS := '';

  if trim(fDMCadOrdemServico.vMsgOS) <> '' then
    Result := False;
end;

procedure TfrmCadOrc.SpeedButton1Click(Sender: TObject);
begin
  fDMCadOrdemServico.cdsCliente.Close;
  fDMCadOrdemServico.cdsCliente.Open;
end;

procedure TfrmCadOrc.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := fnc_Encerrar_Tela(fDMCadOrdemServico.cdsOrdemServico);
end;

procedure TfrmCadOrc.edtSerieKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadOrc.CurrencyEdit1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadOrc.Edit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadOrc.RxDBLookupCombo3KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
  begin
    vCodPessoa_Pos := fDMCadOrdemServico.cdsOrdemServicoID_CLIENTE.AsInteger;
    frmSel_Pessoa := TfrmSel_Pessoa.Create(Self);
    frmSel_Pessoa.vTipo_Pessoa := 'C';
    frmSel_Pessoa.ShowModal;
    fDMCadOrdemServico.cdsOrdemServicoID_CLIENTE.AsInteger := vCodPessoa_Pos;
    RxDBLookupCombo3.SetFocus;
  end;
end;

procedure TfrmCadOrc.SMDBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
  ColunaOrdenada: String;
begin
  ColunaOrdenada := Column.FieldName;
  fDMCadOrdemServico.cdsOrdemServico_Consulta.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmCadOrc.Panel4Enter(Sender: TObject);
begin
  vID_Cliente_Ant := fDMCadOrdemServico.cdsOrdemServicoID_CLIENTE.AsInteger;
end;

procedure TfrmCadOrc.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadOrc.btnPesquisarClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not(pnlPesquisa.Visible);
  if pnlPesquisa.Visible then
    CurrencyEdit1.SetFocus
  else
    prc_Limpar_Edit_Consulta;
end;

procedure TfrmCadOrc.prc_Limpar_Edit_Consulta;
begin
  CurrencyEdit1.Clear;
  Edit2.Clear;
end;

function TfrmCadOrc.fnc_Existe_Fat(Item: Integer): Boolean;
var
  sds: TSQLDataSet;
begin
  Result := False;
  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText   := 'SELECT COUNT(1) CONTADOR ' +
                         ' FROM ORDEMSERVICO_MAT ' +
                         ' WHERE QTD_FATURADO > 0 ' +
                         ' AND ID = ' + IntToStr(fDMCadOrdemServico.cdsOrdemServicoID.AsInteger);
    if Item > 0 then
      sds.CommandText := sds.CommandText + ' AND ITEM = ' + IntToStr(Item);
    sds.Open;
    if sds.FieldByName('CONTADOR').AsInteger > 0 then
      Result := True;
    sds.Close;
  finally
    FreeAndNil(sds);
  end;
  if Result then
    MessageDlg('*** Já existe Faturamento!', mtInformation, [mbOk], 0);
end;

procedure TfrmCadOrc.SMDBGrid4GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if not fDMCadOrdemServico.cdsOrdemServico_Mat.IsEmpty then
  begin
    if StrToFloat(FormatFloat('0.0000',fDMCadOrdemServico.cdsOrdemServico_MatQTD_FATURADO.AsFloat)) > 0 then
    begin
      Background  := clGreen;
      AFont.Color := clWhite;
    end;
  end;
end;

procedure TfrmCadOrc.RxDBLookupCombo3Change(Sender: TObject);
begin
  fDMCadOrdemServico.cdsOrdemServicoSOLICITANTE_NOME.AsString := fDMCadOrdemServico.cdsClienteNOME.AsString;
  fDMCadOrdemServico.cdsOrdemServicoSOLICITANTE_FONE.AsString := '(' + fDMCadOrdemServico.cdsClienteDDDFONE1.AsString +
                                                                 ')' + fDMCadOrdemServico.cdsClienteTELEFONE1.AsString;
end;

procedure TfrmCadOrc.DBEdit6Exit(Sender: TObject);
begin
  prc_Calcular_DtEntrega;
end;

procedure TfrmCadOrc.prc_Calcular_DtEntrega;
begin
  if (fDMCadOrdemServico.cdsOrdemServicoDTRECEBIMENTO.AsDateTime > 10) and (fDMCadOrdemServico.cdsOrdemServicoQTD_DIAS_ENT.AsInteger > 0) then
    fDMCadOrdemServico.cdsOrdemServicoDT_AGENDA.AsDateTime := fDMCadOrdemServico.cdsOrdemServicoDTRECEBIMENTO.AsDateTime + fDMCadOrdemServico.cdsOrdemServicoQTD_DIAS_ENT.AsInteger;
end;

procedure TfrmCadOrc.DBDateEdit4Exit(Sender: TObject);
begin
  prc_Calcular_DtEntrega;
end;

procedure TfrmCadOrc.NxFlipProdEnter(Sender: TObject);
begin
  if fDMCadOrdemServico.cdsOrdemServico.State in [dsEdit,dsInsert] then
  begin
    if fDMCadOrdemServico.cdsOrdemServico_Itens.RecordCount <= 0 then
      fDMCadOrdemServico.cdsOrdemServico_Itens.Insert
    else
      fDMCadOrdemServico.cdsOrdemServico_Itens.Post;
  end;
end;

procedure TfrmCadOrc.DBEdit8Enter(Sender: TObject);
begin
  //08/04/2018 tirado conforme o pedido do Eduardo.
  // DBEdit8.ReadOnly := (fDMCadOrdemServico.cdsOrdemServico_ItensID_PRODUTO.AsInteger <= 0);
  // DBEdit8.SelStart := (Length(DBEdit8.Text) + 1);
end;

procedure TfrmCadOrc.DBEdit7KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) or (Key = vk_Return) then
  begin
    vCodProduto_Pos := fDMCadOrdemServico.cdsOrdemServico_itensID_PRODUTO.AsInteger;
    vReferencia_Pos := DBEdit7.Text;
    frmSel_Produto  := TfrmSel_Produto.Create(Self);
    frmSel_Produto.vTipo_Prod := 'P';
    frmSel_Produto.Edit2.Text := vReferencia_Pos;
    frmSel_Produto.ShowModal;
    fDMCadOrdemServico.cdsOrdemServico_itensID_PRODUTO.AsInteger := vCodProduto_Pos;
    fDMCadOrdemServico.cdsOrdemServico_ItensREFERENCIA.AsString  := vReferencia_Pos;
    if fDMCadOrdemServico.cdsOrdemServico_ItensID_PRODUTO.AsInteger > 0 then
      DBEdit7.SetFocus;
  end;
end;

procedure TfrmCadOrc.DBEdit7Exit(Sender: TObject);
begin
  if trim(fDMCadOrdemServico.cdsOrdemServico_ItensREFERENCIA.AsString) <> '' then
  begin
    fDMCadOrdemServico.prc_Monta_qProduto(0,fDMCadOrdemServico.cdsOrdemServico_ItensREFERENCIA.AsString);
    if fDMCadOrdemServico.qProdutoID.AsInteger <= 0 then
    begin
      MessageDlg('*** Referência não cadastrada!', mtInformation, [mbOk], 0);
      DBEdit7.SetFocus;
      exit;
    end;
    fDMCadOrdemServico.cdsOrdemServico_ItensNOME_PRODUTO.AsString := fDMCadOrdemServico.qProdutoNOME.AsString;
  end
  else
    fDMCadOrdemServico.cdsOrdemServico_ItensNOME_PRODUTO.AsString := '';
end;

procedure TfrmCadOrc.btnInserir_MatClick(Sender: TObject);
begin
  if fDMCadOrdemServico.cdsOrdemServicoID_CLIENTE.AsInteger <= 0 then
  begin
    MessageDlg('*** Cliente não foi informado!', mtInformation, [mbOk], 0);
    RxDBLookupCombo3.SetFocus;
    exit;
  end;

  fDMCadOrdemServico.prc_Inserir_Mat;
  ffrmCadOrdemServico_Mat := TfrmCadOrdemServico_Mat.Create(self);
  ffrmCadOrdemServico_Mat.fDMCadOrdemServico := fDMCadOrdemServico;
  ffrmCadOrdemServico_Mat.ShowModal;
  FreeAndNil(ffrmCadOrdemServico_Mat);
end;

procedure TfrmCadOrc.btnAlterar_MatClick(Sender: TObject);
begin
  if fDMCadOrdemServico.cdsOrdemServico_MatITEM_MAT.AsInteger <= 0 then
  begin
    MessageDlg('*** Não existe registro para alterar!', mtInformation, [mbOk], 0);
    exit;
  end;
  if StrToFloat(FormatFloat('0.000000',fDMCadOrdemServico.cdsOrdemServico_MatQTD_ESTOQUE.AsFloat)) > 0 then
  begin
    MessageDlg('*** Material já foi baixado no estoque!', mtInformation, [mbOk], 0);
    exit;
  end;

  fDMCadOrdemServico.cdsOrdemServico_Mat.Edit;
  ffrmCadOrdemServico_Mat := TfrmCadOrdemServico_Mat.Create(self);
  ffrmCadOrdemServico_Mat.fDMCadOrdemServico := fDMCadOrdemServico;
  ffrmCadOrdemServico_Mat.ShowModal;
  FreeAndNil(ffrmCadOrdemServico_Mat);
end;

procedure TfrmCadOrc.btnExcluir_MatClick(Sender: TObject);
begin
  if fDMCadOrdemServico.cdsOrdemServico_MatITEM_MAT.AsInteger <= 0 then
  begin
    MessageDlg('*** Não existe registro para excluir!', mtInformation, [mbOk], 0);
    exit;
  end;
  if StrToFloat(FormatFloat('0.000000',fDMCadOrdemServico.cdsOrdemServico_MatQTD_ESTOQUE.AsFloat)) > 0 then
  begin
    MessageDlg('*** Material já foi baixado no estoque!', mtInformation, [mbOk], 0);
    exit;
  end;

  if MessageDlg('Deseja excluir o registro do Material selecionado?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadOrdemServico.cdsOrdemServico_Mat.Delete;
end;

procedure TfrmCadOrc.btnInserir_TercClick(Sender: TObject);
begin
  if fDMCadOrdemServico.cdsOrdemServicoID_CLIENTE.AsInteger <= 0 then
  begin
    MessageDlg('*** Cliente não foi informado!', mtInformation, [mbOk], 0);
    RxDBLookupCombo3.SetFocus;
    exit;
  end;

  fDMCadOrdemServico.prc_Inserir_Terc;
  ffrmCadOrdemServico_Terc := TfrmCadOrdemServico_Terc.Create(self);
  ffrmCadOrdemServico_Terc.fDMCadOrdemServico := fDMCadOrdemServico;
  ffrmCadOrdemServico_Terc.ShowModal;
  FreeAndNil(ffrmCadOrdemServico_Terc);
end;

procedure TfrmCadOrc.btnAlterar_TercClick(Sender: TObject);
begin
  if fDMCadOrdemServico.cdsOrdemServico_TercITEM_TERC.AsInteger <= 0 then
  begin
    MessageDlg('*** Não existe registro para alterar!', mtInformation, [mbOk], 0);
    exit;
  end;

  fDMCadOrdemServico.cdsOrdemServico_Terc.Edit;
  ffrmCadOrdemServico_Terc := TfrmCadOrdemServico_Terc.Create(self);
  ffrmCadOrdemServico_Terc.fDMCadOrdemServico := fDMCadOrdemServico;
  ffrmCadOrdemServico_Terc.ShowModal;
  FreeAndNil(ffrmCadOrdemServico_Terc);
end;

procedure TfrmCadOrc.btnImprimirClick(Sender: TObject);
var
  vArq: String;
  fDMImpOrdemServico: TDMImpOrdemServico;
  vTipo_Frete: String;
begin
  fDMImpOrdemServico := TDMImpOrdemServico.Create(Self);

  fDMImpOrdemServico.qFilial.Close;
  fDMImpOrdemServico.qFilial.ParamByName('ID_FILIAL').AsInteger := fDMCadOrdemServico.cdsOrdemServico_ConsultaFILIAL.AsInteger;
  fDMImpOrdemServico.qFilial.Open;

  fDMImpOrdemServico.cdsOSImp.Close;
  fDMImpOrdemServico.sdsOSImp.ParamByName('ID').AsInteger := fDMCadOrdemServico.cdsOrdemServico_ConsultaID.AsInteger;
  fDMImpOrdemServico.cdsOSImp.Open;

  fDMImpOrdemServico.cdsOSImp_Itens.Close;
  fDMImpOrdemServico.sdsOSImp_Itens.ParamByName('ID').AsInteger := fDMCadOrdemServico.cdsOrdemServico_ConsultaID.AsInteger;
  fDMImpOrdemServico.cdsOSImp_Itens.Open;

  fDMImpOrdemServico.cdsOSImp_Custo.Close;
  fDMImpOrdemServico.sdsOSImp_Custo.ParamByName('ID').AsInteger := fDMCadOrdemServico.cdsOrdemServico_ConsultaID.AsInteger;
  fDMImpOrdemServico.cdsOSImp_Custo.Open;

  fDMImpOrdemServico.cdsOsImp_Proc.Close;
  fDMImpOrdemServico.sdsOsImp_Proc.ParamByName('ID').AsInteger := fDMCadOrdemServico.cdsOrdemServico_ConsultaID.AsInteger;
  fDMImpOrdemServico.cdsOsImp_Proc.Open;

  fDMImpOrdemServico.cdsOSImp_Mat.Close;
  fDMImpOrdemServico.sdsOSImp_Mat.ParamByName('ID').AsInteger := fDMCadOrdemServico.cdsOrdemServico_ConsultaID.AsInteger;
  fDMImpOrdemServico.cdsOSImp_Mat.Open;

  fDMImpOrdemServico.cdsOSImp_Ass.Close;
  fDMImpOrdemServico.sdsOSImp_Ass.ParamByName('ID').AsInteger := fDMCadOrdemServico.cdsOrdemServico_ConsultaID.AsInteger;
  fDMImpOrdemServico.cdsOSImp_Ass.Open;

  fDMImpOrdemServico.cdsOrcSetor.Close;
  fDMImpOrdemServico.sdsOrcSetor.ParamByName('ID').AsInteger   := fDMCadOrdemServico.cdsOrdemServico_ConsultaID.AsInteger;
  fDMImpOrdemServico.sdsOrcSetor.ParamByName('ITEM').AsInteger := 1;
  fDMImpOrdemServico.cdsOrcSetor.Open;

  fDMImpOrdemServico.qRelatorios.Close;
  fDMImpOrdemServico.qRelatorios.ParamByName('F1').AsInteger := fDMCadOrdemServico.cdsOrdemServico_ConsultaFILIAL.AsInteger;
  fDMImpOrdemServico.qRelatorios.ParamByName('T1').AsInteger := 1;
  fDMImpOrdemServico.qRelatorios.ParamByName('P1').AsInteger := 1;
  fDMImpOrdemServico.qRelatorios.Open;

  if not fDMImpOrdemServico.qRelatorios.IsEmpty then
    vArq := fDMImpOrdemServico.qRelatoriosCAMINHO.AsString
  else
    vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\ORC_Supercrom.fr3';
  fDMImpOrdemServico.qRelatorios.Close;

  if FileExists(vArq) then
    fDMImpOrdemServico.frxReport1.Report.LoadFromFile(vArq)
  else
  begin
    ShowMessage('Relatório não localizado! ' + vArq);
    Exit;
  end;
  case AnsiIndexStr(fDMImpOrdemServico.cdsOSImpTIPO_FRETE.AsString,['1','2','3','9']) of
    0: vTipo_Frete := 'Emitente';
    1: vTipo_Frete := 'Destinatário';
    2: vTipo_Frete := 'Terceiros';
    3: vTipo_Frete := 'Sem Frete';
  else vTipo_Frete := 'Sem Frete';
  end;
  fDMImpOrdemServico.frxReport1.Variables['Tipo_Frete'] := QuotedStr(vTipo_Frete);
  fDMImpOrdemServico.frxReport1.ShowReport;
  FreeAndNil(fDMImpOrdemServico);
end;

procedure TfrmCadOrc.SMDBGrid5GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if fDMCadOrdemServico.cdsOrdemServico_MatTIPO.AsString = 'X' then
    Background := clYellow
  else
  if (StrToFloat(FormatFloat('0.000000',fDMCadOrdemServico.cdsOrdemServico_MatQTD.AsFloat)) > StrToFloat(FormatFloat('0.000000',fDMCadOrdemServico.cdsOrdemServico_MatQTD_ESTOQUE.AsFloat)))
    and (StrToFloat(FormatFloat('0.000000',fDMCadOrdemServico.cdsOrdemServico_MatQTD_ESTOQUE.AsFloat)) > 0) then
    Background := clAqua
  else
  if StrToFloat(FormatFloat('0.000000',fDMCadOrdemServico.cdsOrdemServico_MatQTD.AsFloat)) < StrToFloat(FormatFloat('0.000000',fDMCadOrdemServico.cdsOrdemServico_MatQTD_ESTOQUE.AsFloat)) then
  begin
    Background  := clRed;
    AFont.Color := clWhite;
  end
  else
  if StrToFloat(FormatFloat('0.000000',fDMCadOrdemServico.cdsOrdemServico_MatQTD_ESTOQUE.AsFloat)) > 0 then
    Background  := clMoneyGreen;
end;

procedure TfrmCadOrc.SpeedButton2Click(Sender: TObject);
var
  ffrmCadProduto: TfrmCadProduto;
begin
  ffrmCadProduto := TfrmCadProduto.Create(self);
  ffrmCadProduto.ShowModal;
  FreeAndNil(ffrmCadProduto);
end;

procedure TfrmCadOrc.btnSelSetorClick(Sender: TObject);
begin
  frmSel_Setor_Proc2 := TfrmSel_Setor_Proc2.Create(Self);
  frmSel_Setor_Proc2.fDMCadOrdemServico := fDMCadOrdemServico;
  frmSel_Setor_Proc2.vID_Setor_Local    := 0;
  frmSel_Setor_Proc2.ShowModal;
  FreeAndNil(frmSel_Setor_Proc2);
  fDMCadOrdemServico.prc_Somar_Setor;
end;

procedure TfrmCadOrc.btnExcluir_SetorClick(Sender: TObject);
begin
  if MessageDlg('Deseja excluir o setor e seus processos?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadOrdemServico.cdsOrdemServico_Setor_Proc.First;
  while not fDMCadOrdemServico.cdsOrdemServico_Setor_Proc.Eof do
    fDMCadOrdemServico.cdsOrdemServico_Setor_Proc.Delete;
  fDMCadOrdemServico.cdsOrdemServico_Setor.Delete;
end;

procedure TfrmCadOrc.btnExcluir_EnsaioClick(Sender: TObject);
begin
  if MessageDlg('Deseja excluir o Teste/Ensaio do Orçamento?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadOrdemServico.cdsOrdemServico_Ensaio.Delete;
end;

procedure TfrmCadOrc.btnSelEnsaioClick(Sender: TObject);
begin
  frmSel_Ensaio := TfrmSel_Ensaio.Create(Self);
  frmSel_Ensaio.fDMCadOrdemServico := fDMCadOrdemServico;
  frmSel_Ensaio.vID_Setor_Local    := 0;
  frmSel_Ensaio.ShowModal;
  FreeAndNil(frmSel_Ensaio);
end;

procedure TfrmCadOrc.cbTipoProdutoChange(Sender: TObject);
begin
  prc_Opcao_Tipo_Produto;
end;

procedure TfrmCadOrc.DBEdit10Exit(Sender: TObject);
begin
  prc_Calcular_Area;
end;

procedure TfrmCadOrc.prc_Calcular_Area;
var
  vPI: Real;
begin
  //vPI := 3.1415926;
  vPI := 3.1416;
  if (fDMCadOrdemServico.cdsOrdemServico_ItensTIPO_PROD.AsString = 'R') and
     (fDMCadOrdemServico.cdsOrdemServico_ItensALTURA.AsFloat > 0) and
     (fDMCadOrdemServico.cdsOrdemServico_ItensLARGURA.AsFloat > 0) then
    fDMCadOrdemServico.cdsOrdemServico_ItensDM.Value := fDMCadOrdemServico.cdsOrdemServico_ItensALTURA.AsFloat * fDMCadOrdemServico.cdsOrdemServico_ItensLARGURA.AsFloat
  else
  if (fDMCadOrdemServico.cdsOrdemServico_ItensTIPO_PROD.AsString = 'C') and
     (fDMCadOrdemServico.cdsOrdemServico_ItensDIAMETRO.AsFloat > 0) and
     (fDMCadOrdemServico.cdsOrdemServico_ItensCOMPRIMENTO.AsFloat > 0) then
  begin
    if DBCheckBox1.Checked then
      fDMCadOrdemServico.cdsOrdemServico_ItensDM.Value := StrToFloat(FormatFloat('0.0000',(fDMCadOrdemServico.cdsOrdemServico_ItensDIAMETRO.AsFloat / 100)
                                                        * (fDMCadOrdemServico.cdsOrdemServico_ItensCOMPRIMENTO.AsFloat / 100)
                                                        * vPI))
    else
      fDMCadOrdemServico.cdsOrdemServico_ItensDM.Value := StrToFloat(FormatFloat('0.0000',(fDMCadOrdemServico.cdsOrdemServico_ItensDIAMETRO.AsFloat / 100)
                                                        * (fDMCadOrdemServico.cdsOrdemServico_ItensCOMPRIMENTO.AsFloat / 100)));
  end;
end;

procedure TfrmCadOrc.DBEdit12Exit(Sender: TObject);
begin
  prc_Calcular_Area;
end;

procedure TfrmCadOrc.DBEdit5Exit(Sender: TObject);
begin
  prc_Calcular_Area;
end;

procedure TfrmCadOrc.DBEdit14Exit(Sender: TObject);
begin
  prc_Calcular_Area;
end;

procedure TfrmCadOrc.btnExcluir_Setor_ProcClick(Sender: TObject);
begin
  if MessageDlg('Deseja excluir o Processo do Setor?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadOrdemServico.cdsOrdemServico_Setor_Proc.Delete;
end;

procedure TfrmCadOrc.btnCustoClick(Sender: TObject);
var
  ffrmCadOrc_Custo: TfrmCadOrc_Custo;
begin
  ffrmCadOrc_Custo := TfrmCadOrc_Custo.Create(self);
  ffrmCadOrc_Custo.fDMCadOrdemServico := fDMCadOrdemServico;
  ffrmCadOrc_Custo.ShowModal;
  FreeAndNil(ffrmCadOrc_Custo);
end;

procedure TfrmCadOrc.prc_Opcao_Tipo_Produto;
begin
  Label61.Visible  := (cbTipoProduto.ItemIndex = 1);
  Label62.Visible  := (cbTipoProduto.ItemIndex = 1);
  DBEdit10.Visible := (cbTipoProduto.ItemIndex = 1);
  DBEdit12.Visible := (cbTipoProduto.ItemIndex = 1);

  Label6.Visible   := (cbTipoProduto.ItemIndex = 0);
  Label7.Visible   := (cbTipoProduto.ItemIndex = 0);
  Label11.Visible  := (cbTipoProduto.ItemIndex = 0);
  Label13.Visible  := (cbTipoProduto.ItemIndex = 0);
  DBEdit5.Visible  := (cbTipoProduto.ItemIndex = 0);
  DBEdit14.Visible := (cbTipoProduto.ItemIndex = 0);
  DBEdit6.Visible  := (cbTipoProduto.ItemIndex = 0);
  DBEdit15.Visible := (cbTipoProduto.ItemIndex = 0);
  DBCheckBox1.Visible := (cbTipoProduto.ItemIndex = 0);
end;

procedure TfrmCadOrc.SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
  AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if fDMCadOrdemServico.cdsOrdemServico_ConsultaTIPO_APROV_ORC.AsString = 'A' then
  begin
    Background  := $00FFFFB7;
    AFont.Color := clBlack;
  end
  else
  if fDMCadOrdemServico.cdsOrdemServico_ConsultaTIPO_APROV_ORC.AsString = 'N' then
  begin
    Background  := clRed;
    AFont.Color := clWhite;
  end;
end;

procedure TfrmCadOrc.btnAprovarClick(Sender: TObject);
var
  ffrmCadOrc_Aprov: TfrmCadOrc_Aprov;
  vIDAux: Integer;
begin
  if not(fDMCadOrdemServico.cdsOrdemServico_Consulta.Active) or (fDMCadOrdemServico.cdsOrdemServico_ConsultaID.AsInteger <= 0) then
    exit;

  vIDAux := fDMCadOrdemServico.cdsOrdemServico_ConsultaID.AsInteger;  
  ffrmCadOrc_Aprov := TfrmCadOrc_Aprov.Create(self);
  ffrmCadOrc_Aprov.fDMCadOrdemServico := fDMCadOrdemServico;
  ffrmCadOrc_Aprov.ShowModal;
  FreeAndNil(ffrmCadOrc_Aprov);
  btnConsultarClick(Sender);
  fDMCadOrdemServico.cdsOrdemServico_Consulta.Locate('ID',vIDAux,[loCaseInsensitive]);
end;

procedure TfrmCadOrc.SMDBGrid2GetCellParams(Sender: TObject; Field: TField;
  AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if fDMCadOrdemServico.cdsOrdemServico_EnsaioCONFIRMADO.AsString = 'S' then
  begin
    AFont.Color := clBlue;
    AFont.Style := [fsBold];
  end;
end;

procedure TfrmCadOrc.btnGerarEnsaioClick(Sender: TObject);
begin
  fDMCadOrdemServico.cdsEnsaio_OS.Close;
  fDMCadOrdemServico.cdsEnsaio_OS.Open;
  fDMCadOrdemServico.cdsEnsaio_OS.First;
  while not fDMCadOrdemServico.cdsEnsaio_OS.Eof do
  begin
    if (fDMCadOrdemServico.cdsEnsaio_OSINATIVO.AsString <> 'S') and not(fDMCadOrdemServico.cdsOrdemServico_Ensaio.Locate('ID_ENSAIO',fDMCadOrdemServico.cdsEnsaio_OSID.AsInteger,[loCaseInsensitive])) then
    begin
      fDMCadOrdemServico.prc_Inserir_Ensaio;
      fDMCadOrdemServico.cdsOrdemServico_EnsaioID_ENSAIO.AsInteger    := fDMCadOrdemServico.cdsEnsaio_OSID.AsInteger;
      fDMCadOrdemServico.cdsOrdemServico_EnsaioclNome_Ensaio.AsString := fDMCadOrdemServico.cdsEnsaio_OSNOME.AsString;
      fDMCadOrdemServico.cdsOrdemServico_EnsaioDESCRICAO.AsString     := '';
      fDMCadOrdemServico.cdsOrdemServico_EnsaioCONFIRMADO.AsString    := 'N';
      fDMCadOrdemServico.cdsOrdemServico_Ensaio.Post;
    end;
    fDMCadOrdemServico.cdsEnsaio_OS.Next;
  end;
end;

procedure TfrmCadOrc.SMDBGrid2DblClick(Sender: TObject);
begin
  if fDMCadOrdemServico.cdsOrdemServico.State in [dsEdit,dsInsert] then
  begin
    if fDMCadOrdemServico.cdsOrdemServico_EnsaioITEM_ENSAIO.AsInteger > 0 then
    begin
      fDMCadOrdemServico.cdsOrdemServico_Ensaio.Edit;
      if fDMCadOrdemServico.cdsOrdemServico_EnsaioCONFIRMADO.AsString = 'S' then
        fDMCadOrdemServico.cdsOrdemServico_EnsaioCONFIRMADO.AsString := 'N'
      else
        fDMCadOrdemServico.cdsOrdemServico_EnsaioCONFIRMADO.AsString := 'S';
      fDMCadOrdemServico.cdsOrdemServico_Ensaio.Post;
    end;
  end;
end;

procedure TfrmCadOrc.btnSelecionrFuncClick(Sender: TObject);
begin
  frmSel_Funcionario := TfrmSel_Funcionario.Create(Self);
  frmSel_Funcionario.fDMCadOrdemServico := fDMCadOrdemServico;
  frmSel_Funcionario.vID_Setor_Local    := 0;
  frmSel_Funcionario.ShowModal;
  FreeAndNil(frmSel_Funcionario);
end;

procedure TfrmCadOrc.prc_Gerar_Ass_Usuario;
begin
  if fDMCadOrdemServico.cdsOrdemServicoID_FUNCIONARIO.AsInteger > 0 then
  begin
    fDMCadOrdemServico.prc_Inserir_ASS;
    fDMCadOrdemServico.cdsOrdemServico_AssID_FUNCIONARIO.AsInteger := fDMCadOrdemServico.cdsOrdemServicoID_FUNCIONARIO.AsInteger;
    fDMCadOrdemServico.cdsOrdemServico_Ass.Post;
  end;
end;

procedure TfrmCadOrc.SpeedButton3Click(Sender: TObject);
begin
  fDMCadOrdemServico.cdsTransp.Close;
  fDMCadOrdemServico.cdsTransp.Open;
end;

procedure TfrmCadOrc.cbTipoProdutoExit(Sender: TObject);
begin
  case cbTipoProduto.ItemIndex of
    0: fDMCadOrdemServico.cdsOrdemServico_ItensTIPO_PROD.AsString := 'C';
    1: fDMCadOrdemServico.cdsOrdemServico_ItensTIPO_PROD.AsString := 'R';
    else fDMCadOrdemServico.cdsOrdemServico_ItensTIPO_PROD.AsString := '';
  end;
end;

procedure TfrmCadOrc.DBCheckBox1Click(Sender: TObject);
begin
  if not Assigned(fDMCadOrdemServico) then
    exit;
  if fDMCadOrdemServico.cdsOrdemServico_Itens.State in [dsEdit,dsInsert] then
    prc_Calcular_Area;
end;

procedure TfrmCadOrc.SpeedButton4Click(Sender: TObject);
var
  ffrmCadPessoa: TfrmCadPessoa;
begin
  ffrmCadPessoa := TfrmCadPessoa.Create(self);
  ffrmCadPessoa.ShowModal;
  FreeAndNil(ffrmCadPessoa);
end;

procedure TfrmCadOrc.DBEdit17KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = vk_Return) then
  begin
    DBEdit21Exit(Sender);
  end;
  if (Key = Vk_F2) then
    btBuscaProduto.Click;
end;

procedure TfrmCadOrc.DBEdit21Exit(Sender: TObject);
begin
  fDMCadOrdemServico.cdsProduto.IndexFieldNames := 'ID';
  fDMCadOrdemServico.cdsProduto.Close;
  fDMCadOrdemServico.cdsProduto.Open;
  if fDMCadOrdemServico.cdsProduto.FindKey([DbEdit21.Text]) then
  begin
    fDMCadOrdemServico.cdsOrdemServico_ItensNOME_PRODUTO.AsString := fDMCadOrdemServico.cdsProdutoNOME.AsString;
    fDMCadOrdemServico.cdsOrdemServico_ItensQTD.AsInteger         := 1;
  end;
end;

procedure TfrmCadOrc.btBuscaProdutoClick(Sender: TObject);
begin
  frmSel_Produto  := TfrmSel_Produto.Create(Self);
  frmSel_Produto.vTipo_Prod := 'P';
  frmSel_Produto.ComboBox1.ItemIndex := 0;
  frmSel_Produto.Edit1.Text     := DBEdit17.Text;
  frmSel_Produto.ctProdutoLocal := frmSel_Produto.sdsProduto.CommandText;
  frmSel_Produto.ctProdAux      := frmSel_Produto.sdsProdAux.CommandText;
  vFilial                       := 1;
  frmSel_Produto.ShowModal;
  DBEdit21.Text := IntToStr(vCodProduto_Pos);
  DBEdit21Exit(Sender);
end;

procedure TfrmCadOrc.DBEdit21KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_F2) then
    btBuscaProduto.Click;
  if Key = Vk_Return then
    DBEdit21Exit(Sender);
end;
  
procedure TfrmCadOrc.prc_Monta_Grid;
var
  i: Integer;
begin
  for i := 0 to RzDBGrid1.Columns.Count - 2 do
  begin
    if (RzDBGrid1.Columns[i].FieldName = 'TOTAL_HORA') and (trim(fDMCadOrdemServico.qParametros_ProdGERADORES_ELETRICOS.AsString) <> 'S') then
      RzDBGrid1.Columns[i].Title.Caption := 'Total Hora';
    if (RzDBGrid1.Columns[i].FieldName = 'UNIDADE') then
      RzDBGrid1.Columns[i].Visible := (trim(fDMCadOrdemServico.qParametros_ProdGERADORES_ELETRICOS.AsString) = 'S');
  end;
  for i := 0 to RzDBGrid13.Columns.Count - 2 do
  begin
    if (RzDBGrid13.Columns[i].FieldName = 'TOTAL_HORA') and (trim(fDMCadOrdemServico.qParametros_ProdGERADORES_ELETRICOS.AsString) <> 'S') then
      RzDBGrid13.Columns[i].Title.Caption := 'Qtd. Hora';
    if (RzDBGrid13.Columns[i].FieldName = 'UNIDADE') then
      RzDBGrid13.Columns[i].Visible := (trim(fDMCadOrdemServico.qParametros_ProdGERADORES_ELETRICOS.AsString) = 'S');
  end;             
end;

end.
