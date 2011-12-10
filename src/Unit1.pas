unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    Panel1: TPanel;
    ComboBox1: TComboBox;
    Button2: TButton;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    Edit1: TEdit;
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    ADOQuery2: TADOQuery;
    DataSource2: TDataSource;
    DBGrid2: TDBGrid;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Today:TDateTime;

implementation

uses Unit2;

{$R *.dfm}

procedure TForm1.Button2Click(Sender: TObject);
begin
DBGrid1.Show;
with ADOQuery1 do
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('select BookName,IndexNO,Author,Press,DatePublished,Available,Total from books natural join wholebooks where '+ ComboBox1.Text+' like "%'+Edit1.Text+'%"');
ADOQuery1.Open;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
Form2.showModal;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
DBGrid1.Hide;
edit1.Text:='';
ComboBox1.ItemIndex:=1;
panel2.Hide;
end;


procedure TForm1.DBGrid1CellClick(Column: TColumn);
begin
panel2.Show;
with ADOQuery2 do
ADOQuery2.Close;
ADOQuery2.SQL.Clear;
ADOQuery2.SQL.Add('select BookName,ISBN,Author,DatePublished,Press,MainTheme');
ADOQuery2.SQL.Add('from books natural join wholebooks');
ADOQuery2.SQL.Add(' where IndexNO="'+DBGrid1.Columns.Items[1].Field.Value+'"');
ADOQuery2.Open;
label3.Caption:=ADOQuery2.FieldByName('BookName').AsString;
label5.Caption:=ADOQuery2.FieldByName('ISBN').AsString;
label7.Caption:=ADOQuery2.FieldByName('Author').AsString;
label9.Caption:=ADOQuery2.FieldByName('Press').AsString;
label13.Caption:=ADOQuery2.FieldByName('DatePublished').AsString;
label11.Caption:=ADOQuery2.FieldByName('MainTheme').AsString;
ADOQuery2.Close;
ADOQuery2.SQL.Clear;
ADOQuery2.SQL.Add('select IndexNO,BookNO,Location,Situation');
ADOQuery2.SQL.Add('from individualbook natural join wholebooks');
ADOQuery2.SQL.Add('where IndexNO="'+DBGrid1.Columns.Items[1].Field.Value+'"');
ADOQuery2.Open;
ShowScrollBar(DBGrid2.Handle,SB_BOTH,FALSE);
end;

procedure TForm1.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
panel2.Show;
with ADOQuery2 do
ADOQuery2.Close;
ADOQuery2.SQL.Clear;
ADOQuery2.SQL.Add('select BookName,ISBN,Author,DatePublished,Press,MainTheme');
ADOQuery2.SQL.Add('from books natural join wholebooks');
ADOQuery2.SQL.Add(' where IndexNO="'+DBGrid1.Columns.Items[1].Field.Value+'"');
ADOQuery2.Open;
label3.Caption:=ADOQuery2.FieldByName('BookName').AsString;
label5.Caption:=ADOQuery2.FieldByName('ISBN').AsString;
label7.Caption:=ADOQuery2.FieldByName('Author').AsString;
label9.Caption:=ADOQuery2.FieldByName('Press').AsString;
label13.Caption:=ADOQuery2.FieldByName('DatePublished').AsString;
label11.Caption:=ADOQuery2.FieldByName('MainTheme').AsString;
ADOQuery2.Close;
ADOQuery2.SQL.Clear;
ADOQuery2.SQL.Add('select IndexNO,BookNO,Location,Situation');
ADOQuery2.SQL.Add('from individualbook natural join wholebooks');
ADOQuery2.SQL.Add('where IndexNO="'+DBGrid1.Columns.Items[1].Field.Value+'"');
ADOQuery2.Open;
ShowScrollBar(DBGrid2.Handle,SB_BOTH,FALSE);
end;

procedure TForm1.DBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
panel2.Show;
with ADOQuery2 do
ADOQuery2.Close;
ADOQuery2.SQL.Clear;
ADOQuery2.SQL.Add('select BookName,ISBN,Author,DatePublished,Press,MainTheme');
ADOQuery2.SQL.Add('from books natural join wholebooks');
ADOQuery2.SQL.Add(' where IndexNO="'+DBGrid1.Columns.Items[1].Field.AsString+'"');
ADOQuery2.Open;
label3.Caption:=ADOQuery2.FieldByName('BookName').AsString;
label5.Caption:=ADOQuery2.FieldByName('ISBN').AsString;
label7.Caption:=ADOQuery2.FieldByName('Author').AsString;
label9.Caption:=ADOQuery2.FieldByName('Press').AsString;
label13.Caption:=ADOQuery2.FieldByName('DatePublished').AsString;
label11.Caption:=ADOQuery2.FieldByName('MainTheme').AsString;
ADOQuery2.Close;
ADOQuery2.SQL.Clear;
ADOQuery2.SQL.Add('select IndexNO,BookNO,Location,Situation');
ADOQuery2.SQL.Add('from individualbook natural join wholebooks');
ADOQuery2.SQL.Add('where IndexNO="'+DBGrid1.Columns.Items[1].Field.AsString+'"');
ADOQuery2.Open;
 ShowScrollBar(DBGrid2.Handle,SB_BOTH,FALSE);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
Today:=now;
with ADOQuery1 do
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('update appointment natural join individualbook natural join wholebooks');
ADOQuery1.SQL.Add('set Reservation="",Available=Available+1,Situation="Available"');
ADOQuery1.SQL.Add('where DateAvailable<"'+DateToStr(Today-1)+'"AND individualbook.BookNO NOT IN(select booklentout.BookNO from booklentout)');
ADOQuery1.ExecSQL;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('delete from appointment where DateAvailable<"'+DateToStr(Today-3)+'"AND BookNO NOT IN(select BookNO from booklentout)');
ADOQuery1.ExecSQL;
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('update appointment natural join individualbook natural join wholebooks');
ADOQuery1.SQL.Add('set Reservation=""');
ADOQuery1.SQL.Add('where DateAvailable<"'+DateToStr(Today)+'"AND individualbook.BookNO IN(select booklentout.BookNO from booklentout)');
ADOQuery1.ExecSQL;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('delete from appointment where DateAvailable<"'+DateToStr(Today)+'"AND BookNO IN(select BookNO from booklentout)');
ADOQuery1.ExecSQL;
end;
end.
