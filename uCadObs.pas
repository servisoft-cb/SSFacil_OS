unit UCadOBS;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadOBS, Mask, 
  db, RxDBComb, UCBase, StdCtrls, DBCtrls, ExtCtrls, RzTabs, DBGrids, ToolEdit, CurrEdit, NxCollection, RzPanel;

type
  TfrmCadOBS = class(TForm)
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
    Label2: TLabel;
    DBMemo1: TDBMemo;
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
    fDMCadOBS: TDMCadOBS;
    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar;
  public
    { Public declarations }       
  end;

var
  frmCadOBS: TfrmCadOBS;

implementation

uses DmdDatabase, rsDBUtils, UMenu;

{$R *.dfm}

procedure TfrmCadOBS.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin                             
  Action := Cafree;
end;

procedure TfrmCadOBS.btnExcluirClick(Sender: TObject);
begin
  if fDMCadOBS.cdsOBS_OS.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  prc_Excluir_Registro;
end;

procedure TfrmCadOBS.prc_Excluir_Registro;
begin
  fDMCadOBS.prc_Excluir;
end;

procedure TfrmCadOBS.prc_Gravar_Registro;
begin
  fDMCadOBS.prc_Gravar;
  if fDMCadOBS.cdsOBS_OS.State in [dsEdit,dsInsert] then
  begin
    MessageDlg(fDMCadOBS.vMsgErro, mtError, [mbOk], 0);
    exit;
  end;
  TS_Consulta.TabEnabled    := not(TS_Consulta.TabEnabled);
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadOBS.prc_Inserir_Registro;
begin
  fDMCadOBS.prc_Inserir;

  if fDMCadOBS.cdsOBS_OS.State in [dsBrowse] then
    exit;

  RzPageControl1.ActivePage := TS_Cadastro;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
  DBEdit1.SetFocus;
end;

procedure TfrmCadOBS.FormShow(Sender: TObject);
var
  i : Integer;
begin
  fDMCadOBS := TDMCadOBS.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadOBS);
  Edit4.SetFocus;
end;

procedure TfrmCadOBS.prc_Consultar;
begin
  fDMCadOBS.cdsOBS_OS.Close;
  fDMCadOBS.sdsOBS_OS.CommandText := fDMCadOBS.ctCommand + ' WHERE 0 = 0 ';
  if Trim(Edit4.Text) <> '' then
    fDMCadOBS.sdsOBS_OS.CommandText := fDMCadOBS.sdsOBS_OS.CommandText + ' AND NOME LIKE ' + QuotedStr('%'+Edit4.Text+'%');
  fDMCadOBS.cdsOBS_OS.Open;
end;

procedure TfrmCadOBS.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmCadOBS.btnCancelarClick(Sender: TObject);
begin
  if (fDMCadOBS.cdsOBS_OS.State in [dsBrowse]) or not(fDMCadOBS.cdsOBS_OS.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadOBS.cdsOBS_OS.CancelUpdates;
  TS_Consulta.TabEnabled    := True;
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadOBS.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadOBS.btnAlterarClick(Sender: TObject);
begin
  if (fDMCadOBS.cdsOBS_OS.IsEmpty) or not(fDMCadOBS.cdsOBS_OS.Active) or (fDMCadOBS.cdsOBS_OSID.AsInteger < 1) then
    exit;

  fDMCadOBS.cdsOBS_OS.Edit;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
end;

procedure TfrmCadOBS.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfrmCadOBS.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadOBS);
end;

procedure TfrmCadOBS.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadOBS.Edit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadOBS.btnPesquisarClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not(pnlPesquisa.Visible);
  if pnlPesquisa.Visible then
    Edit4.SetFocus;
end;

procedure TfrmCadOBS.SMDBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
  ColunaOrdenada: String;
begin
  ColunaOrdenada := Column.FieldName;
  fDMCadOBS.cdsOBS_OS.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I].Title = Column.Title) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

end.
