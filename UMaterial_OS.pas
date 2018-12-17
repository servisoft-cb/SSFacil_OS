unit UMaterial_OS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UDMBaixa_Mat_OS, StdCtrls, RxLookup, ExtCtrls, Mask, ToolEdit,
  CurrEdit, NxCollection;

type
  TfrmMaterial_OS = class(TForm)
    Label3: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label4: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    Panel1: TPanel;
    btnInserir: TNxButton;
    NxButton1: TNxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure RxDBLookupCombo1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure NxButton1Click(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    fDMBaixa_Mat_OS: TDMBaixa_Mat_OS;
    vTipo : String; //N=Novo  X=Não utilizar o material
  end;

var
  frmMaterial_OS: TfrmMaterial_OS;

implementation

uses rsDBUtils, USel_Produto, uUtilPadrao, DB;


{$R *.dfm}

procedure TfrmMaterial_OS.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmMaterial_OS.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMBaixa_Mat_OS);

  fDMBaixa_Mat_OS.cdsProduto.Close;
  fDMBaixa_Mat_OS.cdsProduto.Open;
end;

procedure TfrmMaterial_OS.RxDBLookupCombo1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
  begin
    if trim(RxDBLookupCombo1.Text) <> '' then
      vCodProduto_Pos := RxDBLookupCombo1.KeyValue
    else
      vCodProduto_Pos := 0;
    frmSel_Produto  := TfrmSel_Produto.Create(Self);
    frmSel_Produto.vTipo_Prod := 'M';
    frmSel_Produto.ShowModal;
    if vCodProduto_Pos > 0 then
      RxDBLookupCombo1.KeyValue := vCodProduto_Pos;
  end;
end;

procedure TfrmMaterial_OS.NxButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmMaterial_OS.btnInserirClick(Sender: TObject);
var
  vItemAux : Integer;
begin
  fDMBaixa_Mat_OS.cdsOS_Mat.Close;
  fDMBaixa_Mat_OS.sdsOS_Mat.ParamByName('ID').AsInteger := fDMBaixa_Mat_OS.qOSID.AsInteger;
  fDMBaixa_Mat_OS.cdsOS_Mat.Open;
  fDMBaixa_Mat_OS.cdsOS_Mat.Last;
  vItemAux := fDMBaixa_Mat_OS.cdsOS_MatITEM_MAT.AsInteger;

  fDMBaixa_Mat_OS.cdsOS_Mat.Insert;
  fDMBaixa_Mat_OS.cdsOS_MatID.AsInteger   := fDMBaixa_Mat_OS.qOSID.AsInteger;
  fDMBaixa_Mat_OS.cdsOS_MatITEM.AsInteger := 1;
  fDMBaixa_Mat_OS.cdsOS_MatITEM_MAT.AsInteger := vItemAux + 1;
  fDMBaixa_Mat_OS.cdsOS_MatID_PRODUTO.AsInteger := RxDBLookupCombo1.KeyValue;
  fDMBaixa_Mat_OS.cdsOS_MatQTD.AsFloat          := CurrencyEdit1.Value;

  fDMBaixa_Mat_OS.cdsProduto.Locate('ID',fDMBaixa_Mat_OS.cdsOS_MatID_PRODUTO.AsInteger,[loCaseInsensitive]);
  fDMBaixa_Mat_OS.cdsOS_MatVLR_UNITARIO.AsFloat := fDMBaixa_Mat_OS.cdsProdutoPRECO_VENDA.AsFloat;
  fDMBaixa_Mat_OS.cdsOS_MatVLR_TOTAL.AsFloat := StrToFloat(FormatFloat('0.00',fDMBaixa_Mat_OS.cdsOS_MatVLR_UNITARIO.AsFloat * fDMBaixa_Mat_OS.cdsOS_MatQTD.AsFloat));

  fDMBaixa_Mat_OS.cdsOS_MatQTD_RESTANTE.AsFloat := StrToFloat(FormatFloat('0.0000',fDMBaixa_Mat_OS.cdsOS_MatQTD.AsFloat));
  fDMBaixa_Mat_OS.cdsOS_MatQTD_FATURADO.AsFloat := StrToFloat(FormatFloat('0',0));
  fDMBaixa_Mat_OS.cdsOS_MatFATURAR.AsString     := 'N';
  fDMBaixa_Mat_OS.cdsOS_MatQTD_AFATURAR.AsFloat := StrToFloat(FormatFloat('0',0));
  fDMBaixa_Mat_OS.cdsOS_MatQTD_ESTOQUE.AsFloat := StrToFloat(FormatFloat('0',0));
  fDMBaixa_Mat_OS.cdsOS_MatTIPO.AsString       := 'N';
  fDMBaixa_Mat_OS.cdsOS_MatDTTIPO.AsDateTime   := Date;
  fDMBaixa_Mat_OS.cdsOS_MatUSUARIO_TIPO.AsString := vUsuario;
  fDMBaixa_Mat_OS.cdsOS_Mat.Post;
  fDMBaixa_Mat_OS.cdsOS_Mat.ApplyUpdates(0);

  Close;
end;

end.
