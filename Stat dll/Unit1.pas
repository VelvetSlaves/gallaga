unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    ComboBox1: TComboBox;
    Label1: TLabel;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
function calc(a,b,index:integer):integer;
   external 'dll1';
procedure TForm1.Button1Click(Sender: TObject);
begin
Label1.Caption:=inttostr(calc(strtoint(Edit1.Text),strtoint(Edit2.Text),ComboBox1.ItemIndex));
end;

end.
