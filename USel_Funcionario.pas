unit USel_Funcionario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, SMDBGrid, UDMSel_Setor_Proc, NxCollection,
  StdCtrls, ExtCtrls, UDMCadOrdemServico, DB, jpeg;

type
  TfrmSel_Funcionario = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    btnCancelar: TNxButton;
    btnConfirmar: TNxButton;
    SMDBGrid1: TSMDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure SMDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    fDMSel_Setor_Proc: TDMSel_Setor_Proc;

    procedure prc_Consultar;
    procedure prc_Gravar_cdsSel_Func;

  public
    { Public declarations }
    fDMCadOrdemServico: TDMCadOrdemServico;
    vID_Setor_Local : Integer;

  end;

var
  frmSel_Funcionario: TfrmSel_Funcionario;

implementation

uses rsDBUtils, uUtilPadrao;

{$R *.dfm}

procedure TfrmSel_Funcionario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FreeAndNil(fDMSel_Setor_Proc);
  vID_Setor_Local := 0;
  Action := Cafree;
end;

procedure TfrmSel_Funcionario.prc_Gravar_cdsSel_Func;
var
  i : Integer;
begin
  if fDMSel_Setor_Proc.cdsFuncionario.IsEmpty then
    exit;

  if fDMSel_Setor_Proc.mAuxiliarSelecionado_Ori.AsBoolean then
  begin
    if MessageDlg('Processo já lançado no orçamento, deseja excluir?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
      exit;
  end;

  fDMSel_Setor_Proc.mAuxiliar.Edit;
  if fDMSel_Setor_Proc.mAuxiliarSelecionado.AsBoolean then
  begin
    fDMSel_Setor_Proc.mAuxiliarSelecionado.AsBoolean := False;
    if fDMSel_Setor_Proc.mAuxiliarSelecionado_Ori.AsBoolean then
    begin
      if fDMCadOrdemServico.cdsOrdemServico_Ass.Locate('ID_FUNCIONARIO',fDMSel_Setor_Proc.mAuxiliarID_Funcionario.AsInteger,[loCaseInsensitive]) then
        fDMCadOrdemServico.cdsOrdemServico_Ass.Delete;
    end;
  end
  else
  begin
    fDMSel_Setor_Proc.mAuxiliarSelecionado.AsBoolean := True;
  end;
  fDMSel_Setor_Proc.mAuxiliar.Post;
end;

procedure TfrmSel_Funcionario.prc_Consultar;
var
  vIDSetorAux : Integer;
begin
  SMDBGrid1.DisableScroll;
  fDMSel_Setor_Proc.mAuxiliar.EmptyDataSet;
  fDMSel_Setor_Proc.cdsFuncionario.Close;
  fDMSel_Setor_Proc.cdsFuncionario.Open;

  fDMSel_Setor_Proc.cdsFuncionario.First;
  while not fDMSel_Setor_Proc.cdsFuncionario.Eof do
  begin
    fDMSel_Setor_Proc.mAuxiliar.Insert;
    fDMSel_Setor_Proc.mAuxiliarID_Funcionario.AsInteger  := fDMSel_Setor_Proc.cdsFuncionarioCODIGO.AsInteger;
    fDMSel_Setor_Proc.mAuxiliarNome_Funcionario.AsString := fDMSel_Setor_Proc.cdsFuncionarioNOME.AsString;
    fDMSel_Setor_Proc.mAuxiliarFuncao.AsString           := fDMSel_Setor_Proc.cdsFuncionarioFUNCAO.AsString;
    fDMSel_Setor_Proc.mAuxiliarSelecionado.AsBoolean     := False;
    fDMSel_Setor_Proc.mAuxiliarFlag.AsInteger            := 2;

    if fDMCadOrdemServico.cdsOrdemServico_Ass.Locate('ID_FUNCIONARIO',fDMSel_Setor_Proc.cdsFuncionarioCODIGO.AsInteger,[loCaseInsensitive]) then
    begin
      fDMSel_Setor_Proc.mAuxiliarSelecionado.AsBoolean     := True;
      fDMSel_Setor_Proc.mAuxiliarSelecionado_Ori.AsBoolean := True;
      fDMSel_Setor_Proc.mAuxiliarDescricao.AsString        := '';
    end;
    fDMSel_Setor_Proc.mAuxiliar.Post;

    fDMSel_Setor_Proc.cdsFuncionario.Next;
  end;
  fDMSel_Setor_Proc.mAuxiliar.IndexFieldNames := 'Nome_Funcionario;Flag';
  SMDBGrid1.EnableScroll;
end;

procedure TfrmSel_Funcionario.FormShow(Sender: TObject);
begin
  fDMSel_Setor_Proc := TDMSel_Setor_Proc.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMSel_Setor_Proc);
  prc_Consultar;
end;

procedure TfrmSel_Funcionario.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmSel_Funcionario.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if fDMSel_Setor_Proc.mAuxiliarSelecionado.AsBoolean then
  begin
    AFont.Color := clBlue;
    AFont.Style := [fsBold];
  end;
end;

procedure TfrmSel_Funcionario.SMDBGrid1DblClick(Sender: TObject);
begin
  prc_Gravar_cdsSel_Func;
end;

procedure TfrmSel_Funcionario.btnConfirmarClick(Sender: TObject);
var
  vAux : Real;
begin
  SMDBGrid1.DisableScroll;
  fDMSel_Setor_Proc.mAuxiliar.First;
  while not fDMSel_Setor_Proc.mAuxiliar.Eof do
  begin
    if (fDMSel_Setor_Proc.mAuxiliarSelecionado.AsBoolean) and not(fDMSel_Setor_Proc.mAuxiliarSelecionado_Ori.AsBoolean) then
    begin
      if not fDMCadOrdemServico.cdsOrdemServico_Ass.Locate('ID_FUNCIONARIO',fDMSel_Setor_Proc.mAuxiliarID_Funcionario.AsInteger,[loCaseInsensitive]) then
      begin
        fDMCadOrdemServico.prc_Inserir_ASS;
        fDMCadOrdemServico.cdsOrdemServico_AssID_FUNCIONARIO.AsInteger   := fDMSel_Setor_Proc.mAuxiliarID_Funcionario.AsInteger;
        fDMCadOrdemServico.cdsOrdemServico_AssclNomeFuncionario.AsString := fDMSel_Setor_Proc.mAuxiliarNome_Funcionario.AsString;
        fDMCadOrdemServico.cdsOrdemServico_Ass.Post;
      end;
    end;

    fDMSel_Setor_Proc.mAuxiliar.Next;
  end;
  SMDBGrid1.EnableScroll;
  Close;
end;

procedure TfrmSel_Funcionario.SMDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_RETURN then
  begin
    if trim(fDMSel_Setor_Proc.mAuxiliarDescricao.AsString) <> '' then
    begin
      fDMSel_Setor_Proc.mAuxiliar.Edit;
      fDMSel_Setor_Proc.mAuxiliarSelecionado.AsBoolean := True;
      fDMSel_Setor_Proc.mAuxiliar.Post;
    end;
  end;
end;

end.
