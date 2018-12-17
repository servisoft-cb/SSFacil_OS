unit UProcesso_ES_OS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UDMProcesso_ES, Grids, DBGrids, SMDBGrid, ExtCtrls, DB;

type
  TfrmProcesso_ES_OS = class(TForm)
    SMDBGrid2: TSMDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SMDBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SMDBGrid2GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    fDMProcesso_ES: TDMProcesso_ES;
  end;

var
  frmProcesso_ES_OS: TfrmProcesso_ES_OS;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfrmProcesso_ES_OS.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmProcesso_ES_OS.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMProcesso_ES);
end;

procedure TfrmProcesso_ES_OS.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 27 then
    Close;
end;

procedure TfrmProcesso_ES_OS.SMDBGrid2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = Vk_Return then
  begin
    if fDMProcesso_ES.cdsOS_ProcDTCONCLUIDO.AsDateTime <= 0 then
    begin
      fDMProcesso_ES.vCodBarra_Proc := fDMProcesso_ES.cdsOS_ProcNUM_OS.AsString + FormatFloat('00',fDMProcesso_ES.cdsOS_ProcITEM_PROC.AsInteger);
      Close;
    end;
  end;
end;

procedure TfrmProcesso_ES_OS.SMDBGrid2GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if fDMProcesso_ES.cdsOS_ProcDTCONCLUIDO.AsDateTime > 10 then
    Background := clMoneyGreen;
end;

end.
 