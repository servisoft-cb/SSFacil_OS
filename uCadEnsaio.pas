unit UCadEnsaio;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadEnsaio, Mask, 
  db, RxDBComb, UCBase, StdCtrls, DBCtrls, ExtCtrls, RzTabs, DBGrids, ToolEdit, CurrEdit, NxCollection, RzPanel;

type
  TfrmCadEnsaio = class(TForm)
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
    DBCheckBox1: TDBCheckBox;
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
    fDMCadEnsaio: TDMCadEnsaio;
    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar;
  public
    { Public declarations }       
  end;

var
  frmCadEnsaio: TfrmCadEnsaio;

implementation

uses DmdDatabase, rsDBUtils, UMenu;

{$R *.dfm}

procedure TfrmCadEnsaio.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin                             
  Action := Cafree;
end;

procedure TfrmCadEnsaio.btnExcluirClick(Sender: TObject);
begin
  if fDMCadEnsaio.cdsEnsaio.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  prc_Excluir_Registro;
end;

procedure TfrmCadEnsaio.prc_Excluir_Registro;
begin
  fDMCadEnsaio.prc_Excluir;
end;

procedure TfrmCadEnsaio.prc_Gravar_Registro;
begin
  fDMCadEnsaio.prc_Gravar;
  if fDMCadEnsaio.cdsEnsaio.State in [dsEdit,dsInsert] then
  begin
    MessageDlg(fDMCadEnsaio.vMsgErro, mtError, [mbOk], 0);
    exit;
  end;
  TS_Consulta.TabEnabled    := not(TS_Consulta.TabEnabled);
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadEnsaio.prc_Inserir_Registro;
begin
  fDMCadEnsaio.prc_Inserir;

  if fDMCadEnsaio.cdsEnsaio.State in [dsBrowse] then
    exit;

  RzPageControl1.ActivePage := TS_Cadastro;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
  DBEdit1.SetFocus;
end;

procedure TfrmCadEnsaio.FormShow(Sender: TObject);
var
  i : Integer;
begin
  fDMCadEnsaio := TDMCadEnsaio.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadEnsaio);
  Edit4.SetFocus;
end;

procedure TfrmCadEnsaio.prc_Consultar;
begin
  fDMCadEnsaio.cdsEnsaio.Close;
  fDMCadEnsaio.sdsEnsaio.CommandText := fDMCadEnsaio.ctCommand + ' WHERE 0 = 0 ';
  if Trim(Edit4.Text) <> '' then
    fDMCadEnsaio.sdsEnsaio.CommandText := fDMCadEnsaio.sdsEnsaio.CommandText + ' AND NOME LIKE ' + QuotedStr('%'+Edit4.Text+'%');
  fDMCadEnsaio.cdsEnsaio.Open;
end;

procedure TfrmCadEnsaio.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmCadEnsaio.btnCancelarClick(Sender: TObject);
begin
  if (fDMCadEnsaio.cdsEnsaio.State in [dsBrowse]) or not(fDMCadEnsaio.cdsEnsaio.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadEnsaio.cdsEnsaio.CancelUpdates;
  TS_Consulta.TabEnabled    := True;
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadEnsaio.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadEnsaio.btnAlterarClick(Sender: TObject);
begin
  if (fDMCadEnsaio.cdsEnsaio.IsEmpty) or not(fDMCadEnsaio.cdsEnsaio.Active) or (fDMCadEnsaio.cdsEnsaioID.AsInteger < 1) then
    exit;

  fDMCadEnsaio.cdsEnsaio.Edit;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
end;

procedure TfrmCadEnsaio.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfrmCadEnsaio.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadEnsaio);
end;

procedure TfrmCadEnsaio.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadEnsaio.Edit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadEnsaio.btnPesquisarClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not(pnlPesquisa.Visible);
  if pnlPesquisa.Visible then
    Edit4.SetFocus;
end;

procedure TfrmCadEnsaio.SMDBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
  ColunaOrdenada: String;
begin
  ColunaOrdenada := Column.FieldName;
  fDMCadEnsaio.cdsEnsaio.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I].Title = Column.Title) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

end.
