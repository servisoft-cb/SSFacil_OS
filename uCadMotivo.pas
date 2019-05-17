unit UCadMotivo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadMotivo, Mask, db,
  RxDBComb, UCBase, StdCtrls, DBCtrls, ExtCtrls, RzTabs, DBGrids, ToolEdit, CurrEdit, NxCollection, RzPanel;

type
  TfrmCadMotivo = class(TForm)
    RzPageControl1: TRzPageControl;
    TS_Consulta: TRzTabSheet;
    TS_Cadastro: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    Panel2: TPanel;
    Panel1: TPanel;
    pnlCadastro: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label8: TLabel;
    DBEdit2: TDBEdit;
    StaticText1: TStaticText;
    pnlPesquisa: TPanel;
    Label6: TLabel;
    Edit4: TEdit;
    btnPesquisar: TNxButton;
    btnExcluir: TNxButton;
    btnInserir: TNxButton;
    btnConsultar: TNxButton;
    btnAlterar: TNxButton;
    btnConfirmar: TNxButton;
    btnCancelar: TNxButton;
    UCControls1: TUCControls;
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
    procedure Edit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnPesquisarClick(Sender: TObject);
    procedure SMDBGrid1TitleClick(Column: TColumn);
  private
    { Private declarations }
    fDMCadMotivo: TDMCadMotivo;
    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar;
  public
    { Public declarations }       
  end;

var
  frmCadMotivo: TfrmCadMotivo;

implementation

uses DmdDatabase, rsDBUtils, UMenu;

{$R *.dfm}

procedure TfrmCadMotivo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin                             
  Action := Cafree;
end;

procedure TfrmCadMotivo.btnExcluirClick(Sender: TObject);
begin
  if fDMCadMotivo.cdsMotivo.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  prc_Excluir_Registro;
end;

procedure TfrmCadMotivo.prc_Excluir_Registro;
begin
  fDMCadMotivo.prc_Excluir;
end;

procedure TfrmCadMotivo.prc_Gravar_Registro;
begin
  fDMCadMotivo.prc_Gravar;
  if fDMCadMotivo.cdsMotivo.State in [dsEdit,dsInsert] then
  begin
    MessageDlg(fDMCadMotivo.vMsgErro, mtError, [mbOk], 0);
    exit;
  end;
  TS_Consulta.TabEnabled    := not(TS_Consulta.TabEnabled);
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadMotivo.prc_Inserir_Registro;
begin
  fDMCadMotivo.prc_Inserir;

  if fDMCadMotivo.cdsMotivo.State in [dsBrowse] then
    exit;

  RzPageControl1.ActivePage := TS_Cadastro;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
  DBEdit1.SetFocus;
end;

procedure TfrmCadMotivo.FormShow(Sender: TObject);
begin
  fDMCadMotivo := TDMCadMotivo.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadMotivo);
  Edit4.SetFocus;
end;

procedure TfrmCadMotivo.prc_Consultar;
begin
  fDMCadMotivo.cdsMotivo.Close;
  fDMCadMotivo.sdsMotivo.CommandText := fDMCadMotivo.ctCommand + ' WHERE 0 = 0 ';
  if Trim(Edit4.Text) <> '' then
    fDMCadMotivo.sdsMotivo.CommandText := fDMCadMotivo.sdsMotivo.CommandText + ' AND NOME LIKE ' + QuotedStr('%'+Edit4.Text+'%');
  fDMCadMotivo.cdsMotivo.Open;
end;

procedure TfrmCadMotivo.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmCadMotivo.btnCancelarClick(Sender: TObject);
begin
  if (fDMCadMotivo.cdsMotivo.State in [dsBrowse]) or not(fDMCadMotivo.cdsMotivo.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadMotivo.cdsMotivo.CancelUpdates;
  TS_Consulta.TabEnabled    := True;
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadMotivo.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadMotivo.btnAlterarClick(Sender: TObject);
begin
  if (fDMCadMotivo.cdsMotivo.IsEmpty) or not(fDMCadMotivo.cdsMotivo.Active) or (fDMCadMotivo.cdsMotivoID.AsInteger < 1) then
    exit;

  fDMCadMotivo.cdsMotivo.Edit;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
end;

procedure TfrmCadMotivo.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfrmCadMotivo.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadMotivo);
end;

procedure TfrmCadMotivo.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadMotivo.Edit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadMotivo.btnPesquisarClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not(pnlPesquisa.Visible);
  if pnlPesquisa.Visible then
    Edit4.SetFocus;
end;

procedure TfrmCadMotivo.SMDBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
  ColunaOrdenada: String;
begin
  ColunaOrdenada := Column.FieldName;
  fDMCadMotivo.cdsMotivo.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I].Title = Column.Title) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

end.
