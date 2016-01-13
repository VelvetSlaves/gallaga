unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls ;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Memo1: TMemo;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private

  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  index:integer;


implementation
     uses Unit2;
{$R *.dfm}
  var newp: potok;

procedure TForm1.Button1Click(Sender: TObject);
begin
newp:=potok.Create(true);
newp.Resume;
newp.Priority:=tpLower;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  index:=index+1;
  if index mod 2 = 0 then
   newp.Resume
  else newp.Suspend;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
newp.Terminate;
Label1.Caption:='0';
end;

end.
