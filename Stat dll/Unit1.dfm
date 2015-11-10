object Form1: TForm1
  Left = 331
  Top = 296
  Width = 870
  Height = 500
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 208
    Top = 136
    Width = 3
    Height = 13
  end
  object Edit1: TEdit
    Left = 200
    Top = 72
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Button1: TButton
    Left = 192
    Top = 176
    Width = 129
    Height = 25
    Caption = #1042#1099#1095#1080#1089#1083#1080#1090#1100
    TabOrder = 1
    OnClick = Button1Click
  end
  object Edit2: TEdit
    Left = 200
    Top = 96
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object ComboBox1: TComboBox
    Left = 248
    Top = 120
    Width = 121
    Height = 21
    ItemHeight = 13
    TabOrder = 3
    Items.Strings = (
      '+'
      '-')
  end
end
