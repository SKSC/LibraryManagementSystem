unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, ExtCtrls, Grids, DBGrids, ComCtrls;

type
  TForm3 = class(TForm)
    Label1: TLabel;
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    ADOQuery1: TADOQuery;
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
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
    Button7: TButton;
    Panel4: TPanel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Edit1: TEdit;
    Button8: TButton;
    Panel5: TPanel;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Panel6: TPanel;
    ComboBox1: TComboBox;
    Edit2: TEdit;
    Button9: TButton;
    DBGrid2: TDBGrid;
    Panel8: TPanel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    DBGrid3: TDBGrid;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    ADOQuery2: TADOQuery;
    Label28: TLabel;
    Label29: TLabel;
    Button11: TButton;
    DataSource2: TDataSource;
    Panel9: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    DBGrid4: TDBGrid;
    TabSheet2: TTabSheet;
    DBGrid5: TDBGrid;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    ADOQuery3: TADOQuery;
    DBGrid6: TDBGrid;
    Label34: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure DBGrid2CellClick(Column: TColumn);
    procedure PageControl1Change(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid2KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  str:string;
  strBookNO:string;
  strID:string;
  strCount:Integer;
  Today:TDateTime;
  BookDay:TDateTime;

implementation

uses Unit1, Unit2, Unit4;

{$R *.dfm}

procedure TForm3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
form3.Hide;
form1.show;
end;

procedure TForm3.FormShow(Sender: TObject);
begin
 with ADOQuery1 do
 form4.Label4.Caption:=label2.Caption;
 strID:=label2.Caption;
 ADOQuery1.Close;
 ADOQuery1.SQL.Clear;
 ADOQuery1.SQL.Add('select * from customer where CustomerID=:str');
 ADOQuery1.Parameters.ParamByName('str').Value:=strID;
 if ADOQuery1.Prepared=false then ADOQuery1.Prepared:=true;
 ADOQuery1.Open;
 label2.Caption:=ADOQuery1.FieldByName('CustomerName').AsString;
 panel4.Visible:=false;
 Panel3.Visible:=false;
 panel5.Visible:=false;
 panel6.Hide;
 panel8.Hide;
 panel9.Hide;
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
panel3.Show;
panel9.Hide;
panel5.Hide;
panel4.Hide;
panel6.Hide;
panel8.Hide;
with ADOQuery1 do
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('select * from Customer where CustomerID='+strID);
ADOQuery1.prepared:=true;
ADOQuery1.Open;
label4.Caption:=label2.Caption+'  你好：';
label5.Caption:='CustomerID:'+ADOQuery1.FieldByName('CustomerID').AsString;
label6.Caption:='Gender:'+ADOQuery1.FieldByName('Gender').AsString;
label7.Caption:='CustomerName:'+label2.Caption;
label8.Caption:='CustomerType:'+ADOQuery1.FieldByName('CustomerType').AsString;
label9.Caption:='BarNO:'+ADOQuery1.FieldByName('BarCodeNO').AsString;
label10.Caption:='Situation:'+ADOQuery1.FieldByName('Situation').AsString;
label11.Caption:='StartDate:'+ADOQuery1.FieldByName('StartingDate').AsString;
label12.Caption:='EndDate:'+ADOQuery1.FieldByName('EndingDate').AsString;
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('select count(CustomerID) from bookreturned where CustomerID="'+strID+'"');
ADOQuery1.Prepared:=true;
ADOQuery1.Open;
label13.Caption:='TotalBorrowed:'+ADOQuery1.FieldByName('count(CustomerID)').AsString;
end;

procedure TForm3.Button7Click(Sender: TObject);
begin
form4.showModal;
form4.edit1.text:='';
form4.edit2.Text:='';
form4.Edit3.Text:='';
form4.label4.Hide;
end;

procedure TForm3.Button8Click(Sender: TObject);
begin
with ADOQuery1 do
 ADOQuery1.Close;
 ADOQuery1.SQL.Clear;
 ADOQuery1.SQL.Add('select PassWord from Customer where CustomerID="'+strID+'"');
 ADOQuery1.Prepared:=true;
 ADOQuery1.Open;
 if edit1.Text<>ADOQuery1.FieldByName('PassWord').AsString then
 begin
  Application.MessageBox('密码输入错误！','ERROR!',mb_ok);
  edit1.Text:='';
  exit;
 end
 else
  begin
   ADOQuery1.Close;
   ADOQuery1.SQL.Clear;
   ADOQuery1.SQL.Add('update Customer set Situation="Unavailable" where CustomerID='+strID);
   ADOQuery1.ExecSQL;
   edit1.Text:='';
   label17.Visible:=false;
   button8.Visible:=false;
   edit1.Visible:=false;
   label14.Visible:=false;
   label15.Visible:=false;
   label16.Visible:=false;
   label34.Visible:=true;
   Application.MessageBox('帐户已挂失，请联系工作人员处理！','Success',mb_ok);
   exit;
  end;
  
end;


procedure TForm3.Button4Click(Sender: TObject);
begin
edit1.Text:='';
panel4.Visible:=true;
panel3.Visible:=false;
panel5.Hide;
panel6.Hide;
panel8.Hide;
panel9.Hide;
with ADOQuery1 do
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('select Situation from customer where CustomerID="'+strID+'"');
ADOQuery1.Open;
if ADOQuery1.FieldByName('Situation').AsString<>'Available' then
 begin
 label17.Visible:=false;
 button8.Visible:=false;
 edit1.Visible:=false;
 label14.Visible:=false;
 label15.Visible:=false;
 label16.Visible:=false;
 label34.Visible:=true;
 end
else
  Begin
  label14.Visible:=true;
  label15.Visible:=true;
  label16.Visible:=true;
   label17.Visible:=true;
   button8.Visible:=true;
   edit1.Visible:=true;
   label34.Visible:=false;
  end;
end;

procedure TForm3.Button3Click(Sender: TObject);
begin
DBGrid1.Visible:=true;
DBGrid6.Visible:=false;
panel5.Show;
panel9.Hide;
panel3.Hide;
panel4.Hide;
panel6.Hide;
panel8.Hide;
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('SELECT BookName,BookNO,Location,IndexNO,Author,DateLentOut,DateShouldReturned');
ADOQuery1.SQL.Add('from booklentout natural join individualbook natural join books natural join wholebooks where CustomerID="'+strID+'"');
ADOQuery1.Open;
end;

procedure TForm3.RadioButton1Click(Sender: TObject);
begin
DBGrid1.Visible:=true;
DBGrid6.Visible:=false;
   ADOQuery1.Close;
   ADOQuery1.SQL.Clear;
   ADOQuery1.SQL.Add('SELECT BookName,BookNO,Location,IndexNO,Author,DateLentOut,DateShouldReturned');
   ADOQuery1.SQL.Add('from booklentout natural join individualbook natural join books natural join wholebooks where CustomerID="'+strID+'"');
   ADOQuery1.Open;

end;

procedure TForm3.RadioButton2Click(Sender: TObject);
begin
DBGrid6.Visible:=true;
DBGrid1.Visible:=false;
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('SELECT BookNO,BookName,Location,DateBorrowed,DateShouldReturn,RuleBroken,Author');
ADOQuery1.SQL.Add('from bookreturned natural join individualbook natural join books where CustomerID="'+strID+'"');
ADOQuery1.Open;
end;

procedure TForm3.Button5Click(Sender: TObject);
begin
ComboBox1.ItemIndex:=1;
ADOQuery1.Close;
Edit2.Text:='';
Panel6.Visible:=true;
panel3.Hide;
panel4.Hide;
panel5.Hide;
panel8.Hide;
panel9.Hide;
DBGrid2.Visible:=false;
end;


procedure TForm3.Button9Click(Sender: TObject);
begin
with ADOQuery1 do
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('SELECT BookName,Press,Available,Total,IndexNO,DatePublished,Author');
ADOQuery1.SQL.Add('from books Natural Join wholebooks');
ADOQuery1.SQL.Add('where books.'+ComboBox1.Text+' like "%'+Edit2.Text+'%"');
ADOQuery1.Open;
DBGrid2.Visible:=true;
end;

procedure TForm3.DBGrid2CellClick(Column: TColumn);
begin
with ADOQuery2 do
ADOQuery2.Close;
ADOQuery2.SQL.Clear;
ADOQuery2.SQL.Add('select * from books natural join wholebooks where IndexNO="'+DBGrid1.Columns.Items[0].Field.Value+'"');
ADOQuery2.Open;
label29.Caption:=ADOQuery2.FieldByName('ISBN').AsString;
Label19.Caption:=ADOQuery2.FieldByName('BookName').AsString;
Label24.Caption:=ADOQuery2.FieldByName('Press').AsString;
Label26.Caption:=ADOQuery2.FieldByName('MainTheme').AsString;
label25.Caption:=ADOQuery2.FieldByName('Author').AsString;
label27.Caption:=ADOQuery2.FieldByName('DatePublished').AsString;
ADOQuery2.Close;
ADOQuery2.SQL.Clear;
ADOQuery2.SQL.Add('select IndexNO,BookNO,Location,Situation,Reservation from individualbook natural join wholebooks where ISBN="'+label29.Caption+'"');
ADOQuery2.Open;
panel8.Show;
ShowScrollBar(DBGrid3.Handle,SB_BOTH,FALSE);
end;

procedure TForm3.PageControl1Change(Sender: TObject);
begin
Today:=now;
with ADOQuery1 do
if PageControl1.TabIndex=0 then
  begin
    ADOQuery1.Close;
    ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Add('select BookName,Author,BookNO,DateLentOut,DateShouldReturned,Press from booklentout natural join books natural join individualbook');
    ADOQuery1.SQL.Add('where CustomerID="'+strID+'" AND DateShouldReturned<"'+DateTimeToStr(Today+7)+'"');
    ADOQuery1.Open;
    if ADOQuery1.FieldByName('BookNO').Value='' then
      begin
        label32.Visible:=true;
        DBGrid4.Visible:=false;
      end
       else
        begin
         label32.Visible:=false;
         DBGrid4.Visible:=true;
        end;
  end;
if PageControl1.TabIndex=1 then
  begin
    ADOQuery1.Close;
    ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Add('select ISBN,BookName,IndexNO,BookNO,Location,DateAvailable from appointment natural join books natural join individualbook natural join wholebooks');
    ADOQuery1.SQL.Add('where CustomerID="'+strID+'" AND DateAvailable<"'+DateTimeToStr(Today+7)+'"');
    ADOQuery1.Open;
    if ADOQuery1.FieldByName('ISBN').Value='' then
      begin
        label33.Visible:=true;
        DBGrid5.Visible:=false;
      end
       else
        begin
         label33.Visible:=false;
         DBGrid5.Visible:=true;
        end;
   end;
end;

procedure TForm3.Button11Click(Sender: TObject);
begin
Today:=now;
with ADOQuery3 do
ADOQuery3.Close;
ADOQuery3.SQL.Clear;
ADOQuery3.SQL.Add('select CustomerID from booklentout where CustomerID="'+strID+'"AND DateShouldReturned<"'+DateToStr(Today)+'"');
ADOQuery3.Open;
if ADOQuery3.FieldByName('CustomerID').AsString=strID then
begin
ADOQuery3.Close;
ADOQuery3.SQL.Clear;
ADOQuery3.SQL.Add('select IndexNO,BookNO,Location,Situation,Reservation from individualbook natural join wholebooks where ISBN="'+label29.Caption+'"');
ADOQuery3.Open;
MessageDlg('请先归还超期书籍！',mtInformation,[mbOk],0);
exit;
end;
ADOQuery3.Close;
ADOQuery3.SQL.Clear;
ADOQuery3.SQL.Add('select Situation from customer where CustomerID="'+strID+'"');
ADOQuery3.Open;
if ADOQuery3.FieldByName('Situation').AsString<>'Available' then
   MessageDlg('借书证无法使用！',mtInformation,[mbOk],0)
   else
    begin
    ADOQuery3.Close;
    ADOQuery3.SQL.Clear;
    ADOQuery3.SQL.Add('select Available from wholebooks where ISBN="'+label29.Caption+'"');
    ADOQuery3.Open;
      if ADOQuery3.FieldByName('Available').AsInteger<>0 then
         begin
         ADOQuery2.Close;
         ADOQuery2.SQL.Clear;
         ADOQuery2.SQL.Add('select IndexNO,BookNO,Location,Situation,Reservation from individualbook natural join wholebooks where ISBN="'+label29.Caption+'"');
         ADOQuery2.Open;
         MessageDlg('有书可借不用预约！',mtInformation,[mbOk],0);
         exit;
         end
          else
            begin
            ADOQuery3.Close;
            ADOQuery3.SQL.Clear;
            ADOQuery3.SQL.Add('select CustomerID from appointment where ISBN="'+label29.Caption+'"');
            ADOQuery3.Open;
            if ADOQuery3.FieldByName('CustomerID').AsString=strID then
                 begin
                 ADOQuery2.Close;
                 ADOQuery2.SQL.Clear;
                 ADOQuery2.SQL.Add('select IndexNO,BookNO,Location,Situation,Reservation from individualbook natural join wholebooks where ISBN="'+label29.Caption+'"');
                 ADOQuery2.Open;
                 MessageDlg('不可重复预约',mtInformation,[mbOk],0);
                 exit;
                 end
                   else
                   begin
                   ADOQuery3.Close;
                   ADOQuery3.SQL.Clear;
                   ADOQuery3.SQL.Add('select count(BookNO)');
                   ADOQuery3.SQL.Add('from individualbook');
                   ADOQuery3.SQL.Add('where ISBN="'+label29.Caption+'"');
                   ADOQuery3.Open;
                   strCount:=ADOQuery3.FieldByName('Count(BookNO)').AsInteger;
                   ADOQuery3.Close;
                   ADOQuery3.SQL.Clear;
                   ADOQuery3.SQL.Add('select count(Reservation)');
                   ADOQuery3.SQL.Add('from individualbook');
                   ADOQuery3.SQL.Add('where Reservation="Booked" AND ISBN="'+label29.Caption+'"');
                   ADOQuery3.Open;
                       if strCount=ADOQuery3.FieldByName('count(Reservation)').AsInteger then
                          begin
                          ADOQuery2.Close;
                          ADOQuery2.SQL.Clear;
                          ADOQuery2.SQL.Add('select IndexNO,BookNO,Location,Situation,Reservation from individualbook natural join wholebooks where ISBN="'+label29.Caption+'"');
                          ADOQuery2.Open;
                          MessageDlg('无书籍可预约！',mtInformation,[mbOk],0);
                          exit;
                          end
                          else
                          begin
                              ADOQuery3.Close;
                              ADOQuery3.SQL.Clear;
                              ADOQuery3.SQL.Add('select min(DateShouldReturned)');
                              ADOQuery3.SQL.Add('from individualbook natural join booklentout');
                              ADOQuery3.SQL.Add('where ISBN="'+label29.Caption+'"AND Reservation<>"Booked" AND DateShouldReturned>="'+DateToStr(Today)+'"');
                              ADOQuery3.Open;
                              if ADOQuery3.FieldByName('min(DateShouldReturned)').AsString='' then
                              begin
                              ADOQuery2.Close;
                              ADOQuery2.SQL.Clear;
                              ADOQuery2.SQL.Add('select IndexNO,BookNO,Location,Situation,Reservation from individualbook natural join wholebooks where ISBN="'+label29.Caption+'"');
                              ADOQuery2.Open;
                               MessageDlg('没有可以预定的书籍！',mtInformation,[mbOk],0);
                               exit;
                               end
                               else
                               begin
                              BookDay:=ADOQuery3.FieldByName('min(DateShouldReturned)').AsDateTime;
                              ADOQuery3.Close;
                              ADOQuery3.SQL.Clear;
                              ADOQuery3.SQL.Add('select BookNO');
                              ADOQuery3.SQL.Add('from individualbook natural join booklentout');
                              ADOQuery3.SQL.Add('where ISBN="'+label29.Caption+'" AND DateShouldReturned="'+DateTimeToStr(BookDay)+'"');
                              ADOQuery3.Open;
                              strBookNO:=ADOQuery3.FieldByName('BookNO').AsString;
                              ADOQuery3.Close;
                              ADOQuery3.SQL.Clear;
                              ADOQuery3.SQL.Add('insert into appointment values("'+strID+'","'+label29.Caption+'","'+DateToStr(BookDay+1)+'","'+DateToStr(BookDay)+'","'+strBookNO+'")');
                              ADOQuery3.ExecSQL;
                              ADOQuery3.Close;
                              ADOQuery3.SQL.Clear;
                              ADOQuery3.SQL.Add('update individualbook natural join booklentout natural join books');
                              ADOQuery3.SQL.Add('set Reservation="Booked"');
                              ADOQuery3.SQL.Add('where ISBN="'+label29.Caption+'"AND DateShouldReturned="'+DateTimeToStr(BookDay)+'"');
                              ADOQuery3.ExecSQL;
                              MessageDlg('预约成功，请按期来取书！',mtInformation,[mbOk],0);
                          end;
                          end;
                 end;
          end;

     end;
ADOQuery2.Close;
ADOQuery2.SQL.Clear;
ADOQuery2.SQL.Add('select IndexNO,BookNO,Location,Situation,Reservation from individualbook natural join wholebooks where ISBN="'+label29.Caption+'"');
ADOQuery2.Open;
end;

procedure TForm3.Button1Click(Sender: TObject);
begin
panel9.Show;
panel3.Hide;
panel5.Hide;
panel4.Hide;
panel6.Hide;
panel8.Hide;
Today:=now;
PageControl1.ActivePageIndex:=0;
with ADOQuery1 do
ADOQuery1.Close;
    ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Add('select BookName,Press,BookNO,DateShouldReturned,Author,DateLentOut,Location from booklentout natural join individualbook natural join books');
    ADOQuery1.SQL.Add('where CustomerID="'+strID+'" AND DateShouldReturned<"'+DateTimeToStr(Today+7)+'"');
    ADOQuery1.Open;
    if ADOQuery1.FieldByName('BookNO').Value='' then
      begin
        label32.Visible:=true;
        DBGrid4.Visible:=false;
      end
       else
        begin
         label32.Visible:=false;
         DBGrid4.Visible:=true;
        end;
end;

procedure TForm3.DBGrid2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
with ADOQuery2 do
ADOQuery2.Close;
ADOQuery2.SQL.Clear;
ADOQuery2.SQL.Add('select * from books natural join wholebooks where IndexNO="'+DBGrid1.Columns.Items[0].Field.Value+'"');
ADOQuery2.Open;
label29.Caption:=ADOQuery2.FieldByName('ISBN').AsString;
Label19.Caption:=ADOQuery2.FieldByName('BookName').AsString;
Label24.Caption:=ADOQuery2.FieldByName('Press').AsString;
Label26.Caption:=ADOQuery2.FieldByName('MainTheme').AsString;
label25.Caption:=ADOQuery2.FieldByName('Author').AsString;
label27.Caption:=ADOQuery2.FieldByName('DatePublished').AsString;
ADOQuery2.Close;
ADOQuery2.SQL.Clear;
ADOQuery2.SQL.Add('select IndexNO,BookNO,Location,Situation,Reservation from individualbook natural join wholebooks where ISBN="'+label29.Caption+'"');
ADOQuery2.Open;
panel8.Show;
ShowScrollBar(DBGrid3.Handle,SB_BOTH,FALSE);
end;


procedure TForm3.DBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
with ADOQuery2 do
ADOQuery2.Close;
ADOQuery2.SQL.Clear;
ADOQuery2.SQL.Add('select * from books natural join wholebooks where IndexNO="'+DBGrid1.Columns.Items[0].Field.Value+'"');
ADOQuery2.Open;
label29.Caption:=ADOQuery2.FieldByName('ISBN').AsString;
Label19.Caption:=ADOQuery2.FieldByName('BookName').AsString;
Label24.Caption:=ADOQuery2.FieldByName('Press').AsString;
Label26.Caption:=ADOQuery2.FieldByName('MainTheme').AsString;
label25.Caption:=ADOQuery2.FieldByName('Author').AsString;
label27.Caption:=ADOQuery2.FieldByName('DatePublished').AsString;
ADOQuery2.Close;
ADOQuery2.SQL.Clear;
ADOQuery2.SQL.Add('select IndexNO,BookNO,Location,Situation,Reservation from individualbook natural join wholebooks where ISBN="'+label29.Caption+'"');
ADOQuery2.Open;
panel8.Show;
ShowScrollBar(DBGrid3.Handle,SB_BOTH,FALSE);
end;

end.
