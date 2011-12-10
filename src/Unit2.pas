unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    ADOQuery1: TADOQuery;
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  times:Integer;
  strID:string;
  strPassword:string;
  str:string;

implementation

uses Unit1, Unit3, Unit4, Unit6;

{$R *.dfm}

procedure TForm2.Button3Click(Sender: TObject);
begin
edit2.Text:='';
edit1.text:='';
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
Form2.Close;
end;

procedure TForm2.Button1Click(Sender: TObject);
begin
 if edit1.Text='' then
   begin
    Application.MessageBox('请输入用户ID！','ERROR!',mb_ok);
    exit;
   end;
 if edit2.Text='' then
   begin
    Application.MessageBox('请输入密码！','ERROR!',mb_ok);
    exit;
   end;
with ADOQuery1 do
 times:=times+1;
 ADOQuery1.Close;
 ADOQuery1.SQL.Clear;
 ADOQuery1.SQL.Add('select CustomerName,CustomerID,PassWord,CustomerType,Situation from customer where CustomerID=:strID and Password=:strPassword');
 ADOQuery1.Parameters.ParamByName('strID').Value:=edit1.Text;
 ADOQuery1.Parameters.ParamByName('strPassword').Value:=edit2.Text;
 if ADOQuery1.Prepared=false then ADOQuery1.Prepared:=true;
 ADOQuery1.Open;
 if ADOQuery1.eof=ADOQuery1.Bof then
   begin
    if times<=5 then
     begin
      MessageDlg('错误的用户ID或密码！',mtInformation,[mbOk],0);
      edit1.Text:='';
      edit2.text:='';
     end
    else
     begin
      MessageDlg('错误上限，退出登录！',mtInformation,[mbOk],0);
      Form2.Close;
      edit1.Text:='';
      edit2.Text:='';
     end;
    end
 else
  begin
    ADOQuery1.Close;
    ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Add('select Situation,CustomerID,CustomerType from customer where CustomerID="'+edit1.Text+'"');
    ADOQuery1.Open;
    if ADOQuery1.FieldByName('Situation').AsString='Locked' then
    begin
    MessageDlg('用户已经被注销！',mtInformation,[mbOk],0);
    edit1.Text:='';
    edit2.Text:='';
    exit;
    end
    else
 if ADOQuery1.FieldByName('CustomerType').AsString='Teacher' then
   begin
    form6.label2.Caption:=ADOQuery1.FieldByName('CustomerID').AsString;
    form1.Hide;
    form2.Close;
    form6.show;
    Form6.Button15.Hide;
    form6.Button9.show;
    form6.Button10.show;
    form6.Button4.Show;
   end
else
if ADOQuery1.FieldByName('CustomerType').AsString='Super' then
     begin
    form6.label2.Caption:=ADOQuery1.FieldByName('CustomerID').AsString;
    form1.Hide;
    form2.Close;
    form6.show;
    Form6.Button15.Show;
    form6.Button9.Hide;
    form6.Button10.Hide;
    form6.Button4.Hide;
   end
   else
if ADOQuery1.FieldByName('CustomerType').AsString='Student' then
    begin
     form3.Label2.Caption:=ADOQuery1.FieldByName('CustomerID').AsString;
    form1.Hide;
    form2.Close;
    form3.show;
    end;
    end;
end;

procedure TForm2.FormShow(Sender: TObject);
begin
edit2.Text:='';
edit1.Text:='';
times:=0;
end;
end.
