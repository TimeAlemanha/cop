object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'y'
  ClientHeight = 394
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 52
    Top = 340
    Width = 99
    Height = 25
    Caption = 'Carregar Arquivo'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 16
    Top = 14
    Width = 185
    Height = 301
    ScrollBars = ssVertical
    TabOrder = 1
  end
  object Button2: TButton
    Left = 288
    Top = 38
    Width = 81
    Height = 25
    Caption = 'Critical Section'
    TabOrder = 2
    OnClick = Button2Click
  end
end
