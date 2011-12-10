unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB;

type
  TForm4 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Label4: TLabel;
    ADOQuery1: TADOQuery;
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;
  strID:string;
  strPW:string;

implementation

{$R *.dfm}

procedure TForm4.Button2Click(Sender: TObject);
begin
edit1.Text:='';
edit2.Text:='';
edit3.Text:='';
end;

procedure TForm4.Button3Click(Sender: TObject);
begin
form4.Close;
end;

procedure TForm4.Button1Click(Sender: TObject);
begin
 if edit1.Text='' then
   begin
    Application.MessageBox('«Î ‰»Îæ…√‹¬Î£°','ERROR!',mb_ok);
    exit;
   end;
 if edit2.Text='' then
   begin
    Application.MessageBox('«Î ‰»Î–¬√‹¬Î','ERROR!',mb_ok);
    exit;
   end;
 if edit3.Text='' then
   begin
    Application.MessageBox('«Î»∑»œ–¬√‹¬Î','ERROR!',mb_ok);
    exit;
   end;
 if edit2.Text<>edit3.Text then
   begin
    Application.MessageBox('–¬√‹¬Î ‰»Î¥ÌŒÛ','ERROR!',mb_ok);
    edit1.text:='';
    edit2.text:='';
    edit3.text:='';
    exit;
   end;
 with ADOQuery1 do
 ADOQuery1.Close;
 ADOQuery1.SQL.clear;
 ADOQuery1.SQL.Add('select PassWord from Customer where CustomerID="'+label4.Caption+'"');
 ADOQuery1.Prepared:=true;
 ADOQuery1.Open;
 if edit1.Text=ADOQuery1.FieldByName('PassWord').AsString then
 begin
  ADOQuery1.Close;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('Update Customer set Password="'+edit2.Text+'" where CustomerID="'+label4.Caption+'"');
  ADOQuery1.ExecSQL;
  Application.MessageBox('√‹¬Î–ﬁ∏ƒ≥…π¶£°','Success',mb_ok);
  form4.Close;
  exit;
 end
 else
  begin
   Application.MessageBox('√‹¬Î ‰»Î¥ÌŒÛ','ERROR!',mb_ok);
   edit1.text:='';
   edit2.text:='';
   edit3.text:='';
   exit;
  end;
end;

procedure TForm4.FormShow(Sender: TObject);
begin
edit1.Text:='';
edit2.Text:='';
edit3.Text:='';
end;

end.
 