unit UBaixa_Mat_OS_Det;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UDMBaixa_Mat_OS, Grids, DBGrids, SMDBGrid, StdCtrls, ExtCtrls,
  NxCollection, DB;

type
  TfrmBaixa_Mat_OS_Det = class(TForm)
    SMDBGrid5: TSMDBGrid;
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    btnInserir: TNxButton;
    btnInutilizar: TNxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SMDBGrid5DblClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnInserirClick(Sender: TObject);
    procedure btnInutilizarClick(Sender: TObject);
    procedure SMDBGrid5GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    fDMBaixa_Mat_OS: TDMBaixa_Mat_OS;
  end;

var
  frmBaixa_Mat_OS_Det: TfrmBaixa_Mat_OS_Det;

implementation

uses rsDBUtils, UMaterial_OS, StdConvs, uUtilCliente, uUtilPadrao;

{$R *.dfm}

procedure TfrmBaixa_Mat_OS_Det.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmBaixa_Mat_OS_Det.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMBaixa_Mat_OS);
end;

procedure TfrmBaixa_Mat_OS_Det.SMDBGrid5DblClick(Sender: TObject);
begin
  if (fDMBaixa_Mat_OS.cdsOrdemServico_MatID_PRODUTO.AsInteger > 0) and (fDMBaixa_Mat_OS.cdsOrdemServico_MatTIPO.AsString <> 'X') then
    fDMBaixa_Mat_OS.vEscolheu_Mat := True;
  Close;
end;

procedure TfrmBaixa_Mat_OS_Det.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_Return) and (fDMBaixa_Mat_OS.cdsOrdemServico_MatID_PRODUTO.AsInteger > 0) then
  begin
    fDMBaixa_Mat_OS.vEscolheu_Mat := True;
    Close;
  end
  else
  if Key = 27 then
    Close;
end;

procedure TfrmBaixa_Mat_OS_Det.btnInserirClick(Sender: TObject);
begin
  frmMaterial_OS := TfrmMaterial_OS.Create(self);
  frmMaterial_OS.fDMBaixa_Mat_OS := fDMBaixa_Mat_OS;
  frmMaterial_OS.ShowModal;
  FreeAndNil(frmMaterial_OS);
  fDMBaixa_Mat_OS.prc_Abrir_OrdemServico_Mat(fDMBaixa_Mat_OS.qOSID.AsInteger,0);
end;

procedure TfrmBaixa_Mat_OS_Det.btnInutilizarClick(Sender: TObject);
var
  vAux : String;
begin
  if StrToFloat(FormatFloat('0.0000',fDMBaixa_Mat_OS.cdsOrdemServico_MatQTD_ESTOQUE.AsFloat)) > 0 then
  begin
    MessageDlg('*** Material já foi dado baixa no estoque!', mtError, [mbOk], 0);
    exit;
  end;

  if MessageDlg('Deseja marcar o Material ' + fDMBaixa_Mat_OS.cdsOrdemServico_MatNOME.AsString + ', como não utilizável nesta OS?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  vAux := InputBox('','Informe S para confirmar', '');

  if trim(vAux) <> 'S' then
    exit;

  fDMBaixa_Mat_OS.cdsOS_Mat.Close;
  fDMBaixa_Mat_OS.sdsOS_Mat.ParamByName('ID').AsInteger := fDMBaixa_Mat_OS.qOSID.AsInteger;
  fDMBaixa_Mat_OS.cdsOS_Mat.Open;
  
  if fDMBaixa_Mat_OS.cdsOS_Mat.Locate('ITEM_MAT',fDMBaixa_Mat_OS.cdsOrdemServico_MatITEM_MAT.AsInteger,[loCaseInsensitive]) then
  begin
    fDMBaixa_Mat_OS.cdsOS_Mat.Edit;
    fDMBaixa_Mat_OS.cdsOS_MatTIPO.AsString         := 'X';
    fDMBaixa_Mat_OS.cdsOS_MatDTTIPO.AsDateTime     := Date;
    fDMBaixa_Mat_OS.cdsOS_MatUSUARIO_TIPO.AsString := vUsuario;
    fDMBaixa_Mat_OS.cdsOS_Mat.Post;
    fDMBaixa_Mat_OS.cdsOS_Mat.ApplyUpdates(0);
    fDMBaixa_Mat_OS.prc_Abrir_OrdemServico_Mat(fDMBaixa_Mat_OS.qOSID.AsInteger,0);
  end;
end;

procedure TfrmBaixa_Mat_OS_Det.SMDBGrid5GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if fDMBaixa_Mat_OS.cdsOrdemServico_MatTIPO.AsString = 'X' then
    AFont.Color := clRed;
end;

end.
