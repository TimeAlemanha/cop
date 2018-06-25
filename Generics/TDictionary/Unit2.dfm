object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 541
  ClientWidth = 868
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 201
    Height = 541
    Align = alLeft
    TabOrder = 0
    object Button1: TButton
      Left = 1
      Top = 1
      Width = 199
      Height = 25
      Align = alTop
      Caption = 'Add'
      TabOrder = 0
      OnClick = Button1Click
      ExplicitLeft = 2
      ExplicitTop = 2
    end
    object Button2: TButton
      Left = 1
      Top = 26
      Width = 199
      Height = 25
      Align = alTop
      Caption = 'TryGetValue'
      TabOrder = 1
      OnClick = Button2Click
      ExplicitLeft = 64
      ExplicitTop = 256
      ExplicitWidth = 75
    end
    object Button3: TButton
      Left = 1
      Top = 51
      Width = 199
      Height = 25
      Align = alTop
      Caption = 'Remove'
      TabOrder = 2
      OnClick = Button3Click
      ExplicitLeft = -3
      ExplicitTop = 82
    end
    object Button4: TButton
      Left = 1
      Top = 76
      Width = 199
      Height = 25
      Align = alTop
      Caption = 'ContainsKey'
      TabOrder = 3
      OnClick = Button4Click
      ExplicitLeft = 64
      ExplicitTop = 256
      ExplicitWidth = 75
    end
    object Button5: TButton
      Left = 1
      Top = 101
      Width = 199
      Height = 25
      Align = alTop
      Caption = 'ContainsValue'
      TabOrder = 4
      OnClick = Button5Click
      ExplicitLeft = 64
      ExplicitTop = 259
      ExplicitWidth = 75
    end
    object Button6: TButton
      Left = 1
      Top = 126
      Width = 199
      Height = 25
      Align = alTop
      Caption = 'AddOrSetValue'
      TabOrder = 5
      OnClick = Button6Click
      ExplicitLeft = 40
      ExplicitTop = 176
      ExplicitWidth = 75
    end
    object Button7: TButton
      Left = 1
      Top = 151
      Width = 199
      Height = 25
      Align = alTop
      Caption = 'Lista Key'
      TabOrder = 6
      OnClick = Button7Click
      ExplicitLeft = 64
      ExplicitTop = 256
      ExplicitWidth = 75
    end
    object Button8: TButton
      Left = 1
      Top = 176
      Width = 199
      Height = 25
      Align = alTop
      Caption = 'Lista Value'
      TabOrder = 7
      OnClick = Button8Click
      ExplicitLeft = 64
      ExplicitTop = 287
      ExplicitWidth = 75
    end
    object Button9: TButton
      Left = 1
      Top = 201
      Width = 199
      Height = 25
      Align = alTop
      Caption = 'Clear'
      TabOrder = 8
      OnClick = Button9Click
      ExplicitLeft = 64
      ExplicitTop = 256
      ExplicitWidth = 75
    end
    object Button10: TButton
      Left = 1
      Top = 226
      Width = 199
      Height = 25
      Align = alTop
      Caption = 'OnKeyNotify'
      TabOrder = 9
      OnClick = Button10Click
      ExplicitLeft = 64
      ExplicitTop = 256
      ExplicitWidth = 75
    end
    object Button11: TButton
      Left = 1
      Top = 251
      Width = 199
      Height = 25
      Align = alTop
      Caption = 'OnValueNotify'
      TabOrder = 10
      OnClick = Button11Click
      ExplicitLeft = 64
      ExplicitTop = 256
      ExplicitWidth = 75
    end
  end
  object Panel2: TPanel
    Left = 201
    Top = 0
    Width = 667
    Height = 541
    Align = alClient
    TabOrder = 1
    ExplicitLeft = 256
    ExplicitTop = 88
    ExplicitWidth = 185
    ExplicitHeight = 41
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 665
      Height = 32
      Align = alTop
      TabOrder = 0
      object Edit1: TEdit
        Left = 5
        Top = 2
        Width = 121
        Height = 21
        TabOrder = 0
        TextHint = 'CPF'
      end
      object Edit2: TEdit
        Left = 132
        Top = 2
        Width = 261
        Height = 21
        TabOrder = 1
        TextHint = 'Nome'
      end
    end
    object Memo1: TMemo
      Left = 1
      Top = 33
      Width = 665
      Height = 507
      Align = alClient
      Lines.Strings = (
        'Memo1')
      TabOrder = 1
      ExplicitLeft = 256
      ExplicitTop = 261
      ExplicitWidth = 185
      ExplicitHeight = 89
    end
  end
end
