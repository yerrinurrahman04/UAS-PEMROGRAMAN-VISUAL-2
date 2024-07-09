unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, frxExportPDF,frxClass;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    ComboBox1: TComboBox;
    Label7: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    DBGrid1: TDBGrid;
    Label10: TLabel;
    Edit6: TEdit;
    Button6: TButton;
    Label8: TLabel;
    Button7: TButton;
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  a: string;

implementation

uses Unit2, Unit3;

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
ComboBox1.Items.Clear;
ComboBox1.Items.Add('PILIH--');
ComboBox1.Items.Add('yes');
ComboBox1.Items.Add('no');
ComboBox1.ItemIndex := 0;
end;

procedure TForm1.DBGrid1CellClick(Column: TColumn);
  begin
    Edit1.Text := DataModule2.ZQuery1.Fields[1].AsString;
    Edit2.Text := DataModule2.ZQuery1.Fields[2].AsString;
    Edit3.Text := DataModule2.ZQuery1.Fields[3].AsString;
    Edit4.Text := DataModule2.ZQuery1.Fields[4].AsString;
    Edit5.Text := DataModule2.ZQuery1.Fields[5].AsString;
    ComboBox1.Text := DataModule2.ZQuery1.Fields[6].AsString;

    a := DataModule2.ZQuery1.Fields[0].AsString;

    Button1.Enabled := False;
    Button2.Enabled := False;
    Button3.Enabled := True;
    Button4.Enabled := True;
    Button5.Enabled := True;

end;

procedure TForm1.Button1Click(Sender: TObject);
begin
Button1.Enabled:= False;
Button2.Enabled:= True;
Button3.Enabled:= False;
Button4.Enabled:= False;
Button5.Enabled:= True;
Edit1.Text :='';
Edit2.Text :='';
Edit3.Text :='';
Edit4.Text :='';
Edit5.Text :='';
ComboBox1.Text :='';
Label8.Caption :='';
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  diskon: Integer;
begin
if Edit1.Text = '' then
begin
ShowMessage('NIK Tidak Boleh Kosong!');
end else
if DataModule2.ZQuery1.Locate('nik',Edit1.Text,[]) then
begin
ShowMessage('NIK '+Edit1.Text+' Sudah Ada Didalam Sistem');
end else
begin
  DataModule2.ZQuery1.SQL.Clear;
  DataModule2.ZQuery1.SQL.Add('insert into kustomer (nik, nama, telp, email, alamat, member) values (:nik, :nama, :telp, :email, :alamat, :member)');
  DataModule2.ZQuery1.Params.ParamByName('nik').AsInteger := StrToInt(Edit1.Text);
  DataModule2.ZQuery1.Params.ParamByName('nama').AsString := Edit2.Text;
  DataModule2.ZQuery1.Params.ParamByName('telp').AsString := Edit3.Text;
  DataModule2.ZQuery1.Params.ParamByName('email').AsString := Edit4.Text;
  DataModule2.ZQuery1.Params.ParamByName('alamat').AsString := Edit5.Text;
  DataModule2.ZQuery1.Params.ParamByName('member').AsString := ComboBox1.Text;
  DataModule2.ZQuery1.ExecSQL;


  if ComboBox1.Text = 'yes' then
    diskon := 10
  else
    diskon := 5;

  Label8.Caption := IntToStr(diskon) + '%';

  DataModule2.ZQuery1.SQL.Clear;
  DataModule2.ZQuery1.SQL.Add('select * from kustomer');
  DataModule2.ZQuery1.Open;
  ShowMessage('Data Berhasil Disimpan!');
end;

end;

procedure TForm1.Button3Click(Sender: TObject);
begin
if Edit1.Text = '' then
begin
ShowMessage('NIK Tidak Boleh Kosong!');
end else
if DataModule2.ZQuery1.Locate('nik',Edit1.Text,[]) then
begin
ShowMessage('NIK '+Edit1.Text+' Sudah Ada Didalam Sistem');
end else
begin
DataModule2.ZQuery1.SQL.Clear;
DataModule2.ZQuery1.SQL.Add('update kustomer set nik = :nik, nama = :nama, telp = :telp, email = :email, alamat = :alamat, member = :member where id = :id');
DataModule2.ZQuery1.Params.ParamByName('nik').AsInteger := StrToInt(Edit1.Text);
DataModule2.ZQuery1.Params.ParamByName('nama').AsString := Edit2.Text;
DataModule2.ZQuery1.Params.ParamByName('telp').AsString := Edit3.Text;
DataModule2.ZQuery1.Params.ParamByName('email').AsString := Edit4.Text;
DataModule2.ZQuery1.Params.ParamByName('alamat').AsString := Edit5.Text;
DataModule2.ZQuery1.Params.ParamByName('member').AsString := ComboBox1.Text;
DataModule2.ZQuery1.Params.ParamByName('id').AsString := a;
DataModule2.ZQuery1.ExecSQL;

DataModule2.ZQuery1.SQL.Clear;
DataModule2.ZQuery1.SQL.Add('select * from kustomer');
DataModule2.ZQuery1.Open;
ShowMessage('Data Berhasil Diubah!');
end;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
DataModule2.ZQuery1.SQL.Clear;
DataModule2.ZQuery1.SQL.Add('delete from kustomer where id= "'+a+'"');
DataModule2.ZQuery1.ExecSQL;

DataModule2.ZQuery1.SQL.Clear;
DataModule2.ZQuery1.SQL.Add('select * from kustomer');
DataModule2.ZQuery1.Open;
ShowMessage('Data Berhasil Dihapus!');
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
Button1.Enabled:= True;
Button2.Enabled:= False;
Button3.Enabled:= False;
Button4.Enabled:= False;

Edit1.Text :='';
Edit2.Text :='';
Edit3.Text :='';
Edit4.Text :='';
Edit5.Text :='';
ComboBox1.Text :='';
Label8.Caption :='';
end;

procedure TForm1.Button6Click(Sender: TObject);
var
  searchTerm: string;
begin
  searchTerm := Edit6.Text;

  DataModule2.ZQuery1.SQL.Clear;
  DataModule2.ZQuery1.SQL.Add('select * from kustomer where nik like :searchTerm or nama like :searchTerm or telp like :searchTerm or email like :searchTerm or alamat like :searchTerm or member like :searchTerm');
  DataModule2.ZQuery1.Params.ParamByName('searchTerm').AsString := '%' + searchTerm + '%';
  DataModule2.ZQuery1.Open;
end;

procedure TForm1.Button7Click(Sender: TObject);
var
  Report: TfrxReport;
  PDFExport: TfrxPDFExport;
begin
  Report := TfrxReport.Create(nil);
  try
    Report.LoadFromFile('D:\Pemrograman Visual 2\Tugas UAS\laporan.fr3');
    PDFExport := TfrxPDFExport.Create(nil);
    try
      PDFExport.ShowDialog := False;
      PDFExport.FileName := 'laporan.pdf';
      Report.PrepareReport(True);
      Report.Export(PDFExport);
    finally
      PDFExport.Free;
    end;
  finally
    Report.Free;
  end;

  ShowMessage('Laporan telah diunduh sebagai file PDF.');
end;

end.
