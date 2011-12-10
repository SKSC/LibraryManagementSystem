unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, DB, ADODB, Grids, DBGrids;

type
  TForm8 = class(TForm)
    Label1: TLabel;
    Panel1: TPanel;
    Button1: TButton;
    Button3: TButton;
    Panel2: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    ADOQuery1: TADOQuery;
    Panel3: TPanel;
    Label2: TLabel;
    Edit1: TEdit;
    Button4: TButton;
    Label3: TLabel;
    Edit2: TEdit;
    Label4: TLabel;
    Edit3: TEdit;
    Label5: TLabel;
    Edit4: TEdit;
    Label6: TLabel;
    Edit5: TEdit;
    Label7: TLabel;
    Edit6: TEdit;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Edit9: TEdit;
    Label11: TLabel;
    Memo1: TMemo;
    Button5: TButton;
    Button6: TButton;
    Label12: TLabel;
    Edit10: TEdit;
    Button7: TButton;
    Panel4: TPanel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Edit11: TEdit;
    ComboBox2: TComboBox;
    Button8: TButton;
    Button9: TButton;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Panel5: TPanel;
    Panel6: TPanel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Memo2: TMemo;
    Button2: TButton;
    Button10: TButton;
    Edit12: TEdit;
    Edit13: TEdit;
    Edit14: TEdit;
    Edit15: TEdit;
    Edit16: TEdit;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Edit17: TEdit;
    Label30: TLabel;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    ComboBox1: TComboBox;
    Label31: TLabel;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    ADOQuery2: TADOQuery;
    Button16: TButton;
    Label32: TLabel;
    Edit18: TEdit;
    Label33: TLabel;
    Label34: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure RadioButton4Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;
  strSituation:string;
  strSituation1:string;

implementation

{$R *.dfm}

procedure TForm8.Button1Click(Sender: TObject);
begin
panel3.Hide;
panel5.Hide;
panel4.Hide;
panel6.Hide;
panel2.Show;
edit10.Text:='';
edit1.Text:='';
end;

procedure TForm8.Button4Click(Sender: TObject);
begin
with ADOQuery1 do
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('select * from books natural join wholebooks');
ADOQuery1.SQL.Add('where books.ISBN="'+edit1.Text+'"');
ADOQuery1.Open;
if ADOQuery1.eof=ADOQuery1.Bof then
  begin
   MessageDlg('不存在的ISBN！',mtInformation,[mbOk],0);
   edit1.Text:='';
   edit2.text:='';
  end
  else
  begin
edit2.Text:=ADOQuery1.FieldByName('BookName').AsString;
edit3.Text:=ADOQuery1.FieldByName('ISBN').AsString;
edit4.Text:=ADOQuery1.FieldByName('Author').AsString;
edit5.Text:=ADOQuery1.FieldByName('Press').AsString;
edit6.Text:=ADOQuery1.FieldByName('DatePublished').AsString;
Memo1.Text:=ADOQuery1.FieldByName('MainTheme').AsString;
label33.Caption:=ADOQuery1.FieldByName('Available').AsString;
label34.Caption:=ADOQuery1.FieldByName('Total').AsString;
edit9.Text:=ADOQuery1.FieldByName('IndexNO').AsString;
panel3.show;
end;
end;

procedure TForm8.Button5Click(Sender: TObject);
begin
with ADOQuery1 do
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('update books');
ADOQuery1.SQL.Add('set BookName="'+edit2.text+'",ISBN="'+edit3.text+'",Author="'+edit4.Text+'",Press="'+edit5.Text+'",DatePublished="'+edit6.text+'",MainTheme="'+Memo1.Text+'"');
ADOQuery1.SQL.Add('where ISBN="'+edit1.Text+'"');
ADOQuery1.ExecSQL;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('update wholebooks');
ADOQuery1.SQL.Add('set ISBN="'+edit3.Text+'",IndexNO="'+edit9.Text+'"');
ADOQuery1.SQL.Add('where ISBN="'+edit1.Text+'"');
ADOQuery1.ExecSQL;
edit1.Text:=edit3.Text;
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('select * from books natural join wholebooks');
ADOQuery1.SQL.Add('where books.ISBN="'+edit1.Text+'"');
ADOQuery1.Open;
edit2.Text:=ADOQuery1.FieldByName('BookName').AsString;
edit3.Text:=ADOQuery1.FieldByName('ISBN').AsString;
edit4.Text:=ADOQuery1.FieldByName('Author').AsString;
edit5.Text:=ADOQuery1.FieldByName('Press').AsString;
edit6.Text:=ADOQuery1.FieldByName('DatePublished').AsString;
label33.Caption:=ADOQuery1.FieldByName('Available').AsString;
label34.Caption:=ADOQuery1.FieldByName('Total').AsString;
edit9.Text:=ADOQuery1.FieldByName('IndexNO').AsString;
Memo1.Text:=ADOQuery1.FieldByName('MainTheme').AsString;
end;

procedure TForm8.Button6Click(Sender: TObject);
begin
with ADOQuery1 do
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('select * from books natural join wholebooks');
ADOQuery1.SQL.Add('where books.ISBN="'+edit1.Text+'"');
ADOQuery1.Open;
edit2.Text:=ADOQuery1.FieldByName('BookName').AsString;
edit3.Text:=ADOQuery1.FieldByName('ISBN').AsString;
edit4.Text:=ADOQuery1.FieldByName('Author').AsString;
edit5.Text:=ADOQuery1.FieldByName('Press').AsString;
edit6.Text:=ADOQuery1.FieldByName('DatePublished').AsString;
label33.Caption:=ADOQuery1.FieldByName('Available').AsString;
label34.Caption:=ADOQuery1.FieldByName('Total').AsString;
edit9.Text:=ADOQuery1.FieldByName('IndexNO').AsString;
Memo1.Text:=ADOQuery1.FieldByName('MainTheme').AsString;
end;

procedure TForm8.PageControl1Change(Sender: TObject);
begin
if PageControl1.TabIndex=0 then
    begin
    edit1.Text:='';
    panel4.Hide;
    end;
if PageControl1.TabIndex=1 then
    begin
    edit10.Text:='';
    panel3.Hide;
    end;
end;

procedure TForm8.Button7Click(Sender: TObject);
begin
panel4.show;
with ADOQuery1 do
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('select individualbook.*,IndexNO,books.BookName,wholebooks.Total');
ADOQuery1.SQL.Add('from individualbook natural join books natural join wholebooks');
ADOQuery1.SQL.Add('where BookNO="'+edit10.Text+'"');
ADOQuery1.Open;
if ADOQuery1.eof=ADOQuery1.Bof then
  begin
   MessageDlg('不存在的BookNO！',mtInformation,[mbOk],0);
   edit1.Text:='';
   edit2.text:='';
   exit;
  end
  else
  begin
label19.Caption:=ADOQuery1.FieldByName('BookName').AsString;
label18.Caption:=ADOQuery1.FieldByName('IndexNO').AsString;
edit11.Text:=ADOQuery1.FieldByName('BookNO').AsString;
strSituation:=ADOQuery1.FieldByName('Situation').AsString;
if ADOQuery1.FieldByName('Situation').AsString='Available' then
  RadioButton1.Checked:=true
  else
  Radiobutton2.Checked:=true;
ComboBox2.Text:=ADOQuery1.FieldByName('Location').AsString;
panel4.Show;
end;
end;

procedure TForm8.Button9Click(Sender: TObject);
begin
with ADOQuery1 do
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('select BookNO from individualbook where BookNO="'+edit11.Text+'"');
ADOQuery1.Open;
if ADOQuery1.FieldByName('BookNO').AsString<>'' then
begin
MessageDlg('已存在的BookNO！',mtInformation,[mbOk],0);
exit;
end
else
begin
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('update individualbook');
ADOQuery1.SQL.Add('set BookNO="'+edit11.Text+'",Location="'+Combobox2.Text+'",Situation="'+strSituation1+'"');
ADOQuery1.SQL.Add('where BookNO="'+edit10.Text+'"');
ADOQuery1.ExecSQL;
if (strSituation='Available')AND(RadioButton2.Checked=true)then
 begin
  ADOQuery1.Close;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('update wholebooks');
  ADOQuery1.SQL.Add('set Available=Available-1');
  ADOQuery1.SQL.Add('where IndexNO="'+label18.Caption+'"');
  ADOQuery1.ExecSQL;
  strSituation:='Unavailable';
 end;
if (strSituation='Unavailable')AND(RadioButton1.Checked=true)then
  begin
  ADOQuery1.Close;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('update wholebooks');
  ADOQuery1.SQL.Add('set Available=Available+1');
  ADOQuery1.SQL.Add('where IndexNO="'+label18.Caption+'"');
  ADOQuery1.ExecSQL;
  strSituation:='Available';
 end;
edit10.Text:=edit11.Text;
 end;
end;


procedure TForm8.Button8Click(Sender: TObject);
begin
with ADOQuery1 do
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('select individualbook.*,IndexNO,books.BookName,wholebooks.Total');
ADOQuery1.SQL.Add('from individualbook natural join books natural join wholebooks');
ADOQuery1.SQL.Add('where BookNO="'+edit10.Text+'"');
ADOQuery1.Open;
label19.Caption:=ADOQuery1.FieldByName('BookName').AsString;
label18.Caption:=ADOQuery1.FieldByName('IndexNO').AsString;
edit11.Text:=ADOQuery1.FieldByName('BookNO').AsString;
strSituation:=ADOQuery1.FieldByName('Situation').AsString;
if ADOQuery1.FieldByName('Situation').AsString='Available' then
  RadioButton1.Checked:=true
  else
  Radiobutton2.Checked:=true;
ComboBox2.Text:=ADOQuery1.FieldByName('Location').AsString;
end;

procedure TForm8.Button3Click(Sender: TObject);
begin
panel5.show;
panel2.Hide;
panel6.Hide;
panel3.Hide;
panel4.Hide;
edit12.Text:='';
edit13.Text:='';
edit18.Text:='';
edit14.Text:='';
edit15.Text:='';
edit16.Text:='';
memo2.Text:='';
button2.Visible:=true;
button12.Visible:=false;
end;

procedure TForm8.Button10Click(Sender: TObject);
begin
edit12.Text:='';
edit13.Text:='';
edit14.Text:='';
edit15.Text:='';
edit16.Text:='';
memo2.Text:='';
end;


procedure TForm8.Button2Click(Sender: TObject);
begin
if edit12.Text='' then
begin
MessageDlg('请输入ISBN！',mtInformation,[mbOk],0);
exit;
end;
if edit13.Text='' then
begin
MessageDlg('请输入BookName！',mtInformation,[mbOk],0);
exit;
end;
if edit14.Text='' then
begin
 MessageDlg('请输入Author！',mtInformation,[mbOk],0);
 exit;
 end;
if edit15.Text='' then
begin
 MessageDlg('请输入Press！',mtInformation,[mbOk],0);
 exit;
 end;
if edit16.Text='' then
begin
MessageDlg('请输入DatePublished！',mtInformation,[mbOk],0);
exit;
end;
with ADOQuery1 do
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('insert into books values("'+edit12.Text+'","'+edit13.Text+'","'+edit14.Text+'","'+edit15.Text+'","'+Memo2.Text+'","'+edit16.Text+'")');
ADOQuery1.ExecSQL;
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('insert into wholebooks values("'+edit12.Text+'","'+edit18.Text+'","0","0")');
ADOQuery1.ExecSQL;
panel6.show;
panel5.Hide;
DBGrid1.Visible:=false;
label28.Caption:=edit12.Text;
ComboBox1.Text:='';
edit17.Text:='';
strSituation:='';
end;



procedure TForm8.Button12Click(Sender: TObject);
begin
if edit12.Text='' then
begin
MessageDlg('请输入ISBN！',mtInformation,[mbOk],0);
exit;
end;
if edit13.Text='' then
begin
MessageDlg('请输入BookName！',mtInformation,[mbOk],0);
exit;
end;
if edit14.Text='' then
begin
MessageDlg('请输入Author！',mtInformation,[mbOk],0);
exit;
end;
if edit15.Text='' then
begin
 MessageDlg('请输入Press！',mtInformation,[mbOk],0);
 exit;
 end;
if edit16.Text='' then
begin
 MessageDlg('请输入DatePublished！',mtInformation,[mbOk],0);
 exit;
 end;
with ADOQuery1 do
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('update books set BookName="'+edit13.Text+'",ISBN="'+edit12.Text+'",Author="'+Edit14.text+'",Press="'+Edit15.text+'",MainTheme="'+Memo2.Text+'",DatePublished="'+Edit16.Text+'"');
ADOQuery1.SQL.Add('where ISBN="'+label28.Caption+'"');
ADOQuery1.ExecSQL;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('update wholebooks set IndexNO="'+edit18.Text+'"');
ADOQuery1.SQL.Add('where ISBN="'+label28.Caption+'"');
ADOQuery1.ExecSQL;
label28.Caption:=edit12.text;
panel5.Hide;
edit17.Text:='';
panel6.Show;
end;

procedure TForm8.Button13Click(Sender: TObject);
begin
panel5.Show;
panel6.Hide;
button2.Visible:=false;
button12.Visible:=true;
end;

procedure TForm8.Button14Click(Sender: TObject);
begin
if edit17.Text='' then
begin
 MessageDlg('请输入BookNO！',mtInformation,[mbOk],0);
 exit;
 end;
if strSituation='' then
 begin
 MessageDlg('请选择Situation！',mtInformation,[mbOk],0);
 exit;
 end;
if ComboBox1.Text='' then
begin
 MessageDlg('请选择Location！',mtInformation,[mbOk],0);
 exit;
 end;
with ADOQuery2 do
ADOQuery2.Close;
ADOQuery2.SQL.Clear;
ADOQuery2.SQL.Add('insert into individualbook values("'+label28.Caption+'","'+edit17.Text+'","'+strSituation+'","'+ComboBox1.Text+'","")');
ADOQuery2.ExecSQL;
ADOQuery2.Close;
ADOQuery2.SQL.Clear;
if Radiobutton3.Checked=true then
  begin
   ADOQuery2.SQL.Add('update wholebooks');
   ADOQuery2.SQL.Add('set Available=Available+1,Total=Total+1');
   ADOQuery2.SQL.Add('where ISBN="'+label28.Caption+'"');
  end;
if Radiobutton4.Checked=true then
  begin
   ADOQuery2.SQL.Add('update wholebooks');
   ADOQuery2.SQL.Add('set Total=Total+1');
   ADOQuery2.SQL.Add('where ISBN="'+label28.Caption+'"');
  end;
ADOQuery2.ExecSQL;
ADOQuery2.Close;
ADOQuery2.SQL.Clear;
ADOQuery2.SQL.Add('select * from individualbook where ISBN="'+label28.Caption+'"');
ADOQuery2.Open;
edit17.Text:='';
ComboBox1.Text:='';
RadioButton3.Checked:=true;
RadioButton4.Checked:=false;
DBGrid1.Visible:=true;
end;

procedure TForm8.RadioButton3Click(Sender: TObject);
begin
strSituation:='Available';
end;

procedure TForm8.RadioButton4Click(Sender: TObject);
begin
strSituation:='Unavailable';
end;


procedure TForm8.Button15Click(Sender: TObject);
begin
label28.Caption:='';
panel6.Hide;
end;

procedure TForm8.Button16Click(Sender: TObject);
begin
panel5.Hide;
panel6.Hide;
end;

procedure TForm8.FormShow(Sender: TObject);
begin
panel2.Hide;
panel5.Hide;
panel6.Hide;
end;

procedure TForm8.RadioButton1Click(Sender: TObject);
begin
strSituation1:='Available';
end;

procedure TForm8.RadioButton2Click(Sender: TObject);
begin
strSituation1:='Unavailable';
end;

end.
