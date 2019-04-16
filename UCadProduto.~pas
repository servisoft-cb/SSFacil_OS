unit UCadProduto;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadProduto, DB, Menus, 
  UCadUnidade, UCadNCM, UCBase, StdCtrls, DBCtrls, RxDBComb, RxLookup, RXDBCtrl, ToolEdit, CurrEdit, ExtCtrls, RzTabs, dbXPress,
  RzPanel, Mask, NxCollection, DBVGrids, DBGrids, SqlExpr, DBAdvGrid, AdvDBLookupComboBox, ComCtrls, RzChkLst, RzLstBox, ExtDlgs,
  USenha, Variants;

type
  TfrmCadProduto = class(TForm)
    RzPageControl1: TRzPageControl;
    TS_Consulta: TRzTabSheet;
    TS_Cadastro: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    Panel2: TPanel;
    Panel1: TPanel;
    StaticText1: TStaticText;
    pnlCons_Produto: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    edtNome: TEdit;
    Label3: TLabel;
    edtReferencia: TEdit;
    ceID: TCurrencyEdit;
    UCControls1: TUCControls;
    Label44: TLabel;
    btnInserir: TNxButton;
    btnExcluir: TNxButton;
    btnPesquisar: TNxButton;
    btnConsultar: TNxButton;
    btnAlterar: TNxButton;
    btnCancelar: TNxButton;
    btnConfirmar: TNxButton;
    Label68: TLabel;
    ComboBox2: TComboBox;
    StaticText2: TStaticText;
    DBMemo2: TDBMemo;
    pnlCadastro: TPanel;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    Label8: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    SpeedButton2: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton7: TSpeedButton;
    Label25: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    DBEdit2: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit7: TDBEdit;
    RxDBLookupCombo2: TRxDBLookupCombo;
    RxDBLookupCombo3: TRxDBLookupCombo;
    RxDBComboBox7: TRxDBComboBox;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    Label2: TLabel;
    DBMemo1: TDBMemo;
    RzPageControl2: TRzPageControl;
    TabSheet1: TRzTabSheet;
    Label4: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    RxDBLookupCombo4: TRxDBLookupCombo;
    Label11: TLabel;
    Label12: TLabel;
    DBEdit1: TDBEdit;
    Label13: TLabel;
    DBEdit3: TDBEdit;
    Label16: TLabel;
    DBEdit5: TDBEdit;
    Label20: TLabel;
    DBEdit10: TDBEdit;
    Label21: TLabel;
    RxDBLookupCombo5: TRxDBLookupCombo;
    Label22: TLabel;
    DBEdit11: TDBEdit;
    Label23: TLabel;
    DBEdit14: TDBEdit;
    Label24: TLabel;
    DBEdit15: TDBEdit;
    Label26: TLabel;
    DBEdit16: TDBEdit;
    Label27: TLabel;
    DBEdit17: TDBEdit;
    Label28: TLabel;
    RxDBLookupCombo6: TRxDBLookupCombo;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnExcluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure edtNomeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtReferenciaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ceIDKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure RzPageControl1Change(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure RxDBLookupCombo8Enter(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure RxDBComboBox7Exit(Sender: TObject);
    procedure DBEdit7Exit(Sender: TObject);
    procedure DBEdit7Enter(Sender: TObject);
    procedure RxDBComboBox7Enter(Sender: TObject);
    procedure DBEdit58Enter(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure TabSheet1Enter(Sender: TObject);
    procedure RxDBLookupCombo4Enter(Sender: TObject);
    procedure RxDBLookupCombo1Enter(Sender: TObject);
    procedure RxDBLookupCombo5Enter(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
  private
    { Private declarations }
    fDMCadProduto: TDMCadProduto;
    ffrmCadNCM: TfrmCadNCM;
    ffrmCadUnidade: TfrmCadUnidade;

    vReferencia_Ant: String;
    vTipo_Reg_Ant: String;
    vOrigem_Ant: String;

    vItem2: Integer;

    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar;

    procedure prc_Posiciona_Produto;
    procedure prc_Habilita;
  public
    { Public declarations }
    vID_Produto_Local: Integer;
  end;

var
  frmCadProduto: TfrmCadProduto;

implementation

uses rsDBUtils, uUtilPadrao, DmdDatabase, VarUtils;

{$R *.dfm}

procedure TfrmCadProduto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  vID_Produto_Local := 0;
  Action := Cafree;
end;

procedure TfrmCadProduto.btnExcluirClick(Sender: TObject);
begin
  if not(fDMCadProduto.cdsProduto_Consulta.Active) or (fDMCadProduto.cdsProduto_Consulta.IsEmpty) or
        (fDMCadProduto.cdsProduto_ConsultaID.AsInteger <= 0) then
    exit;

  prc_Posiciona_Produto;

  if fDMCadProduto.cdsProduto.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  prc_Excluir_Registro;
  btnConsultarClick(Sender);
end;

procedure TfrmCadProduto.prc_Excluir_Registro;
var
  vCodAux: Integer;
begin
  try
    vCodAux := fDMCadProduto.cdsProdutoID.AsInteger;
    fDMCadProduto.prc_Excluir;
  except
    on e: Exception do
    begin
      prc_Consultar;
      if vCodAux > 0 then
         fDMCadProduto.cdsProduto.Locate('ID',vCodAux,([Locaseinsensitive]));
      raise;
    end
  end;
end;

procedure TfrmCadProduto.prc_Gravar_Registro;
var
  vIDAux: Integer;
  sds: TSQLDataSet;
  sds2: TSQLDataSet;
  ID: TTransactionDesc;
  vGerar_Ref: Boolean;
  vAux: Integer;
begin
  vIDAux := fDMCadProduto.cdsProdutoID.AsInteger;
  if trim(fDMCadProduto.cdsProdutoREFERENCIA.AsString) = '' then
    fDMCadProduto.cdsProdutoREFERENCIA.AsString := fDMCadProduto.cdsProdutoID.AsString;

  if fDMCadProduto.fnc_Possui_Erro then
  begin
    MessageDlg(fDMCadProduto.vMsgErro, mtError, [mbOk], 0);
    exit;
  end;

  sds  := TSQLDataSet.Create(nil);
  if fDMCadProduto.cdsProdutoREFERENCIA_SEQ.AsInteger > 0 then
    sds2 := TSQLDataSet.Create(nil);

  ID.TransactionID  := 3;
  ID.IsolationLevel := xilREADCOMMITTED;
  dmDatabase.scoDados.StartTransaction(ID);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText   := ' UPDATE TABELALOC SET FLAG = 1 WHERE TABELA = ' + QuotedStr('PRODUTO');
    sds.ExecSQL();

    vGerar_Ref := False;
    if trim(fDMCadProduto.cdsProdutoREFERENCIA.AsString) = '' then
      vGerar_Ref := True
    else
    if fDMCadProduto.cdsProdutoREFERENCIA_SEQ.AsInteger > 0 then
    begin
      sds2.SQLConnection := dmDatabase.scoDados;
      sds2.Close;
      sds2.NoMetadata    := True;
      sds2.GetMetadata   := False;
      sds2.CommandText   := 'SELECT ID FROM PRODUTO '
                          + ' WHERE TIPO_REG = ' + QuotedStr(fDMCadProduto.cdsProdutoTIPO_REG.AsString)
                          + '   AND REFERENCIA_SEQ = ' + IntToStr(fDMCadProduto.cdsProdutoREFERENCIA_SEQ.AsInteger);
      sds2.Open;
      if (sds2.FieldByName('ID').AsInteger > 0) and (sds2.FieldByName('ID').AsInteger <> fDMCadProduto.cdsProdutoID.AsInteger) then
        vGerar_Ref := True;
    end;

    if vGerar_Ref then
    begin
      vAux := fDMCadProduto.fnc_Referencia_Proxima_Seq(fDMCadProduto.cdsProdutoTIPO_REG.AsString);
      fDMCadProduto.cdsProdutoREFERENCIA_SEQ.AsInteger := vAux;
      fDMCadProduto.cdsProdutoREFERENCIA.AsString      := fDMCadProduto.cdsProdutoTIPO_REG.AsString +
                                                          FormatFloat('000000',fDMCadProduto.cdsProdutoREFERENCIA_SEQ.AsInteger);
    end;

    fDMCadProduto.prc_Gravar;

    vCodProduto_Pos := 0;
    vReferencia_Pos := '';

    dmDatabase.scoDados.Commit(ID);

    prc_Habilita;
    if (vIDAux > 0) then
    begin
      if fDMCadProduto.cdsProduto_Consulta.IsEmpty then
        ceID.AsInteger := vIDAux;
      prc_Consultar;
      fDMCadProduto.cdsProduto_Consulta.Locate('ID',vIDAux,([Locaseinsensitive]));
      ceID.Clear;
    end;
    RzPageControl1.ActivePage := TS_Consulta;

  except
    on e: Exception do
      begin
        dmDatabase.scoDados.Rollback(ID);
        raise Exception.Create('Erro ao gravar a Produto: ' + #13 + e.Message);
      end;
  end;
  FreeAndNil(sds);
  if fDMCadProduto.cdsProdutoREFERENCIA_SEQ.AsInteger > 0 then
    FreeAndNil(sds2);
end;

procedure TfrmCadProduto.prc_Inserir_Registro;
begin
  //if not fnc_Filial then
  //  exit;

  fDMCadProduto.prc_Inserir;

  if fDMCadProduto.cdsProduto.State in [dsBrowse] then
    exit;


  DBEdit2.ReadOnly        := False;
  DBEdit7.ReadOnly        := False;
  RxDBComboBox7.ReadOnly  := True;

  fDMCadProduto.cdsProdutoTIPO_REG.AsString := 'P';

  prc_Habilita;

  RzPageControl1.ActivePage := TS_Cadastro;

  DBEdit7.SetFocus;
end;

procedure TfrmCadProduto.FormShow(Sender: TObject);
var
  i: Integer;
  vTipo_Consulta_Produto_Padrao: String;
begin
  fDMCadProduto := TDMCadProduto.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadProduto);
  fDMCadProduto.qParametros.Open;
  fDMCadProduto.cdsCliente.Open;

  for i := 1 to SMDBGrid1.ColCount - 2 do
  begin
    if (fDMCadProduto.qParametrosUSA_COD_BARRAS.AsString <> 'S') and (SMDBGrid1.Columns[i].FieldName = 'COD_BARRA') then
      SMDBGrid1.Columns[i].Visible := False
    else
    if (SMDBGrid1.Columns[i].FieldName = 'OBS') then
      SMDBGrid1.Columns[i].Visible := (fDMCadProduto.qParametros_ProdMOSTRAR_OBS_CONSULTA.AsString = 'S');
  end;
  DBMemo2.Visible := (fDMCadProduto.qParametros_ProdMOSTRAR_OBS_CONSULTA.AsString = 'S');

  vTipo_Consulta_Produto_Padrao := trim(fDMCadProduto.qParametros_UsuarioTIPO_CONSULTA_PRODUTO_PADRAO.AsString);
  if vTipo_Consulta_Produto_Padrao = '' then
    vTipo_Consulta_Produto_Padrao := trim(fDMCadProduto.qParametrosTIPO_CONSULTA_PRODUTO_PADRAO.AsString);

  RzPageControl2.Visible := False;
  if fDMCadProduto.qParametros_ProdGERADORES_ELETRICOS.AsString = 'S' then
  begin
    fDMCadProduto.cdsMarca_Montadora.Open;
    fDMCadProduto.cdsFabricanteGerador.Open;
    fDMCadProduto.cdsFabricanteMotor.Open;
    RzPageControl2.Visible := True;
  end;

  if (trim(vTipo_Consulta_Produto_Padrao) = '') then
    ComboBox2.ItemIndex := 6
  else
  if vTipo_Consulta_Produto_Padrao = 'P' then
    ComboBox2.ItemIndex := 0
  else
  if vTipo_Consulta_Produto_Padrao = 'M' then
    ComboBox2.ItemIndex := 1
  else
  if vTipo_Consulta_Produto_Padrao = 'N' then
    ComboBox2.ItemIndex := 2
  else
  if vTipo_Consulta_Produto_Padrao = 'C' then
    ComboBox2.ItemIndex := 3
  else
  if vTipo_Consulta_Produto_Padrao = 'I' then
    ComboBox2.ItemIndex := 4
  else
  if vTipo_Consulta_Produto_Padrao = 'S' then
    ComboBox2.ItemIndex := 5;

  if vID_Produto_Local > 0 then
  begin
    ceID.AsInteger := vID_Produto_Local;
    prc_Consultar;
  end;
end;

procedure TfrmCadProduto.prc_Consultar;
begin
  SMDBGrid1.DisableScroll;
  fDMCadProduto.cdsProduto_Consulta.Close;
  fDMCadProduto.sdsProduto_Consulta.CommandText := fDMCadProduto.ctConsulta;
  if ceID.AsInteger > 0 then
    fDMCadProduto.sdsProduto_Consulta.CommandText := fDMCadProduto.sdsProduto_Consulta.CommandText
                                    + ' WHERE PRO.ID =  ' + ceID.Text
  else
  begin
    fDMCadProduto.sdsProduto_Consulta.CommandText := fDMCadProduto.sdsProduto_Consulta.CommandText
                                    + ' WHERE 0 = 0 ';
    if Trim(edtNome.Text) <> '' then
      fDMCadProduto.sdsProduto_Consulta.CommandText := fDMCadProduto.sdsProduto_Consulta.CommandText
                                      + ' AND PRO.NOME LIKE ' + QuotedStr('%'+edtNome.Text+'%');
    if Trim(edtReferencia.Text) <> '' then
      fDMCadProduto.sdsProduto_Consulta.CommandText := fDMCadProduto.sdsProduto_Consulta.CommandText
                                      + ' AND PRO.REFERENCIA LIKE ' + QuotedStr('%'+edtReferencia.Text+'%');
    case ComboBox2.ItemIndex of
      0: fDMCadProduto.sdsProduto_Consulta.CommandText := fDMCadProduto.sdsProduto_Consulta.CommandText + ' AND TIPO_REG = ' + QuotedStr('P');
      1: fDMCadProduto.sdsProduto_Consulta.CommandText := fDMCadProduto.sdsProduto_Consulta.CommandText + ' AND TIPO_REG = ' + QuotedStr('M');
      2: fDMCadProduto.sdsProduto_Consulta.CommandText := fDMCadProduto.sdsProduto_Consulta.CommandText + ' AND TIPO_REG = ' + QuotedStr('N');
      3: fDMCadProduto.sdsProduto_Consulta.CommandText := fDMCadProduto.sdsProduto_Consulta.CommandText + ' AND TIPO_REG = ' + QuotedStr('C');
      5: fDMCadProduto.sdsProduto_Consulta.CommandText := fDMCadProduto.sdsProduto_Consulta.CommandText + ' AND TIPO_REG = ' + QuotedStr('S');
    end;
  end;
  fDMCadProduto.cdsProduto_Consulta.Open;
  SMDBGrid1.EnableScroll;
end;

procedure TfrmCadProduto.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmCadProduto.btnCancelarClick(Sender: TObject);
begin
  if (fDMCadProduto.cdsProduto.State in [dsBrowse]) or not(fDMCadProduto.cdsProduto.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadProduto.cdsProduto.CancelUpdates;
  prc_Habilita;
  RzPageControl1.ActivePage := TS_Consulta;
end;

procedure TfrmCadProduto.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadProduto.btnAlterarClick(Sender: TObject);
begin
  if (fDMCadProduto.cdsProduto.IsEmpty) or not(fDMCadProduto.cdsProduto.Active) or (fDMCadProduto.cdsProdutoID.AsInteger < 1) then
    exit;

  fDMCadProduto.cdsProduto.Edit;

  prc_Habilita;

  DBEdit2.ReadOnly := not(fDMCadProduto.cdsProdutoCRIADO_OS.AsString = 'S');
  DBEdit7.ReadOnly := not(fDMCadProduto.cdsProdutoCRIADO_OS.AsString = 'S');
  DBEdit7.SetFocus;
end;

procedure TfrmCadProduto.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfrmCadProduto.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadProduto);
end;

procedure TfrmCadProduto.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadProduto.SpeedButton1Click(Sender: TObject);
begin
  ffrmCadNCM := TfrmCadNCM.Create(self);
  ffrmCadNCM.ShowModal;

  FreeAndNil(ffrmCadNCM);

  fDMCadProduto.cdsNCM.Close;
  fDMCadProduto.cdsNCM.Open;
end;

procedure TfrmCadProduto.SpeedButton2Click(Sender: TObject);
begin
  ffrmCadUnidade := TfrmCadUnidade.Create(self);
  ffrmCadUnidade.ShowModal;
  FreeAndNil(frmCadUnidade);
  fDMCadProduto.cdsUnidade.Close;
  fDMCadProduto.cdsUnidade.Open;
end;

procedure TfrmCadProduto.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := fnc_Encerrar_Tela(fDMCadProduto.cdsProduto);
end;

procedure TfrmCadProduto.edtNomeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadProduto.edtReferenciaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadProduto.ceIDKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadProduto.SMDBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
  ColunaOrdenada: String;
begin
  ColunaOrdenada := Column.FieldName;
  fDMCadProduto.cdsProduto_Consulta.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I].Title = Column.Title) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmCadProduto.RzPageControl1Change(Sender: TObject);
var
  i: Byte;
begin
  if not(fDMCadProduto.cdsProduto.State in [dsEdit, dsInsert]) then
  begin
    if RzPageControl1.ActivePage = TS_Cadastro then
    begin
      if not(fDMCadProduto.cdsProduto_Consulta.Active) or (fDMCadProduto.cdsProduto_Consulta.IsEmpty) or
            (fDMCadProduto.cdsProduto_ConsultaID.AsInteger <= 0) then
        exit;
      prc_Posiciona_Produto;
    end;
  end;
end;

procedure TfrmCadProduto.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if fDMCadProduto.cdsProduto_ConsultaINATIVO.AsString = 'S' then
    AFont.Color := clRed;
end;

procedure TfrmCadProduto.prc_Posiciona_Produto;
begin
  fDMCadProduto.prc_Localizar(fDMCadProduto.cdsProduto_ConsultaID.AsInteger);
end;

procedure TfrmCadProduto.RxDBLookupCombo8Enter(Sender: TObject);
begin
  fDMCadProduto.cdsFornecedor.IndexFieldNames := 'NOME';
end;

procedure TfrmCadProduto.SpeedButton5Click(Sender: TObject);
begin
  fDMCadProduto.cdsUnidade.Close;
  fDMCadProduto.cdsUnidade.Open;
end;

procedure TfrmCadProduto.SpeedButton7Click(Sender: TObject);
begin
  fDMCadProduto.cdsNCM.Close;
  fDMCadProduto.cdsNCM.Open;
end;

procedure TfrmCadProduto.btnPesquisarClick(Sender: TObject);
begin
  pnlCons_Produto.Visible := not(pnlCons_Produto.Visible);
  if pnlCons_Produto.Visible then
    edtNome.SetFocus
end;

procedure TfrmCadProduto.prc_Habilita;
var
  i: Integer;
  vTexto: String;
begin
  TS_Consulta.TabEnabled      := not(TS_Consulta.TabEnabled);
  btnAlterar.Enabled          := not(btnAlterar.Enabled);
  btnConfirmar.Enabled        := not(btnConfirmar.Enabled);
  pnlCadastro.Enabled         := not(pnlCadastro.Enabled);
end;

procedure TfrmCadProduto.RxDBComboBox7Exit(Sender: TObject);
begin
  if (vTipo_Reg_Ant <> fDMCadProduto.cdsProdutoTIPO_REG.AsString) and (fDMCadProduto.cdsProduto.State in [dsInsert]) and
     (copy(fDMCadProduto.cdsProdutoREFERENCIA.AsString,2,1) = '.') then
    fDMCadProduto.cdsProdutoREFERENCIA.AsString := '';
  if fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'P' then
    fDMCadProduto.cdsProdutoSPED_TIPO_ITEM.AsString := '04'
  else
  if fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'S' then
    fDMCadProduto.cdsProdutoSPED_TIPO_ITEM.AsString := '06'
  else
  if fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'M' then
    fDMCadProduto.cdsProdutoSPED_TIPO_ITEM.AsString := '01'
  else
  if fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'C' then
    fDMCadProduto.cdsProdutoSPED_TIPO_ITEM.AsString := '07'
  else
  if fDMCadProduto.cdsProdutoTIPO_REG.AsString = 'I' then
    fDMCadProduto.cdsProdutoSPED_TIPO_ITEM.AsString := '08';
end;

procedure TfrmCadProduto.DBEdit7Exit(Sender: TObject);
var
  vAux: Integer;
begin
  if (trim(DBEdit7.Text) = '') and (fDMCadProduto.cdsProdutoTIPO_REG.AsString <> '') then
  begin
    vAux := fDMCadProduto.fnc_Referencia_Proxima_Seq(fDMCadProduto.cdsProdutoTIPO_REG.AsString);
    fDMCadProduto.cdsProdutoREFERENCIA_SEQ.AsInteger := vAux;
    fDMCadProduto.cdsProdutoREFERENCIA.AsString      := fDMCadProduto.cdsProdutoTIPO_REG.AsString + '.' +FormatFloat('000000',fDMCadProduto.cdsProdutoREFERENCIA_SEQ.AsInteger);
  end;
  if ((trim(DBEdit7.Text) <> '') and ((trim(fDMCadProduto.cdsProdutoREFERENCIA_PADRAO.AsString) = '')) or
     (fDMCadProduto.cdsProduto.State in [dsInsert]) or (DBEdit7.Text <> vReferencia_Ant)) then
    fDMCadProduto.cdsProdutoREFERENCIA_PADRAO.AsString := DBEdit7.Text;
  if (trim(DBEdit7.Text) <> '') and (Copy(DBEdit7.Text,1,2) <> fDMCadProduto.cdsProdutoTIPO_REG.AsString + '.') then
    fDMCadProduto.cdsProdutoREFERENCIA_SEQ.AsInteger := 0;
end;

procedure TfrmCadProduto.DBEdit7Enter(Sender: TObject);
begin
  vReferencia_Ant  := fDMCadProduto.cdsProdutoREFERENCIA.AsString;
  if fDMCadProduto.qParametrosMOSTRAR_LINHA_PROD.AsString = 'S' then
    DBEdit7.SelStart := Length(DBEdit7.Text) + 1;
end;

procedure TfrmCadProduto.RxDBComboBox7Enter(Sender: TObject);
begin
  vTipo_Reg_Ant := fDMCadProduto.cdsProdutoTIPO_REG.AsString;
  DBEdit7.SetFocus;
end;

procedure TfrmCadProduto.DBEdit58Enter(Sender: TObject);
begin
  StaticText2.Visible := True;
end;

procedure TfrmCadProduto.DBEdit2Exit(Sender: TObject);
begin
  if copy(fdmCadProduto.cdsProdutoNOME.AsString,1,1) = ' ' then
    fdmCadProduto.cdsProdutoNOME.AsString := TrimLeft(fdmCadProduto.cdsProdutoNOME.AsString);
end;

procedure TfrmCadProduto.TabSheet1Enter(Sender: TObject);
begin
  if (fDMCadProduto.cdsProduto.State in [dsInsert,dsEdit]) and
     (fDMCadProduto.cdsProdutoGerador.IsEmpty) then
  begin
    fDMCadProduto.cdsProdutoGerador.Insert;
    fDMCadProduto.cdsProdutoGeradorID.AsInteger := fDMCadProduto.cdsProdutoID.AsInteger;
  end;
end;

procedure TfrmCadProduto.RxDBLookupCombo4Enter(Sender: TObject);
begin
  fdmCadProduto.cdsMarca_Montadora.IndexFieldNames := 'NOME';
end;

procedure TfrmCadProduto.RxDBLookupCombo1Enter(Sender: TObject);
begin
  fdmCadProduto.cdsFabricanteMotor.IndexFieldNames := 'NOME';
end;

procedure TfrmCadProduto.RxDBLookupCombo5Enter(Sender: TObject);
begin
  fdmCadProduto.cdsFabricanteGerador.IndexFieldNames := 'NOME';
end;

procedure TfrmCadProduto.SpeedButton3Click(Sender: TObject);
begin
  dmCadProduto.cdsCliente.Close;
  dmCadProduto.cdsCliente.Open;
end;

procedure TfrmCadProduto.SpeedButton4Click(Sender: TObject);
begin
  dmCadProduto.cdsFabricanteMotor.Close;
  dmCadProduto.cdsMarca_Montadora.Close;
  dmCadProduto.cdsFabricanteGerador.Close;
  dmCadProduto.cdsFabricanteMotor.Open;
  dmCadProduto.cdsMarca_Montadora.Open;
  dmCadProduto.cdsFabricanteGerador.Open;
end;

end.

