unit UCadProcesso_Grupo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadProcesso_Grupo,
  DBGrids, ExtCtrls, StdCtrls, DB, RzTabs, DBCtrls, ToolEdit, UCBase, RxLookup, Mask, CurrEdit, RxDBComb, NxCollection,
  ImgList, Menus;

type
  TfrmCadProcesso_Grupo = class(TForm)
    RzPageControl1: TRzPageControl;
    TS_Consulta: TRzTabSheet;
    TS_Cadastro: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    Panel2: TPanel;
    Panel1: TPanel;
    pnlCadastro: TPanel;
    Label1: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit4: TDBEdit;
    StaticText1: TStaticText;
    pnlPesquisa: TPanel;
    Label6: TLabel;
    edtNome: TEdit;
    SMDBGrid2: TSMDBGrid;
    GroupBox1: TGroupBox;
    btnInserir: TNxButton;
    btnExcluir: TNxButton;
    btnPesquisar: TNxButton;
    btnConsultar: TNxButton;
    btnAlterar: TNxButton;
    btnConfirmar: TNxButton;
    btnCancelar: TNxButton;
    UCControls1: TUCControls;
    PopupProcessos: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    ImageList1: TImageList;
    btnInserir_Proc: TNxButton;
    btnAlterar_Proc: TNxButton;
    btnExcluir_Proc: TNxButton;
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
    procedure edtNomeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure btnPesquisarClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure btnInserir_ProcClick(Sender: TObject);
    procedure btnExcluir_ProcClick(Sender: TObject);
    procedure btnAlterar_ProcClick(Sender: TObject);
  private
    { Private declarations }
    fDMCadProcesso_Grupo: TDMCadProcesso_Grupo;
    vItemGrupo: Integer;

    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar;
    procedure prc_Limpar_Edit_Consulta;
    procedure prc_Monta_Ordem;

    procedure prc_Habilita;

  public
    { Public declarations }

  end;

var
  frmCadProcesso_Grupo: TfrmCadProcesso_Grupo;

implementation

uses DateUtils, DmdDatabase, rsDBUtils, UMenu, UCadProcesso_Grupo_Itens;

{$R *.dfm}

procedure TfrmCadProcesso_Grupo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadProcesso_Grupo.btnExcluirClick(Sender: TObject);
begin
  if fDMCadProcesso_Grupo.cdsProcesso_Grupo.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  prc_Excluir_Registro;
end;

procedure TfrmCadProcesso_Grupo.prc_Excluir_Registro;
begin
  fDMCadProcesso_Grupo.prc_Excluir;
end;

procedure TfrmCadProcesso_Grupo.prc_Gravar_Registro;
begin
  fDMCadProcesso_Grupo.prc_Gravar;
  if fDMCadProcesso_Grupo.cdsProcesso_Grupo.State in [dsEdit,dsInsert] then
  begin
    MessageDlg(fDMCadProcesso_Grupo.vMsgErro, mtError, [mbOk], 0);
    exit;
  end;
  prc_Habilita;
  RzPageControl1.ActivePage := TS_Consulta;
end;

procedure TfrmCadProcesso_Grupo.prc_Inserir_Registro;
begin
  fDMCadProcesso_Grupo.prc_Inserir;

  if fDMCadProcesso_Grupo.cdsProcesso_Grupo.State in [dsBrowse] then
    exit;

  RzPageControl1.ActivePage := TS_Cadastro;

  prc_Habilita;
  DBEdit7.SetFocus;
end;

procedure TfrmCadProcesso_Grupo.FormShow(Sender: TObject);
var
  i : Integer;
begin
  fDMCadProcesso_Grupo := TDMCadProcesso_Grupo.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadProcesso_Grupo);
end;

procedure TfrmCadProcesso_Grupo.prc_Consultar;
begin
  fDMCadProcesso_Grupo.cdsProcesso_Grupo.Close;
  fDMCadProcesso_Grupo.sdsProcesso_Grupo.CommandText := fDMCadProcesso_Grupo.ctCommand;
  if Trim(edtNome.Text) <> '' then
    fDMCadProcesso_Grupo.sdsProcesso_Grupo.CommandText := fDMCadProcesso_Grupo.sdsProcesso_Grupo.CommandText
                                    + ' WHERE NOME LIKE ' + QuotedStr('%'+edtNome.Text+'%');
  fDMCadProcesso_Grupo.cdsProcesso_Grupo.Open;
end;

procedure TfrmCadProcesso_Grupo.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmCadProcesso_Grupo.btnCancelarClick(Sender: TObject);
begin
  if (fDMCadProcesso_Grupo.cdsProcesso_Grupo.State in [dsBrowse]) or not(fDMCadProcesso_Grupo.cdsProcesso_Grupo.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadProcesso_Grupo.cdsProcesso_Grupo.CancelUpdates;
  prc_Habilita;
  RzPageControl1.ActivePage := TS_Consulta;
end;

procedure TfrmCadProcesso_Grupo.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadProcesso_Grupo.btnAlterarClick(Sender: TObject);
begin
  if (fDMCadProcesso_Grupo.cdsProcesso_Grupo.IsEmpty) or not(fDMCadProcesso_Grupo.cdsProcesso_Grupo.Active) or (fDMCadProcesso_Grupo.cdsProcesso_GrupoID.AsInteger < 1) then
    exit;

  fDMCadProcesso_Grupo.cdsProcesso_Grupo.Edit;
  prc_Habilita;
end;

procedure TfrmCadProcesso_Grupo.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfrmCadProcesso_Grupo.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadProcesso_Grupo);
end;

procedure TfrmCadProcesso_Grupo.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadProcesso_Grupo.edtNomeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadProcesso_Grupo.SMDBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
  ColunaOrdenada: String;
begin
  ColunaOrdenada := Column.FieldName;
  fDMCadProcesso_Grupo.cdsProcesso_Grupo.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmCadProcesso_Grupo.btnPesquisarClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not(pnlPesquisa.Visible);
  if pnlPesquisa.Visible then
    edtNome.SetFocus
  else
    prc_Limpar_Edit_Consulta;
end;

procedure TfrmCadProcesso_Grupo.prc_Limpar_Edit_Consulta;
begin
  edtNome.Clear;
end;

procedure TfrmCadProcesso_Grupo.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := True;
  if fDMCadProcesso_Grupo.cdsProcesso_Grupo.State in [dsEdit, dsInsert] then
  begin
    if MessageDlg('Fechar esta tela sem confirmar?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
      CanClose := False
    else
      CanClose := True;
  end;
end;

procedure TfrmCadProcesso_Grupo.N1Click(Sender: TObject);
var
 Reg: TBookMark;
 vAux : Integer;
begin
  if not(fDMCadProcesso_Grupo.cdsProcesso_Grupo.State in [dsEdit,dsInsert]) then
  begin
    MessageDlg('*** Grupo não esta em modo de alteração ou inclusão !', mtInformation, [mbOk], 0);
    exit;
  end;
  if fDMCadProcesso_Grupo.cdsProcesso_Grupo_ItensORDEM.AsInteger <= 1 then
    exit;

  LockWindowUpDate(SMDBGrid2.Handle);
  Reg := fDMCadProcesso_Grupo.cdsProcesso_Grupo_Itens.GetBookMark;
  fDMCadProcesso_Grupo.cdsProcesso_Grupo_Itens.Prior;

  fDMCadProcesso_Grupo.cdsProcesso_Grupo_Itens.Edit;
  fDMCadProcesso_Grupo.cdsProcesso_Grupo_ItensORDEM.AsInteger := fDMCadProcesso_Grupo.cdsProcesso_Grupo_ItensORDEM.AsInteger + 1;
  fDMCadProcesso_Grupo.cdsProcesso_Grupo_Itens.Post;

  fDMCadProcesso_Grupo.cdsProcesso_Grupo_Itens.GotoBookmark(Reg);

  fDMCadProcesso_Grupo.cdsProcesso_Grupo_Itens.Edit;
  fDMCadProcesso_Grupo.cdsProcesso_Grupo_ItensORDEM.AsInteger := fDMCadProcesso_Grupo.cdsProcesso_Grupo_ItensORDEM.AsInteger - 1;
  fDMCadProcesso_Grupo.cdsProcesso_Grupo_Itens.Post;

  fDMCadProcesso_Grupo.cdsProcesso_Grupo_Itens.FreeBookmark(Reg);
  LockWindowUpDate(0);    
end;

procedure TfrmCadProcesso_Grupo.N2Click(Sender: TObject);
var
 Reg: TBookMark;
begin
  if not(fDMCadProcesso_Grupo.cdsProcesso_Grupo.State in [dsEdit,dsInsert]) then
  begin
    MessageDlg('*** Grupo não esta em modo de alteração ou inclusão !', mtInformation, [mbOk], 0);
    exit;
  end;
  if fDMCadProcesso_Grupo.cdsProcesso_Grupo_ItensORDEM.AsInteger = fDMCadProcesso_Grupo.cdsProcesso_Grupo_Itens.RecordCount then
    exit;

  LockWindowUpDate(SMDBGrid2.Handle);
  Reg := fDMCadProcesso_Grupo.cdsProcesso_Grupo_Itens.GetBookMark;
  fDMCadProcesso_Grupo.cdsProcesso_Grupo_Itens.Next;

  fDMCadProcesso_Grupo.cdsProcesso_Grupo_Itens.Edit;
  fDMCadProcesso_Grupo.cdsProcesso_Grupo_ItensORDEM.AsInteger := fDMCadProcesso_Grupo.cdsProcesso_Grupo_ItensORDEM.AsInteger - 1;
  fDMCadProcesso_Grupo.cdsProcesso_Grupo_Itens.Post;

  fDMCadProcesso_Grupo.cdsProcesso_Grupo_Itens.GotoBookmark(Reg);

  fDMCadProcesso_Grupo.cdsProcesso_Grupo_Itens.Edit;
  fDMCadProcesso_Grupo.cdsProcesso_Grupo_ItensORDEM.AsInteger := fDMCadProcesso_Grupo.cdsProcesso_Grupo_ItensORDEM.AsInteger + 1;
  fDMCadProcesso_Grupo.cdsProcesso_Grupo_Itens.Post;

  fDMCadProcesso_Grupo.cdsProcesso_Grupo_Itens.FreeBookmark(Reg);
  LockWindowUpDate(0);
end;

procedure TfrmCadProcesso_Grupo.prc_Monta_Ordem;
var
  vItemAux : Integer;
  vOrdem : Integer;
begin
  vItemAux := fDMCadProcesso_Grupo.cdsProcesso_Grupo_ItensITEM.AsInteger;
  vOrdem   := 0;
  SMDBGrid2.DisableScroll;
  fDMCadProcesso_Grupo.cdsProcesso_Grupo_Itens.First;
  while not fDMCadProcesso_Grupo.cdsProcesso_Grupo_Itens.Eof do
  begin
    vOrdem := vOrdem + 1;
    fDMCadProcesso_Grupo.cdsProcesso_Grupo_Itens.Edit;
    fDMCadProcesso_Grupo.cdsProcesso_Grupo_ItensORDEM.AsInteger := vOrdem;
    fDMCadProcesso_Grupo.cdsProcesso_Grupo_Itens.Post;
    fDMCadProcesso_Grupo.cdsProcesso_Grupo_Itens.Next;
  end;
  fDMCadProcesso_Grupo.cdsProcesso_Grupo_Itens.Locate('ITEM',vItemAux,[loCaseInsensitive]);
  SMDBGrid2.EnableScroll;
end;

procedure TfrmCadProcesso_Grupo.btnInserir_ProcClick(Sender: TObject);
var
  vItemAux, vOrdemAux : Integer;
  ffrmCadProcesso_Grupo_Itens: TfrmCadProcesso_Grupo_Itens;
begin
  fDMCadProcesso_Grupo.cdsProcesso_Grupo_Itens.IndexFieldNames := 'ID;ITEM';
  fDMCadProcesso_Grupo.cdsProcesso_Grupo_Itens.Last;
  vItemAux := fDMCadProcesso_Grupo.cdsProcesso_Grupo_ItensITEM.AsInteger;

  fDMCadProcesso_Grupo.cdsProcesso_Grupo_Itens.IndexFieldNames := 'ID;ORDEM;ITEM';
  fDMCadProcesso_Grupo.cdsProcesso_Grupo_Itens.Last;
  vOrdemAux := fDMCadProcesso_Grupo.cdsProcesso_Grupo_ItensORDEM.AsInteger;

  fDMCadProcesso_Grupo.cdsProcesso_Grupo_Itens.Insert;
  fDMCadProcesso_Grupo.cdsProcesso_Grupo_ItensID.AsInteger          := fDMCadProcesso_Grupo.cdsProcesso_GrupoID.AsInteger;
  fDMCadProcesso_Grupo.cdsProcesso_Grupo_ItensITEM.AsInteger        := vItemAux + 1;
  fDMCadProcesso_Grupo.cdsProcesso_Grupo_ItensORDEM.AsInteger       := vOrdemAux + 1;
  
  ffrmCadProcesso_Grupo_Itens := TfrmCadProcesso_Grupo_Itens.Create(self);
  ffrmCadProcesso_Grupo_Itens.fDMCadProcesso_Grupo := fDMCadProcesso_Grupo;
  ffrmCadProcesso_Grupo_Itens.ShowModal;
  FreeAndNil(ffrmCadProcesso_Grupo_Itens);
end;

procedure TfrmCadProcesso_Grupo.btnExcluir_ProcClick(Sender: TObject);
begin
  if (fDMCadProcesso_Grupo.cdsProcesso_Grupo_Itens.IsEmpty) or (fDMCadProcesso_Grupo.cdsProcesso_Grupo_ItensID.AsInteger < 1) then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadProcesso_Grupo.cdsProcesso_Grupo_Itens.Delete;

  prc_Monta_Ordem;
end;

procedure TfrmCadProcesso_Grupo.btnAlterar_ProcClick(Sender: TObject);
var
  ffrmCadProcesso_Grupo_Itens: TfrmCadProcesso_Grupo_Itens;
begin
  if fDMCadProcesso_Grupo.cdsProcesso_Grupo_ItensITEM.AsInteger <= 0 then
    exit;
  fDMCadProcesso_Grupo.cdsProcesso_Grupo_Itens.Edit;
  ffrmCadProcesso_Grupo_Itens := TfrmCadProcesso_Grupo_Itens.Create(self);
  ffrmCadProcesso_Grupo_Itens.fDMCadProcesso_Grupo := fDMCadProcesso_Grupo;
  ffrmCadProcesso_Grupo_Itens.ShowModal;
  FreeAndNil(ffrmCadProcesso_Grupo_Itens);

end;

procedure TfrmCadProcesso_Grupo.prc_Habilita;
begin
  TS_Consulta.TabEnabled := not(TS_Consulta.TabEnabled);
  btnAlterar.Enabled     := not(btnAlterar.Enabled);
  btnConfirmar.Enabled   := not(btnConfirmar.Enabled);
  pnlCadastro.Enabled    := not(pnlCadastro.Enabled );
  btnInserir_Proc.Enabled := not(btnInserir_Proc.Enabled);
  btnAlterar_Proc.Enabled := not(btnAlterar_Proc.Enabled);
  btnExcluir_Proc.Enabled := not(btnExcluir_Proc.Enabled);
end;

end.
