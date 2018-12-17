unit USel_Setor_Proc2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, SMDBGrid, UDMSel_Setor_Proc, NxCollection,
  StdCtrls, ExtCtrls, UDMCadOrdemServico, DB, jpeg;

type
  TfrmSel_Setor_Proc2 = class(TForm)
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
    procedure SMDBGrid1DrawGroupingCell(Sender: TObject; ACanvas: TCanvas;
      CellRect: TRect; Group: TSMGrouping; Text: String;
      var DefaultDrawing: Boolean);
    procedure SMDBGrid1Expression(Sender: TObject; Expression: String;
      var Text: String; var Value: Boolean);
    procedure btnConfirmarClick(Sender: TObject);
    procedure SMDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    fDMSel_Setor_Proc: TDMSel_Setor_Proc;

    procedure prc_Consultar;
    procedure prc_Gravar_cdsSel_Setor_Proc;

  public
    { Public declarations }
    fDMCadOrdemServico: TDMCadOrdemServico;
    vID_Setor_Local : Integer;

  end;

var
  frmSel_Setor_Proc2: TfrmSel_Setor_Proc2;

implementation

uses rsDBUtils, uUtilPadrao;

{$R *.dfm}

procedure TfrmSel_Setor_Proc2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FreeAndNil(fDMSel_Setor_Proc);
  vID_Setor_Local := 0;
  Action := Cafree;
end;


procedure TfrmSel_Setor_Proc2.prc_Gravar_cdsSel_Setor_Proc;
var
  i : Integer;
begin
  if fDMSel_Setor_Proc.cdsSetor_Proc.IsEmpty then
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
    fDMSel_Setor_Proc.mAuxiliarVLR_HORA.AsFloat   := 0;
    fDMSel_Setor_Proc.mAuxiliarTotal_Hora.AsFloat := 0;
    if fDMSel_Setor_Proc.mAuxiliarSelecionado_Ori.AsBoolean then
    begin
      if fDMCadOrdemServico.cdsOrdemServico_Setor.Locate('ID_SETOR',fDMSel_Setor_Proc.mAuxiliarID_SETOR.AsInteger,[loCaseInsensitive]) then
      begin
        if fDMCadOrdemServico.cdsOrdemServico_Setor_Proc.Locate('ID_SETOR;ID_PROCESSO',VarArrayOf([fDMSel_Setor_Proc.mAuxiliarID_SETOR.AsInteger,
                                                                fDMSel_Setor_Proc.mAuxiliarID_PROCESSO.AsInteger]),[locaseinsensitive]) then
          fDMCadOrdemServico.cdsOrdemServico_Setor_Proc.Delete;
      end;
    end;
  end
  else
  begin
    fDMSel_Setor_Proc.mAuxiliarSelecionado.AsBoolean := True;
    fDMSel_Setor_Proc.mAuxiliarVLR_HORA.AsFloat      := fDMSel_Setor_Proc.mAuxiliarVlr_Hora_Ori.AsFloat;
  end;
  fDMSel_Setor_Proc.mAuxiliar.Post;
end;

procedure TfrmSel_Setor_Proc2.prc_Consultar;
var
  vIDSetorAux : Integer;
begin
  SMDBGrid1.DisableScroll;
  fDMSel_Setor_Proc.mAuxiliar.EmptyDataSet;
  fDMSel_Setor_Proc.cdsSetor_Proc.Close;
  fDMSel_Setor_Proc.sdsSetor_Proc.CommandText := fDMSel_Setor_Proc.ctSetor_Proc;
  if vID_Setor_Local > 0 then
    fDMSel_Setor_Proc.sdsSetor_Proc.CommandText := fDMSel_Setor_Proc.sdsSetor_Proc.CommandText + ' AND ID = ' + IntToStr(vID_Setor_Local);
  fDMSel_Setor_Proc.cdsSetor_Proc.Open;

  vIDSetorAux := 0;
  fDMSel_Setor_Proc.cdsSetor_Proc.First;
  while not fDMSel_Setor_Proc.cdsSetor_Proc.Eof do
  begin
    if vIDSetorAux <> fDMSel_Setor_Proc.cdsSetor_ProcID.AsInteger then
    begin
      fDMSel_Setor_Proc.mAuxiliar.Insert;
      fDMSel_Setor_Proc.mAuxiliarNOME_SETOR.AsString := fDMSel_Setor_Proc.cdsSetor_ProcNOME_SETOR.AsString;
      fDMSel_Setor_Proc.mAuxiliarFlag.AsInteger      := 1;
      fDMSel_Setor_Proc.mAuxiliar.Post;
    end;
    fDMSel_Setor_Proc.mAuxiliar.Insert;
    fDMSel_Setor_Proc.mAuxiliarID_SETOR.AsInteger := fDMSel_Setor_Proc.cdsSetor_ProcID.AsInteger;
    fDMSel_Setor_Proc.mAuxiliarNOME_SETOR.AsString := fDMSel_Setor_Proc.cdsSetor_ProcNOME_SETOR.AsString; 
    fDMSel_Setor_Proc.mAuxiliarITEM.AsInteger      := fDMSel_Setor_Proc.cdsSetor_ProcITEM.AsInteger;
    fDMSel_Setor_Proc.mAuxiliarORDEM.AsInteger     := fDMSel_Setor_Proc.cdsSetor_ProcORDEM.AsInteger;
    fDMSel_Setor_Proc.mAuxiliarID_PROCESSO.AsInteger := fDMSel_Setor_Proc.cdsSetor_ProcID_PROCESSO.AsInteger;
    fDMSel_Setor_Proc.mAuxiliarVLR_HORA.AsFloat      := fDMSel_Setor_Proc.cdsSetor_ProcVLR_HORA.AsFloat;
    fDMSel_Setor_Proc.mAuxiliarNOME_PROCESSO.AsString    := fDMSel_Setor_Proc.cdsSetor_ProcNOME_PROCESSO.AsString;
    fDMSel_Setor_Proc.mAuxiliarSelecionado.AsBoolean     := False;
    fDMSel_Setor_Proc.mAuxiliarTotal_Hora.AsFloat        := 0;
    fDMSel_Setor_Proc.mAuxiliarVlr_Hora_Ori.AsFloat      := fDMSel_Setor_Proc.cdsSetor_ProcVLR_HORA.AsFloat; 
    fDMSel_Setor_Proc.mAuxiliarSelecionado_Ori.AsBoolean := False;
    fDMSel_Setor_Proc.mAuxiliarDescricao.AsString        := '';
    fDMSel_Setor_Proc.mAuxiliarFlag.AsInteger            := 2;

    if fDMCadOrdemServico.cdsOrdemServico_Setor.Locate('ID_SETOR',fDMSel_Setor_Proc.cdsSetor_ProcID.AsInteger,[loCaseInsensitive]) then
    begin
      if fDMCadOrdemServico.cdsOrdemServico_Setor_Proc.Locate('ID_PROCESSO',fDMSel_Setor_Proc.cdsSetor_ProcID_PROCESSO.AsInteger,[loCaseInsensitive]) then
      begin
        fDMSel_Setor_Proc.mAuxiliarSelecionado.AsBoolean     := True;
        fDMSel_Setor_Proc.mAuxiliarSelecionado_Ori.AsBoolean := True;
        fDMSel_Setor_Proc.mAuxiliarVlr_Hora_Ori.AsFloat      := fDMCadOrdemServico.cdsOrdemServico_Setor_ProcVLR_HORA.AsFloat;
        fDMSel_Setor_Proc.mAuxiliarDescricao.AsString        := fDMCadOrdemServico.cdsOrdemServico_Setor_ProcDESCRICAO.AsString;
        fDMSel_Setor_Proc.mAuxiliarVLR_HORA.AsFloat          := fDMCadOrdemServico.cdsOrdemServico_Setor_ProcVLR_HORA.AsFloat;
        fDMSel_Setor_Proc.mAuxiliarTotal_Hora.AsFloat        := fDMCadOrdemServico.cdsOrdemServico_Setor_ProcTOTAL_HORA.AsFloat;
      end;
    end;
    fDMSel_Setor_Proc.mAuxiliar.Post;

    vIDSetorAux := fDMSel_Setor_Proc.cdsSetor_ProcID.AsInteger;
    fDMSel_Setor_Proc.cdsSetor_Proc.Next;
  end;
  fDMSel_Setor_Proc.mAuxiliar.IndexFieldNames := 'Nome_Setor;Flag;Nome_Processo';

  SMDBGrid1.EnableScroll;
end;

procedure TfrmSel_Setor_Proc2.FormShow(Sender: TObject);
begin
  fDMSel_Setor_Proc := TDMSel_Setor_Proc.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMSel_Setor_Proc);
  prc_Consultar;
end;

procedure TfrmSel_Setor_Proc2.btnCancelarClick(Sender: TObject);
begin
  fDMCadOrdemServico.vConfSelecao := False;
  Close;
end;

procedure TfrmSel_Setor_Proc2.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if fDMSel_Setor_Proc.mAuxiliarSelecionado.AsBoolean then
  begin
    AFont.Color := clBlue;
    AFont.Style := [fsBold];
  end;
end;

procedure TfrmSel_Setor_Proc2.SMDBGrid1DblClick(Sender: TObject);
begin
  prc_Gravar_cdsSel_Setor_Proc;
end;

procedure TfrmSel_Setor_Proc2.SMDBGrid1DrawGroupingCell(Sender: TObject;
  ACanvas: TCanvas; CellRect: TRect; Group: TSMGrouping; Text: String;
  var DefaultDrawing: Boolean);
begin
  DefaultDrawing := False;

  ACanvas.Brush.Color := Group.Color;
  ACanvas.Font.Assign(Group.Font);
  ACanvas.FillRect(CellRect);

  //ACanvas.Draw(CellRect.Left + 2, CellRect.Top + 2, Image1.Picture.Graphic);
  //CellRect.Left := CellRect.Left + Image1.Width + 5;
  CellRect.Top := CellRect.Top + 2;
  DrawText(ACanvas.Handle, PChar(Text), Length(Text), CellRect, DT_LEFT or DT_WORDBREAK or DT_EXPANDTABS or DT_NOPREFIX or DT_VCENTER)
end;

procedure TfrmSel_Setor_Proc2.SMDBGrid1Expression(Sender: TObject;
  Expression: String; var Text: String; var Value: Boolean);
begin
  if (fDMSel_Setor_Proc.mAuxiliar.FieldByName(Expression).AsInteger = 1) then
  begin
    Value := True;
    Text  := 'Setor ==> ' + fDMSel_Setor_Proc.mAuxiliarNOME_SETOR.AsString;
  end;
end;

procedure TfrmSel_Setor_Proc2.btnConfirmarClick(Sender: TObject);
var
  vAux : Real;
  vQtd, vVlr : Real;
begin
  SMDBGrid1.DisableScroll;
  fDMSel_Setor_Proc.mAuxiliar.First;
  while not fDMSel_Setor_Proc.mAuxiliar.Eof do
  begin
    //if (fDMSel_Setor_Proc.mAuxiliarSelecionado.AsBoolean) and not(fDMSel_Setor_Proc.mAuxiliarSelecionado_Ori.AsBoolean) then
    if (fDMSel_Setor_Proc.mAuxiliarSelecionado.AsBoolean) then
    begin
      vQtd := 0;
      vVlr := 0;
      //if fDMSel_Setor_Proc.mAuxiliarID_PROCESSO.AsInteger = 8 then
        //ShowMessage('aqui');

      if not fDMCadOrdemServico.cdsOrdemServico_Setor.Locate('ID_SETOR',fDMSel_Setor_Proc.mAuxiliarID_SETOR.AsInteger,[loCaseInsensitive]) then
      begin
        fDMCadOrdemServico.prc_Inserir_Setor;
        fDMCadOrdemServico.cdsOrdemServico_SetorID_SETOR.AsInteger := fDMSel_Setor_Proc.mAuxiliarID_SETOR.AsInteger;
        fDMCadOrdemServico.cdsOrdemServico_SetorVLR_TOTAL.AsFloat  := 0;
        fDMCadOrdemServico.cdsOrdemServico_SetorTOTAL_HORA.AsFloat := 0;
        fDMCadOrdemServico.cdsOrdemServico_SetorclNome_Setor.AsString := fDMSel_Setor_Proc.mAuxiliarNOME_SETOR.AsString;
        fDMCadOrdemServico.cdsOrdemServico_Setor.Post;
      end;

      if fDMCadOrdemServico.cdsOrdemServico_Setor_Proc.Locate('ID_PROCESSO',fDMSel_Setor_Proc.mAuxiliarID_PROCESSO.AsInteger,[loCaseInsensitive]) then
      //if fDMCadOrdemServico.cdsOrdemServico_Setor_Proc.Locate('ITEM_SETOR;ID_PROCESSO',VarArrayOf([fDMCadOrdemServico.cdsOrdemServico_SetorITEM_SETOR.AsInteger,
        //                                                        fDMSel_Setor_Proc.mAuxiliarID_PROCESSO.AsInteger]),[locaseinsensitive]) then
      begin
        fDMCadOrdemServico.cdsOrdemServico_Setor_Proc.Edit;
        vQtd := fDMCadOrdemServico.cdsOrdemServico_Setor_ProcTOTAL_HORA.AsFloat;
        vVlr := fDMCadOrdemServico.cdsOrdemServico_Setor_ProcVLR_HORA.AsFloat;
      end
      else
      begin
        fDMCadOrdemServico.prc_Inserir_Setor_Proc;
        fDMCadOrdemServico.cdsOrdemServico_Setor_ProcID_PROCESSO.AsInteger := fDMSel_Setor_Proc.mAuxiliarID_PROCESSO.AsInteger;
      end;

      vAux := StrToFloat(FormatFloat('0.00',fDMSel_Setor_Proc.mAuxiliarTotal_Hora.AsFloat));
      //if not fDMSel_Setor_Proc.mAuxiliarSelecionado_Ori.AsBoolean then
        //vAux := fnc_Converte_Horas(fDMSel_Setor_Proc.mAuxiliarTotal_Hora.AsFloat);

      fDMCadOrdemServico.cdsOrdemServico_Setor_ProcDESCRICAO.AsString    := fDMSel_Setor_Proc.mAuxiliarDescricao.AsString;
      fDMCadOrdemServico.cdsOrdemServico_Setor_ProcTOTAL_HORA.AsFloat    := vAux;
      fDMCadOrdemServico.cdsOrdemServico_Setor_ProcVLR_HORA.AsFloat      := fDMSel_Setor_Proc.mAuxiliarVLR_HORA.AsFloat;
      fDMCadOrdemServico.cdsOrdemServico_Setor_ProcVLR_TOTAL.AsFloat     := fDMSel_Setor_Proc.mAuxiliarVLR_HORA.AsFloat * fDMSel_Setor_Proc.mAuxiliarTotal_Hora.AsFloat;
      fDMCadOrdemServico.cdsOrdemServico_Setor_ProcclNome_Processo.AsString := fDMSel_Setor_Proc.mAuxiliarNOME_PROCESSO.AsString;
      fDMCadOrdemServico.cdsOrdemServico_Setor_Proc.Post;

      fDMCadOrdemServico.vConfSelecao := True;

      //fDMCadOrdemServico.cdsOrdemServico_Setor.Edit;
      //fDMCadOrdemServico.cdsOrdemServico_SetorTOTAL_HORA.AsFloat := StrToFloat(FormatFloat('0.00',fDMCadOrdemServico.cdsOrdemServico_SetorTOTAL_HORA.AsFloat + fDMCadOrdemServico.cdsOrdemServico_Setor_ProcTOTAL_HORA.AsFloat - vQtd));
      //fDMCadOrdemServico.cdsOrdemServico_SetorVLR_TOTAL.AsFloat  := StrToFloat(FormatFloat('0.00',fDMCadOrdemServico.cdsOrdemServico_SetorVLR_TOTAL.AsFloat + fDMCadOrdemServico.cdsOrdemServico_Setor_ProcVLR_TOTAL.AsFloat - vVlr));
      //fDMCadOrdemServico.cdsOrdemServico_Setor.Post;
    end;

    fDMSel_Setor_Proc.mAuxiliar.Next;
  end;
  SMDBGrid1.EnableScroll;
  Close;
end;

procedure TfrmSel_Setor_Proc2.SMDBGrid1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_Return) then
  begin
    if not fDMSel_Setor_Proc.mAuxiliarSelecionado.AsBoolean then
    begin
      if fDMSel_Setor_Proc.mAuxiliar.State in [dsEdit] then
        fDMSel_Setor_Proc.mAuxiliar.Post;
      prc_Gravar_cdsSel_Setor_Proc;
    end;
  end;
end;

end.
