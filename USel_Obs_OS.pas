unit USel_Obs_OS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, StdCtrls, Buttons, Grids,
  DBGrids, SMDBGrid, FMTBcd, DB, Provider, DBClient, SqlExpr, DBCtrls;

type
  TfrmSel_Obs_OS = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    SMDBGrid1: TSMDBGrid;
    sdsObs_OS: TSQLDataSet;
    cdsObs_OS: TClientDataSet;
    dspObs_OS: TDataSetProvider;
    dsObs_OS: TDataSource;
    StaticText1: TStaticText;
    Label2: TLabel;
    cdsObs_OSID: TIntegerField;
    cdsObs_OSNOME: TStringField;
    cdsObs_OSOBS: TMemoField;
    DBMemo1: TDBMemo;
    procedure BitBtn1Click(Sender: TObject);
    procedure SMDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure SMDBGrid1TitleClick(Column: TColumn);
  private
    { Private declarations }
    ctOBS_OS : String;
    procedure prc_Consultar;

  public
    { Public declarations }

  end;

var
  frmSel_Obs_OS: TfrmSel_Obs_OS;

implementation

uses DmdDatabase, uUtilPadrao;

{$R *.dfm}

procedure TfrmSel_Obs_OS.BitBtn1Click(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmSel_Obs_OS.prc_Consultar;
begin
  cdsObs_OS.Close;
  sdsOBS_OS.CommandText := ctOBS_OS;
  if trim(Edit1.Text) <> '' then
    sdsOBS_OS.CommandText := sdsOBS_OS.CommandText + ' AND (NOME LIKE ' + QuotedStr('%'+Edit1.Text+'%') + ')';
  cdsObs_OS.Open;
end;

procedure TfrmSel_Obs_OS.SMDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
  begin
    Close;
    ModalResult := mrOk;
  end;
end;

procedure TfrmSel_Obs_OS.SMDBGrid1DblClick(Sender: TObject);
begin
  Close;
  ModalResult := mrOk;
end;

procedure TfrmSel_Obs_OS.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
  begin
    BitBtn1Click(Sender);
    if not cdsOBS_OS.IsEmpty then
      SMDBGrid1.SetFocus;
  end;
end;

procedure TfrmSel_Obs_OS.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 27 then
  begin
    Close;
    ModalResult := mrCancel;
  end;
end;

procedure TfrmSel_Obs_OS.FormShow(Sender: TObject);
begin
  ctOBS_OS := sdsOBS_OS.CommandText;
end;

procedure TfrmSel_Obs_OS.SMDBGrid1TitleClick(Column: TColumn);
var
  ColunaOrdenada : String;
begin
  ColunaOrdenada := Column.FieldName;
  cdsOBS_OS.IndexFieldNames := Column.FieldName;
end;

end.
