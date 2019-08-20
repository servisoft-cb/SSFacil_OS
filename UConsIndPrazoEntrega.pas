unit UConsIndPrazoEntrega;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UDMIndicador, NxCollection, StdCtrls, Mask, ToolEdit, ExtCtrls,
  Grids, DBGrids, SMDBGrid, RzTabs, DB, ComObj;

type
  TfrmConsIndPrazoEntrega = class(TForm)
    Panel1: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    btnConsultar: TNxButton;
    NxButton1: TNxButton;
    RzPageControl1: TRzPageControl;
    TS_PrazoEntrega: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    TS_PorCliente: TRzTabSheet;
    SMDBGrid2: TSMDBGrid;
    Panel2: TPanel;
    Shape1: TShape;
    Label5: TLabel;
    Shape2: TShape;
    Label6: TLabel;
    Panel3: TPanel;
    Shape3: TShape;
    Label1: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnConsultarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SMDBGrid2GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure NxButton1Click(Sender: TObject);
  private
    { Private declarations }
    fDMIndicador: TDMIndicador;

    procedure prc_ConsPrazoEntrega;
    procedure prc_ConsPrazoCliente;
    procedure prc_CriaExcel(vDados: TDataSource; Grid : TSMDBGrid);

  public
    { Public declarations }
  end;

var
  frmConsIndPrazoEntrega: TfrmConsIndPrazoEntrega;

implementation

uses rsDBUtils, uUtilPadrao;


{$R *.dfm}

procedure TfrmConsIndPrazoEntrega.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmConsIndPrazoEntrega.btnConsultarClick(Sender: TObject);
begin
  if (DateEdit1.Date <= 10) or (DateEdit2.Date <= 10) then
  begin
    MessageDlg('*** É obrigatório informar a data de Início e Final!', mtInformation, [mbOk], 0);
    exit;
  end;

  if RzPageControl1.ActivePage = TS_PrazoEntrega then
    prc_ConsPrazoEntrega
  else
    prc_ConsPrazoCliente;
end;

procedure TfrmConsIndPrazoEntrega.prc_ConsPrazoEntrega;
begin
  fDMIndicador.cdsPrazoEntrega.Close;
  fDMIndicador.sdsPrazoEntrega.ParamByName('DATA1').AsDate := DateEdit1.Date;
  fDMIndicador.sdsPrazoEntrega.ParamByName('DATA2').AsDate := DateEdit2.Date;
  fDMIndicador.cdsPrazoEntrega.Open;
end;

procedure TfrmConsIndPrazoEntrega.FormShow(Sender: TObject);
begin
  fDMIndicador := TDMIndicador.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMIndicador);
end;

procedure TfrmConsIndPrazoEntrega.SMDBGrid2GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if StrToFloat(FormatFloat('0.00',fDMIndicador.cdsPrazoClientePERC_ENTREGA.AsFloat)) <= 80 then
  begin
    Background  := clRed;
    AFont.Color := clWhite;
  end
  else
  if (StrToFloat(FormatFloat('0.00',fDMIndicador.cdsPrazoClientePERC_ENTREGA.AsFloat)) > 80) and (StrToFloat(FormatFloat('0.00',fDMIndicador.cdsPrazoClientePERC_ENTREGA.AsFloat)) <= 90) then
  begin
    Background  := clYellow;
    AFont.Color := clBlack;
  end;
end;

procedure TfrmConsIndPrazoEntrega.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if fDMIndicador.cdsPrazoEntregaDTEMISSA_NOTA.AsDateTime > fDMIndicador.cdsPrazoEntregaDT_AGENDA.AsDateTime then
  begin
    Background  := clRed;
    AFont.Color := clWhite;
  end;
end;

procedure TfrmConsIndPrazoEntrega.NxButton1Click(Sender: TObject);
begin
  SMDBGrid1.DisableScroll;
  SMDBGrid2.DisableScroll;
  case RzPageControl1.ActivePageIndex of
    0: prc_CriaExcel(SMDBGrid1.DataSource, SMDBGrid1);
    1: prc_CriaExcel(SMDBGrid2.DataSource, SMDBGrid2);
  end;
  SMDBGrid1.EnableScroll;
  SMDBGrid2.EnableScroll;
end;

procedure TfrmConsIndPrazoEntrega.prc_CriaExcel(vDados: TDataSource;
  Grid: TSMDBGrid);
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

procedure TfrmConsIndPrazoEntrega.prc_ConsPrazoCliente;
begin
  fDMIndicador.cdsPrazoCliente.Close;
  fDMIndicador.sdsPrazoCliente.ParamByName('DATA1').AsDate := DateEdit1.Date;
  fDMIndicador.sdsPrazoCliente.ParamByName('DATA2').AsDate := DateEdit2.Date;
  fDMIndicador.cdsPrazoCliente.Open;
end;

end.

