unit UCadOrdemServico;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadOrdemServico, SMBox,
  DB, DBGrids, ExtCtrls, StdCtrls, FMTBcd, SqlExpr, RzTabs, Mask, DBCtrls, ToolEdit, CurrEdit, RxLookup, RxDBComb, Menus, NxEdit,
  RXDBCtrl, RzEdit, RzDBEdit, RzButton, UEscolhe_Filial, UCBase, RzPanel, dbXPress, NxCollection, StrUtils, DateUtils, ComCtrls,
  RzDTP, RzDBDTP, RzLstBox, RzChkLst, ToolWin, SMToolBar, NxScrollControl, NxToolBox, UCadOrdemServico_Proc, UCadOrdemServico_Mat,
  UCadOrdemServico_Terc, ImgList;

type
  TfrmCadOrdemServico = class(TForm)
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
    Panel4: TPanel;
    Shape6: TShape;
    Label31: TLabel;
    Shape1: TShape;
    Label10: TLabel;
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
    DBEdit2: TDBEdit;
    Label3: TLabel;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    Shape2: TShape;
    Label26: TLabel;
    ComboBox1: TComboBox;
    Label27: TLabel;
    TabSheet1: TRzTabSheet;
    RzPageControl3: TRzPageControl;
    TS_Acessorios: TRzTabSheet;
    DBMemo1: TDBMemo;
    TS_Pecas_Usadas: TRzTabSheet;
    SMDBGrid4: TSMDBGrid;
    TS_Servico_Prestado: TRzTabSheet;
    SMDBGrid3: TSMDBGrid;
    Panel2: TPanel;
    Label13: TLabel;
    DBText3: TDBText;
    DBText4: TDBText;
    Label15: TLabel;
    DBText5: TDBText;
    Label17: TLabel;
    Panel3: TPanel;
    RzGroupBox3: TRzGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    DBDateEdit2: TDBDateEdit;
    RzDBDateTimeEdit3: TRzDBDateTimeEdit;
    RzGroupBox5: TRzGroupBox;
    Label11: TLabel;
    Label5: TLabel;
    DBDateEdit5: TDBDateEdit;
    RzDBDateTimeEdit2: TRzDBDateTimeEdit;
    Label20: TLabel;
    DBDateEdit3: TDBDateEdit;
    Label21: TLabel;
    RzDBDateTimeEdit4: TRzDBDateTimeEdit;
    Label19: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    Memo1: TMemo;
    Label1: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    Label25: TLabel;
    RxDBLookupCombo4: TRxDBLookupCombo;
    RzGroupBox1: TRzGroupBox;
    Label23: TLabel;
    DBDateEdit4: TDBDateEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label24: TLabel;
    DBEdit6: TDBEdit;
    Label28: TLabel;
    DBDateEdit6: TDBDateEdit;
    RxDBComboBox1: TRxDBComboBox;
    Label29: TLabel;
    RzPageControl2: TRzPageControl;
    TS_Processos: TRzTabSheet;
    TS_Materiais: TRzTabSheet;
    SMDBGrid2: TSMDBGrid;
    Panel5: TPanel;
    btnInserir_Proc: TNxButton;
    btnExcluir_Proc: TNxButton;
    btnAlterar_Proc: TNxButton;
    Label34: TLabel;
    RxDBLookupCombo5: TRxDBLookupCombo;
    btnGerar_Automatico: TNxButton;
    SpeedButton5: TSpeedButton;
    RzGroupBox2: TRzGroupBox;
    Label30: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    DBEdit7: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit10: TDBEdit;
    NxFlipPanel1: TNxFlipPanel;
    DBMemo5: TDBMemo;
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
    Panel9: TPanel;
    Label36: TLabel;
    DBMemo7: TDBMemo;
    Label37: TLabel;
    DBEdit11: TDBEdit;
    Panel10: TPanel;
    Label38: TLabel;
    Panel12: TPanel;
    DBEdit12: TDBEdit;
    ImageList1: TImageList;
    PopupProcessos: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    TS_Realizado: TRzTabSheet;
    SMDBGrid7: TSMDBGrid;
    Panel13: TPanel;
    btnConsultar_Realizado: TNxButton;
    TS_Pausa: TRzTabSheet;
    Panel14: TPanel;
    btnConsultar_Pausa: TNxButton;
    SMDBGrid8: TSMDBGrid;
    Shape3: TShape;
    Label39: TLabel;
    Shape4: TShape;
    Label40: TLabel;
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
    SpeedButton2: TSpeedButton;
    TS_Custo: TRzTabSheet;
    Panel15: TPanel;
    btnCalcular_Custo: TNxButton;
    Label46: TLabel;
    CurrencyEdit2: TCurrencyEdit;
    Label49: TLabel;
    CurrencyEdit3: TCurrencyEdit;
    Label50: TLabel;
    CurrencyEdit4: TCurrencyEdit;
    Label51: TLabel;
    CurrencyEdit5: TCurrencyEdit;
    Shape11: TShape;
    CurrencyEdit6: TCurrencyEdit;
    Shape9: TShape;
    Label47: TLabel;
    Shape10: TShape;
    Label48: TLabel;
    Shape12: TShape;
    Label52: TLabel;
    Shape13: TShape;
    Label53: TLabel;
    btnAlterar_Realizado: TNxButton;
    btnEncerrar_OS: TNxButton;
    TS_Encerramento: TRzTabSheet;
    Panel16: TPanel;
    DBMemo2: TDBMemo;
    Label54: TLabel;
    Label59: TLabel;
    DBDateEdit7: TDBDateEdit;
    DBDateEdit8: TDBDateEdit;
    Label60: TLabel;
    Label61: TLabel;
    RzDBDateTimeEdit1: TRzDBDateTimeEdit;
    RzDBDateTimeEdit5: TRzDBDateTimeEdit;
    Label62: TLabel;
    Label63: TLabel;
    DBEdit13: TDBEdit;
    btnRetrabalho: TNxButton;
    Label64: TLabel;
    CurrencyEdit7: TCurrencyEdit;
    Label65: TLabel;
    NxButton1: TNxButton;
    Shape18: TShape;
    Label68: TLabel;
    Shape19: TShape;
    Label66: TLabel;
    btnLiberar: TNxButton;
    TS_Gerador: TRzTabSheet;
    Panel17: TPanel;
    Label55: TLabel;
    btIncluiProduto: TSpeedButton;
    btBuscaProduto: TSpeedButton;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label67: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    Label71: TLabel;
    Label72: TLabel;
    Label73: TLabel;
    Label74: TLabel;
    Label75: TLabel;
    Label76: TLabel;
    DBEdit17: TDBEdit;
    DBEdit21: TDBEdit;
    RxDBLookupCombo6: TRxDBLookupCombo;
    RxDBLookupCombo7: TRxDBLookupCombo;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    DBEdit29: TDBEdit;
    RxDBLookupCombo8: TRxDBLookupCombo;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    DBEdit32: TDBEdit;
    DBEdit33: TDBEdit;
    DBEdit34: TDBEdit;
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
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure SMDBGrid4GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure RxDBLookupCombo3Change(Sender: TObject);
    procedure RxDBLookupCombo4Enter(Sender: TObject);
    procedure DBEdit6Exit(Sender: TObject);
    procedure DBDateEdit4Exit(Sender: TObject);
    procedure NxFlipProdEnter(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure DBEdit8Enter(Sender: TObject);
    procedure btnGerar_AutomaticoClick(Sender: TObject);
    procedure btnInserir_ProcClick(Sender: TObject);
    procedure btnAlterar_ProcClick(Sender: TObject);
    procedure btnExcluir_ProcClick(Sender: TObject);
    procedure DBEdit7KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit7Exit(Sender: TObject);
    procedure btnInserir_MatClick(Sender: TObject);
    procedure btnAlterar_MatClick(Sender: TObject);
    procedure btnExcluir_MatClick(Sender: TObject);
    procedure RxDBLookupCombo5Enter(Sender: TObject);
    procedure btnInserir_TercClick(Sender: TObject);
    procedure btnAlterar_TercClick(Sender: TObject);
    procedure btnExcluir_TercClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure SMDBGrid2GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure RzPageControl2Change(Sender: TObject);
    procedure btnConsultar_RealizadoClick(Sender: TObject);
    procedure btnConsultar_PausaClick(Sender: TObject);
    procedure SMDBGrid5GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure SpeedButton2Click(Sender: TObject);
    procedure btnCalcular_CustoClick(Sender: TObject);
    procedure SMDBGrid7GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure btnAlterar_RealizadoClick(Sender: TObject);
    procedure btnEncerrar_OSClick(Sender: TObject);
    procedure btnRetrabalhoClick(Sender: TObject);
    procedure DBEdit11KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure NxButton1Click(Sender: TObject);
    procedure RzGroupBox2Enter(Sender: TObject);
    procedure btnLiberarClick(Sender: TObject);
    procedure btBuscaProdutoClick(Sender: TObject);
    procedure DBEdit21KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit17KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit21Exit(Sender: TObject);
  private
    { Private declarations }
    vTipoNotaAnt: String;
    vID_Cliente_Ant: Integer;
    vQtd_Ant: Integer;

    fDMCadOrdemServico: TDMCadOrdemServico;
    ffrmEscolhe_Filial: TfrmEscolhe_Filial;
    ffrmCadOrdemServico_Proc: TfrmCadOrdemServico_Proc;
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
    procedure prc_Status;

    procedure prc_Calcular_DtEntrega;
    procedure prc_Montar_Ordem;

    procedure prc_Abrir_cdsOrdemServico_Enc;

    function fnc_Existe_Baixa(Ordem: Integer): Boolean;

    procedure prc_VerBaixas;
    function fnc_Verifica_Baixa_Proc(Num_OS, Ordem: Integer): Boolean;
    function fnc_Encerrar(ID: Integer): Boolean;

  public
    { Public declarations }
    cTXTStream: TMemoryStream;
    cXMLStream: TMemoryStream;
    sXMLNFSe: TMemoryStream;
  end;

var
  frmCadOrdemServico: TfrmCadOrdemServico;

implementation

uses DmdDatabase, rsDBUtils, uUtilPadrao, USel_Pessoa, USel_Produto, UDMImpOrdemServico, UCadProduto, UAjustar_OS, USel_Orc,
  UCadOrdemServico_Enc, UDMCopiarOrc, UCadOrdemServico_Lib;

{$R *.dfm}

procedure TfrmCadOrdemServico.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadOrdemServico.btnExcluirClick(Sender: TObject);
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
    MessageDlg('*** OS não pode ser excluída pois já possui baixas (Processos ou Materiais)!', mtInformation, [mbOk], 0);
    exit;
  end;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  prc_Excluir_Registro;

  btnConsultarClick(Sender);
end;

procedure TfrmCadOrdemServico.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadOrdemServico.prc_Excluir_Registro;
begin
  fDMCadOrdemServico.prc_Excluir;
end;

procedure TfrmCadOrdemServico.prc_Gravar_Registro;
var
  vIDAux: Integer;
  ID: TTransactionDesc;
  vVlrTotal: Real;
begin
  if fDMCadOrdemServico.cdsOrdemServicoNUM_OS.AsInteger <= 0 then
  begin
    fDMCadOrdemServico.qProximo_Num.Close;
    fDMCadOrdemServico.qProximo_Num.Open;
    fDMCadOrdemServico.cdsOrdemServicoNUM_OS.AsInteger := fDMCadOrdemServico.qProximo_NumNUM_OS.AsInteger + 1;
    fDMCadOrdemServico.qProximo_Num.Close;
  end;

  if not (fDMCadOrdemServico.cdsOrdemServico_Itens.State in [dsEdit,dsInsert]) then
    fDMCadOrdemServico.cdsOrdemServico_Itens.Edit;
  if (vQtd_Ant <> fDMCadOrdemServico.cdsOrdemServico_ItensQTD.AsInteger) or (fDMCadOrdemServico.cdsOrdemServico_ItensQTD_RESTANTE.IsNull) then
    fDMCadOrdemServico.cdsOrdemServico_ItensQTD_RESTANTE.AsInteger := fDMCadOrdemServico.cdsOrdemServico_ItensQTD.AsInteger;

  fDMCadOrdemServico.prc_Gravar;
  vIDAux := fDMCadOrdemServico.cdsOrdemServicoID.AsInteger;
  if fDMCadOrdemServico.cdsOrdemServico.State in [dsEdit,dsInsert] then
  begin
    MessageDlg(fDMCadOrdemServico.vMsgOS, mtError, [mbOk], 0);
    exit;
  end;

  fDMCadOrdemServico.sdsPRC_Atualiza_OS.Close;
  fDMCadOrdemServico.sdsPRC_Atualiza_OS.ParamByName('P_ID').AsInteger := vIDAux;
  fDMCadOrdemServico.sdsPRC_Atualiza_OS.ExecSQL;

  TS_Consulta.TabEnabled := True;
  prc_Habilitar_Campos;
  RzPageControl1.ActivePage := TS_Consulta;
  prc_Consultar(vIDAux);
end;

procedure TfrmCadOrdemServico.prc_Inserir_Registro;
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
  fDMCadOrdemServico.prc_Inserir('1');
  lblNome_Filial.Caption := vFilial_Nome;
  if fDMCadOrdemServico.cdsOrdemServico.State in [dsBrowse] then
    exit;
  prc_Habilitar_Campos;
  RzPageControl1.ActivePage := TS_Cadastro;
  TS_Consulta.TabEnabled    := False;
  fDMCadOrdemServico.cdsOrdemServicoFILIAL.AsInteger    := vFilial;
  fDMCadOrdemServico.cdsOrdemServicoTP_SIMPLES.AsString := 'N';
  fDMCadOrdemServico.cdsOrdemServicoSTATUS.AsString     := '1';
  pnlCliente.Enabled := True;

  fDMCadOrdemServico.prc_Inserir_Itens;

  vQtd_Ant := 0;
end;

procedure TfrmCadOrdemServico.FormShow(Sender: TObject);
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

  //Carlos pediu para a HP e demais clientes  16/11/2016
  TS_Acessorios.TabVisible  := ((not(fDMCadOrdemServico.qParametros_Ser.IsEmpty)) and (fDMCadOrdemServico.qParametros_SerMOSTRA_OS_ACESSORIOS.AsString = 'S'));
  //******************
  Memo1.Visible             := (fDMCadOrdemServico.qParametros_SerMOSTRAR_STATUS.AsString = 'S');
  Label27.Visible           := (fDMCadOrdemServico.qParametros_SerMOSTRAR_STATUS.AsString = 'S');
  ComboBox1.Visible         := (fDMCadOrdemServico.qParametros_SerMOSTRAR_STATUS.AsString = 'S');

  for i := 0 to SMDBGrid1.ColCount - 2 do
  begin
    if SMDBGrid1.Columns[i].FieldName = 'DESC_STATUS' then
      SMDBGrid1.Columns[i].Visible := (fDMCadOrdemServico.qParametros_SerMOSTRAR_STATUS.AsString = 'S');
  end;
  RzGroupBox5.Enabled := not(fDMCadOrdemServico.qParametros_SerMOSTRAR_STATUS.AsString = 'S');

  NxFlipPanel1.Expanded := False;
  TabSheet1.TabVisible  := False;
  TS_Custo.TabVisible   := (fDMCadOrdemServico.qParametros_UsuarioMOSTRAR_CUSTO_OS.AsString = 'S');

  fDMCadOrdemServico.qParametros_Prod.Active := True;
  if fDMCadOrdemServico.qParametros_ProdGERADORES_ELETRICOS.AsString = 'S' then
  begin
    RzGroupBox2.Visible   := False;
    TS_Gerador.TabVisible := True;
    RzPageControl2.ActivePage := TS_Gerador;
    fDMCadOrdemServico.cdsFabricanteGerador.Open;
    fDMCadOrdemServico.cdsMarca_Montadora.Open;
    fDMCadOrdemServico.cdsFabricanteMotor.Open;
    fDMCadOrdemServico.cdsProdutoGerador.Open;
  end
  else
    RzGroupBox2.Visible := True;
  fDMCadOrdemServico.qParametros_Prod.Active := True;
end;

procedure TfrmCadOrdemServico.prc_Consultar(ID: Integer);
begin
  fDMCadOrdemServico.cdsOrdemServico_Consulta.Close;
  fDMCadOrdemServico.cdsOrdemServico_Consulta.IndexFieldNames := 'NUM_OS';
  fDMCadOrdemServico.SdsOrdemServico_Consulta.CommandText     := fDMCadOrdemServico.ctConsulta
                                                               + ' WHERE OS.TP_SIMPLES = ' + QuotedStr('N')
                                                               + '   AND OS.TP_ORCAMENTO = ' + QuotedStr('1');

  if ID > 0 then
    fDMCadOrdemServico.sdsOrdemServico_Consulta.CommandText := fDMCadOrdemServico.SdsOrdemServico_Consulta.CommandText +
                                                               ' AND OS.ID = ' + IntToStr(ID)
  else
  begin
    if NxDatePicker1.Text <> '' then
      fDMCadOrdemServico.sdsOrdemServico_Consulta.CommandText := fDMCadOrdemServico.sdsOrdemServico_Consulta.CommandText
                          + ' AND OS.DTRECEBIMENTO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',NxDatePicker1.date));
    if NxDatePicker2.Text <> '' then
      fDMCadOrdemServico.sdsOrdemServico_Consulta.CommandText := fDMCadOrdemServico.sdsOrdemServico_Consulta.CommandText
                          + ' AND OS.DTRECEBIMENTO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',NxDatePicker2.date));

    if not(RxDBLookupCombo1.Text = '') then
      fDMCadOrdemServico.SdsOrdemServico_Consulta.CommandText := fDMCadOrdemServico.SdsOrdemServico_Consulta.CommandText +
                                                                 ' AND OS.FILIAL = ' + IntToStr(RxDBLookupCombo1.KeyValue);
    if CurrencyEdit1.AsInteger > 0 then
      fDMCadOrdemServico.SdsOrdemServico_Consulta.CommandText := fDMCadOrdemServico.SdsOrdemServico_Consulta.CommandText +
                                                                 ' AND OS.NUM_OS = ' + CurrencyEdit1.Text;
    if Trim(Edit2.Text) <> '' then
      fDMCadOrdemServico.sdsOrdemServico_Consulta.CommandText := fDMCadOrdemServico.SdsOrdemServico_Consulta.CommandText
                                      + ' AND ((CLI.NOME LIKE ' + QuotedStr('%'+Edit2.Text+'%') + ')'
                                      + ' OR (CLI.FANTASIA LIKE ' + QuotedStr('%'+Edit2.Text+'%') + '))';
    case ComboBox1.ItemIndex of
      1: fDMCadOrdemServico.sdsOrdemServico_Consulta.CommandText := fDMCadOrdemServico.SdsOrdemServico_Consulta.CommandText + ' AND OS.STATUS = ' + QuotedStr('1');
      2: fDMCadOrdemServico.sdsOrdemServico_Consulta.CommandText := fDMCadOrdemServico.SdsOrdemServico_Consulta.CommandText + ' AND OS.STATUS = ' + QuotedStr('2');
      3: fDMCadOrdemServico.sdsOrdemServico_Consulta.CommandText := fDMCadOrdemServico.SdsOrdemServico_Consulta.CommandText + ' AND OS.STATUS = ' + QuotedStr('3');
      4: fDMCadOrdemServico.sdsOrdemServico_Consulta.CommandText := fDMCadOrdemServico.SdsOrdemServico_Consulta.CommandText + ' AND OS.STATUS = ' + QuotedStr('4');
      5: fDMCadOrdemServico.sdsOrdemServico_Consulta.CommandText := fDMCadOrdemServico.SdsOrdemServico_Consulta.CommandText + ' AND OS.STATUS = ' + QuotedStr('5');
      6: fDMCadOrdemServico.sdsOrdemServico_Consulta.CommandText := fDMCadOrdemServico.SdsOrdemServico_Consulta.CommandText + ' AND OS.STATUS = ' + QuotedStr('6');
      7: fDMCadOrdemServico.sdsOrdemServico_Consulta.CommandText := fDMCadOrdemServico.SdsOrdemServico_Consulta.CommandText + ' AND OS.STATUS = ' + QuotedStr('8');
      8: fDMCadOrdemServico.sdsOrdemServico_Consulta.CommandText := fDMCadOrdemServico.SdsOrdemServico_Consulta.CommandText + ' AND OS.STATUS = ' + QuotedStr('9');
    end;

  end;
  fDMCadOrdemServico.cdsOrdemServico_Consulta.Open;
end;

procedure TfrmCadOrdemServico.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar(0);
end;

procedure TfrmCadOrdemServico.btnCancelarClick(Sender: TObject);
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

procedure TfrmCadOrdemServico.btnAlterarClick(Sender: TObject);
var
  vCodAux: String;
begin
  if (fDMCadOrdemServico.cdsOrdemServico.IsEmpty) or not(fDMCadOrdemServico.cdsOrdemServico.Active) or
     (fDMCadOrdemServico.cdsOrdemServicoID.AsInteger < 1) then
    exit;

  fDMCadOrdemServico.qParametros.Close;
  fDMCadOrdemServico.qParametros.Open;

  fDMCadOrdemServico.cdsOrdemServico.Edit;

  prc_Posicionar_Cliente;
  //28/06/2018
  vQtd_Ant := fDMCadOrdemServico.cdsOrdemServico_ItensQTD.AsInteger;

  TS_Consulta.TabEnabled := False;
  prc_Habilitar_Campos;
end;

procedure TfrmCadOrdemServico.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfrmCadOrdemServico.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadOrdemServico);
end;

procedure TfrmCadOrdemServico.prc_Posiciona_OS;
begin
  fDMCadOrdemServico.prc_Localizar(fDMCadOrdemServico.cdsOrdemServico_ConsultaID.AsInteger);
  fDMCadOrdemServico.cdsOrdemServico_Itens.Close;
  fDMCadOrdemServico.cdsOrdemServico_Itens.Open;
  fDMCadOrdemServico.cdsOrdemServico_Mat.Close;
  fDMCadOrdemServico.cdsOrdemServico_Mat.Open;
  vFilial      := fDMCadOrdemServico.cdsOrdemServicoFILIAL.AsInteger;
  vFilial_Nome := '';
  if fDMCadOrdemServico.cdsFilial.Locate('ID',vFilial,[loCaseInsensitive]) then
    vFilial_Nome := fDMCadOrdemServico.cdsFilialNOME_INTERNO.AsString;
  lblNome_Filial.Caption := vFilial_Nome;

  fDMCadOrdemServico.qVerBaixaOS.Close;
  fDMCadOrdemServico.qVerBaixaOS.ParamByName('ID').AsInteger := fDMCadOrdemServico.cdsOrdemServicoID.AsInteger;
  fDMCadOrdemServico.qVerBaixaOS.Open;
end;

function TfrmCadOrdemServico.fnc_Verifica_Registro: Boolean;
begin
  Result := False;
  if not(fDMCadOrdemServico.cdsOrdemServico_Consulta.Active) or (fDMCadOrdemServico.cdsOrdemServico_Consulta.IsEmpty) or
        (fDMCadOrdemServico.cdsOrdemServico_ConsultaID.AsInteger < 1) then
    exit;

  fDMCadOrdemServico.qVerifica_Baixa.Close;
  fDMCadOrdemServico.qVerifica_Baixa.ParamByName('NUM_OS').AsInteger := fDMCadOrdemServico.cdsOrdemServico_ConsultaNUM_OS.AsInteger;
  fDMCadOrdemServico.qVerifica_Baixa.ParamByName('ORDEM').AsInteger  := 1;
  fDMCadOrdemServico.qVerifica_Baixa.Open;
  if fDMCadOrdemServico.qVerifica_BaixaCONTADOR.AsInteger > 0 then
  begin
    MessageDlg('*** Ordem de serviço possui baixa!', mtError, [mbOk], 0);
    exit;
  end;

  Result := True;
end;

procedure TfrmCadOrdemServico.RzPageControl1Change(Sender: TObject);
begin
  if not(fDMCadOrdemServico.cdsOrdemServico.State in [dsEdit, dsInsert]) then
  begin
    if RzPageControl1.ActivePage = TS_Cadastro then
    begin
      if not(fDMCadOrdemServico.cdsOrdemServico_Consulta.Active) or (fDMCadOrdemServico.cdsOrdemServico_Consulta.IsEmpty) or
            (fDMCadOrdemServico.cdsOrdemServico_ConsultaID.AsInteger <= 0) then
        exit;
      prc_Posiciona_OS;
      prc_Status;
      prc_VerBaixas;
    end;
  end;
end;

procedure TfrmCadOrdemServico.pnlClienteExit(Sender: TObject);
begin
  prc_Posicionar_Cliente;
end;

procedure TfrmCadOrdemServico.prc_Posicionar_Cliente;
begin
  if fDMCadOrdemServico.cdsClienteCODIGO.AsInteger <> fDMCadOrdemServico.cdsOrdemServicoID_CLIENTE.AsInteger then
    fDMCadOrdemServico.cdsCliente.Locate('CODIGO',fDMCadOrdemServico.cdsOrdemServicoID_CLIENTE.AsInteger,[loCaseInsensitive]);
  if (fDMCadOrdemServico.cdsFilialID.AsInteger <> fDMCadOrdemServico.cdsOrdemServicoFILIAL.AsInteger) then
    fDMCadOrdemServico.cdsFilial.Locate('ID',fDMCadOrdemServico.cdsOrdemServicoFILIAL.AsInteger,[loCaseInsensitive]);
end;

procedure TfrmCadOrdemServico.prc_Habilitar_Campos;
begin
  btnConfirmar.Enabled     := not(btnConfirmar.Enabled);
  btnAlterar.Enabled       := not(btnAlterar.Enabled);
  pnlCadastro.Enabled      := not(pnlCadastro.Enabled);

  btnInserir_Proc.Enabled := not(btnInserir_Proc.Enabled);
  btnAlterar_Proc.Enabled := not(btnAlterar_Proc.Enabled);
  btnExcluir_Proc.Enabled := not(btnExcluir_Proc.Enabled);
  btnRetrabalho.Enabled   := not(btnRetrabalho.Enabled);
  btnGerar_Automatico.Enabled := not(btnGerar_Automatico.Enabled);

  btnInserir_Mat.Enabled := not(btnInserir_Mat.Enabled);
  btnAlterar_Mat.Enabled := not(btnAlterar_Mat.Enabled);
  btnExcluir_Mat.Enabled := not(btnExcluir_Mat.Enabled);

  btnInserir_Terc.Enabled := not(btnInserir_Terc.Enabled);
  btnAlterar_Terc.Enabled := not(btnAlterar_Terc.Enabled);
  btnExcluir_Terc.Enabled := not(btnExcluir_Terc.Enabled);

  DBMemo6.ReadOnly := not(DBMemo6.ReadOnly);
  DBMemo7.ReadOnly := not(DBMemo7.ReadOnly);
end;

function TfrmCadOrdemServico.fnc_Cancelar: Boolean;
begin
  Result := True;
  fDMCadOrdemServico.vMsgOS := '';

  if trim(fDMCadOrdemServico.vMsgOS) <> '' then
    Result := False;
end;

procedure TfrmCadOrdemServico.SpeedButton1Click(Sender: TObject);
begin
  fDMCadOrdemServico.cdsCliente.Close;
  fDMCadOrdemServico.cdsCliente.Open;
end;

procedure TfrmCadOrdemServico.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := fnc_Encerrar_Tela(fDMCadOrdemServico.cdsOrdemServico);
end;

procedure TfrmCadOrdemServico.edtSerieKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadOrdemServico.CurrencyEdit1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadOrdemServico.Edit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadOrdemServico.RxDBLookupCombo3KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
  begin
    vCodPessoa_Pos := fDMCadOrdemServico.cdsOrdemServicoID_CLIENTE.AsInteger;
    frmSel_Pessoa := TfrmSel_Pessoa.Create(Self);
    frmSel_Pessoa.vTipo_Pessoa := 'C';
    frmSel_Pessoa.ShowModal;
    fDMCadOrdemServico.cdsOrdemServicoID_CLIENTE.AsInteger := vCodPessoa_Pos;
    DBEdit11.SetFocus;
  end;
end;

procedure TfrmCadOrdemServico.SMDBGrid1TitleClick(Column: TColumn);
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

procedure TfrmCadOrdemServico.Panel4Enter(Sender: TObject);
begin
  vID_Cliente_Ant := fDMCadOrdemServico.cdsOrdemServicoID_CLIENTE.AsInteger;
end;

procedure TfrmCadOrdemServico.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if not(fDMCadOrdemServico.cdsOrdemServico_Consulta.Active) or (fDMCadOrdemServico.cdsOrdemServico_Consulta.IsEmpty) then
    exit;
  if fDMCadOrdemServico.cdsOrdemServico_ConsultaDTENTREGA.AsDateTime > 10 then
  begin
    Background  := clGreen;
    AFont.Color := clWhite;
  end
  else
  if fDMCadOrdemServico.cdsOrdemServico_ConsultaPRODUZIDO.AsString = 'I' then
    Background := clAqua
  else
  if fDMCadOrdemServico.cdsOrdemServico_ConsultaPRODUZIDO.AsString = 'S' then
    Background := clMoneyGreen
  else
  if fDMCadOrdemServico.cdsOrdemServico_ConsultaCOPIADO_PEDIDO.AsString = 'S' then
    Background := $000080FF
  else
  if fDMCadOrdemServico.cdsOrdemServico_ConsultaCOPIADO_PEDIDO.AsString = 'P' then
    Background := $00A6FFFF;
end;

procedure TfrmCadOrdemServico.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadOrdemServico.btnPesquisarClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not(pnlPesquisa.Visible);
  if pnlPesquisa.Visible then
    CurrencyEdit1.SetFocus
  else
    prc_Limpar_Edit_Consulta;
end;

procedure TfrmCadOrdemServico.prc_Limpar_Edit_Consulta;
begin
  CurrencyEdit1.Clear;
  Edit2.Clear;
end;

function TfrmCadOrdemServico.fnc_Existe_Fat(Item: Integer): Boolean;
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

procedure TfrmCadOrdemServico.SMDBGrid4GetCellParams(Sender: TObject;
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

procedure TfrmCadOrdemServico.RxDBLookupCombo3Change(Sender: TObject);
begin
  fDMCadOrdemServico.cdsOrdemServicoSOLICITANTE_NOME.AsString := fDMCadOrdemServico.cdsClienteNOME.AsString;
  fDMCadOrdemServico.cdsOrdemServicoSOLICITANTE_FONE.AsString := '(' + fDMCadOrdemServico.cdsClienteDDDFONE1.AsString +
                                                                 ')' + fDMCadOrdemServico.cdsClienteTELEFONE1.AsString;
end;

procedure TfrmCadOrdemServico.RxDBLookupCombo4Enter(Sender: TObject);
begin
  fDMCadOrdemServico.cdsVendedor.IndexFieldNames := 'NOME';
end;

procedure TfrmCadOrdemServico.prc_Status;
begin
  Memo1.Lines.Clear;
  if fDMCadOrdemServico.cdsOrdemServicoSTATUS.AsString = '1' then
    Memo1.Lines.Text := 'Entrada'
  else
  if fDMCadOrdemServico.cdsOrdemServicoSTATUS.AsString = '2' then
    Memo1.Lines.Text := 'Orçado'
  else
  if fDMCadOrdemServico.cdsOrdemServicoSTATUS.AsString = '3' then
    Memo1.Lines.Text := 'Aguardando Aprovação'
  else
  if fDMCadOrdemServico.cdsOrdemServicoSTATUS.AsString = '4' then
    Memo1.Lines.Text := 'Liberado para Serviço'
  else
  if fDMCadOrdemServico.cdsOrdemServicoSTATUS.AsString = '5' then
    Memo1.Lines.Text := 'Aguardando Peças'
  else
  if fDMCadOrdemServico.cdsOrdemServicoSTATUS.AsString = '6' then
    Memo1.Lines.Text := 'Sem conserto'
  else
  if fDMCadOrdemServico.cdsOrdemServicoSTATUS.AsString = '8' then
    Memo1.Lines.Text := 'Pronto'
  else
  if fDMCadOrdemServico.cdsOrdemServicoSTATUS.AsString = '9' then
    Memo1.Lines.Text := 'Entregue';
end;

procedure TfrmCadOrdemServico.DBEdit6Exit(Sender: TObject);
begin
  prc_Calcular_DtEntrega;
end;

procedure TfrmCadOrdemServico.prc_Calcular_DtEntrega;
begin
  if (fDMCadOrdemServico.cdsOrdemServicoDTRECEBIMENTO.AsDateTime > 10) and (fDMCadOrdemServico.cdsOrdemServicoQTD_DIAS_ENT.AsInteger > 0) then
    fDMCadOrdemServico.cdsOrdemServicoDT_AGENDA.AsDateTime := fDMCadOrdemServico.cdsOrdemServicoDTRECEBIMENTO.AsDateTime +
                                                              fDMCadOrdemServico.cdsOrdemServicoQTD_DIAS_ENT.AsInteger;
end;

procedure TfrmCadOrdemServico.DBDateEdit4Exit(Sender: TObject);
begin
  prc_Calcular_DtEntrega;
end;

procedure TfrmCadOrdemServico.NxFlipProdEnter(Sender: TObject);
begin
  if fDMCadOrdemServico.cdsOrdemServico.State in [dsEdit,dsInsert] then
  begin
    if fDMCadOrdemServico.cdsOrdemServico_Itens.RecordCount <= 0 then
      fDMCadOrdemServico.cdsOrdemServico_Itens.Insert
    else
      fDMCadOrdemServico.cdsOrdemServico_Itens.Post;
  end;
end;

procedure TfrmCadOrdemServico.SpeedButton5Click(Sender: TObject);
begin
  fDMCadOrdemServico.cdsProcesso_Grupo.Close;
  fDMCadOrdemServico.cdsProcesso_Grupo.Open;
end;

procedure TfrmCadOrdemServico.DBEdit8Enter(Sender: TObject);
begin
  DBEdit8.ReadOnly := (fDMCadOrdemServico.cdsOrdemServico_ItensID_PRODUTO.AsInteger <= 0);
  DBEdit8.SelStart := (Length(DBEdit8.Text) + 1);
end;

procedure TfrmCadOrdemServico.btnGerar_AutomaticoClick(Sender: TObject);
var
  sds: TSQLDataSet;
begin
  if fDMCadOrdemServico.cdsOrdemServico_Proc.RecordCount > 0 then
  begin
    MessageDlg('*** Já existem processos gravados!', mtError, [mbOk], 0);
    exit;
  end;
  if fDMCadOrdemServico.cdsOrdemServico_ItensID_PROCESSO_GRUPO.AsInteger <= 0 then
  begin
    MessageDlg('*** Grupo de processos não informado!', mtError, [mbOk], 0);
    RxDBLookupCombo5.SetFocus;
    exit;
  end;
  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText   := 'SELECT I.ID, I.ITEM, I.ID_PROCESSO, P.QTD_DIAS_PRAZO, i.id_servico_os, '
                       + ' o.nome nome_servico, p.nome nome_processo, I.OBS '
                       + ' FROM processo_grupo_itens I '
                       + ' inner join PROCESSO P  ON I.id_processo = P.id '
                       + ' left join servico_os o on i.id_servico_os = o.id '
                       + ' where I.id = :id '
                       + ' order by i.ordem ';
    sds.ParamByName('ID').AsInteger := fDMCadOrdemServico.cdsOrdemServico_ItensID_PROCESSO_GRUPO.AsInteger;
    sds.Open;
    while not sds.Eof do
    begin
      fDMCadOrdemServico.prc_Inserir_Proc;
      fDMCadOrdemServico.cdsOrdemServico_ProcID_PROCESSO.AsInteger  := sds.FieldByName('ID_PROCESSO').AsInteger;
      fDMCadOrdemServico.cdsOrdemServico_ProcNOME_PROCESSO.AsString := sds.FieldByName('nome_processo').AsString;
      if sds.FieldByName('QTD_DIAS_PRAZO').AsInteger > 0 then
        fDMCadOrdemServico.cdsOrdemServico_ProcDTENTREGA.AsDateTime := fDMCadOrdemServico.cdsOrdemServicoDTRECEBIMENTO.AsDateTime
                                                                     + sds.FieldByName('QTD_DIAS_PRAZO').AsInteger;
      //fDMCadOrdemServico.cdsOrdemServico_ProcQTD: TIntegerField
      if sds.FieldByName('id_servico_os').AsInteger > 0 then
      begin
        fDMCadOrdemServico.cdsOrdemServico_ProcID_SERVICO_OS.AsInteger  := sds.FieldByName('id_servico_os').AsInteger;
        fDMCadOrdemServico.cdsOrdemServico_ProcNOME_SERVICO_OS.AsString := sds.FieldByName('nome_servico').AsString;
      end;
      if trim(sds.FieldByName('OBS').Value) <> '' then
      begin
        fDMCadOrdemServico.cdsOrdemServico_ProcOBS.Value       := sds.FieldByName('OBS').Value;
        fDMCadOrdemServico.cdsOrdemServico_ProcOBSAUX.AsString := sds.FieldByName('OBS').Value;
      end;
      fDMCadOrdemServico.cdsOrdemServico_ProcDTENTREGA.AsDateTime := fDMCadOrdemServico.cdsOrdemServicoDT_AGENDA.AsDateTime;

      fDMCadOrdemServico.cdsOrdemServico_Proc.Post;
      sds.Next;
    end;
  finally
    FreeAndNil(sds);
  end;
end;

procedure TfrmCadOrdemServico.btnInserir_ProcClick(Sender: TObject);
begin
  if fDMCadOrdemServico.cdsOrdemServicoID_CLIENTE.AsInteger <= 0 then
  begin
    MessageDlg('*** Cliente não foi informado!', mtInformation, [mbOk], 0);
    DBEdit11.SetFocus;
    exit;
  end;

  fDMCadOrdemServico.prc_Inserir_Proc;
  ffrmCadOrdemServico_Proc := TfrmCadOrdemServico_Proc.Create(self);
  ffrmCadOrdemServico_Proc.fDMCadOrdemServico := fDMCadOrdemServico;
  ffrmCadOrdemServico_Proc.ShowModal;
  FreeAndNil(ffrmCadOrdemServico_Proc);
end;

procedure TfrmCadOrdemServico.btnAlterar_ProcClick(Sender: TObject);
begin
  if fDMCadOrdemServico.cdsOrdemServico_ProcITEM_PROC.AsInteger <= 0 then
  begin
    MessageDlg('*** Não existe registro para alterar!', mtInformation, [mbOk], 0);
    exit;
  end;

  if not fnc_Verifica_Baixa_Proc(fDMCadOrdemServico.cdsOrdemServicoNUM_OS.AsInteger,fDMCadOrdemServico.cdsOrdemServico_ProcORDEM.AsInteger) then
    exit;

  fDMCadOrdemServico.cdsOrdemServico_Proc.Edit;
  ffrmCadOrdemServico_Proc := TfrmCadOrdemServico_Proc.Create(self);
  ffrmCadOrdemServico_Proc.fDMCadOrdemServico := fDMCadOrdemServico;
  ffrmCadOrdemServico_Proc.ShowModal;
  FreeAndNil(ffrmCadOrdemServico_Proc);
end;

procedure TfrmCadOrdemServico.btnExcluir_ProcClick(Sender: TObject);
begin
  if fDMCadOrdemServico.cdsOrdemServico_ProcITEM_PROC.AsInteger <= 0 then
  begin
    MessageDlg('*** Não existe registro para excluir!', mtInformation, [mbOk], 0);
    exit;
  end;

  if not fnc_Verifica_Baixa_Proc(fDMCadOrdemServico.cdsOrdemServicoNUM_OS.AsInteger,fDMCadOrdemServico.cdsOrdemServico_ProcORDEM.AsInteger) then
    exit;

  if MessageDlg('Deseja excluir o registro do Processo selecionado?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadOrdemServico.cdsOrdemServico_Proc.Delete;

  prc_Montar_Ordem;
end;

procedure TfrmCadOrdemServico.DBEdit7KeyDown(Sender: TObject;
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

procedure TfrmCadOrdemServico.DBEdit7Exit(Sender: TObject);
begin
  if trim(fDMCadOrdemServico.cdsOrdemServico_ItensREFERENCIA.AsString) <> '' then
  begin
    fDMCadOrdemServico.qProduto.Close;
    fDMCadOrdemServico.qProduto.ParamByName('REFERENCIA').AsString := fDMCadOrdemServico.cdsOrdemServico_ItensREFERENCIA.AsString;
    fDMCadOrdemServico.qProduto.Open;
    if fDMCadOrdemServico.qProdutoID.AsInteger <= 0 then
    begin
      MessageDlg('*** Referência não cadastrada!', mtInformation, [mbOk], 0);
      DBEdit7.SetFocus;
      exit;
    end;
    fDMCadOrdemServico.cdsOrdemServico_ItensNOME_PRODUTO.AsString := fDMCadOrdemServico.qProdutoNOME.AsString;
  end
  else
  begin
    fDMCadOrdemServico.cdsOrdemServico_ItensNOME_PRODUTO.AsString := '';
    fDMCadOrdemServico.cdsOrdemServico_ItensID_PRODUTO.Clear;
  end;
end;

procedure TfrmCadOrdemServico.btnInserir_MatClick(Sender: TObject);
begin
  if fDMCadOrdemServico.cdsOrdemServicoID_CLIENTE.AsInteger <= 0 then
  begin
    MessageDlg('*** Cliente não foi informado!', mtInformation, [mbOk], 0);
    DBEdit11.SetFocus;
    exit;
  end;

  fDMCadOrdemServico.prc_Inserir_Mat;
  ffrmCadOrdemServico_Mat := TfrmCadOrdemServico_Mat.Create(self);
  ffrmCadOrdemServico_Mat.fDMCadOrdemServico := fDMCadOrdemServico;
  ffrmCadOrdemServico_Mat.ShowModal;
  FreeAndNil(ffrmCadOrdemServico_Mat);
end;

procedure TfrmCadOrdemServico.btnAlterar_MatClick(Sender: TObject);
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

procedure TfrmCadOrdemServico.btnExcluir_MatClick(Sender: TObject);
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

procedure TfrmCadOrdemServico.RxDBLookupCombo5Enter(Sender: TObject);
begin
  RxDBLookupCombo5.ReadOnly := (fDMCadOrdemServico.cdsOrdemServico_Proc.RecordCount > 0);
end;

procedure TfrmCadOrdemServico.btnInserir_TercClick(Sender: TObject);
begin
  if fDMCadOrdemServico.cdsOrdemServicoID_CLIENTE.AsInteger <= 0 then
  begin
    MessageDlg('*** Cliente não foi informado!', mtInformation, [mbOk], 0);
    DBEdit11.SetFocus;
    exit;
  end;

  fDMCadOrdemServico.prc_Inserir_Terc;
  ffrmCadOrdemServico_Terc := TfrmCadOrdemServico_Terc.Create(self);
  ffrmCadOrdemServico_Terc.fDMCadOrdemServico := fDMCadOrdemServico;
  ffrmCadOrdemServico_Terc.ShowModal;
  FreeAndNil(ffrmCadOrdemServico_Terc);
end;

procedure TfrmCadOrdemServico.btnAlterar_TercClick(Sender: TObject);
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

procedure TfrmCadOrdemServico.btnExcluir_TercClick(Sender: TObject);
begin
  if fDMCadOrdemServico.cdsOrdemServico_TercITEM_TERC.AsInteger <= 0 then
  begin
    MessageDlg('*** Não existe registro para excluir!', mtInformation, [mbOk], 0);
    exit;
  end;
  if MessageDlg('Deseja excluir o registro de Terceiro selecionado?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
  fDMCadOrdemServico.cdsOrdemServico_Terc.Delete;
end;

procedure TfrmCadOrdemServico.btnImprimirClick(Sender: TObject);
var
  vArq: String;
  fDMImpOrdemServico: TDMImpOrdemServico;
begin
  fDMImpOrdemServico := TDMImpOrdemServico.Create(Self);

  fDMImpOrdemServico.qFilial.Close;
  fDMImpOrdemServico.qFilial.ParamByName('ID_FILIAL').AsInteger := fDMCadOrdemServico.cdsOrdemServico_ConsultaFILIAL.AsInteger;
  fDMImpOrdemServico.qFilial.Open;

  fDMImpOrdemServico.cdsOSImp.Close;
  fDMImpOrdemServico.sdsOSImp.ParamByName('ID').AsInteger := fDMCadOrdemServico.cdsOrdemServico_ConsultaID.AsInteger;
  fDMImpOrdemServico.cdsOSImp.Open;

  fDMImpOrdemServico.cdsOsImp_Proc.Close;
  fDMImpOrdemServico.sdsOsImp_Proc.ParamByName('ID').AsInteger := fDMCadOrdemServico.cdsOrdemServico_ConsultaID.AsInteger;
  fDMImpOrdemServico.cdsOsImp_Proc.Open;

  fDMImpOrdemServico.cdsOSImp_Mat.Close;
  fDMImpOrdemServico.sdsOSImp_Mat.ParamByName('ID').AsInteger := fDMCadOrdemServico.cdsOrdemServico_ConsultaID.AsInteger;
  fDMImpOrdemServico.cdsOSImp_Mat.Open;

  fDMImpOrdemServico.qRelatorios.Close;
  fDMImpOrdemServico.qRelatorios.ParamByName('F1').AsInteger := fDMCadOrdemServico.cdsOrdemServico_ConsultaFILIAL.AsInteger;
  fDMImpOrdemServico.qRelatorios.ParamByName('T1').AsInteger := 4;
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
  fDMImpOrdemServico.frxReport1.ShowReport;
  FreeAndNil(fDMImpOrdemServico);
end;

procedure TfrmCadOrdemServico.SMDBGrid2GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if (fDMCadOrdemServico.cdsOrdemServico_ProcDTCONCLUIDO.AsDateTime > 10) and (StrToFloat(FormatFloat('0.00',fDMCadOrdemServico.cdsOrdemServico_ProcQTD_HORAS.AsFloat)) <= 0) then
  begin
    Background  := $0000009D;
    AFont.Color := clWhite;
  end
  else
  if fDMCadOrdemServico.cdsOrdemServico_ProcDTCONCLUIDO.AsDateTime > 10 then
    Background := clMoneyGreen
  else
  if fDMCadOrdemServico.cdsOrdemServico_ProcSTATUS.AsString = 'P' then
    Background := clYellow
  else
  if fDMCadOrdemServico.cdsOrdemServico_ProcDTENTRADA.AsDateTime > 10 then
    Background := clAqua;
end;

procedure TfrmCadOrdemServico.N1Click(Sender: TObject);
var
 Reg: TBookMark;
 vAux: Integer;
begin
  if not(fDMCadOrdemServico.cdsOrdemServico.State in [dsEdit,dsInsert]) then
  begin
    MessageDlg('*** Ordem de Serviço não está em modo de Alteração ou Inclusão!', mtInformation, [mbOk], 0);
    exit;
  end;
  if fDMCadOrdemServico.cdsOrdemServico_ProcORDEM.AsInteger <= 1 then
    exit;
  if fnc_Existe_Baixa(fDMCadOrdemServico.cdsOrdemServico_ProcORDEM.AsInteger - 1) then
    exit;

  LockWindowUpDate(SMDBGrid2.Handle);
  Reg := fDMCadOrdemServico.cdsOrdemServico_Proc.GetBookMark;
  fDMCadOrdemServico.cdsOrdemServico_Proc.Prior;

  fDMCadOrdemServico.cdsOrdemServico_Proc.Edit;
  fDMCadOrdemServico.cdsOrdemServico_ProcORDEM.AsInteger := fDMCadOrdemServico.cdsOrdemServico_ProcORDEM.AsInteger + 1;
  fDMCadOrdemServico.cdsOrdemServico_Proc.Post;

  fDMCadOrdemServico.cdsOrdemServico_Proc.GotoBookmark(Reg);

  fDMCadOrdemServico.cdsOrdemServico_Proc.Edit;
  fDMCadOrdemServico.cdsOrdemServico_ProcORDEM.AsInteger := fDMCadOrdemServico.cdsOrdemServico_ProcORDEM.AsInteger - 1;
  fDMCadOrdemServico.cdsOrdemServico_Proc.Post;

  fDMCadOrdemServico.cdsOrdemServico_Proc.FreeBookmark(Reg);
  LockWindowUpDate(0);    
end;

procedure TfrmCadOrdemServico.N2Click(Sender: TObject);
var
 Reg: TBookMark;
begin
  if not(fDMCadOrdemServico.cdsOrdemServico.State in [dsEdit,dsInsert]) then
  begin
    MessageDlg('*** Ordem de Serviço não está em modo de Alteração ou Inclusão!', mtInformation, [mbOk], 0);
    exit;
  end;
  if fDMCadOrdemServico.cdsOrdemServico_ProcORDEM.AsInteger = fDMCadOrdemServico.cdsOrdemServico_Proc.RecordCount then
    exit;
  if fnc_Existe_Baixa(fDMCadOrdemServico.cdsOrdemServico_ProcORDEM.AsInteger) then
    exit;

  LockWindowUpDate(SMDBGrid2.Handle);
  Reg := fDMCadOrdemServico.cdsOrdemServico_Proc.GetBookMark;
  fDMCadOrdemServico.cdsOrdemServico_Proc.Next;

  fDMCadOrdemServico.cdsOrdemServico_Proc.Edit;
  fDMCadOrdemServico.cdsOrdemServico_ProcORDEM.AsInteger := fDMCadOrdemServico.cdsOrdemServico_ProcORDEM.AsInteger - 1;
  fDMCadOrdemServico.cdsOrdemServico_Proc.Post;

  fDMCadOrdemServico.cdsOrdemServico_Proc.GotoBookmark(Reg);

  fDMCadOrdemServico.cdsOrdemServico_Proc.Edit;
  fDMCadOrdemServico.cdsOrdemServico_ProcORDEM.AsInteger := fDMCadOrdemServico.cdsOrdemServico_ProcORDEM.AsInteger + 1;
  fDMCadOrdemServico.cdsOrdemServico_Proc.Post;

  fDMCadOrdemServico.cdsOrdemServico_Proc.FreeBookmark(Reg);
  LockWindowUpDate(0);
end;

function TfrmCadOrdemServico.fnc_Existe_Baixa(Ordem: Integer): Boolean;
begin
  Result := False;
  fDMCadOrdemServico.qVerifica_Baixa.Close;
  fDMCadOrdemServico.qVerifica_Baixa.ParamByName('NUM_OS').AsInteger := fDMCadOrdemServico.cdsOrdemServicoNUM_OS.AsInteger;
  fDMCadOrdemServico.qVerifica_Baixa.ParamByName('ORDEM').AsInteger  := Ordem;
  fDMCadOrdemServico.qVerifica_Baixa.Open;
  if fDMCadOrdemServico.qVerifica_BaixaCONTADOR.AsInteger > 0 then
  begin
    Result := True;
    MessageDlg('*** Processo não pode ser alterado pois já foi baixado!', mtInformation, [mbOk], 0);
  end;
end;

procedure TfrmCadOrdemServico.RzPageControl2Change(Sender: TObject);
begin
  if RzPageControl2.ActivePage = TS_Realizado then
    btnConsultar_RealizadoClick(Sender)
  else
  if RzPageControl2.ActivePage = TS_Pausa then
    btnConsultar_PausaClick(Sender)
  else
  if RzPageControl2.ActivePage = TS_Custo then
    btnCalcular_CustoClick(Sender)
  else
  if RzPageControl2.ActivePage = TS_Encerramento then
    prc_Abrir_cdsOrdemServico_Enc;
end;

procedure TfrmCadOrdemServico.btnConsultar_RealizadoClick(Sender: TObject);
begin
  fDMCadOrdemServico.cdsCons_Baixa.Close;
  fDMCadOrdemServico.sdsCons_Baixa.ParamByName('ID_OS').AsInteger := fDMCadOrdemServico.cdsOrdemServicoID.AsInteger;
  fDMCadOrdemServico.cdsCons_Baixa.Open;
end;

procedure TfrmCadOrdemServico.btnConsultar_PausaClick(Sender: TObject);
begin
  fDMCadOrdemServico.cdsCons_Pausa.Close;
  fDMCadOrdemServico.sdsCons_Pausa.ParamByName('ID_OS').AsInteger := fDMCadOrdemServico.cdsOrdemServicoID.AsInteger;
  fDMCadOrdemServico.cdsCons_Pausa.Open;
end;

procedure TfrmCadOrdemServico.SMDBGrid5GetCellParams(Sender: TObject;
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

procedure TfrmCadOrdemServico.prc_VerBaixas;
begin
  if (fDMCadOrdemServico.qVerBaixaOSCONT_BAIXAS.AsInteger > 0) or (fDMCadOrdemServico.qVerBaixaOSCONT_MAT.AsInteger > 0) then
    pnlCliente.Enabled := False
  else
    pnlCliente.Enabled := True;
end;

function TfrmCadOrdemServico.fnc_Verifica_Baixa_Proc(Num_OS,
  Ordem: Integer): Boolean;
begin
  Result := False;
  fDMCadOrdemServico.qVerifica_Baixa.Close;
  fDMCadOrdemServico.qVerifica_Baixa.ParamByName('NUM_OS').AsInteger := Num_OS;
  fDMCadOrdemServico.qVerifica_Baixa.ParamByName('ORDEM').AsInteger  := Ordem;
  fDMCadOrdemServico.qVerifica_Baixa.Open;
  if fDMCadOrdemServico.qVerifica_BaixaCONTADOR.AsInteger > 0 then
  begin
    MessageDlg('*** Processo já possui baixa!', mtInformation, [mbOk], 0);
    exit;
  end;
  Result := True;
end;

procedure TfrmCadOrdemServico.SpeedButton2Click(Sender: TObject);
var
  ffrmCadProduto: TfrmCadProduto;
begin
  ffrmCadProduto := TfrmCadProduto.Create(self);
  ffrmCadProduto.ShowModal;
  FreeAndNil(ffrmCadProduto);
end;

procedure TfrmCadOrdemServico.btnCalcular_CustoClick(Sender: TObject);
var
  vVlrProcesso: Real;
  vVlrProcesso_Ret: Real;
  vVlrMaterial: Real;
  vVlrMaterial_Prev: Real;
  vVlrTerceiro: Real;
begin
  vVlrProcesso := 0;
  vVlrProcesso_Ret := 0;
  vVlrMaterial := 0;
  vVlrMaterial_Prev := 0;
  vVlrTerceiro := 0;
  btnConsultar_RealizadoClick(Sender);
  fDMCadOrdemServico.cdsCons_Baixa.First;
  while not fDMCadOrdemServico.cdsCons_Baixa.Eof do
  begin
    vVlrProcesso := StrToFloat(FormatFloat('0.00',vVlrProcesso + fDMCadOrdemServico.cdsCons_BaixaVLR_CUSTO.AsFloat));
    if fDMCadOrdemServico.cdsCons_BaixaRETRABALHO.AsString = 'S' then
      vVlrProcesso_Ret := StrToFloat(FormatFloat('0.00',vVlrProcesso_Ret + fDMCadOrdemServico.cdsCons_BaixaVLR_CUSTO.AsFloat));
    fDMCadOrdemServico.cdsCons_Baixa.Next;
  end;
  fDMCadOrdemServico.cdsOrdemServico_Mat.First;
  while not fDMCadOrdemServico.cdsOrdemServico_Mat.Eof do
  begin
    fDMCadOrdemServico.qProduto.Close;
    fDMCadOrdemServico.qProduto.ParamByName('ID').AsInteger := fDMCadOrdemServico.cdsOrdemServico_MatID_PRODUTO.AsInteger;
    fDMCadOrdemServico.qProduto.Open;
    vVlrMaterial := StrToFloat(FormatFloat('0.00',vVlrMaterial + (fDMCadOrdemServico.qProdutoPRECO_CUSTO.AsFloat *
                    fDMCadOrdemServico.cdsOrdemServico_MatQTD_ESTOQUE.AsFloat)));
    if fDMCadOrdemServico.cdsOrdemServico_MatTIPO.AsString <> 'N' then
      vVlrMaterial_Prev := StrToFloat(FormatFloat('0.00',vVlrMaterial_Prev +
                          (fDMCadOrdemServico.qProdutoPRECO_CUSTO.AsFloat * fDMCadOrdemServico.cdsOrdemServico_MatQTD.AsFloat)));
    fDMCadOrdemServico.cdsOrdemServico_Mat.Next;
  end;
  fDMCadOrdemServico.cdsOrdemServico_Terc.First;
  while not fDMCadOrdemServico.cdsOrdemServico_Terc.Eof do
  begin
    vVlrTerceiro := StrToFloat(FormatFloat('0.00',vVlrTerceiro + fDMCadOrdemServico.cdsOrdemServico_TercVALOR.AsFloat));
    fDMCadOrdemServico.cdsOrdemServico_Terc.Next;
  end;

  CurrencyEdit2.Value := vVlrProcesso;
  CurrencyEdit7.Value := vVlrProcesso_Ret;
  CurrencyEdit3.Value := vVlrMaterial;
  CurrencyEdit4.Value := vVlrMaterial_Prev;
  CurrencyEdit5.Value := vVlrTerceiro;

  CurrencyEdit6.Value := vVlrProcesso + vVlrMaterial + vVlrTerceiro;
end;

procedure TfrmCadOrdemServico.SMDBGrid7GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if (StrToFloat(FormatFloat('0.00',fDMCadOrdemServico.cdsCons_BaixaTOTAL_HORAS.AsFloat)) <= 0) and (fDMCadOrdemServico.cdsCons_BaixaDTSAIDA.AsDateTime > 10) then
  begin
    Background  := $0000009D;
    AFont.Color := clWhite;
  end
  else
  if (fDMCadOrdemServico.cdsCons_BaixaDTENTRADA.AsDateTime > 10) and (fDMCadOrdemServico.cdsCons_BaixaDTSAIDA.AsDateTime <= 10) then
    Background  := clAqua;
end;

procedure TfrmCadOrdemServico.btnAlterar_RealizadoClick(Sender: TObject);
var
  ffrmAjustar_OS: TfrmAjustar_OS;
begin
  //if (StrToFloat(FormatFloat('0.00',fDMCadOrdemServico.cdsCons_BaixaTOTAL_HORAS.AsFloat)) > 0) or  (fDMCadOrdemServico.cdsCons_BaixaDTSAIDA.AsDateTime <= 10) then
  if  (fDMCadOrdemServico.cdsCons_BaixaDTSAIDA.AsDateTime <= 10) then
    exit;

  if fDMCadOrdemServico.cdsOrdemServico.State in [dsEdit,dsInsert] then
  begin
    MessageDlg('*** OS não pode estar em modo de edição ou inclusão!', mtInformation, [mbOk], 0);
    exit;
  end;

  ffrmAjustar_OS := TfrmAjustar_OS.Create(self);
  ffrmAjustar_OS.vNum_OS := fDMCadOrdemServico.cdsCons_BaixaNUM_OS.AsInteger;
  ffrmAjustar_OS.vItem_Proc := fDMCadOrdemServico.cdsCons_BaixaITEM_PROC.AsInteger;
  ffrmAjustar_OS.ShowModal;
  FreeAndNil(ffrmAjustar_OS);

  btnConsultar_RealizadoClick(Sender);
  fDMCadOrdemServico.prc_Localizar(fDMCadOrdemServico.cdsOrdemServicoID.AsInteger);
end;

procedure TfrmCadOrdemServico.prc_Montar_Ordem;
var
  vItemAux: Integer;
  vOrdem: Integer;
begin
  vItemAux := fDMCadOrdemServico.cdsOrdemServico_ProcITEM_PROC.AsInteger;
  vOrdem   := 0;
  SMDBGrid2.DisableScroll;
  fDMCadOrdemServico.cdsOrdemServico_Proc.First;
  while not fDMCadOrdemServico.cdsOrdemServico_Proc.Eof do
  begin
    vOrdem := vOrdem + 1;
    fDMCadOrdemServico.cdsOrdemServico_Proc.Edit;
    fDMCadOrdemServico.cdsOrdemServico_ProcORDEM.AsInteger := vOrdem;
    fDMCadOrdemServico.cdsOrdemServico_Proc.Post;
    fDMCadOrdemServico.cdsOrdemServico_Proc.Next;
  end;
  fDMCadOrdemServico.cdsOrdemServico_Proc.Locate('ITEM_PROC',vItemAux,[loCaseInsensitive]);
  SMDBGrid2.EnableScroll;
end;

procedure TfrmCadOrdemServico.btnEncerrar_OSClick(Sender: TObject);
var
  ffrmCadOrdemServico_Enc: TfrmCadOrdemServico_Enc;
  vIDAux: Integer;
begin
  if not(fDMCadOrdemServico.cdsOrdemServico_Consulta.Active) or (fDMCadOrdemServico.cdsOrdemServico_ConsultaID.AsInteger <= 0) then
  begin
    MessageDlg('*** Não existe OS selecionada!', mtInformation, [mbOk], 0);
    exit;
  end;

  //if not fnc_Encerrar(fDMCadOrdemServico.cdsOrdemServico_ConsultaID.AsInteger) then
  //begin
  //  MessageDlg('*** Processos não encerrados!' , mtInformation, [mbOk], 0);
  //  exit;
  //end;

  prc_Posiciona_OS;

  if fDMCadOrdemServico.cdsOrdemServicoID.AsInteger <= 0 then
  begin
    MessageDlg('*** OS não encontrada na base!', mtInformation, [mbOk], 0);
    exit;
  end;

  prc_Abrir_cdsOrdemServico_Enc;

  if fDMCadOrdemServico.cdsOrdemServico_EncID.AsInteger <= 0 then
  begin
    fDMCadOrdemServico.cdsOrdemServico_Enc.Insert;
    fDMCadOrdemServico.cdsOrdemServico_EncID.AsInteger     := fDMCadOrdemServico.cdsOrdemServicoID.AsInteger;
    fDMCadOrdemServico.cdsOrdemServico_EncUSUARIO.AsString := vUsuario;
    fDMCadOrdemServico.cdsOrdemServico_EncDTMATERIAL.Clear;
    fDMCadOrdemServico.cdsOrdemServico_EncDTPROCESSO.Clear;
  end
  else
    fDMCadOrdemServico.cdsOrdemServico_Enc.Edit;

  ffrmCadOrdemServico_Enc := TfrmCadOrdemServico_Enc.Create(self);
  ffrmCadOrdemServico_Enc.fDMCadOrdemServico := fDMCadOrdemServico;
  ffrmCadOrdemServico_Enc.ShowModal;
  FreeAndNil(ffrmCadOrdemServico_Enc);

  vIDAux := fDMCadOrdemServico.cdsOrdemServico_ConsultaID.AsInteger;

  prc_Consultar(0);

  fDMCadOrdemServico.cdsOrdemServico_Consulta.Locate('ID',vIDAux ,[loCaseInsensitive]);
end;

procedure TfrmCadOrdemServico.prc_Abrir_cdsOrdemServico_Enc;
begin
  fDMCadOrdemServico.cdsOrdemServico_Enc.Close;
  fDMCadOrdemServico.sdsOrdemServico_Enc.ParamByName('ID').AsInteger := fDMCadOrdemServico.cdsOrdemServicoID.AsInteger;
  fDMCadOrdemServico.cdsOrdemServico_Enc.Open;
end;

procedure TfrmCadOrdemServico.btnRetrabalhoClick(Sender: TObject);
var
  vID_Processo: Integer;
  vDTEntrega: TDateTime;
  vObs: WideString;
  vID_OS_Servico: Integer;
begin
  if fDMCadOrdemServico.cdsOrdemServico_ProcITEM_PROC.AsInteger <= 0 then
  begin
    MessageDlg('*** Não existe registro para Retrabalho!', mtInformation, [mbOk], 0);
    exit;
  end;
  if fDMCadOrdemServico.cdsOrdemServico_ProcDTCONCLUIDO.AsDateTime <= 10 then
  begin
    MessageDlg('*** Processo não finalizado! Não pode ser feito um retrabalho!', mtInformation, [mbOk], 0);
    exit;
  end;

  if MessageDlg('Deseja incluir o Processo ' + fDMCadOrdemServico.cdsOrdemServico_ProcNOME_PROCESSO.AsString + '  para RETRABALHO? ' ,mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  vID_Processo   := fDMCadOrdemServico.cdsOrdemServico_ProcID_PROCESSO.AsInteger;
  vDTEntrega     := fDMCadOrdemServico.cdsOrdemServico_ProcDTENTREGA.AsDateTime;
  vObs           := fDMCadOrdemServico.cdsOrdemServico_ProcOBS.Value;
  vID_OS_Servico := fDMCadOrdemServico.cdsOrdemServico_ProcID_SERVICO_OS.AsInteger;

  fDMCadOrdemServico.prc_Inserir_Proc;

  fDMCadOrdemServico.cdsOrdemServico_ProcRETRABALHO.AsString     := 'S';
  fDMCadOrdemServico.cdsOrdemServico_ProcID_PROCESSO.AsInteger   := vID_Processo;
  fDMCadOrdemServico.cdsOrdemServico_ProcDTENTREGA.AsDateTime    := vDTEntrega;
  fDMCadOrdemServico.cdsOrdemServico_ProcOBS.Value               := vObs;
  fDMCadOrdemServico.cdsOrdemServico_ProcID_SERVICO_OS.AsInteger := vID_OS_Servico;

  ffrmCadOrdemServico_Proc := TfrmCadOrdemServico_Proc.Create(self);
  ffrmCadOrdemServico_Proc.fDMCadOrdemServico := fDMCadOrdemServico;
  ffrmCadOrdemServico_Proc.ShowModal;
  FreeAndNil(ffrmCadOrdemServico_Proc);
end;

procedure TfrmCadOrdemServico.DBEdit11KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
  begin
    vNum_Orc_Sel := fDMCadOrdemServico.cdsOrdemServicoNUM_ORCAMENTO.AsInteger;
    frmSel_Orc := TfrmSel_Orc.Create(Self);
    frmSel_Orc.ShowModal;
    if vNum_Orc_Sel > 0 then
      fDMCadOrdemServico.cdsOrdemServicoNUM_ORCAMENTO.AsInteger := vNum_Orc_Sel;
  end;
end;

procedure TfrmCadOrdemServico.NxButton1Click(Sender: TObject);
var
  fDMCopiarOrc: TDMCopiarOrc;
  x: integer;
begin
  if fDMCadOrdemServico.cdsOrdemServicoNUM_ORCAMENTO.AsInteger <= 0 then
    exit;
  if fDMCadOrdemServico.cdsOrdemServico_ItensID_PRODUTO.AsInteger > 0 then
  begin
    MessageDlg('*** OS já possui produto informado!', mtInformation, [mbOk], 0);
    exit;
  end;
  if MessageDlg('Deseja copiar o Orçamento ' + fDMCadOrdemServico.cdsOrdemServicoNUM_ORCAMENTO.AsString + ' ?' ,mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCopiarOrc := TDMCopiarOrc.Create(Self);
  fDMCopiarOrc.cdsOrc.Close;
  fDMCopiarOrc.sdsOrc.ParamByName('NUM_ORCAMENTO').AsInteger := fDMCadOrdemServico.cdsOrdemServicoNUM_ORCAMENTO.AsInteger;
  fDMCopiarOrc.cdsOrc.Open;

  if fDMCopiarOrc.cdsOrc.IsEmpty then
  begin
    MessageDlg('*** Orçamento não encontrado!', mtInformation, [mbOk], 0);
    exit;
  end;
  if not (fDMCadOrdemServico.cdsOrdemServico_Itens.Active) then
    fDMCadOrdemServico.cdsOrdemServico_Itens.Open;

  //Copia os itens
  if fDMCadOrdemServico.cdsOrdemServico_Itens.IsEmpty then
  begin
    fDMCadOrdemServico.cdsOrdemServico_Itens.Insert;
    for x := 0 to (fDMCopiarOrc.cdsOrc_Itens.FieldCount - 1) do
    begin
      if (fDMCopiarOrc.cdsOrc_Itens.Fields[x].FieldName <> 'ID') and (fDMCopiarOrc.cdsOrc_Itens.Fields[x].FieldName <> 'ITEM') and
         (fDMCopiarOrc.cdsOrc_Itens.Fields[x].FieldName <> 'sdsOrc_Setor') and (fDMCopiarOrc.cdsOrc_Itens.Fields[x].FieldName <> 'sdsOrc_Terc') and
         (fDMCopiarOrc.cdsOrc_Itens.Fields[x].FieldName <> 'sdsOrc_Mat') then
        fDMCadOrdemServico.cdsOrdemServico_Itens.FieldByName(fDMCopiarOrc.cdsOrc_Itens.Fields[x].FieldName).AsVariant := fDMCopiarOrc.cdsOrc_Itens.Fields[x].Value;
    end;
    fDMCadOrdemServico.cdsOrdemServico_Itens.Post;
  end
  else
  begin
    fDMCadOrdemServico.cdsOrdemServico_Itens.Edit;
    for x := 0 to (fDMCopiarOrc.cdsOrc_Itens.FieldCount - 1) do
    begin
      if (fDMCopiarOrc.cdsOrc_Itens.Fields[x].FieldName <> 'ID') and (fDMCopiarOrc.cdsOrc_Itens.Fields[x].FieldName <> 'ITEM') and
         (fDMCopiarOrc.cdsOrc_Itens.Fields[x].FieldName <> 'sdsOrc_Setor') and (fDMCopiarOrc.cdsOrc_Itens.Fields[x].FieldName <> 'sdsOrc_Terc') and
         (fDMCopiarOrc.cdsOrc_Itens.Fields[x].FieldName <> 'sdsOrc_Mat') then
        fDMCadOrdemServico.cdsOrdemServico_Itens.FieldByName(fDMCopiarOrc.cdsOrc_Itens.Fields[x].FieldName).AsVariant := fDMCopiarOrc.cdsOrc_Itens.Fields[x].Value;
    end;
    fDMCadOrdemServico.cdsOrdemServico_Itens.Post;
  end;

  //copia materiais
  if (fDMCadOrdemServico.cdsOrdemServico_Mat.IsEmpty) then
  begin
    while not fDMCopiarOrc.cdsOrc_Mat.Eof do
    begin
      fDMCadOrdemServico.prc_Inserir_Mat;
      for x := 0 to (fDMCopiarOrc.cdsOrc_Mat.FieldCount - 1) do
      begin
        if (fDMCopiarOrc.cdsOrc_Mat.Fields[x].FieldName <> 'ID') and (fDMCopiarOrc.cdsOrc_Mat.Fields[x].FieldName <> 'ITEM') and
           (fDMCopiarOrc.cdsOrc_Mat.Fields[x].FieldName <> 'sdsOrc_Setor') and (fDMCopiarOrc.cdsOrc_Mat.Fields[x].FieldName <> 'sdsOrc_Terc') and
           (fDMCopiarOrc.cdsOrc_Mat.Fields[x].FieldName <> 'sdsOrc_Mat') then
          fDMCadOrdemServico.cdsOrdemServico_Mat.FieldByName(fDMCopiarOrc.cdsOrc_Mat.Fields[x].FieldName).AsVariant := fDMCopiarOrc.cdsOrc_Mat.Fields[x].Value;
      end;
      fDMCadOrdemServico.cdsOrdemServico_Mat.Post;
      fDMCopiarOrc.cdsOrc_Mat.Next;
    end;
  end;

  //copia terceiros
  if (fDMCadOrdemServico.cdsOrdemServico_Terc.IsEmpty) then
  begin
    while not fDMCopiarOrc.cdsOrc_Terc.Eof do
    begin
        fDMCadOrdemServico.prc_Inserir_Terc;
      for x := 0 to (fDMCopiarOrc.cdsOrc_Terc.FieldCount - 1) do
      begin
        if (fDMCopiarOrc.cdsOrc_Terc.Fields[x].FieldName <> 'ID') and (fDMCopiarOrc.cdsOrc_Terc.Fields[x].FieldName <> 'ITEM') and
           (fDMCopiarOrc.cdsOrc_Terc.Fields[x].FieldName <> 'sdsOrc_Setor') and (fDMCopiarOrc.cdsOrc_Terc.Fields[x].FieldName <> 'sdsOrc_Terc') and
           (fDMCopiarOrc.cdsOrc_Terc.Fields[x].FieldName <> 'sdsOrc_Mat') then
          fDMCadOrdemServico.cdsOrdemServico_Terc.FieldByName(fDMCopiarOrc.cdsOrc_Terc.Fields[x].FieldName).AsVariant := fDMCopiarOrc.cdsOrc_Terc.Fields[x].Value;
      end;
      fDMCadOrdemServico.cdsOrdemServico_Terc.Post;
      fDMCopiarOrc.cdsOrc_Terc.Next;
    end;
  end;

  //copia processos
  if (fDMCadOrdemServico.cdsOrdemServico_Proc.IsEmpty) then
  begin
    while not fDMCopiarOrc.cdsOrc_Setor.Eof do
    begin
      while not fDMCopiarOrc.cdsOrc_Setor_Proc.Eof do
      begin
        fDMCadOrdemServico.prc_Inserir_Proc;
        fDMCadOrdemServico.cdsOrdemServico_ProcID_PROCESSO.AsInteger  := fDMCopiarOrc.cdsOrc_Setor_ProcID_PROCESSO.AsInteger;
        fDMCadOrdemServico.cdsOrdemServico_ProcNOME_PROCESSO.AsString := fDMCopiarOrc.cdsOrc_Setor_ProcDESCRICAO.AsString;
        fDMCadOrdemServico.cdsOrdemServico_ProcQTD_HORAS.AsFloat := fDMCopiarOrc.cdsOrc_Setor_ProcTOTAL_HORA.AsFloat;
        fDMCadOrdemServico.cdsOrdemServico_ProcID_PROCESSO.AsInteger  := fDMCopiarOrc.cdsOrc_Setor_ProcID_PROCESSO.AsInteger;
        fDMCadOrdemServico.cdsOrdemServico_Proc.Post;
        fDMCopiarOrc.cdsOrc_Setor_Proc.Next;
      end;
      fDMCopiarOrc.cdsOrc_Setor.Next;
    end;
  end;

  FreeAndNil(fDMCopiarOrc);
end;

procedure TfrmCadOrdemServico.RzGroupBox2Enter(Sender: TObject);
begin
  DBEdit9.ReadOnly := (fDMCadOrdemServico.cdsOrdemServico_ItensQTD_FATURADO.AsInteger > 0);
  vQtd_Ant         := fDMCadOrdemServico.cdsOrdemServico_ItensQTD.AsInteger;
end;

function TfrmCadOrdemServico.fnc_Encerrar(ID: Integer): Boolean;
var
  sds: TSQLDataSet;
begin
  Result := False;
  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText   := 'SELECT O.ID, (SELECT COUNT(1) FROM ordemservico_proc P WHERE P.ID = O.ID) QTD_PROCESSO, '
                       + ' (SELECT COUNT(1) FROM ordemservico_proc P WHERE P.ID = O.ID AND P.qtd_horas <= 0) QTD_PENDENTE '
                       + ' FROM ORDEMSERVICO O '
                       + ' WHERE O.ID = :ID ';
    sds.ParamByName('ID').AsInteger := ID;
    sds.Open;
    if (sds.FieldByName('QTD_PROCESSO').AsInteger <= 0) or (sds.FieldByName('QTD_PENDENTE').AsInteger > 0) then
      Result := False
    else
      Result := True;
  finally
    FreeAndNil(sds);
  end;
end;

procedure TfrmCadOrdemServico.btnLiberarClick(Sender: TObject);
var
  ffrmCadOrdemServico_Lib: TfrmCadOrdemServico_Lib;
begin
  if not(fDMCadOrdemServico.cdsOrdemServico_Consulta.Active) or (fDMCadOrdemServico.cdsOrdemServico_ConsultaID.AsInteger <= 0) then
  begin
    MessageDlg('*** Não existe OS selecionada!', mtInformation, [mbOk], 0);
    exit;
  end;

  prc_Posiciona_OS;

  if fDMCadOrdemServico.cdsOrdemServicoID.AsInteger <= 0 then
  begin
    MessageDlg('*** OS não encontrada na base!', mtInformation, [mbOk], 0);
    exit;
  end;

  ffrmCadOrdemServico_Lib := TfrmCadOrdemServico_Lib.Create(self);
  ffrmCadOrdemServico_Lib.fDMCadOrdemServico := fDMCadOrdemServico;
  ffrmCadOrdemServico_Lib.ShowModal;
  FreeAndNil(ffrmCadOrdemServico_Lib);
end;

procedure TfrmCadOrdemServico.btBuscaProdutoClick(Sender: TObject);
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

procedure TfrmCadOrdemServico.DBEdit21KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
    btBuscaProduto.Click;
end;

procedure TfrmCadOrdemServico.DBEdit17KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
    btBuscaProduto.Click;
end;

procedure TfrmCadOrdemServico.DBEdit21Exit(Sender: TObject);
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

end.
