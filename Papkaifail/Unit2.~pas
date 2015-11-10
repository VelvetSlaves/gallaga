unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FileCtrl, StdCtrls, Grids, Outline;

type
  TForm1 = class(TForm)
    FileListBox1: TFileListBox;
    DirectoryListBox1: TDirectoryListBox;
    FilterComboBox1: TFilterComboBox;
    DriveComboBox1: TDriveComboBox;
    Outline1: TOutline;
    Button1: TButton;
    Button2: TButton;
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

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  CreateDir('ПАПКА');//Создаем папку в текущем каталоге
  ShowMessage('Новая  папка создана');
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  if  (DeleteFile('Файл.txt')) or (DeleteFile('Новый текстовый файл.txt'))
    then ShowMessage('Файл удален')
    else ShowMessage('Файл не найден');
  if RemoveDir('ПАПКА')
    then ShowMessage('ПАПКА удалена')
    else ShowMessage('Папка не найдена');
end;

procedure TForm1.Button3Click(Sender: TObject);
var
myFile : TextFile;
text   : string;
begin
  AssignFile(myFile, 'Новый текстовый файл.txt');
  ReWrite(myFile);//Открыть для записи
  WriteLn(myFile, 'Hellooooooooooooo');
  CloseFile(myFile);
  // Переооткрытие файла в режиме только для чтения
  Reset(myFile);
  ReadLn(myFile, text);
  ShowMessage(text);
  CloseFile(myFile);
  if RenameFile('Новый текстовый файл.txt','Файл.txt')
    then ShowMessage(' переименован')
    else ShowMessage('Не найден или уже существует');
  if CopyFile('Файл.txt','C:\Program Files\Borland\Файл.txt',true) //Скопированный файл также можно переименовать.Пример:CopyFile('Файл.txt','C:\Program Files\Borland\НОВОЕ_ИМЯ.txt',true)
    then ShowMessage('Файл скопирован')
    else ShowMessage('Файл не найден или уже существует');
end;

end.
