unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    ListBox1: TListBox;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  function EnumProc(Wd:HWnd;Param: LongInt): Boolean; stdcall;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  if findwindow(nil,'Новый текстовый документ - Блокнот') <>0 then
    showmessage ('Окно найдено')
  else
    showmessage ('Окно не найдено');
  if IsZoomed(findwindow(nil,'Новый текстовый документ - Блокнот'))then
    Showwindow(findwindow(nil,'Новый текстовый документ - Блокнот'),SW_MINIMIZE)
  else
    Showwindow(findwindow(nil,'Новый текстовый документ - Блокнот'),SW_MAXIMIZE);
    setwindowtext (findwindow(nil,'Новый текстовый документ - Блокнот'),'Nomer');
end;
function EnumProc(Wd:HWnd;Param: LongInt): Boolean; stdcall;
Var
Nm:Array[0..255] of char;
Cs:Array[0..255] of char;
begin
  GetWindowText(Wd,Nm,255);
  GetClassName(Wd,Nm,255);
  If Wd<>Form1.Handle then
    Form1.ListBox1.Items.Add(string(Nm)+'/'+string(Cs));
    EnumProc := TRUE;
end;
procedure TForm1.Button2Click(Sender: TObject);
begin
 ListBox1.Items.Clear;
 EnumWindows(@EnumProc, 0);
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  setwindowtext (findwindow(nil,'Nomer'),'Новый текстовый документ - Блокнот');
end;

end.
