unit Unit1; 

interface 

uses 
Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
Dialogs, StdCtrls, Registry; 

type 
TForm1 = class(TForm) 
Button1: TButton; 
Button2: TButton; 
Edit1: TEdit; 
procedure Button1Click(Sender: TObject); 
procedure Button2Click(Sender: TObject); 
private 
{ Private declarations } 
public 
{ Public declarations } 
end; 

var 
Form1: TForm1; 

implementation 

{$R *.dfm} 

procedure TForm1.Button1Click(Sender: TObject); 
var R:TRegIniFile; 
begin 
R:=TRegIniFile.Create('Software'); 
R.OpenKey('online', true);
R.WriteString('Razad', 'Param', Edit1.Text);
R.Free;
end; 

procedure TForm1.Button2Click(Sender: TObject); 
var R:TRegistry; 
begin 
R:=TRegistry.Create; 
R.RootKey:=HKEY_CURRENT_USER;
R.DeleteKey('Software\online');
R.Free; 
end; 

end.
