unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Grids, DBGrids, DB, ADODB;

type
  TForm7 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Panel1: TPanel;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Label2: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label5: TLabel;
    Panel2: TPanel;
    Label3: TLabel;
    Button3: TButton;
    Edit2: TEdit;
    Label8: TLabel;
    Label12: TLabel;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;
  str:string;
  strISBN:string;
  Nowadays:TDateTime;
  intAvailable:integer;

implementation

{$R *.dfm}

procedure TForm7.FormShow(Sender: TObject);
begin
edit1.Text:='';
edit2.Text:='';
panel1.Hide;
label8.Hide;
panel2.Hide;
label12.Hide;
DBGrid1.Hide;
end;

procedure TForm7.Button1Click(Sender: TObject);
begin
Nowadays:=now;
if edit1.Text='' then
begin
MessageDlg('Please enter Customer ID',mtInformation,[mbOk],0);
exit;
end;
with ADOQuery1 do
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('select CustomerID from booklentout where CustomerID="'+edit1.Text+'"AND DateShouldReturned<"'+DateToStr(Nowadays)+'"');
ADOQuery1.Open;
if ADOQuery1.FieldByName('CustomerID').AsString=edit1.Text then
begin
   label12.Show;
   panel2.Hide;
   panel1.Hide;
   exit;
end;
ADOQuery1.Close;
ADOQUery1.SQL.Clear;
ADOQuery1.SQL.Add('select CustomerName,Gender,BarCodeNO,CustomerID, situation');
ADOQuery1.SQL.Add('From customer where CustomerID="'+edit1.text+'"');
ADOQuery1.Prepared:=true;
ADOQuery1.Open;
if ADOQuery1.eof=ADOQuery1.Bof then
  begin
   MessageDlg('This Customer ID does not exist.',mtInformation,[mbOk],0);
   edit1.Text:='';
   edit2.text:='';
   exit;
  end
  else
  begin
if ADOQuery1.FieldByName('Situation').AsString<>'Available' then
 begin
  label8.Show;
  panel2.Hide;
  panel1.Hide;
 end
 else
  begin
   label9.Caption:=ADOQuery1.FieldByName('CustomerName').AsString;
   label10.Caption:=ADOQuery1.FieldByName('Gender').AsString;
   label11.Caption:=ADOQuery1.FieldByName('BarCodeNO').AsString;
   label7.Caption:=ADOQuery1.FieldByName('CustomerID').AsString;
   ADOQuery1.Close;
   ADOQuery1.SQL.Clear;
   ADOQuery1.SQL.Add('select * from booklentout where CustomerID=:str');
   ADOQuery1.Parameters.ParamByName('str').Value:=edit1.Text;
   ADOQuery1.Prepared:=true;
   ADOQuery1.Open;
   panel1.Show;
   panel2.Show;
  end;
  end;
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('select CustomerID,BookNO,IndexNO,BookName,Author,Press,Location');
ADOQuery1.SQL.Add('from booklentout natural join wholebooks natural join individualbook natural join books');
ADOQuery1.SQL.Add('where CustomerID="'+edit1.Text+'"');
ADOQuery1.Open;
DBGrid1.Show;
end;

procedure TForm7.Edit1Change(Sender: TObject);
begin
label8.Visible:=false;
label12.Visible:=false;
end;

procedure TForm7.Button3Click(Sender: TObject);
begin
Nowadays:=now;
with ADOQuery1 do
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('select BookNO from individualbook where BookNO="'+edit2.text+'"');
ADOQuery1.Open;
if ADOQuery1.eof=ADOQuery1.Bof then
  begin
   ADOQuery1.Close;
   ADOQuery1.SQL.Clear;
   ADOQuery1.SQL.Add('select CustomerID,BookNO,BookName,Author,Press,Location,DateLentOut,DateShouldReturned');
   ADOQuery1.SQL.Add('from booklentout natural join individualbook natural join books');
   ADOQuery1.SQL.Add('where CustomerID="'+edit1.Text+'"');
   ADOQuery1.Open;
   MessageDlg('This item ID does not exist.',mtInformation,[mbOk],0);
   edit2.text:='';
  end
  else
  begin
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('select CustomerID,ISBN from appointment natural join individualbook where BookNO="'+edit2.Text+'"');
ADOQuery1.Open;
str:=ADOQuery1.FieldByName('CustomerID').AsString;
strISBN:=ADOQuery1.FieldByName('ISBN').AsString;
if str='' then
  begin
  ADOQuery1.Close;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('select CustomerID from booklentout where BookNO="'+edit2.Text+'"');
  ADOQuery1.Open;
  if edit1.Text=ADOQuery1.FieldByName('CustomerID').AsString then
  begin
  ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('select CustomerID,BookNO,BookName,Author,Press,Location,DateLentOut,DateShouldReturned');
ADOQuery1.SQL.Add('from booklentout natural join individualbook natural join books');
ADOQuery1.SQL.Add('where CustomerID="'+edit1.Text+'"');
ADOQuery1.Open;
  exit;
  end
  else
  begin
   ADOQuery1.Close;
   ADOQuery1.SQL.Clear;
   ADOQuery1.SQL.Add('insert into booklentout values("'+edit1.Text+'","'+edit2.Text+'","'+DateTimeToStr(Nowadays)+'","'+DateTimeToStr(Nowadays+30)+'")');
   ADOQuery1.ExecSQL;
   ADOQuery1.SQL.Clear;
   ADOQuery1.SQL.Add('select Available from wholebooks natural join individualbook where BookNO="'+edit2.text+'"');
   ADOQuery1.Open;
   intAvailable:=ADOQuery1.FieldByName('Available').AsInteger;
   ADOQuery1.Close;
   ADOQuery1.SQL.Clear;
   ADOQuery1.SQL.Add('update individualbook natural join wholebooks');
   ADOQuery1.SQL.Add('set Available="'+IntToStr(intAvailable-1)+'",individualbook.Situation="Lent"');
   ADOQuery1.SQL.Add('where BookNO="'+edit2.Text+'"');
   ADOQuery1.ExecSQL;
   end;
  end;
if (str<>edit1.Text)AND(str<>'') then
  begin
   ADOQuery1.Close;
   ADOQuery1.SQL.Clear;
   ADOQuery1.SQL.Add('select CustomerID,BookNO,BookName,Author,Press,Location,DateLentOut,DateShouldReturned');
   ADOQuery1.SQL.Add('from booklentout natural join individualbook natural join books');
   ADOQuery1.SQL.Add('where CustomerID="'+edit1.Text+'"');
   ADOQuery1.Open;
   Application.MessageBox('This item has been reserved.','ERROR!',mb_ok);
  end;
if str=edit1.Text then
  begin
   ADOQuery1.Close;
   ADOQuery1.SQL.Clear;
   ADOQuery1.SQL.Add('insert into booklentout values("'+edit1.Text+'","'+edit2.Text+'","'+DateTimeToStr(Nowadays)+'","'+DateTimeToStr(Nowadays+30)+'")');
   ADOQuery1.ExecSQL;
   ADOQuery1.SQL.Clear;
   ADOQuery1.SQL.Add('delete from appointment where ISBN="'+strISBN+'" AND CustomerID="'+str+'"');
   ADOQuery1.ExecSQL;
   ADOQuery1.SQL.Clear;
   ADOQuery1.SQL.Add('update individualbook set Reservation="" where BookNO="'+edit2.Text+'"');
   ADOQuery1.ExecSQL;
  end;
  end;
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('select CustomerID,BookNO,BookName,Author,Press,Location,DateLentOut,DateShouldReturned');
ADOQuery1.SQL.Add('from booklentout natural join individualbook natural join books');
ADOQuery1.SQL.Add('where CustomerID="'+edit1.Text+'"');
ADOQuery1.Open;
edit2.Text:='';
end;

end.

