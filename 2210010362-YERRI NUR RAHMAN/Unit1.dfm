object Form1: TForm1
  Left = 593
  Top = 150
  Width = 544
  Height = 576
  Caption = 'KUSTOMER'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 48
    Top = 32
    Width = 18
    Height = 13
    Caption = 'NIK'
  end
  object Label2: TLabel
    Left = 48
    Top = 67
    Width = 31
    Height = 13
    Caption = 'NAMA'
  end
  object Label3: TLabel
    Left = 48
    Top = 99
    Width = 27
    Height = 13
    Caption = 'TELP'
  end
  object Label4: TLabel
    Left = 50
    Top = 132
    Width = 32
    Height = 13
    Caption = 'EMAIL'
  end
  object Label5: TLabel
    Left = 51
    Top = 164
    Width = 43
    Height = 13
    Caption = 'ALAMAT'
  end
  object Label6: TLabel
    Left = 51
    Top = 198
    Width = 47
    Height = 13
    Caption = 'MEMBER'
  end
  object Label7: TLabel
    Left = 256
    Top = 195
    Width = 56
    Height = 13
    Caption = 'DISKON :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label10: TLabel
    Left = 56
    Top = 422
    Width = 94
    Height = 13
    Caption = 'MASUKKAN NAMA'
  end
  object Label8: TLabel
    Left = 320
    Top = 195
    Width = 110
    Height = 13
    Caption = 'TERISI OTOMATIS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 104
    Top = 29
    Width = 369
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 105
    Top = 63
    Width = 368
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 105
    Top = 96
    Width = 368
    Height = 21
    TabOrder = 2
  end
  object Edit4: TEdit
    Left = 104
    Top = 128
    Width = 369
    Height = 21
    TabOrder = 3
  end
  object Edit5: TEdit
    Left = 104
    Top = 160
    Width = 369
    Height = 21
    TabOrder = 4
  end
  object ComboBox1: TComboBox
    Left = 105
    Top = 194
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 5
  end
  object Button1: TButton
    Left = 48
    Top = 224
    Width = 75
    Height = 25
    Caption = 'BARU'
    TabOrder = 6
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 136
    Top = 224
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 7
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 224
    Top = 224
    Width = 75
    Height = 25
    Caption = 'EDIT'
    TabOrder = 8
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 311
    Top = 224
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 9
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 399
    Top = 224
    Width = 75
    Height = 25
    Caption = 'BATAL'
    TabOrder = 10
    OnClick = Button5Click
  end
  object DBGrid1: TDBGrid
    Left = 48
    Top = 264
    Width = 425
    Height = 145
    DataSource = DataModule2.DataSource1
    TabOrder = 11
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object Edit6: TEdit
    Left = 158
    Top = 418
    Width = 227
    Height = 21
    TabOrder = 12
  end
  object Button6: TButton
    Left = 400
    Top = 416
    Width = 75
    Height = 25
    Caption = 'CARI'
    TabOrder = 13
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 200
    Top = 456
    Width = 121
    Height = 49
    Caption = 'CETAK LAPORAN'
    TabOrder = 14
    OnClick = Button7Click
  end
end
