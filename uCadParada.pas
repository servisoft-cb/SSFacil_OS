unit UCadParada;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadParada, Mask, 
  db, RxDBComb, UCBase, StdCtrls, DBCtrls, ExtCtrls, RzTabs, DBGrids, ToolEdit, CurrEdit, NxCollection, RzPanel;

type
  TfrmCadParada = class(TForm)
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
    fDMCadParada: TDMCadParada;
    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar;
  public
    { Public declarations }       
  end;

var
  frmCadParada: TfrmCadParada;

implementation

uses DmdDatabase, rsDBUtils, UMenu;

{$R *.dfm}

procedure TfrmCadParada.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin                             
  Action := Cafree;
end;

procedure TfrmCadParada.btnExcluirClick(Sender: TObject);
begin
  if fDMCadParada.cdsParada.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  prc_Excluir_Registro;
end;

procedure TfrmCadParada.prc_Excluir_Registro;
begin
  fDMCadParada.prc_Excluir;
end;

procedure TfrmCadParada.prc_Gravar_Registro;
begin
  fDMCadParada.prc_Gravar;
  if fDMCadParada.cdsParada.State in [dsEdit,dsInsert] then
  begin
    MessageDlg(fDMCadParada.vMsgErro, mtError, [mbOk], 0);
    exit;
  end;
  TS_Consulta.TabEnabled    := not(TS_Consulta.TabEnabled);
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadParada.prc_Inserir_Registro;
begin
  fDMCadParada.prc_Inserir;

  if fDMCadParada.cdsParada.State in [dsBrowse] then
    exit;

  RzPageControl1.ActivePage := TS_Cadastro;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
  DBEdit1.SetFocus;
end;

procedure TfrmCadParada.FormShow(Sender: TObject);
var
  i : Integer;
begin
  fDMCadParada := TDMCadParada.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadParada);
  Edit4.SetFocus;
end;

procedure TfrmCadParada.prc_Consultar;
begin
  fDMCadParada.cdsParada.Close;
  fDMCadParada.sdsParada.CommandText := fDMCadParada.ctCommand + ' WHERE 0 = 0 ';
  if Trim(Edit4.Text) <> '' then
    fDMCadParada.sdsParada.CommandText := fDMCadParada.sdsParada.CommandText + ' AND NOME LIKE ' + QuotedStr('%'+Edit4.Text+'%');
  fDMCadParada.cdsParada.Open;
end;

procedure TfrmCadParada.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmCadParada.btnCancelarClick(Sender: TObject);
begin
  if (fDMCadParada.cdsParada.State in [dsBrowse]) or not(fDMCadParada.cdsParada.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadParada.cdsParada.CancelUpdates;
  TS_Consulta.TabEnabled    := True;
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadParada.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadParada.btnAlterarClick(Sender: TObject);
begin
  if (fDMCadParada.cdsParada.IsEmpty) or not(fDMCadParada.cdsParada.Active) or (fDMCadParada.cdsParadaID.AsInteger < 1) then
    exit;

  fDMCadParada.cdsParada.Edit;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
end;

procedure TfrmCadParada.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfrmCadParada.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadParada);
end;

procedure TfrmCadParada.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadParada.Edit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadParada.btnPesquisarClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not(pnlPesquisa.Visible);
  if pnlPesquisa.Visible then
    Edit4.SetFocus;
end;

procedure TfrmCadParada.SMDBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
  ColunaOrdenada: String;
begin
  ColunaOrdenada := Column.FieldName;
  fDMCadParada.cdsParada.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I].Title = Column.Title) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

end.
