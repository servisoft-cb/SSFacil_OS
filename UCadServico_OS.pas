unit UCadServico_OS;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadServico_OS,
  DBGrids, ExtCtrls, StdCtrls, DB, RzTabs, DBCtrls, ToolEdit, UCBase, RxLookup, Mask,
  jpeg, NxCollection, CurrEdit;

type
  TfrmCadServico_OS = class(TForm)
    RzPageControl1: TRzPageControl;
    TS_Consulta: TRzTabSheet;
    TS_Cadastro: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    Panel2: TPanel;
    Panel1: TPanel;
    pnlCadastro: TPanel;
    Label8: TLabel;
    DBEdit4: TDBEdit;
    StaticText1: TStaticText;
    pnlPesquisa: TPanel;
    Label6: TLabel;
    Edit4: TEdit;
    btnInserir: TNxButton;
    btnExcluir: TNxButton;
    btnPesquisar: TNxButton;
    btnConsultar: TNxButton;
    btnAlterar: TNxButton;
    btnCancelar: TNxButton;
    btnConfirmar: TNxButton;
    UCControls1: TUCControls;
    Label1: TLabel;
    DBEdit7: TDBEdit;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
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
  private
    { Private declarations }
    fDMCadServico_OS: TDMCadServico_OS;

    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar;
    procedure prc_Limpar_Edit_Consulta;

    procedure Habilita_Campos;

  public
    { Public declarations }

  end;

var
  frmCadServico_OS: TfrmCadServico_OS;

implementation

uses DmdDatabase, rsDBUtils, UMenu;

{$R *.dfm}

procedure TfrmCadServico_OS.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadServico_OS.btnExcluirClick(Sender: TObject);
begin
  if fDMCadServico_OS.cdsServico_OS.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  prc_Excluir_Registro;
end;

procedure TfrmCadServico_OS.prc_Excluir_Registro;
begin
  fDMCadServico_OS.prc_Excluir;
end;

procedure TfrmCadServico_OS.prc_Gravar_Registro;
begin
  fDMCadServico_OS.prc_Gravar;
  if fDMCadServico_OS.cdsServico_OS.State in [dsEdit,dsInsert] then
  begin
    MessageDlg(fDMCadServico_OS.vMsgErro, mtError, [mbOk], 0);
    exit;
  end;
  TS_Consulta.TabEnabled    := not(TS_Consulta.TabEnabled);
  RzPageControl1.ActivePage := TS_Consulta;
  Habilita_Campos;
  {pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);}
end;

procedure TfrmCadServico_OS.prc_Inserir_Registro;
begin
  fDMCadServico_OS.prc_Inserir;

  if fDMCadServico_OS.cdsServico_OS.State in [dsBrowse] then
    exit;

  RzPageControl1.ActivePage := TS_Cadastro;

  TS_Consulta.TabEnabled := False;
  Habilita_Campos;
  {btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;}
  DBEdit7.SetFocus;
end;

procedure TfrmCadServico_OS.FormShow(Sender: TObject);
begin
  fDMCadServico_OS := TDMCadServico_OS.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadServico_OS);
end;

procedure TfrmCadServico_OS.prc_Consultar;
begin
  fDMCadServico_OS.cdsServico_OS.Close;
  fDMCadServico_OS.sdsServico_OS.CommandText := fDMCadServico_OS.ctCommand
                                      + ' WHERE 0 = 0 ';
  if Trim(Edit4.Text) <> '' then
    fDMCadServico_OS.sdsServico_OS.CommandText := fDMCadServico_OS.sdsServico_OS.CommandText
                                    + ' AND NOME LIKE ' + QuotedStr('%'+Edit4.Text+'%');
  fDMCadServico_OS.cdsServico_OS.Open;
end;

procedure TfrmCadServico_OS.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmCadServico_OS.btnCancelarClick(Sender: TObject);
begin
  if (fDMCadServico_OS.cdsServico_OS.State in [dsBrowse]) or not(fDMCadServico_OS.cdsServico_OS.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadServico_OS.cdsServico_OS.CancelUpdates;
  TS_Consulta.TabEnabled    := True;
  RzPageControl1.ActivePage := TS_Consulta;
  Habilita_Campos;
end;

procedure TfrmCadServico_OS.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadServico_OS.btnAlterarClick(Sender: TObject);
begin
  if (fDMCadServico_OS.cdsServico_OS.IsEmpty) or not(fDMCadServico_OS.cdsServico_OS.Active) or (fDMCadServico_OS.cdsServico_OSID.AsInteger < 1) then
    exit;

  fDMCadServico_OS.cdsServico_OS.Edit;

  TS_Consulta.TabEnabled := False;
  Habilita_Campos;

  {btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;}
end;

procedure TfrmCadServico_OS.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfrmCadServico_OS.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadServico_OS);
end;

procedure TfrmCadServico_OS.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadServico_OS.Edit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadServico_OS.btnPesquisarClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not(pnlPesquisa.Visible);
  if pnlPesquisa.Visible then
    Edit4.SetFocus
  else
    prc_Limpar_Edit_Consulta;
end;

procedure TfrmCadServico_OS.prc_Limpar_Edit_Consulta;
begin
  Edit4.Clear;
end;

procedure TfrmCadServico_OS.Habilita_Campos;
begin
  pnlCadastro.Enabled := not(pnlCadastro.Enabled);
  
  btnAlterar.Enabled   := not(btnAlterar.Enabled);
  btnConfirmar.Enabled := not(btnConfirmar.Enabled);
end;

end.
