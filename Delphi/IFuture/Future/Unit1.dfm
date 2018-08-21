object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 365
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 104
    Top = 20
    Width = 185
    Height = 271
    TabOrder = 0
  end
  object Button1: TButton
    Left = 68
    Top = 310
    Width = 75
    Height = 25
    Caption = 'Future'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 158
    Top = 310
    Width = 90
    Height = 25
    Caption = 'Future + Thread'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 260
    Top = 310
    Width = 78
    Height = 25
    Caption = 'Future Simples'
    TabOrder = 3
    OnClick = Button3Click
  end
end
