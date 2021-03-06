unit Unit1;
                               {$mode objfpc}{$H+}{$MINSTACKSIZE 1024}{$MAXSTACKSIZE 99999999}
interface
uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs,
  ExtCtrls, ComCtrls, StdCtrls, Buttons,
  EditBtn, ActnList, Menus,math,LCLType,contnrs;

type

  { TForm1 }
  coord = Record
      x,y : Integer;
  end;
  array_coord = Array of coord;

  TForm1 = class(TForm)
    invertBtn: TBitBtn;
    greyscaleBtn: TBitBtn;
    Perkecil: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    Perbesar: TMenuItem;
    menuResize: TPopupMenu;
    trapessiumBtn: TBitBtn;
    jajargenjangBtn: TBitBtn;
    Triangle2: TBitBtn;
    LineColorButton: TColorButton;
    FillColorButton: TColorButton;
    coorY: TLabel;
    coorX: TLabel;
    ColorToggle: TGroupBox;
    Edit1: TEdit;
    elipseBtn: TBitBtn;
    GroupBox1: TGroupBox;
    GroupLine: TGroupBox;
    GroupShape: TGroupBox;
    Image1: TImage;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    lineBtn: TBitBtn;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    newBtn: TSpeedButton;
    openBtn: TSpeedButton;
    OpenDialog1: TOpenDialog;
    rectangleBtn: TBitBtn;
    redoBtn: TSpeedButton;
    rotateMenu: TPopupMenu;
    saveBtn: TSpeedButton;
    SaveDialog1: TSaveDialog;
    ScrollBar1: TScrollBar;
    ScrollBar2: TScrollBar;
    LineColorBtn: TToggleBox;
    FillColorBtn: TToggleBox;
    DiamondBtn: TBitBtn;
    StatusBar1: TStatusBar;
    style_lineBtn: TComboBox;
    TrackBar1: TTrackBar;
    blue_grayBtn: TSpeedButton;
    brownBtn: TSpeedButton;
    bucketBtn: TBitBtn;
    Button1: TButton;
    gray25Btn: TSpeedButton;
    purpleBtn: TSpeedButton;
    dark_redBtn: TSpeedButton;
    goldBtn: TSpeedButton;
    gray50Btn: TSpeedButton;
    blackBtn: TSpeedButton;
    greenBtn: TSpeedButton;
    GroupWarna: TGroupBox;
    lavenderBtn: TSpeedButton;
    light_turquoiseBtn: TSpeedButton;
    light_yellowBtn: TSpeedButton;
    limeBtn: TSpeedButton;
    orangeBtn: TSpeedButton;
    indigoBtn: TSpeedButton;
    redBtn: TSpeedButton;
    roseBtn: TSpeedButton;
    triangleBtn: TBitBtn;
    turquoiseBtn: TSpeedButton;
    GroupTransform: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    penBtn: TBitBtn;
    eraseBtn: TBitBtn;
    GroupTools: TGroupBox;
    rotateBtn: TSpeedButton;
    resizeBtn: TSpeedButton;
    Splitter1: TSplitter;
    undoBtn: TSpeedButton;
    whiteBtn: TSpeedButton;
    yellowBtn: TSpeedButton;
    procedure greyscaleBtnClick(Sender: TObject);
    procedure invertBtnClick(Sender: TObject);
    procedure DiamondBtnClick(Sender: TObject);
    procedure elipseBtnClick(Sender: TObject);
    procedure jajargenjangBtnClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure PerkecilClick(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure MenuItem6Click(Sender: TObject);
    procedure MenuItem7Click(Sender: TObject);
    procedure MenuItem8Click(Sender: TObject);
    procedure PerbesarClick(Sender: TObject);
    procedure rectangleBtnDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure resizeBtnClick(Sender: TObject);
    procedure Triangle2Click(Sender: TObject);
    procedure blackBtnClick(Sender: TObject);
    procedure blue_grayBtnClick(Sender: TObject);
    procedure brownBtnClick(Sender: TObject);
    procedure bucketBtnClick(Sender: TObject);
    procedure eraseBtnClick(Sender: TObject);
    procedure gray25BtnClick(Sender: TObject);
    procedure goldBtnClick(Sender: TObject);
    procedure GroupBox1Click(Sender: TObject);
    procedure GroupWarnaClick(Sender: TObject);
    procedure lavenderBtnClick(Sender: TObject);
    procedure light_turquoiseBtnClick(Sender: TObject);
    procedure light_yellowBtnClick(Sender: TObject);
    procedure limeBtnClick(Sender: TObject);
    procedure penBtnClick(Sender: TObject);
    procedure purpleBtnClick(Sender: TObject);
    procedure colorSelected1Click(Sender: TObject);
    procedure ColorToggleClick(Sender: TObject);
    procedure dark_redBtnClick(Sender: TObject);
    procedure FillColorBtnChange(Sender: TObject);
    procedure FillColorBtnClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: char);
    procedure gray50BtnClick(Sender: TObject);
    procedure greenBtnClick(Sender: TObject);
    procedure GroupTransformClick(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer
      );

    procedure Image1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);

    procedure RotationDrawingArea(Degree:Real);
    procedure lineBtnClick(Sender: TObject);
    procedure LineColorBtnChange(Sender: TObject);
    procedure LineColorBtnClick(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure newBtnClick(Sender: TObject);
    procedure openBtnClick(Sender: TObject);
    procedure orangeBtnClick(Sender: TObject);
    procedure indigoBtnClick(Sender: TObject);
    procedure rectangleBtnClick(Sender: TObject);
    procedure redBtnClick(Sender: TObject);
    procedure redoBtnClick(Sender: TObject);
    procedure roseBtnClick(Sender: TObject);
    procedure rotateBtnClick(Sender: TObject);
    procedure saveBtnClick(Sender: TObject);
    procedure DrawElipse(Shift:TShiftState);
    procedure DrawRectangle(Shift:TShiftState);
    procedure DrawTriangle(Shift:TShiftState);
    procedure DrawTriangle2(Shift:TShiftState);
    procedure DrawJajargenjang(Shift:TShiftState);
    procedure DrawLine(Shift:TShiftState);
    procedure DrawTrapessium(Shift:TShiftState);
    procedure DrawDiamond(Shift:TShiftState);
    procedure RecordCanvas(offset:Integer = 0);
    procedure RefreshCanvas(offset:Integer = 1);
    procedure Draw(S : array_coord);
    procedure Rotation(Degree:Real);
    procedure Rot4(Deg:Real);
    procedure TrackBar1Change(Sender: TObject);
    procedure FloodFill(x,y:Integer);
    procedure trapessiumBtnClick(Sender: TObject);
    procedure triangleBtnClick(Sender: TObject);
    procedure turquoiseBtnClick(Sender: TObject);
    procedure undoBtnClick(Sender: TObject);
    procedure RefreshState();
    function Translate():array_coord;
    function titikTengah():coord;
    procedure whiteBtnClick(Sender: TObject);
    procedure yellowBtnClick(Sender: TObject);


  private

  public

  end;

var
  Form1: TForm1;
  Kanvas: TCanvas;
  ShapeSelected,mode : String;
  BeingDrawShape,modeDrawAnomali : Boolean;
  AreaDrawing,AreaDrag : Record
    awal,akhir : coord;
  end;
  ShapeCoordinates: array_coord;
  TotalCoordinate,WarnaToggle: Integer;
  OldColor,NewColor : TColor;
  filename : String;
  StateBefore,StateAfter : TStack;
  StateNow : ^TBitmap;
  ShapeName : String;


implementation

{$R *.lfm}

{ TForm1 }
function TForm1.titikTengah():coord;
var
  i : Integer;
  temp : coord;
begin
    temp.x:=0;
    temp.y:=0;
    for i:=0 to TotalCoordinate-1 do
    begin
         temp.x:=temp.x+ShapeCoordinates[i].x;
         temp.y:=temp.y+ShapeCoordinates[i].y;
    end;
    temp.x:=Round(temp.x/TotalCoordinate);
    temp.y:=Round(temp.y/TotalCoordinate);
    titikTengah:=temp;
end;

procedure TForm1.RefreshState();
begin
  redoBtn.Enabled:=True;
  undoBtn.Enabled:=True;
  if StateBefore.Count = 1 then
     undoBtn.Enabled:=False;
  if StateAfter.Count = 0 then
     redoBtn.Enabled:=False;
end;

procedure TForm1.FloodFill(x,y:Integer);
var
  current : TColor;
begin
   current := Kanvas.Pixels[x,y];
   if (current = OldColor) and (current <> NewColor) then
   begin
     Kanvas.Pixels[x,y] := NewColor;
     FloodFill(x,y-1);
     FloodFill(x,y+1);
     FloodFill(x-1,y);
     FloodFill(x+1,y);
   end;
end;

procedure TForm1.trapessiumBtnClick(Sender: TObject);
begin
  ShapeSelected:='Trapessium';
  TotalCoordinate:=4;
  SetLength(ShapeCoordinates,TotalCoordinate);

end;

procedure TForm1.triangleBtnClick(Sender: TObject);
begin
  ShapeSelected:='Triangle';
  TotalCoordinate:=3;
  SetLength(ShapeCoordinates,TotalCoordinate);
end;

procedure TForm1.turquoiseBtnClick(Sender: TObject);
begin
  if LineColorBtn.Checked then LineColorButton.ButtonColor:=RGBToColor(64,224,208);
  if FillColorBtn.Checked then FillColorButton.ButtonColor:=RGBToColor(64,224,208);
end;

function TForm1.Translate():array_coord;
var
  temp : array_coord;
  i,x,y : Integer;
begin
   SetLength(temp,TotalCoordinate);
   //if AreaDrag.akhir.x-AreaDrag.awal.x > 0 then x:=1 else x:=-1;
   //if AreaDrag.akhir.y-AreaDrag.awal.y > 0 then y:=1 else y:=-1;
   //if AreaDrag.akhir.x = AreaDrag.awal.x then x:=0;
   //if AreaDrag.akhir.y = AreaDrag.awal.y then y:=0;
   x := AreaDrag.akhir.x-AreaDrag.awal.x;
   y := AreaDrag.akhir.y-AreaDrag.awal.y;
   for i:=0 to TotalCoordinate-1 do
   begin
      temp[i].x:=ShapeCoordinates[i].x+x;
      temp[i].y:=ShapeCoordinates[i].y+y;
   end;
   Translate:=temp;
end;

procedure TForm1.whiteBtnClick(Sender: TObject);
begin
  if LineColorBtn.Checked then LineColorButton.ButtonColor:=clWhite;
  if FillColorBtn.Checked then FillColorButton.ButtonColor:=clWhite;
end;

procedure TForm1.yellowBtnClick(Sender: TObject);
begin
  if LineColorBtn.Checked then LineColorButton.ButtonColor:=clYellow;
  if FillColorBtn.Checked then FillColorButton.ButtonColor:=clYellow;
end;

procedure TForm1.undoBtnClick(Sender: TObject);
begin
  SetLength(ShapeCoordinates,0);
  TotalCoordinate:=0;
  StateAfter.Push(StateNow);
  StateNow:=StateBefore.Pop;
  RefreshCanvas();
  RefreshState();
end;

procedure TForm1.Rotation(Degree:Real);
var
  i : Integer;
  dx,dy : Real;
  Rad : Real;
begin
  for i:=TotalCoordinate-1 downto 1 do
  begin
    Rad := Degree*pi/180;
    dx := ShapeCoordinates[i].x - ShapeCoordinates[0].x;
    dy := ShapeCoordinates[i].y - ShapeCoordinates[0].y;
    ShapeCoordinates[i].x := Round(dx*cos(Rad)-dy*sin(Rad))+ ShapeCoordinates[0].x;
    ShapeCoordinates[i].y := Round(dx*sin(Rad)+dy*cos(Rad))+ ShapeCoordinates[0].y;
  end;
end;

procedure TForm1.RotationDrawingArea(Degree:Real);
var
  i : Integer;
  dx,dy : Real;
  Rad : Real;
begin
    Rad := Degree*pi/180;
    dx := AreaDrawing.akhir.x - AreaDrawing.awal.x;
    dy := AreaDrawing.akhir.y - AreaDrawing.awal.y;
    AreaDrawing.akhir.x := Round(dx*cos(Rad)-dy*sin(Rad))+ AreaDrawing.awal.x;
    AreaDrawing.akhir.y := Round(dx*sin(Rad)+dy*cos(Rad))+ AreaDrawing.awal.y;
end;

procedure TForm1.Draw(S : array_coord);
var
  i,j: Integer;
begin
  j:= TotalCoordinate;
  Kanvas.Pen.Width:=TrackBar1.Position;
  Kanvas.Pen.Color:=LineColorButton.ButtonColor;
  Kanvas.Brush.Color:=FillColorButton.ButtonColor;
  if (j > 1) and (ShapeName <> 'Elipse') then
  begin
      Kanvas.MoveTo(S[0].x,S[0].y);
      for i:= j-1 downto 0 do
      begin
        Kanvas.LineTo(S[i].x,S[i].y);
      end;
  end
  else
  begin
    Kanvas.Ellipse(S[0].x,S[0].y,S[1].x,S[1].y);
  end;
end;
// rekam
procedure TForm1.RecordCanvas(offset:Integer = 0);
var
  i : Integer;
  bp : TBitmap;
begin
   StateBefore.Push(StateNow);
   bp := TBitmap.Create;
   bp.Canvas.Clear;
   bp.SetSize(Kanvas.Width,Kanvas.Height);
   bp.Canvas.CopyRect(TRect.Create(0,0,Kanvas.Width,Kanvas.Height),Kanvas,TRect.Create(0,0,Kanvas.Width,Kanvas.Height));
   StateNow:= GetMemory(SizeOf(bp));
   StateNow^ := bp;
   if StateAfter.AtLeast(1) then
   begin
       while StateAfter.Count>0 do StateAfter.Pop;
   end;



   //if CanvasStateInt + 1 > 100 then
   //begin
   //     for i:=1 to 100 do
   //     begin
   //         CanvasState[i-1].Clear;
   //         CanvasState[i-1].Canvas.CopyRect(TRect.Create(0,0,Kanvas.Width,Kanvas.Height),CanvasState[i].Canvas,TRect.Create(0,0,Kanvas.Width,Kanvas.Height));
   //     end;
   //end;

   RefreshState();
end;

procedure TForm1.RefreshCanvas(offset:Integer = 1);
var
  i : ^TBitmap;
  canv : TCanvas;
begin
  //Kanvas.Clear;
  if (offset = 1) and not (StateNow = NIL) and (StateNow^.Canvas <> NIL) then
  begin
      canv := StateNow^.Canvas;
      Kanvas.CopyRect(TRect.Create(0,0,Kanvas.Width,Kanvas.Height),canv,TRect.Create(0,0,Kanvas.Width,Kanvas.Height));
  end;


  if (offset > 1) then
  begin
      i := StateBefore.Peek;
      Kanvas.CopyRect(TRect.Create(0,0,Kanvas.Width,Kanvas.Height),i^.Canvas,TRect.Create(0,0,Kanvas.Width,Kanvas.Height));
  end;

end;

procedure TForm1.Rot4(Deg:Real);
var
  step,i,loncat,x1,x2,y1,y2 : Integer;
  sudut: Real;
begin
      loncat := Round(Deg);
      x1 := AreaDrawing.awal.x;
      x2 := AreaDrawing.akhir.x;
      y1 := AreaDrawing.awal.y;
      y2 := AreaDrawing.akhir.y;

      step := Round(360/loncat);
      i := 1;
      sudut := arctan2((y2 - y1),(x2 - x1));
      while i <= step do
      begin
            if ( Round(radtodeg(sudut)+360) mod 360 < i*loncat ) and ( Round(radtodeg(sudut)+360) mod 360 >= (i-1)*loncat ) then
            begin
               Rotation((i-1)*loncat);
               Break;
            end;
            i:=i+1;
      end;
end;

procedure TForm1.TrackBar1Change(Sender: TObject);
begin
  Edit1.Text:=TrackBar1.Position.ToString();
end;

procedure TForm1.DrawLine(Shift : TShiftState);
var
  length: Integer;
begin
  ShapeCoordinates[0].x:=AreaDrawing.awal.x;
  ShapeCoordinates[0].y:=AreaDrawing.awal.y;
  if ssShift in Shift then
  begin
      if abs(AreaDrawing.akhir.x - AreaDrawing.awal.x) > abs(AreaDrawing.akhir.y - AreaDrawing.awal.y) then
         length := abs(AreaDrawing.akhir.x - AreaDrawing.awal.x)
      else
         length := abs(AreaDrawing.akhir.y - AreaDrawing.awal.y);

      ShapeCoordinates[1].x:=AreaDrawing.awal.x+length;
      ShapeCoordinates[1].y:=AreaDrawing.awal.y+length;
      Rot4(45);
  end
  else
  begin
    ShapeCoordinates[1].x:=AreaDrawing.akhir.x;
    ShapeCoordinates[1].y:=AreaDrawing.akhir.y;
  end;
end;
procedure TForm1.DrawElipse(Shift:TShiftState);
var
  length : Integer;
begin
  ShapeCoordinates[0].x:=AreaDrawing.awal.x;
  ShapeCoordinates[0].y:=AreaDrawing.awal.y;

  if ssShift in Shift then
  begin
      if abs(AreaDrawing.akhir.x - AreaDrawing.awal.x) > abs(AreaDrawing.akhir.y - AreaDrawing.awal.y) then
         length := abs(AreaDrawing.akhir.x - AreaDrawing.awal.x)
      else
         length := abs(AreaDrawing.akhir.y - AreaDrawing.awal.y);
      ShapeCoordinates[1].x:= AreaDrawing.awal.x+length;
      ShapeCoordinates[1].y:= AreaDrawing.awal.y+length;
      Rot4(90);
  end
  else
  begin
      ShapeCoordinates[1].x:= AreaDrawing.akhir.x;
      ShapeCoordinates[1].y:= AreaDrawing.akhir.y;
  end;
end;
procedure TForm1.DrawRectangle(Shift:TShiftState);
var
  length : Integer;
begin
  ShapeCoordinates[0].x:=AreaDrawing.awal.x;
  ShapeCoordinates[0].y:=AreaDrawing.awal.y;
  if ssShift in Shift then
  begin
      if abs(AreaDrawing.akhir.x - AreaDrawing.awal.x) > abs(AreaDrawing.akhir.y - AreaDrawing.awal.y) then
         length := abs(AreaDrawing.akhir.x - AreaDrawing.awal.x)
      else
         length := abs(AreaDrawing.akhir.y - AreaDrawing.awal.y);
      ShapeCoordinates[1].x:= AreaDrawing.awal.x+length;
      ShapeCoordinates[1].y:= AreaDrawing.awal.y;
      ShapeCoordinates[2].x:= AreaDrawing.awal.x+length;
      ShapeCoordinates[2].y:= AreaDrawing.awal.y+length;
      ShapeCoordinates[3].x:= AreaDrawing.awal.x;
      ShapeCoordinates[3].y:= AreaDrawing.awal.y+length;
      Rot4(90);
  end
  else
  begin
      ShapeCoordinates[1].x:= AreaDrawing.akhir.x;
      ShapeCoordinates[1].y:= AreaDrawing.awal.y;

      ShapeCoordinates[2].x:= AreaDrawing.akhir.x;
      ShapeCoordinates[2].y:= AreaDrawing.akhir.y;

      ShapeCoordinates[3].x:= AreaDrawing.awal.x;
      ShapeCoordinates[3].y:= AreaDrawing.akhir.y;
  end;

end;
procedure TForm1.DrawDiamond(Shift:TShiftState);
var
  length,panjang_x, panjang_y: Integer;
begin
  ShapeCoordinates[0].x:=AreaDrawing.awal.x;
  ShapeCoordinates[0].y:=AreaDrawing.awal.y;
  if ssShift in Shift then
  begin

      if abs(AreaDrawing.akhir.x - AreaDrawing.awal.x) > abs(AreaDrawing.akhir.y - AreaDrawing.awal.y) then
      begin
      length := abs(AreaDrawing.akhir.x - AreaDrawing.awal.x);
    panjang_x:= abs(AreaDrawing.akhir.x - AreaDrawing.awal.x) div 2;
    end
      else
      begin
      length := abs(AreaDrawing.akhir.y - AreaDrawing.awal.y);
      panjang_x:= abs(AreaDrawing.akhir.y - AreaDrawing.awal.y) div 2;
      end;
      ShapeCoordinates[0].x:=AreaDrawing.awal.x+panjang_x;
      ShapeCoordinates[0].y:=AreaDrawing.awal.y;
      ShapeCoordinates[1].x:= AreaDrawing.awal.x+length;
      ShapeCoordinates[1].y:= AreaDrawing.awal.y+panjang_x;
      ShapeCoordinates[2].x:= AreaDrawing.awal.x+panjang_x;
      ShapeCoordinates[2].y:= AreaDrawing.awal.y+length;
      ShapeCoordinates[3].x:= AreaDrawing.awal.x;
      ShapeCoordinates[3].y:= AreaDrawing.awal.y+panjang_x;
      Rot4(90);
    end
  else
  begin
      panjang_y:= abs(AreaDrawing.akhir.y - AreaDrawing.awal.y) div 2;
      panjang_x:= abs(AreaDrawing.akhir.x - AreaDrawing.awal.x) div 2;
      ShapeCoordinates[0].x:=AreaDrawing.awal.x+panjang_x;
      ShapeCoordinates[0].y:=AreaDrawing.awal.y;

      ShapeCoordinates[1].x:= AreaDrawing.akhir.x;
      ShapeCoordinates[1].y:= AreaDrawing.awal.y+panjang_y;

      ShapeCoordinates[2].x:= AreaDrawing.akhir.x-panjang_x;
      ShapeCoordinates[2].y:= AreaDrawing.akhir.y;

      ShapeCoordinates[3].x:= AreaDrawing.awal.x;
      ShapeCoordinates[3].y:= AreaDrawing.akhir.y-panjang_y;
  end;

end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  KeyPreview := True;
end;

procedure TForm1.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState
  );
begin

end;

procedure TForm1.FormKeyPress(Sender: TObject; var Key: char);
begin

end;



procedure TForm1.gray50BtnClick(Sender: TObject);
begin
  if LineColorBtn.Checked then LineColorButton.ButtonColor:=RGBToColor(127,127,127);
  if FillColorBtn.Checked then FillColorButton.ButtonColor:=RGBToColor(127,127,127);
end;

procedure TForm1.greenBtnClick(Sender: TObject);
begin
  if LineColorBtn.Checked then LineColorButton.ButtonColor:=clGreen;
  if FillColorBtn.Checked then FillColorButton.ButtonColor:=clGreen;
end;

procedure TForm1.GroupTransformClick(Sender: TObject);
begin

end;

procedure TForm1.Image1Click(Sender: TObject);
begin
  if mode = 'fillBucket' then
  begin
      Image1.Cursor:=crDefault;
  end;
end;
//core
procedure TForm1.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  xa,ya : Boolean;
begin
  xa := ((X > AreaDrawing.awal.x) and (X <= AreaDrawing.akhir.x));
  xa := xa or (X <= AreaDrawing.awal.x) and (X > AreaDrawing.akhir.x);
  ya := ((Y > AreaDrawing.awal.y) and (Y <= AreaDrawing.akhir.y));
  ya := ya or (Y <= AreaDrawing.awal.y) and (Y > AreaDrawing.akhir.y);
  if (TotalCoordinate > 1) and not BeingDrawShape and xa and ya then
  begin
      AreaDrag.awal.x:=X;
      AreaDrag.awal.y:=Y;
      mode := 'drag';
  end;

  if (ShapeSelected <> '') then
  begin
    AreaDrawing.awal.x := X;
    AreaDrawing.awal.y := Y;
    BeingDrawShape:=True;
    ShapeName := ShapeSelected;
    if mode = 'dragged' then begin
      RecordCanvas();
      mode := '';
    end
    else mode:= '';
  end;
  if ((mode = 'erase') or (mode='pen')) and not BeingDrawShape then
  begin
    Kanvas.MoveTo(X,Y);
    BeingDrawShape:=True;
  end;

end;

procedure TForm1.Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  if (ShapeSelected <> '') and (BeingDrawShape = True) then
  begin
    AreaDrawing.akhir.x := X;
    AreaDrawing.akhir.y := Y;

    case ShapeSelected of
         'Rectangle' : DrawRectangle(Shift);
         'Triangle' : DrawTriangle(Shift);
         'Triangle2' : DrawTriangle2(Shift);
         'Jajargenjang' : DrawJajargenjang(Shift);
         'Line'      : DrawLine(Shift);
         'Trapessium'      : DrawTrapessium(Shift);
         'Elipse' : DrawElipse(Shift);
         'Diamond' : DrawDiamond(Shift);
    end;
    RefreshCanvas();
    Draw(ShapeCoordinates);
  end;
  if mode = 'erase' then
  begin
    if (BeingDrawShape = False) then RefreshCanvas();
    Kanvas.Brush.Color:=clWhite;
    coorX.Caption:=X.ToString();
    coorY.Caption:=Y.ToString();
    Kanvas.FillRect(X-25,Y-25,X+25,Y+25);
    Kanvas.Brush.Color:=FillColorButton.ButtonColor;
  end;
  if (mode = 'pen') and BeingDrawShape then
  begin
    Kanvas.Pen.Width := TrackBar1.Position;
    Kanvas.Pen.Color := LineColorButton.ButtonColor;
    Kanvas.LineTo(x,y);
  end;
  if mode = 'drag' then
  begin
    AreaDrag.akhir.x:=X;
    AreaDrag.akhir.y:=Y;
    RefreshCanvas(2);
    Draw(Translate());
  end;
end;

procedure TForm1.Image1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  i : Integer;
begin
  // Finishing gambar shape::
  if (ShapeSelected <> '') and (BeingDrawShape = True) then
  begin
    ShapeSelected:='';
    BeingDrawShape:=False;
    RecordCanvas();
  end;

  // Eksekusi fill color
  if mode = 'fillBucket' then
  begin
    Image1.Cursor:=crHourGlass;
    Kanvas.AutoRedraw:=False;
    OldColor:=Kanvas.Pixels[x,y];
    NewColor:=FillColorButton.ButtonColor;
    FloodFill(x,y);
    Kanvas.AutoRedraw:=True;
    Kanvas.Refresh;
    BeingDrawShape:=False;
    mode := '';
    RecordCanvas();
    Image1.Cursor:=crDefault;
  end;

  // khususon drag / translasi
  if (mode = 'drag') then
  begin
    ShapeCoordinates := Translate();
    AreaDrawing.awal.x := AreaDrag.akhir.x - AreaDrag.awal.x + AreaDrawing.awal.x;
    AreaDrawing.awal.y := AreaDrag.akhir.y - AreaDrag.awal.y + AreaDrawing.awal.y;
    AreaDrawing.akhir.x := AreaDrag.akhir.x - AreaDrag.awal.x + AreaDrawing.akhir.x;
    AreaDrawing.akhir.y := AreaDrag.akhir.y - AreaDrag.awal.y + AreaDrawing.akhir.y;
    // area drawingnya juga ikut pindah
    mode := 'dragged';
  end;

  // Finishing Mode {erase,pen,drag}
  if ((mode = 'erase') or (mode = 'pen')) and BeingDrawShape then
  begin
    BeingDrawShape:=False;
    mode := '';
    RecordCanvas();
  end;


end;

procedure TForm1.lineBtnClick(Sender: TObject);
begin
  ShapeSelected:='Line';
  TotalCoordinate:=2;
  SetLength(ShapeCoordinates,TotalCoordinate);
end;

procedure TForm1.LineColorBtnChange(Sender: TObject);
begin
  if WarnaToggle = 1 then begin
      FillColorBtn.Checked:=False;
      WarnaToggle:=0;
      LineColorBtn.Checked:=True;
  end;
end;

procedure TForm1.LineColorBtnClick(Sender: TObject);
begin
   WarnaToggle:=1;
   if FillColorBtn.Checked then FillColorBtn.Checked:=False;
end;

procedure TForm1.MenuItem1Click(Sender: TObject);
begin
  Rotation(-90);
  RotationDrawingArea(-90);
  RefreshCanvas(2);
  Draw(ShapeCoordinates);
end;

procedure TForm1.MenuItem2Click(Sender: TObject);
begin
  Rotation(90);
  RotationDrawingArea(90);
  RefreshCanvas(2);
  Draw(ShapeCoordinates);
end;

procedure TForm1.newBtnClick(Sender: TObject);
var
  i : Integer;
  bp : TBitmap;
begin
  StateBefore := TStack.Create;
  StateAfter := TStack.Create ;
  RefreshState();
  SetLength(ShapeCoordinates,0);
  TotalCoordinate:=0;
  Kanvas:= Image1.Canvas;
  Kanvas.Clear;
  Kanvas.Brush.Color:=clWhite;
  Kanvas.FillRect(0,0,Kanvas.Width,Kanvas.Height);

  bp :=TBitmap.Create;
  bp.SetSize(Kanvas.Width,Kanvas.Height);
  bp.Canvas.Clear;
  bp.Canvas.CopyRect(TRect.Create(0,0,Kanvas.Width,Kanvas.Height),Kanvas,TRect.Create(0,0,Kanvas.Width,Kanvas.Height));
  StateNow:=Getmem(SizeOf(bp));
  StateNow^ := bp;
  RecordCanvas();
  RefreshCanvas();
  RefreshState();
  Edit1.Text:=TrackBar1.Position.ToString();
end;

procedure TForm1.openBtnClick(Sender: TObject);
var
  bitmap : TBitmap;
  rect : TRect;
begin
  if OpenDialog1.Execute then
  filename := OpenDialog1.FileName;
  rect := TRect.Create(0,0,Kanvas.Width,Kanvas.Height);
  bitmap := TBitmap.Create;
  bitmap.Canvas.Clear;
  bitmap.LoadFromFile(filename);
  Kanvas.CopyRect(rect,bitmap.Canvas,rect);
  RecordCanvas();
end;

procedure TForm1.orangeBtnClick(Sender: TObject);
begin
  if LineColorBtn.Checked then LineColorButton.ButtonColor:=RGBToColor(255,165,0);
  if FillColorBtn.Checked then FillColorButton.ButtonColor:=RGBToColor(255,165,0);
end;

procedure TForm1.indigoBtnClick(Sender: TObject);
begin
  if LineColorBtn.Checked then LineColorButton.ButtonColor:=RGBToColor(75,0,130);
  if FillColorBtn.Checked then FillColorButton.ButtonColor:=RGBToColor(75,0,130);
end;

procedure TForm1.rectangleBtnClick(Sender: TObject);
begin
  ShapeSelected:='Rectangle';
  TotalCoordinate:=4;
  SetLength(ShapeCoordinates,TotalCoordinate);
end;

procedure TForm1.redBtnClick(Sender: TObject);
begin
  if LineColorBtn.Checked then LineColorButton.ButtonColor:=RGBToColor(255,0,0);
  if FillColorBtn.Checked then FillColorButton.ButtonColor:=RGBToColor(255,0,0);
end;

procedure TForm1.redoBtnClick(Sender: TObject);
begin
  StateBefore.Push(StateNow);
  StateNow:=StateAfter.Pop;
  RefreshCanvas();
  RefreshState();
end;

procedure TForm1.roseBtnClick(Sender: TObject);
begin
  if LineColorBtn.Checked then LineColorButton.ButtonColor:=RGBToColor(255, 0, 127);
  if FillColorBtn.Checked then FillColorButton.ButtonColor:=RGBToColor(255, 0, 127);
end;

procedure TForm1.rotateBtnClick(Sender: TObject);
var
  button: TControl;
  lowerLeft: TPoint;
begin
  if Sender is TControl then
  begin
    button := TControl(Sender);
    lowerLeft := Point(button.Left, button.Top + Button.Height);
    lowerLeft := ClientToScreen(lowerLeft);
    rotateMenu.Popup(lowerLeft.X, lowerLeft.Y);
  end;
end;

procedure TForm1.saveBtnClick(Sender: TObject);
var
  bitmap : TBitmap;
  rect : TRect;
begin
  if SaveDialog1.Execute then
  filename:=SaveDialog1.FileName;
  bitmap := TBitmap.Create;
  bitmap.Canvas.Clear;
  bitmap.SetSize(Kanvas.Width,Kanvas.Height);
  rect := TRect.Create(0,0,Kanvas.Width,Kanvas.Height);
  bitmap.Canvas.CopyRect(rect,Kanvas,rect);
  bitmap.SaveToFile(filename);
end;





procedure TForm1.colorSelected1Click(Sender: TObject);
begin
  //colorSelected1.Canvas.Rectangle();
end;

procedure TForm1.ColorToggleClick(Sender: TObject);
begin

end;

procedure TForm1.dark_redBtnClick(Sender: TObject);
begin
  if LineColorBtn.Checked then LineColorButton.ButtonColor:=RGBToColor(139,0,0);
  if FillColorBtn.Checked then FillColorButton.ButtonColor:=RGBToColor(139,0,0);
end;

procedure TForm1.FillColorBtnChange(Sender: TObject);
begin
    if WarnaToggle=2 then begin
      LineColorBtn.Checked:=False;
      WarnaToggle:=0;
      FillColorBtn.Checked:=True;
    end;
end;

procedure TForm1.FillColorBtnClick(Sender: TObject);
begin
    WarnaToggle:=2;
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin

end;

procedure TForm1.jajargenjangBtnClick(Sender: TObject);
begin
  ShapeSelected:='Jajargenjang';
  TotalCoordinate:=4;
  SetLength(ShapeCoordinates,TotalCoordinate);
end;

procedure TForm1.elipseBtnClick(Sender: TObject);
begin
  ShapeSelected:='Elipse';
  TotalCoordinate:=2;
  SetLength(ShapeCoordinates,TotalCoordinate);
end;

procedure TForm1.DiamondBtnClick(Sender: TObject);
begin
    ShapeSelected:='Diamond';
     TotalCoordinate:=4;
     SetLength(ShapeCoordinates,TotalCoordinate);
end;

procedure TForm1.invertBtnClick(Sender: TObject);
var
  i,j : Integer;
  red,green,blue : byte;
begin
  Image1.Cursor:=crHourGlass;
  TotalCoordinate:=0;
  for i:=0 to Kanvas.Width do
  begin
      for j:=0 to Kanvas.Height do
      begin
          RedGreenBlue(Kanvas.Pixels[i,j],red,green,blue);
          //avg := ((255-red) + (255-green) + (255-blue)) div 3;
          Kanvas.Pixels[i,j] := RGBToColor(255-red,255-green,255-blue);
      end;
  end;
  Image1.Cursor:=crDefault;
end;

procedure TForm1.greyscaleBtnClick(Sender: TObject);
var
  i,j,avg : Integer;
  red,green,blue : byte;
begin
  Image1.Cursor:=crHourGlass;
  TotalCoordinate:=0;
  for i:=0 to Kanvas.Width do
  begin
      for j:=0 to Kanvas.Height do
      begin
          RedGreenBlue(Kanvas.Pixels[i,j],red,green,blue);
          avg := ((red) + (green) + blue) div 3;
          Kanvas.Pixels[i,j] := RGBToColor(avg,avg,avg);
      end;
  end;
  Image1.Cursor:=crDefault;
end;



procedure TForm1.BitBtn3Click(Sender: TObject);
begin

end;

procedure TForm1.PerkecilClick(Sender: TObject);
var
  i,dx,dy: Integer;
  temp : coord;
begin
    temp := titikTengah();
    dx := AreaDrawing.akhir.x-temp.x;
    dy := AreaDrawing.akhir.y-temp.y;
    AreaDrawing.akhir.x:=Round(dx*0.5)+temp.x;
    AreaDrawing.akhir.y:=Round(dy*0.5)+temp.y;
    dx := AreaDrawing.awal.x-temp.x;
    dy := AreaDrawing.awal.y-temp.y;
    AreaDrawing.awal.x:=Round(dx*0.5)+temp.x;
    AreaDrawing.awal.y:=Round(dy*0.5)+temp.y;
    for i:=0 to TotalCoordinate-1 do
    begin
        dx := ShapeCoordinates[i].x-temp.x;
        dy := ShapeCoordinates[i].y-temp.y;
        ShapeCoordinates[i].x:=Round(dx*0.5)+temp.x;
        ShapeCoordinates[i].y:=Round(dy*0.5)+temp.y;
    end;
    RefreshCanvas(2);
    Draw(ShapeCoordinates);
end;

procedure TForm1.MenuItem3Click(Sender: TObject);
begin
  Rotation(-45);
  RotationDrawingArea(-45);
  RefreshCanvas(2);
  Draw(ShapeCoordinates);
end;

procedure TForm1.MenuItem4Click(Sender: TObject);
var
  i : Integer;
begin
     for i:=0 to TotalCoordinate-1 do
     begin
         ShapeCoordinates[i].x := ShapeCoordinates[0].x - (ShapeCoordinates[i].x - ShapeCoordinates[0].x);
     end;
     AreaDrawing.akhir.x := AreaDrawing.awal.x - (AreaDrawing.akhir.x- AreaDrawing.awal.x);
     RefreshCanvas(2);
     Draw(ShapeCoordinates);

end;

procedure TForm1.MenuItem5Click(Sender: TObject);
begin
  Rotation(30);
  RotationDrawingArea(30);
  RefreshCanvas(2);
  Draw(ShapeCoordinates);
end;

procedure TForm1.MenuItem6Click(Sender: TObject);
begin
  Rotation(-30);
  RotationDrawingArea(-30);
  RefreshCanvas(2);
  Draw(ShapeCoordinates);
end;

procedure TForm1.MenuItem7Click(Sender: TObject);
begin
  Rotation(45);
  RotationDrawingArea(45);
  RefreshCanvas(2);
  Draw(ShapeCoordinates);
end;

procedure TForm1.MenuItem8Click(Sender: TObject);
var
  i : Integer;
begin
     for i:=0 to TotalCoordinate-1 do
     begin
         ShapeCoordinates[i].y := ShapeCoordinates[0].y - (ShapeCoordinates[i].y - ShapeCoordinates[0].y);
     end;
     AreaDrawing.akhir.y := AreaDrawing.awal.y - (AreaDrawing.akhir.y- AreaDrawing.awal.y);
     RefreshCanvas(2);
     Draw(ShapeCoordinates);

end;

procedure TForm1.PerbesarClick(Sender: TObject);
var
  i,dx,dy: Integer;
  temp : coord;
begin
    temp := titikTengah();
    dx := AreaDrawing.akhir.x-temp.x;
    dy := AreaDrawing.akhir.y-temp.y;
    AreaDrawing.akhir.x:=Round(dx*1.5)+temp.x;
    AreaDrawing.akhir.y:=Round(dy*1.5)+temp.y;
    dx := AreaDrawing.awal.x-temp.x;
    dy := AreaDrawing.awal.y-temp.y;
    AreaDrawing.awal.x:=Round(dx*1.5)+temp.x;
    AreaDrawing.awal.y:=Round(dy*1.5)+temp.y;
    for i:=0 to TotalCoordinate-1 do
    begin
        dx := ShapeCoordinates[i].x-temp.x;
        dy := ShapeCoordinates[i].y-temp.y;
        ShapeCoordinates[i].x:=Round(dx*1.5)+temp.x;
        ShapeCoordinates[i].y:=Round(dy*1.5)+temp.y;
    end;
    RefreshCanvas(2);
    Draw(ShapeCoordinates);
end;

procedure TForm1.rectangleBtnDragDrop(Sender, Source: TObject; X, Y: Integer);
begin

end;

procedure TForm1.resizeBtnClick(Sender: TObject);
begin
  menuResize.PopUp;
end;



procedure TForm1.Triangle2Click(Sender: TObject);
begin
  ShapeSelected:='Triangle2';
  TotalCoordinate:=3;
  SetLength(ShapeCoordinates,TotalCoordinate);
end;

procedure TForm1.blackBtnClick(Sender: TObject);
begin
  if LineColorBtn.Checked then LineColorButton.ButtonColor:=clBlack;
  if FillColorBtn.Checked then FillColorButton.ButtonColor:=clBlack;
end;

procedure TForm1.blue_grayBtnClick(Sender: TObject);
begin
  if LineColorBtn.Checked then LineColorButton.ButtonColor:=RGBToColor(112, 146, 190);
  if FillColorBtn.Checked then FillColorButton.ButtonColor:=RGBToColor(112, 146, 190);
end;

procedure TForm1.brownBtnClick(Sender: TObject);
begin
  if LineColorBtn.Checked then LineColorButton.ButtonColor:=RGBToColor(165, 42, 42);
  if FillColorBtn.Checked then FillColorButton.ButtonColor:=RGBToColor(165, 42, 42);
end;

procedure TForm1.bucketBtnClick(Sender: TObject);
begin
  Image1.Cursor:=crHandPoint;
  mode := 'fillBucket';
  AreaDrawing.awal.x:=0;
  AreaDrawing.awal.y:=0;
  AreaDrawing.akhir.x:=0;
  AreaDrawing.akhir.y:=0;
end;

procedure TForm1.eraseBtnClick(Sender: TObject);
begin
  mode:='erase';
  AreaDrawing.awal.x:=0;
  AreaDrawing.awal.y:=0;
  AreaDrawing.akhir.x:=0;
  AreaDrawing.akhir.y:=0;
end;

procedure TForm1.gray25BtnClick(Sender: TObject);
begin
  if LineColorBtn.Checked then LineColorButton.ButtonColor:=RGBToColor(195,195,195);
  if FillColorBtn.Checked then FillColorButton.ButtonColor:=RGBToColor(195,195,195);
end;

procedure TForm1.goldBtnClick(Sender: TObject);
begin
  if LineColorBtn.Checked then LineColorButton.ButtonColor:=RGBToColor(255, 215, 0);
  if FillColorBtn.Checked then FillColorButton.ButtonColor:=RGBToColor(255, 215, 0);
end;

procedure TForm1.GroupBox1Click(Sender: TObject);
begin

end;

procedure TForm1.GroupWarnaClick(Sender: TObject);
begin

end;

procedure TForm1.lavenderBtnClick(Sender: TObject);
begin
  if LineColorBtn.Checked then LineColorButton.ButtonColor:=RGBToColor(230, 230, 250);
  if FillColorBtn.Checked then FillColorButton.ButtonColor:=RGBToColor(230, 230, 250);
end;

procedure TForm1.light_turquoiseBtnClick(Sender: TObject);
begin
  if LineColorBtn.Checked then LineColorButton.ButtonColor:=RGBToColor(162, 221, 236);
  if FillColorBtn.Checked then FillColorButton.ButtonColor:=RGBToColor(162, 221, 236);
end;

procedure TForm1.light_yellowBtnClick(Sender: TObject);
begin
  if LineColorBtn.Checked then LineColorButton.ButtonColor:=RGBToColor(255,255,224);
  if FillColorBtn.Checked then FillColorButton.ButtonColor:=RGBToColor(255,255,224);
end;

procedure TForm1.limeBtnClick(Sender: TObject);
begin
  if LineColorBtn.Checked then LineColorButton.ButtonColor:=clLime;
  if FillColorBtn.Checked then FillColorButton.ButtonColor:=clLime;
end;

procedure TForm1.penBtnClick(Sender: TObject);
begin
  mode:='pen';
  Image1.Cursor:=crHandPoint;
  AreaDrawing.awal.x:=0;
  AreaDrawing.awal.y:=0;
  AreaDrawing.akhir.x:=0;
  AreaDrawing.akhir.y:=0;
end;

procedure TForm1.purpleBtnClick(Sender: TObject);
begin
  if LineColorBtn.Checked then LineColorButton.ButtonColor:=clPurple;
  if FillColorBtn.Checked then FillColorButton.ButtonColor:=clPurple;
end;



procedure TForm1.FormActivate(Sender: TObject);
var
  i : Integer;
begin
  newBtnClick(Sender);
end;

procedure TForm1.DrawTriangle(Shift:TShiftState);
var
  length,tengah,length_y : Integer;
begin
  if ssShift in Shift then
  begin
      if abs(AreaDrawing.akhir.x - AreaDrawing.awal.x) > abs(AreaDrawing.akhir.y - AreaDrawing.awal.y) then
      begin
        length := abs(AreaDrawing.akhir.x - AreaDrawing.awal.x);
        tengah := abs((AreaDrawing.akhir.x - AreaDrawing.awal.x) div 2);
        length_y := abs((AreaDrawing.akhir.x - AreaDrawing.awal.x)*10 div 100);
      end
      else
      begin
        length := abs(AreaDrawing.akhir.y - AreaDrawing.awal.y);
        tengah := abs((AreaDrawing.akhir.y - AreaDrawing.awal.y) div 2);
        length_y := abs((AreaDrawing.akhir.y - AreaDrawing.awal.y)*10 div 100);
      end;
      ShapeCoordinates[0].x:= AreaDrawing.awal.x+tengah;
      ShapeCoordinates[0].y:= AreaDrawing.awal.y+length_y;
      ShapeCoordinates[1].x:= AreaDrawing.awal.x+length;
      ShapeCoordinates[1].y:= AreaDrawing.awal.y+length;
      ShapeCoordinates[2].x:= AreaDrawing.awal.x;
      ShapeCoordinates[2].y:= AreaDrawing.awal.y+length;
      Rot4(90);
  end
  else
  begin
      tengah := abs((AreaDrawing.akhir.x - AreaDrawing.awal.x) div 2);

      if AreaDrawing.akhir.x<AreaDrawing.awal.x then
      begin
      ShapeCoordinates[0].x:= AreaDrawing.awal.x-tengah;
      end
      else
      ShapeCoordinates[0].x:= AreaDrawing.awal.x+tengah;
      ShapeCoordinates[0].y:= AreaDrawing.awal.y;

      ShapeCoordinates[1].x:= AreaDrawing.akhir.x;
      ShapeCoordinates[1].y:= AreaDrawing.akhir.y;

      ShapeCoordinates[2].x:= AreaDrawing.awal.x;
      ShapeCoordinates[2].y:= AreaDrawing.akhir.y;
  end;

end;

procedure TForm1.DrawTriangle2(Shift:TShiftState);
var
  length,tengah : Integer;
begin
  ShapeCoordinates[0].x:=AreaDrawing.awal.x;
  ShapeCoordinates[0].y:=AreaDrawing.awal.y;
  if ssShift in Shift then
  begin
      if abs(AreaDrawing.akhir.x - AreaDrawing.awal.x) > abs(AreaDrawing.akhir.y - AreaDrawing.awal.y) then
         length := abs(AreaDrawing.akhir.x - AreaDrawing.awal.x)
      else
         length := abs(AreaDrawing.akhir.y - AreaDrawing.awal.y);
      ShapeCoordinates[1].x:= AreaDrawing.awal.x+length;
      ShapeCoordinates[1].y:= AreaDrawing.awal.y+length;
      ShapeCoordinates[2].x:= AreaDrawing.awal.x;
      ShapeCoordinates[2].y:= AreaDrawing.awal.y+length;
      Rot4(90);
  end
  else
  begin

      ShapeCoordinates[0].x:= AreaDrawing.awal.x;
      ShapeCoordinates[0].y:= AreaDrawing.awal.y;

      ShapeCoordinates[1].x:= AreaDrawing.akhir.x;
      ShapeCoordinates[1].y:= AreaDrawing.akhir.y;

      ShapeCoordinates[2].x:= AreaDrawing.awal.x;
      ShapeCoordinates[2].y:= AreaDrawing.akhir.y;
  end;

end;

procedure TForm1.DrawTrapessium(Shift:TShiftState);
var
  length,length2, length3 : Integer;
begin
  length2 := abs(AreaDrawing.akhir.x - AreaDrawing.awal.x);
  if ssShift in Shift then
  begin
      if abs(AreaDrawing.akhir.x - AreaDrawing.awal.x) > abs(AreaDrawing.akhir.y - AreaDrawing.awal.y) then
         begin
         length := abs(AreaDrawing.akhir.x - AreaDrawing.awal.x);
         length3 := abs((AreaDrawing.akhir.x - AreaDrawing.awal.x)*25 div 100);
         end
      else
      begin
         length := abs(AreaDrawing.akhir.y - AreaDrawing.awal.y);
         length3 := abs((AreaDrawing.akhir.y - AreaDrawing.awal.y)*25 div 100);
      end;
      ShapeCoordinates[0].x:=AreaDrawing.awal.x+length3;
      ShapeCoordinates[0].y:=AreaDrawing.awal.y+length3;
      ShapeCoordinates[1].x:= AreaDrawing.awal.x+length-length3;
      ShapeCoordinates[1].y:= AreaDrawing.awal.y+length3;
      ShapeCoordinates[2].x:= AreaDrawing.awal.x+length;
      ShapeCoordinates[2].y:= AreaDrawing.awal.y+length-length3;
      ShapeCoordinates[3].x:= AreaDrawing.awal.x;
      ShapeCoordinates[3].y:= AreaDrawing.awal.y+length-length3;
      Rot4(90);
  end
  else
  begin
      if AreaDrawing.akhir.x<AreaDrawing.awal.x then
      begin
      ShapeCoordinates[0].x:= AreaDrawing.awal.x-round(0.25*length2);
      ShapeCoordinates[1].x:= AreaDrawing.akhir.x+round(0.25*length2);
      end
      else
      if AreaDrawing.akhir.x>AreaDrawing.awal.x then
      begin
      ShapeCoordinates[0].x:=AreaDrawing.awal.x+round(0.25*length2);
      ShapeCoordinates[1].x:= AreaDrawing.akhir.x-round(0.25*length2);
      end;
      ShapeCoordinates[0].y:=AreaDrawing.awal.y;
      ShapeCoordinates[1].y:= AreaDrawing.awal.y;
      ShapeCoordinates[2].x:= AreaDrawing.akhir.x;
      ShapeCoordinates[2].y:= AreaDrawing.akhir.y;
      ShapeCoordinates[3].x:= AreaDrawing.awal.x;
      ShapeCoordinates[3].y:= AreaDrawing.akhir.y;
  end;

end;

procedure TForm1.DrawJajargenjang(Shift:TShiftState);
var
  length,length2 : Integer;
begin
  if ssShift in Shift then
  begin
      if abs(AreaDrawing.akhir.x - AreaDrawing.awal.x) > abs(AreaDrawing.akhir.y - AreaDrawing.awal.y) then
      begin
      length := abs(AreaDrawing.akhir.x - AreaDrawing.awal.x);
      length2 := abs((AreaDrawing.akhir.x - AreaDrawing.awal.x)*25 div 100);
      end
      else
      begin
         length := abs(AreaDrawing.akhir.y - AreaDrawing.awal.y);
      length2 := abs((AreaDrawing.akhir.y - AreaDrawing.awal.y)*25 div 100);
      end;
      ShapeCoordinates[0].x:=AreaDrawing.awal.x+length2;
      ShapeCoordinates[0].y:=AreaDrawing.awal.y+length2;
      ShapeCoordinates[1].x:= AreaDrawing.awal.x+length;
      ShapeCoordinates[1].y:= AreaDrawing.awal.y+length2;
      ShapeCoordinates[2].x:= AreaDrawing.awal.x+length-length2;
      ShapeCoordinates[2].y:= AreaDrawing.awal.y+length-length2;
      ShapeCoordinates[3].x:= AreaDrawing.awal.x;
      ShapeCoordinates[3].y:= AreaDrawing.awal.y+length-length2;
      Rot4(90);
  end
  else
  begin
      length2 := abs((AreaDrawing.akhir.x - AreaDrawing.awal.x)*25 div 100);

      ShapeCoordinates[0].x:= AreaDrawing.awal.x+length2;
      ShapeCoordinates[0].y:= AreaDrawing.awal.y;

      ShapeCoordinates[1].x:= AreaDrawing.akhir.x;
      ShapeCoordinates[1].y:= AreaDrawing.awal.y;

      ShapeCoordinates[2].x:= AreaDrawing.akhir.x-length2;
      ShapeCoordinates[2].y:= AreaDrawing.akhir.y;

      ShapeCoordinates[3].x:= AreaDrawing.awal.x;
      ShapeCoordinates[3].y:= AreaDrawing.akhir.y;
  end;

end;

end.

