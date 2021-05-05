unit UConsOrdemServico_Canc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UDMConsOrdemServico, ExtCtrls, StdCtrls, Mask, ToolEdit,
  CurrEdit, NxCollection, Grids, DBGrids, SMDBGrid, RzTabs, DB, ComObj;

type
  TfrmConsOrdemServico_Canc = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    Label2: TLabel;
    Edit1: TEdit;
    Label3: TLabel;
    DateEdit1: TDateEdit;
    Label4: TLabel;
    DateEdit2: TDateEdit;
    btnConsultar: TNxButton;
    btnExcel: TNxButton;
    SMDBGrid1: TSMDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure btnExcelClick(Sender: TObject);
  private
    { Private declarations }
    fDMConsOrdemServico: TDMConsOrdemServico;

    procedure prc_CriaExcel(vDados: TDataSource; Grid : TSMDBGrid);
    procedure prc_Consultar;

  public
    { Public declarations }

  end;

var
  frmConsOrdemServico_Canc: TfrmConsOrdemServico_Canc;

implementation

uses rsDBUtils, StrUtils, uUtilPadrao;

{$R *.dfm}

procedure TfrmConsOrdemServico_Canc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmConsOrdemServico_Canc.FormShow(Sender: TObject);
begin
  fDMConsOrdemServico := TDMConsOrdemServico.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMConsOrdemServico);
  if CurrencyEdit1.AsInteger > 0 then
    btnConsultarClick(Sender);
end;

procedure TfrmConsOrdemServico_Canc.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
  fDMConsOrdemServico.cdsConsCancelada.IndexFieldNames := 'DATA;NUM_OS';
end;

procedure TfrmConsOrdemServico_Canc.prc_Consultar;
var
  vComando : String;
begin
  fDMConsOrdemServico.cdsConsCancelada.Close;
  vComando := '';
  if CurrencyEdit1.AsInteger > 0 then
    vComando := vComando + ' and O.NUM_OS = ' + IntToStr(CurrencyEdit1.AsInteger);
  if trim(Edit1.Text) <> '' then
    vComando := vComando + ' AND CLI.NOME LIKE ' + QuotedStr('%'+Edit1.Text+'%');
  if DateEdit1.Date > 10 then
    vComando := vComando + ' AND C.DATA >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.Date));
  if DateEdit2.Date > 10 then
    vComando := vComando + ' AND C.DATA <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit2.date));
  fDMConsOrdemServico.sdsConsCancelada.CommandText := fDMConsOrdemServico.ctConsCancelada + vComando;
  fDMConsOrdemServico.cdsConsCancelada.Open;
end;

procedure TfrmConsOrdemServico_Canc.prc_CriaExcel(vDados: TDataSource; Grid : TSMDBGrid);
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

procedure TfrmConsOrdemServico_Canc.SMDBGrid1TitleClick(Column: TColumn);
var
  ColunaOrdenada: String;
begin
  ColunaOrdenada := Column.FieldName;
  fDMConsOrdemServico.cdsConsCancelada.IndexFieldNames := Column.FieldName;
end;

procedure TfrmConsOrdemServico_Canc.btnExcelClick(Sender: TObject);
begin
  prc_CriaExcel(SMDBGrid1.DataSource, SMDBGrid1);
end;

end.
