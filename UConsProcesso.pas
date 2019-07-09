unit UConsProcesso;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UDMConsOS, DBVGrids, Grids, DBGrids, SMDBGrid, StdCtrls,
  NxCollection, RxLookup, NxEdit, CurrEdit, Mask, ToolEdit, ExtCtrls,
  RzTabs, DB, Menus, DBCtrls, ComObj;

type
  TfrmConsProcesso = class(TForm)
    Panel1: TPanel;
    NxLabel2: TNxLabel;
    NxLabel6: TNxLabel;
    Shape6: TShape;
    Label6: TLabel;
    NxLabel11: TNxLabel;
    NxLabel12: TNxLabel;
    Label5: TLabel;
    btnConsTalao: TNxButton;
    CurrencyEdit3: TCurrencyEdit;
    cbxOpcao: TNxComboBox;
    RxDBLookupCombo1: TRxDBLookupCombo;
    CurrencyEdit5: TCurrencyEdit;
    RzPageControl1: TRzPageControl;
    TS_Talao: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    NxLabel13: TNxLabel;
    DateEdit5: TDateEdit;
    NxLabel14: TNxLabel;
    DateEdit6: TDateEdit;
    NxLabel1: TNxLabel;
    Edit3: TEdit;
    Shape1: TShape;
    Label1: TLabel;
    NxLabel3: TNxLabel;
    NxLabel4: TNxLabel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    Panel2: TPanel;
    Label2: TLabel;
    DBText1: TDBText;
    Label3: TLabel;
    DBText2: TDBText;
    Label4: TLabel;
    DBText3: TDBText;
    btnExcel: TNxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnConsTalaoClick(Sender: TObject);
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure CurrencyEdit5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CurrencyEdit5Exit(Sender: TObject);
    procedure RxDBLookupCombo1Change(Sender: TObject);
    procedure Edit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit3Enter(Sender: TObject);
    procedure Edit3Exit(Sender: TObject);
    procedure btnExcelClick(Sender: TObject);
  private
    { Private declarations }
    fDMConsOS: TDMConsOS;
    vOpcaoImp : String;
    vNomeAnt : String;

    function fnc_Busca_Cliente(ID : Integer) : String;

    procedure prc_Consulta;

    procedure prc_CriaExcel(vDados: TDataSource; Grid : TSMDBGrid);

  public
    { Public declarations }
  end;

var
  frmConsProcesso: TfrmConsProcesso;

implementation

uses rsDBUtils, USel_Pessoa, uUtilPadrao, StrUtils;

{$R *.dfm}

procedure TfrmConsProcesso.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmConsProcesso.FormShow(Sender: TObject);
begin
  fDMConsOS:= TDMConsOS.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMConsOS);
  fDMConsOS.cdsProcesso.Open;
end;

procedure TfrmConsProcesso.btnConsTalaoClick(Sender: TObject);
begin
  prc_Consulta;
end;

procedure TfrmConsProcesso.SMDBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
  ColunaOrdenada: String;
  vCor : TColor;
begin
  ColunaOrdenada := Column.FieldName;
  fDMConsOS.cdsConsProcesso.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := $00B7FFB7;
end;

procedure TfrmConsProcesso.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if (fDMConsOS.cdsConsProcessoSTATUS.AsString = 'F') or (fDMConsOS.cdsConsProcessoDTCONCLUIDO.AsDateTime > 10)  then
    Background := clMoneyGreen
  else
  if fDMConsOS.cdsConsProcessoSTATUS.AsString = 'I' then
    Background := $00FFFFB9;
end;

procedure TfrmConsProcesso.CurrencyEdit5KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_F2) then
  begin
    if CurrencyEdit5.AsInteger > 0 then
      vCodPessoa_Pos := CurrencyEdit5.AsInteger;
    frmSel_Pessoa := TfrmSel_Pessoa.Create(Self);
    frmSel_Pessoa.vTipo_Pessoa := 'C';
    frmSel_Pessoa.ShowModal;
    if vCodPessoa_Pos > 0 then
    begin
      CurrencyEdit5.AsInteger := vCodPessoa_Pos;
      CurrencyEdit5.SetFocus;
      Edit3.Text := '';
      if CurrencyEdit5.AsInteger > 0 then
        Edit3.Text := fnc_Busca_Cliente(CurrencyEdit5.AsInteger);
    end;
  end;
end;

function TfrmConsProcesso.fnc_Busca_Cliente(ID: Integer): String;
begin
  Result := '';
  fDMConsOS.qCliente.Close;
  fDMConsOS.qCliente.ParamByName('CODIGO').AsInteger := ID;
  fDMConsOS.qCliente.Open;
  Result := fDMConsOS.qClienteNOME.AsString;
end;

procedure TfrmConsProcesso.CurrencyEdit5Exit(Sender: TObject);
begin
  if CurrencyEdit5.AsInteger > 0 then
    Edit3.Text := fnc_Busca_Cliente(CurrencyEdit5.AsInteger);
end;

procedure TfrmConsProcesso.RxDBLookupCombo1Change(Sender: TObject);
begin
  fDMConsOS.cdsConsProcesso.Close;
end;

procedure TfrmConsProcesso.Edit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_F2) then
  begin
    if CurrencyEdit5.AsInteger > 0 then
      vCodPessoa_Pos := CurrencyEdit5.AsInteger;
    frmSel_Pessoa := TfrmSel_Pessoa.Create(Self);
    frmSel_Pessoa.vTipo_Pessoa := 'C';
    frmSel_Pessoa.ShowModal;
    if vCodPessoa_Pos > 0 then
    begin
      CurrencyEdit5.AsInteger := vCodPessoa_Pos;
      CurrencyEdit5.SetFocus;
      Edit3.Text := '';
      if CurrencyEdit5.AsInteger > 0 then
        Edit3.Text := fnc_Busca_Cliente(CurrencyEdit5.AsInteger);
    end;
  end;
end;

procedure TfrmConsProcesso.Edit3Enter(Sender: TObject);
begin
  vNomeAnt := Edit3.Text;
end;

procedure TfrmConsProcesso.Edit3Exit(Sender: TObject);
begin
  if (vNomeAnt <> Edit3.Text) and (trim(Edit3.Text) <> '') then
    CurrencyEdit5.Clear;
end;

procedure TfrmConsProcesso.prc_Consulta;
var
  vComando : String;
begin
  fDMConsOS.cdsConsProcesso.Close;
  vComando := ' WHERE 0 = 0';
  if CurrencyEdit3.AsInteger > 0 then
    vComando := vComando + '  AND O.NUM_OS = ' + IntToStr(CurrencyEdit3.AsInteger);
  if DateEdit5.Date > 10 then
    vComando := vComando + ' AND O.DTEMISSAO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit5.date));
  if DateEdit6.Date > 10 then
    vComando := vComando + ' AND O.DTEMISSAO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit6.date));
  if DateEdit1.Date > 10 then
    vComando := vComando + ' AND OPR.DTCONCLUIDO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.date));
  if DateEdit2.Date > 10 then
    vComando := vComando + ' AND OPR.DTCONCLUIDO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit2.date));
  case cbxOpcao.ItemIndex of
    1 : vComando := vComando + ' AND ((OPR.STATUS IS NULL) OR (OPR.STATUS = ' + QuotedStr('') + '))';
    2 : vComando := vComando + ' AND OPR.STATUS <> ' + QuotedStr('F');
    3 : vComando := vComando + ' AND OPR.STATUS = ' + QuotedStr('I');
    4 : vComando := vComando + ' AND OPR.STATUS = ' + QuotedStr('F');
  end;
  if trim(RxDBLookupCombo1.Text) <> '' then
    vComando := vComando + ' AND OPR.ID_PROCESSO = ' + IntToStr(RxDBLookupCombo1.KeyValue);
  if CurrencyEdit5.AsInteger > 0 then
    vComando := vComando + ' AND O.ID_CLIENTE = ' + IntToStr(CurrencyEdit5.AsInteger)
  else
  if trim(Edit3.Text) <> '' then
    vComando := vComando + ' AND CLI.NOME LIKE ' + QuotedStr('%'+Edit3.Text+'%');
  fDMConsOS.sdsConsProcesso.CommandText := fDMConsOS.ctConsProcesso + vComando;
  fDMConsOS.cdsConsProcesso.Open;
end;

procedure TfrmConsProcesso.btnExcelClick(Sender: TObject);
begin
  prc_CriaExcel(SMDBGrid1.DataSource, SMDBGrid1)
end;

procedure TfrmConsProcesso.prc_CriaExcel(vDados: TDataSource; Grid: TSMDBGrid);
var
  planilha: variant;
  vTexto: string;
begin
  Screen.Cursor := crHourGlass;
  vDados.DataSet.First;

  planilha := CreateOleObject('Excel.Application');
  planilha.WorkBooks.add(1);
  planilha.caption := 'Exportando dados do tela para o Excel';
  planilha.visible := true;

  prc_Preencher_Excel2(planilha, vDados, Grid);

  planilha.columns.Autofit;
  vTexto := ExtractFilePath(Application.ExeName);

  vTexto := vTexto + Name + '_Pessoa_' + Grid.Name + '_' +  Monta_Numero(DateToStr(Date), 0);
  try
    planilha.ActiveWorkBook.SaveAs(vTexto);
  finally
    Screen.Cursor := crDefault;
  end;
end;

end.
