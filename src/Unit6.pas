unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, DB, ADODB, Grids, DBGrids;

type
  TForm6 = class(TForm)
    Label1: TLabel;
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Panel2: TPanel;
    ADOQuery1: TADOQuery;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Panel3: TPanel;
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
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Button5: TButton;
    Panel4: TPanel;
    Button6: TButton;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    Button7: TButton;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    ComboBox2: TComboBox;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Panel5: TPanel;
    Label20: TLabel;
    Edit2: TEdit;
    Button11: TButton;
    ADOQuery2: TADOQuery;
    Panel6: TPanel;
    Panel7: TPanel;
    Label21: TLabel;
    Edit3: TEdit;
    Button12: TButton;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Button13: TButton;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    Button14: TButton;
    Panel8: TPanel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    DBGrid2: TDBGrid;
    ComboBox3: TComboBox;
    Button15: TButton;
    Panel9: TPanel;
    Panel10: TPanel;
    Label27: TLabel;
    Edit7: TEdit;
    Button16: TButton;
    Button17: TButton;
    Button18: TButton;
    Panel11: TPanel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Button19: TButton;
    Button20: TButton;
    Panel12: TPanel;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
    Panel13: TPanel;
    RadioButton7: TRadioButton;
    RadioButton8: TRadioButton;
    RadioButton9: TRadioButton;
    DBGrid3: TDBGrid;
    procedure Button5Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure RadioButton4Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Formshow(Sender: TObject);
    procedure Edit4Change(Sender: TObject);
    procedure Edit5Change(Sender: TObject);
    procedure Edit6Change(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure ComboBox3Change(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure RadioButton5Click(Sender: TObject);
    procedure RadioButton6Click(Sender: TObject);
    procedure RadioButton7Click(Sender: TObject);
    procedure RadioButton8Click(Sender: TObject);
    procedure RadioButton9Click(Sender: TObject);
    procedure Button20Click(Sender: TObject);
    procedure Button19Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;
  str:string;
  Nowadays:TDateTime;
  PreviewDate:TDateTime;
  returnDate:TdateTime;
  strGender:string;
  strSituation:string;
  strBookNO:string;
  strType:string;
  strReservation:string;

implementation

uses  Unit7, Unit8, Unit1, Unit4;

{$R *.dfm}

procedure TForm6.Button5Click(Sender: TObject);
begin
form4.label4.Caption:=str;
form4.label4.Visible:=false;
form4.showModal;
end;

procedure TForm6.Button3Click(Sender: TObject);
begin
panel9.Hide;
with ADOQuery1 do
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('select * from customer where CustomerID='+str);
ADOQuery1.Open;
label5.Caption:=ADOQuery1.FieldByName('CustomerID').AsString;
label10.Caption:=ADOQuery1.FieldByName('CustomerName').AsString;
label12.Caption:=ADOQuery1.FieldByName('Gender').AsString;
label8.Caption:=ADOQuery1.FieldByName('BarCodeNO').AsString;
label15.Caption:=ADOQuery1.FieldByName('Situation').AsString;
label13.Caption:=ADOQuery1.FieldByName('CustomerType').AsString;
label17.Caption:=ADOQuery1.FieldByName('StartingDate').AsString;
label19.Caption:=ADOQuery1.FieldByName('EndingDate').AsString;
panel4.Hide;
panel5.Hide;
panel6.Hide;
panel3.Show;
end;

procedure TForm6.Button1Click(Sender: TObject);
begin
DBGrid2.Visible:=true;
DBGrid1.Visible:=false;
ComboBox1.Visible:=true;
edit1.Visible:=false;
ComboBox3.Visible:=false;
button7.Visible:=false;
button8.Visible:=false;
 with ADOQuery1 do
 ADOQuery1.Close;
 ADOQuery1.SQL.Clear;
 ADOQuery1.SQL.Add('select CustomerID,BookName,IndexNO,BookNO,DateAvailable,Location');
 ADOQuery1.SQL.Add('from appointment natural join wholebooks natural join books natural join individualbook');
 ADOQuery1.Open;
 ComboBox1.ItemIndex:=0;
 panel4.Show;
 panel3.Hide;
 panel5.Hide;
 panel6.Hide;
 edit1.Text:='';
 ComboBox2.Visible:=false;
 button8.Visible:=false;
 panel9.Hide;
 
end;

procedure TForm6.Button7Click(Sender: TObject);
begin
with ADOQuery1 do
case ComboBox1.ItemIndex of
1..5:
   begin
         ADOQuery1.Close;
         ADOQuery1.SQL.Clear;
         ADOQuery1.SQL.Add('select CustomerID,ISBN,BookName,Author,Press,MainTheme,DateAvailable,IndexNO,BookNO,Location');
         ADOQuery1.SQL.Add('from appointment natural join books natural join wholebooks natural join individualbook');
         ADOQuery1.SQL.Add('where '+ComboBox1.Text+' LiKE "%'+edit1.Text+'%"');
         ADOQuery1.Open;
   end;
end;
end;

procedure TForm6.Button2Click(Sender: TObject);
begin
panel9.Hide;
DBGrid1.Visible:=true;
DBGrid2.Visible:=false;
ComboBox2.Visible:=true;
edit1.Text:='';
edit1.Visible:=false;
ComboBox3.Visible:=false;
button7.Visible:=false;
button8.Visible:=false;
Nowadays:=now;
with ADOQuery1 do
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('SELECT CustomerID,BookName,DateLentOut,DateShouldReturned,Location,IndexNO,BookNO');
ADOQuery1.SQL.Add('FROM booklentout natural join books natural join individualbook natural join wholebooks');
ADOQuery1.SQL.Add('where DateShouldReturned<"'+DateTimeToStr(Nowadays)+'"');
ADOQuery1.Open;
ComboBox2.ItemIndex:=0;
panel4.Show;
 panel3.Hide;
 panel5.Hide;
 panel6.Hide;
 ComboBox1.Visible:=false;
 button7.Visible:=false;
end;


procedure TForm6.Button8Click(Sender: TObject);
begin
with ADOQuery1 do
case ComboBox2.ItemIndex of
1..6:
   begin
    ADOQuery1.Close;
    ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Add('SELECT customerID,ISBN,bookName,Author,Press,MainTheme,DateLentOut,DateShouldReturned,Location,IndexNO,BookNO');
    ADOQuery1.SQL.Add('FROM booklentout natural join books natural join individualbook natural join wholebooks');
    ADOQuery1.SQL.Add('where DateShouldReturned<"'+DatetimeToStr(Nowadays)+'" AND '+ComboBox2.Text+' LIKE "%'+edit1.Text+'%"');
    ADOQuery1.Open;
   end;
end;
end;


procedure TForm6.Button9Click(Sender: TObject);
begin
panel9.Hide;
panel3.Hide;
panel4.Hide;
panel5.Hide;
panel6.Hide;
form7.showModal;
end;

procedure TForm6.Button10Click(Sender: TObject);
begin
panel9.Hide;
panel5.Show;
panel3.Hide;
panel4.Hide;
panel6.Hide;
edit2.Text:='';
end;

procedure TForm6.Button11Click(Sender: TObject);
begin
with ADOQuery2 do
Nowadays:=now;
ADOQuery2.Close;
ADOQuery2.SQL.Clear;
ADOQuery2.SQL.Add('select * from booklentout where BookNO="'+edit2.Text+'"');
ADOQuery2.Open;
if ADOQuery2.eof=ADOQuery1.Bof then
  begin
   MessageDlg('不存在的BookNO！',mtInformation,[mbOk],0);
   edit1.Text:='';
   edit2.text:='';
  end
  else
  begin
strID:=ADOQuery2.FieldByName('CustomerID').AsString;
strBookNO:=ADOQuery2.FieldByName('BookNO').AsString;
previewDate:=ADOQuery2.FieldByName('DatelentOut').AsDateTime;
returnDate:=ADOQuery2.FieldByName('DateShouldReturned').AsDateTime;
ADOQuery2.Close;
ADOQuery2.SQL.Clear;
ADOQuery2.SQL.Add('delete from booklentout where BookNO="'+edit2.Text+'"');
ADOQuery2.ExecSQL;
ADOQuery2.SQL.Clear;
ADOQuery2.SQL.Add('select Reservation from individualbook where BookNO="'+edit2.Text+'"');
ADOQuery2.Open;
if ADOQuery2.FieldByName('Reservation').AsString='Booked' then
   begin
   { ADOQuery2.Close;
    ADOQuery2.SQL.Clear;
    ADOQuery2.SQL.Add('update wholebooks natural join individualbook');
    ADOQuery2.SQL.Add('set Available=Available+1');
    ADOQuery2.SQL.Add('where BookNO="'+edit2.Text+'"');
    ADOQuery2.ExecSQL;              }
    ADOQuery2.SQL.Clear;
    ADOQuery2.SQL.Add('update appointment');
    ADOQuery2.SQL.Add('set DateReturn="'+DateToStr(Nowadays)+'", DateAvailable="'+DateToStr(Nowadays+1)+'"');
    ADOQuery2.SQL.Add('where BookNO="'+edit2.Text+'"');
    ADOQuery2.ExecSQL;
    MessageDlg('操作成功！',mtInformation,[mbOk],0);
   end
   else
   begin
    ADOQuery2.Close;
    ADOQuery2.SQL.Clear;
    ADOQuery2.SQL.Add('update wholebooks natural join individualbook');
    ADOQuery2.SQL.Add('set Available=Available+1,Situation="Available"');
    ADOQuery2.SQL.Add('where BookNO="'+edit2.Text+'"');
    ADOQuery2.ExecSQL;
    MessageDlg('操作成功！',mtInformation,[mbOk],0);
   end;
ADOQuery2.SQL.Clear;
if returnDate<Nowadays then
  ADOQuery2.SQL.Add('insert into bookreturned values("'+strID+'","'+strBookNO+'","'+DateTimeToStr(previewdate)+'","'+DateTimeToStr(returnDate)+'","OverDue")');
if returnDate>=Nowadays then
  ADOQuery2.SQL.Add('insert into bookreturned values("'+strID+'","'+strBookNO+'","'+DateTimeToStr(previewdate)+'","'+DateTimeToStr(returnDate)+'","Null")');
  ADOQuery2.ExecSQL;
end;
end;

procedure TForm6.Button12Click(Sender: TObject);
begin
with ADOQuery2 do
ADOQuery2.Close;
ADOQuery2.SQL.Clear;
ADOQuery2.SQL.Add('select * from customer where CustomerID="'+edit3.Text+'"');
ADOQuery2.Open;
if ADOQuery2.eof=ADOQuery1.Bof then
  begin
   MessageDlg('不存在的CustomerID！',mtInformation,[mbOk],0);
   edit1.Text:='';
   edit2.text:='';
   exit;
  end
  else
   ADOQuery2.Close;
   ADOQuery2.SQL.Clear;
   ADOQuery2.SQL.Add('select * from customer where CustomerID="'+edit3.Text+'"');
   ADOQuery2.Open;
   if (StrToInt(str)<200000)AND(ADOQuery2.FieldByName('CustomerType').AsString<>'Student') then
    begin
    MessageDlg('没有权限修改！',mtInformation,[mbOk],0);
    exit;
    end
    else
  begin
  panel7.Show;
  panel8.Show;
  button14.Visible:=false;
edit4.Text:=ADOQuery2.FieldByName('CustomerID').AsString;
edit5.Text:=ADOQuery2.FieldByName('CustomerName').AsString;
if ADOQuery2.FieldByName('Gender').AsString='Male' then
  begin
 { RadioButton2.Checked:=false;}
  RadioButton1.Checked:=true;
  strGender:='Male';
  end
  else
   begin
    RadioButton1.Checked:=false;
    strGender:='Female';
  {  RadioButton2.Checked:=false;         }
   end;
edit6.Text:=ADOQuery2.FieldByName('barCodeNO').AsString;
if ADOQuery2.FieldByName('Situation').AsString='Available' then
  begin
 { RadioButton4.Checked:=false; }
  RadioButton3.Checked:=true;
  strSituation:='Available';
  end
  else
   begin
    RadioButton3.Checked:=false;
    strSituation:='Unavailable';
  {  RadioButton4.Checked:=true;  }
   end;
  end;
end;

procedure TForm6.Button6Click(Sender: TObject);
begin
panel9.Hide;
edit3.text:='';
edit4.Text:='';
edit5.Text:='';
edit6.Text:='';
panel6.show;
panel3.Hide;
panel4.Hide;
panel7.Hide;
panel5.Hide;
end;

procedure TForm6.Button14Click(Sender: TObject);
begin
with ADOQuery2 do
ADOQuery2.Close;
ADOQuery2.SQL.Clear;
ADOQuery2.SQL.Add('select * from customer where CustomerID="'+edit3.Text+'"');
ADOQuery2.Open;
edit4.Text:=ADOQuery2.FieldByName('CustomerID').AsString;
edit5.Text:=ADOQuery2.FieldByName('CustomerName').AsString;
if ADOQuery2.FieldByName('Gender').AsString='male' then
  begin
  RadioButton2.Checked:=true;
  RadioButton1.Checked:=false;
  end
  else
   begin
    RadioButton1.Checked:=true;
    RadioButton2.Checked:=false;
   end;
edit6.Text:=ADOQuery2.FieldByName('barCodeNO').AsString;
if ADOQuery2.FieldByName('Situation').AsString='Available' then
  begin
  RadioButton4.Checked:=false;
  RadioButton3.Checked:=true;
  end
  else
   begin
    RadioButton3.Checked:=false;
    RadioButton4.Checked:=true;
   end;
end;

procedure TForm6.Button13Click(Sender: TObject);
begin
with ADOQuery2 do
ADOQuery2.Close;
ADOQuery2.SQL.Clear;
ADOQuery2.SQL.Add('select CustomerID from customer where CustomerID="'+edit4.Text+'"');
ADOQuery2.Open;
if (ADOQuery2.FieldByName('CustomerID').AsString<>'') AND (edit3.Text<>edit4.Text)then
begin
MessageDlg('已存在的CustomerID！',mtInformation,[mbOk],0);
exit;
end;
ADOQuery2.Close;
ADOQuery2.SQL.Clear;
ADOQuery2.SQL.Add('update customer');
ADOQuery2.SQL.Add('set CustomerID="'+edit4.Text+'",CustomerName="'+edit5.Text+'",Gender="'+strGender+'",BarCodeNO="'+edit6.Text+'",Situation="'+strSituation+'"');
ADOQuery2.SQL.Add('where CustomerID="'+edit3.Text+'"');
ADOQuery2.ExecSQL;
ADOQuery2.Close;
ADOQuery2.SQL.Clear;
ADOQuery2.SQL.Add('select * from customer where CustomerID="'+edit4.Text+'"');
ADOQuery2.Open;
edit4.Text:=ADOQuery2.FieldByName('CustomerID').AsString;
edit5.Text:=ADOQuery2.FieldByName('CustomerName').AsString;
if ADOQuery2.FieldByName('Gender').AsString='Male' then
  begin
  RadioButton1.Checked:=true;
  RadioButton2.Checked:=false;
  end
  else
   begin
    RadioButton2.Checked:=true;
    RadioButton1.Checked:=false;
   end;
edit6.Text:=ADOQuery2.FieldByName('barCodeNO').AsString;
if ADOQuery2.FieldByName('Situation').AsString='Available' then
  begin
 { RadioButton4.Checked:=true;     }
  RadioButton3.Checked:=true;
  end
  else
   begin
  {  RadioButton3.Checked:=true;        }
    RadioButton4.Checked:=true;
   end;
edit3.Text:=edit4.Text;
end;

procedure TForm6.RadioButton1Click(Sender: TObject);
begin
strGender:='Male';
end;

procedure TForm6.RadioButton2Click(Sender: TObject);
begin
strGender:='Female';
end;

procedure TForm6.RadioButton3Click(Sender: TObject);
begin
strSituation:='Available';
end;

procedure TForm6.RadioButton4Click(Sender: TObject);
begin
strSituation:='Unavailable';
end;

procedure TForm6.Button4Click(Sender: TObject);
begin
panel9.Hide;
panel3.Hide;
panel4.Hide;
panel5.Hide;
panel6.Hide;
form8.showModal;
end;

procedure TForm6.FormClose(Sender: TObject; var Action: TCloseAction);
begin
form1.show;
form6.hide;
end;

procedure TForm6.FormShow(Sender: TObject);
begin
str:=label2.Caption;
with ADOQuery1 do
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('select CustomerName from customer where CustomerID='+str);
ADOQuery1.Open;
label2.Caption:=ADOQuery1.FieldByName('CustomerName').AsString;
panel3.Hide;
panel4.Hide;
panel5.Hide;
panel6.Hide;
panel9.Hide;
end;

procedure TForm6.Edit4Change(Sender: TObject);
begin
button14.Visible:=true;
end;

procedure TForm6.Edit5Change(Sender: TObject);
begin
button14.Visible:=true;
end;

procedure TForm6.Edit6Change(Sender: TObject);
begin
button14.Visible:=true;
end;

procedure TForm6.ComboBox2Change(Sender: TObject);
begin
with ADOQuery1 do
case ComboBox2.ItemIndex of
-1..0:
   begin
    ADOQuery1.Close;
    ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Add('SELECT customerID,ISBN,BookName,Author,Press,MainTheme,DateLentOut,DateShouldReturned,Location,IndexNO,BookNO');
    ADOQuery1.SQL.Add('FROM booklentout natural join books natural join individualbook natural join wholebooks');
    ADOQuery1.SQL.Add('where DateShouldReturned<"'+DateTimeToStr(Nowadays)+'"');
    ADOQuery1.Open;
    edit1.Visible:=false;
    ComboBox3.Visible:=false;
    button8.Visible:=false;
   end;
1..6:
   begin
   edit1.Visible:=true;
   edit1.Text:='';
   ComboBox3.Visible:=false;
   button8.Visible:=true;
   end;
7:
   begin
   edit1.Visible:=false;
   ComboBox3.Visible:=true;
   button8.Visible:=false;
   end;
end;
end;

procedure TForm6.ComboBox1Change(Sender: TObject);
begin
with ADOQuery1 do
case ComboBox1.ItemIndex of
-1..0:
   begin
         ADOQuery1.Close;
         ADOQuery1.SQL.Clear;
         ADOQuery1.SQL.Add('select CustomerID,BookName,IndexNO,BookNO,DateAvailable,Location');
         ADOQuery1.SQL.Add('from appointment natural join wholebooks natural join books natural join individualbook');
         ADOQuery1.Open;
         ComboBox3.Visible:=false;
         edit1.Visible:=false;
         button7.Visible:=false;
   end;
1..5:
   begin
   edit1.Visible:=true;
   edit1.Text:='';
   ComboBox3.Visible:=false;
   button7.Visible:=true;
   end;
6:
   begin
   edit1.Visible:=false;
   ComboBox3.Visible:=true;
   button7.Visible:=false;
   end;
end;
end;

procedure TForm6.ComboBox3Change(Sender: TObject);
begin
with ADOQuery1 do
if ComboBox1.Visible=true then
      begin
         ADOQuery1.Close;
         ADOQuery1.SQL.Clear;
         ADOQuery1.SQL.Add('select CustomerID,ISBN,BookName,DateAvailable,IndexNO,BookNO,Location');
         ADOQuery1.SQL.Add('from appointment natural join books natural join individualbook natural join wholebooks');
         ADOQuery1.SQL.Add('where Location="'+ComboBox3.Text+'"');
         ADOQuery1.Open;
      end;
if ComboBox2.Visible=true then
      begin
      ADOQuery1.Close;
    ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Add('SELECT customerID,ISBN,bookName,Author,Press,MainTheme,DateLentOut,DateShouldReturned,Location,IndexNO,BookNO');
    ADOQuery1.SQL.Add('FROM booklentout natural join books natural join individualbook natural join wholebooks');
    ADOQuery1.SQL.Add('where DateShouldReturned<"'+DatetimeToStr(Nowadays)+'" AND '+ComboBox2.Text+' ="'+ComboBox3.Text+'"');
    ADOQuery1.Open;
      end;
      
end;
procedure TForm6.Button15Click(Sender: TObject);
begin
panel3.Hide;
panel4.Hide;
panel5.Hide;
panel6.Hide;
panel7.Hide;
panel8.Hide;
panel9.show;
panel10.Hide;
panel11.Hide;
DBGrid3.Hide;
end;

procedure TForm6.Button18Click(Sender: TObject);
begin
panel10.Show;
DBGrid3.Visible:=false;
panel11.Hide;
edit7.Text:='';
end;

procedure TForm6.Button16Click(Sender: TObject);
begin
if edit7.Text='' then
begin
MessageDlg('请输入CustomerID！',mtInformation,[mbOk],0);
exit;
end;
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('select CustomerID,Situation from customer where CustomerID="'+edit7.Text+'"');
ADOQUery1.Open;
if ADOQuery1.FieldByName('CustomerID').AsString='' then
begin
MessageDlg('不存在的CustomerID！',mtInformation,[mbOk],0);
exit;
end;
if ADOQuery1.FieldByName('Situation').AsString='Locked' then
begin
MessageDlg('已经注销的用户！',mtInformation,[mbOk],0);
exit;
end;
if ADOQuery1.FieldByName('CustomerID').AsString='200000' then
begin
MessageDlg('不可删除的用户！',mtInformation,[mbOk],0);
exit;
end
else
begin
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('update customer set Situation="Locked" where CustomerID="'+edit7.Text+'"');
ADOQuery1.ExecSQL;
MessageDlg('修改成功！',mtInformation,[mbOk],0);
exit;
end;
end;

procedure TForm6.Button17Click(Sender: TObject);
begin
panel11.Show;
edit8.Text:='';
edit9.Text:='';
edit10.Text:='';
panel10.Hide;
RadioButton5.Checked:=true;
strGender:='Male';
RadioButton8.Checked:=true;
strType:='Student';
DBGrid3.Visible:=false;
end;

procedure TForm6.RadioButton5Click(Sender: TObject);
begin
strGender:='Male';
end;

procedure TForm6.RadioButton6Click(Sender: TObject);
begin
strGender:='Female';
end;

procedure TForm6.RadioButton7Click(Sender: TObject);
begin
strType:='Teacher';
end;

procedure TForm6.RadioButton8Click(Sender: TObject);
begin
strType:='Student';
end;

procedure TForm6.RadioButton9Click(Sender: TObject);
begin
strType:='Super';
end;

procedure TForm6.Button20Click(Sender: TObject);
begin
panel11.Show;
edit8.Text:='';
edit9.Text:='';
edit10.Text:='';
panel10.Hide;
RadioButton5.Checked:=true;
strGender:='Male';
RadioButton8.Checked:=true;
strType:='Student';
end;

procedure TForm6.Button19Click(Sender: TObject);
begin
if edit8.Text='' then
begin
MessageDlg('请输入CustomerID！',mtInformation,[mbOk],0);
exit;
end;
if edit9.Text='' then
begin
MessageDlg('请输入CustomerName！',mtInformation,[mbOk],0);
exit;
end;
if edit10.Text='' then
begin
MessageDlg('请输入BarCodeNO！',mtInformation,[mbOk],0);
exit;
end;
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('select CustomerID,BarCodeNO from customer where CustomerID="'+edit8.Text+'"');
ADOQuery1.Open;
if ADOQuery1.FieldByName('CustomerID').AsString<>'' then
begin
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('select CustomerID,CustomerName,CustomerType,Gender,BarCodeNO,Situation from customer where StartingDate="'+DateToStr(NowaDays)+'"');
ADOQuery1.Open;
ShowScrollBar(DBGrid3.Handle,SB_BOTH,FALSE);
MessageDlg('已存在的CustomerID！',mtInformation,[mbOk],0);
edit8.Text:='';
exit;
end;
if ADOQuery1.FieldByName('BarCodeNO').AsString<>'' then
begin
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('select CustomerID,CustomerName,CustomerType,Gender,BarCodeNO,Situation from customer where StartingDate="'+DateToStr(NowaDays)+'"');
ADOQuery1.Open;
ShowScrollBar(DBGrid3.Handle,SB_BOTH,FALSE);
MessageDlg('已存在的BarCodeNO！',mtInformation,[mbOk],0);
edit10.Text:='';
exit;
end;
Nowadays:=now;
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('insert into customer values("'+edit8.Text+'","'+edit9.Text+'","'+strGender+'","'+strType+'","'+edit10.Text+'","Available","'+DateToStr(NowaDays)+'","'+DateToStr(Nowadays+1095)+'","'+edit8.Text+'")');
ADOQuery1.ExecSQL;
edit8.Text:='';
edit9.Text:='';
edit10.Text:='';
RadioButton5.Checked:=true;
strGender:='Male';
RadioButton8.Checked:=true;
strType:='Student';
DBGrid3.Visible:=true;
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('select CustomerID,CustomerName,CustomerType,Gender,BarCodeNO,Situation from customer where StartingDate="'+DateToStr(NowaDays)+'"');
ADOQuery1.Open;
ShowScrollBar(DBGrid3.Handle,SB_BOTH,FALSE);
end;
end.
