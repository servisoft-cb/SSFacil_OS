unit USel_Ensaio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, SMDBGrid, UDMSel_Setor_Proc, NxCollection,
  StdCtrls, ExtCtrls, UDMCadOrdemServico, DB, jpeg;

type
  TfrmSel_Ensaio = class(TForm)
    SMDBGrid1: TSMDBGrid;
    Panel1: TPanel;
    Label1: TLabel;
    btnCancelar: TNxButton;
    btnConfirmar: TNxButton;
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
    procedure prc_Gravar_cdsSel_Ensaio;

  public
    { Public declarations }
    fDMCadOrdemServico: TDMCadOrdemServico;
    vID_Setor_Local : Integer;

  end;

var
  frmSel_Ensaio: TfrmSel_Ensaio;

implementation

uses rsDBUtils, uUtilPadrao;

{$R *.dfm}

procedure TfrmSel_Ensaio.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FreeAndNil(fDMSel_Setor_Proc);
  vID_Setor_Local := 0;
  Action := Cafree;
end;

procedure TfrmSel_Ensaio.prc_Gravar_cdsSel_Ensaio;
var
  i : Integer;
begin
  if fDMSel_Setor_Proc.cdsEnsaio.IsEmpty then
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
      if fDMCadOrdemServico.cdsOrdemServico_Ensaio.Locate('ID_ENSAIO',fDMSel_Setor_Proc.mAuxiliarID_Ensaio.AsInteger,[loCaseInsensitive]) then
        fDMCadOrdemServico.cdsOrdemServico_Ensaio.Delete;
    end;
  end
  else
  begin
    fDMSel_Setor_Proc.mAuxiliarSelecionado.AsBoolean := True;
  end;
  fDMSel_Setor_Proc.mAuxiliar.Post;
end;

procedure TfrmSel_Ensaio.prc_Consultar;
var
  vIDSetorAux : Integer;
begin
  SMDBGrid1.DisableScroll;
  fDMSel_Setor_Proc.mAuxiliar.EmptyDataSet;
  fDMSel_Setor_Proc.cdsEnsaio.Close;
  fDMSel_Setor_Proc.cdsEnsaio.Open;

  fDMSel_Setor_Proc.cdsEnsaio.First;
  while not fDMSel_Setor_Proc.cdsEnsaio.Eof do
  begin
    fDMSel_Setor_Proc.mAuxiliar.Insert;
    fDMSel_Setor_Proc.mAuxiliarID_Ensaio.AsInteger := fDMSel_Setor_Proc.cdsEnsaioID.AsInteger;
    fDMSel_Setor_Proc.mAuxiliarNome_Ensaio.AsString := fDMSel_Setor_Proc.cdsEnsaioNOME.AsString; 
    fDMSel_Setor_Proc.mAuxiliarSelecionado.AsBoolean     := False;
    fDMSel_Setor_Proc.mAuxiliarFlag.AsInteger            := 2;

    if fDMCadOrdemServico.cdsOrdemServico_Ensaio.Locate('ID_ENSAIO',fDMSel_Setor_Proc.cdsEnsaioID.AsInteger,[loCaseInsensitive]) then
    begin
      fDMSel_Setor_Proc.mAuxiliarSelecionado.AsBoolean     := True;
      fDMSel_Setor_Proc.mAuxiliarSelecionado_Ori.AsBoolean := True;
      fDMSel_Setor_Proc.mAuxiliarDescricao.AsString        := fDMCadOrdemServico.cdsOrdemServico_EnsaioDESCRICAO.AsString;
    end;
    fDMSel_Setor_Proc.mAuxiliar.Post;

    fDMSel_Setor_Proc.cdsEnsaio.Next;
  end;
  fDMSel_Setor_Proc.mAuxiliar.IndexFieldNames := 'Nome_Ensaio;Flag';
  SMDBGrid1.EnableScroll;
end;

procedure TfrmSel_Ensaio.FormShow(Sender: TObject);
begin
  fDMSel_Setor_Proc := TDMSel_Setor_Proc.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMSel_Setor_Proc);
  prc_Consultar;
end;

procedure TfrmSel_Ensaio.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmSel_Ensaio.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if fDMSel_Setor_Proc.mAuxiliarSelecionado.AsBoolean then
  begin
    AFont.Color := clBlue;
    AFont.Style := [fsBold];
  end;
end;

procedure TfrmSel_Ensaio.SMDBGrid1DblClick(Sender: TObject);
begin
  prc_Gravar_cdsSel_Ensaio;
end;

procedure TfrmSel_Ensaio.btnConfirmarClick(Sender: TObject);
var
  vAux : Real;
begin
  SMDBGrid1.DisableScroll;
  fDMSel_Setor_Proc.mAuxiliar.First;
  while not fDMSel_Setor_Proc.mAuxiliar.Eof do
  begin
    if (fDMSel_Setor_Proc.mAuxiliarSelecionado.AsBoolean) and not(fDMSel_Setor_Proc.mAuxiliarSelecionado_Ori.AsBoolean) then
    begin
      if not fDMCadOrdemServico.cdsOrdemServico_Ensaio.Locate('ID_ENSAIO',fDMSel_Setor_Proc.mAuxiliarID_Ensaio.AsInteger,[loCaseInsensitive]) then
      begin
        fDMCadOrdemServico.prc_Inserir_Ensaio;
        fDMCadOrdemServico.cdsOrdemServico_EnsaioID_ENSAIO.AsInteger := fDMSel_Setor_Proc.mAuxiliarID_Ensaio.AsInteger;
        fDMCadOrdemServico.cdsOrdemServico_EnsaioDESCRICAO.AsString  := fDMSel_Setor_Proc.mAuxiliarDescricao.AsString;
        fDMCadOrdemServico.cdsOrdemServico_Ensaio.Post;
      end;
    end;

    fDMSel_Setor_Proc.mAuxiliar.Next;
  end;
  SMDBGrid1.EnableScroll;
  Close;
end;

procedure TfrmSel_Ensaio.SMDBGrid1KeyDown(Sender: TObject; var Key: Word;
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
