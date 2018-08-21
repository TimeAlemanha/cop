object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'yyyyyyyyyyyyyy'
  ClientHeight = 389
  ClientWidth = 527
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
    Left = 56
    Top = 26
    Width = 185
    Height = 279
    ScrollBars = ssVertical
    TabOrder = 0
  end
  object Memo2: TMemo
    Left = 288
    Top = 30
    Width = 185
    Height = 275
    ScrollBars = ssVertical
    TabOrder = 1
  end
  object Button1: TButton
    Left = 208
    Top = 330
    Width = 99
    Height = 25
    Caption = 'Carregar Arquivos'
    TabOrder = 2
    OnClick = Button1Click
  end
  object ckGerarException: TCheckBox
    Left = 340
    Top = 338
    Width = 97
    Height = 17
    Caption = 'Gerar Exception'
    TabOrder = 3
  end
end
