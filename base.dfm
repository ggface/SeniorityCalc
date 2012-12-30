object Bases: TBases
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 594
  Width = 264
  object Trololo: TADOConnection
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 48
    Top = 8
  end
  object PersonalCard: TADOTable
    Connection = Trololo
    CursorType = ctStatic
    TableName = 'PersonalCard'
    Left = 48
    Top = 56
    object PersonalCardID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object PersonalCardFirstName: TWideStringField
      FieldName = 'FirstName'
      Size = 30
    end
    object PersonalCardLastName: TWideStringField
      FieldName = 'LastName'
      Size = 30
    end
    object PersonalCardFatherName: TWideStringField
      FieldName = 'FatherName'
      Size = 30
    end
    object PersonalCardBirthday: TDateTimeField
      FieldName = 'Birthday'
    end
    object PersonalCardIPC: TWideStringField
      FieldName = 'IPC'
      Size = 14
    end
    object PersonalCardPassportSeries: TIntegerField
      FieldName = 'PassportSeries'
    end
    object PersonalCardPassportNumber: TIntegerField
      FieldName = 'PassportNumber'
    end
  end
  object PersonalCardDS: TDataSource
    DataSet = PersonalCard
    Left = 168
    Top = 56
  end
  object Seniority: TADOTable
    Connection = Trololo
    CursorType = ctStatic
    TableName = 'Seniority'
    Left = 48
    Top = 104
    object SeniorityID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object SeniorityLegalForm: TIntegerField
      FieldName = 'LegalForm'
    end
    object SeniorityCompanyName: TWideStringField
      FieldName = 'CompanyName'
      Size = 50
    end
    object SeniorityJobName: TWideStringField
      FieldName = 'JobName'
      Size = 30
    end
    object SeniorityWorkBegin: TDateTimeField
      FieldName = 'WorkBegin'
    end
    object SeniorityWorkEnd: TDateTimeField
      FieldName = 'WorkEnd'
    end
    object SeniorityUserName: TIntegerField
      FieldName = 'UserName'
    end
    object SeniorityNotEndWorkTime: TBooleanField
      FieldName = 'NotEndWorkTime'
    end
  end
  object SeniorityDS: TDataSource
    DataSet = Seniority
    Left = 168
    Top = 104
  end
  object LegalForms: TADOTable
    Connection = Trololo
    CursorType = ctStatic
    TableName = 'LegalForms'
    Left = 48
    Top = 152
    object LegalFormsID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object LegalFormsLegalFormName: TWideStringField
      FieldName = 'LegalFormName'
    end
  end
  object LegalFormsDS: TDataSource
    DataSet = LegalForms
    Left = 168
    Top = 152
  end
  object GetJobName: TADOQuery
    Connection = Trololo
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'PCID'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = '2'
      end>
    SQL.Strings = (
      'SELECT JobName'
      'FROM Seniority'
      
        'WHERE (Seniority.NotEndWorkTime = true) AND ( Seniority.UserName' +
        ' = :PCID);')
    Left = 48
    Top = 200
    object GetJobNameJobName: TWideStringField
      FieldName = 'JobName'
      Size = 30
    end
  end
  object GetJobNameDS: TDataSource
    DataSet = GetJobName
    Left = 168
    Top = 200
  end
  object GetIntervals: TADOQuery
    Connection = Trololo
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'UID'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = '1'
      end>
    SQL.Strings = (
      'SELECT WorkBegin, WorkEnd'
      'FROM Seniority'
      'WHERE UserName = :UID;')
    Left = 48
    Top = 248
    object GetIntervalsWorkBegin: TDateTimeField
      FieldName = 'WorkBegin'
    end
    object GetIntervalsWorkEnd: TDateTimeField
      FieldName = 'WorkEnd'
    end
  end
  object GetIntervalsDS: TDataSource
    DataSet = GetIntervals
    Left = 168
    Top = 248
  end
  object gvSimpleView: TADOQuery
    Connection = Trololo
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT ID, FirstName, LastName, FatherName'
      'FROM PersonalCard')
    Left = 48
    Top = 296
    object gvSimpleViewID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object gvSimpleViewFirstName: TWideStringField
      FieldName = 'FirstName'
      Size = 30
    end
    object gvSimpleViewLastName: TWideStringField
      FieldName = 'LastName'
      Size = 30
    end
    object gvSimpleViewFatherName: TWideStringField
      FieldName = 'FatherName'
      Size = 30
    end
    object gvSimpleViewJobName: TStringField
      FieldKind = fkCalculated
      FieldName = 'JobName'
      OnGetText = gvSimpleViewJobNameGetText
      Size = 100
      Calculated = True
    end
    object gvSimpleViewallseniority: TStringField
      FieldKind = fkCalculated
      FieldName = 'allseniority'
      OnGetText = gvSimpleViewallseniorityGetText
      Size = 100
      Calculated = True
    end
  end
  object gvSimpleViewDS: TDataSource
    DataSet = gvSimpleView
    Left = 168
    Top = 296
  end
  object SeniorityView: TADOQuery
    Connection = Trololo
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'UID'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = '1'
      end>
    SQL.Strings = (
      'SELECT'
      'LegalForms.LegalFormName,'
      'Seniority.CompanyName,'
      'Seniority.JobName,'
      'Seniority.WorkBegin,'
      'Seniority.WorkEnd,'
      'Seniority.UserName,'
      'Seniority.ID,'
      'Seniority.NotEndWorkTime'
      
        'FROM LegalForms INNER JOIN Seniority ON LegalForms.ID=Seniority.' +
        'LegalForm'
      'WHERE Seniority.UserName = :UID'
      'ORDER BY Seniority.WorkEnd DESC;')
    Left = 48
    Top = 344
    object SeniorityViewLegalFormName: TWideStringField
      FieldName = 'LegalFormName'
    end
    object SeniorityViewCompanyName: TWideStringField
      FieldName = 'CompanyName'
      Size = 50
    end
    object SeniorityViewJobName: TWideStringField
      FieldName = 'JobName'
      Size = 30
    end
    object SeniorityViewWorkBegin: TDateTimeField
      FieldName = 'WorkBegin'
    end
    object SeniorityViewWorkEnd: TDateTimeField
      FieldName = 'WorkEnd'
      OnGetText = SeniorityViewWorkEndGetText
    end
    object SeniorityViewUserName: TIntegerField
      FieldName = 'UserName'
    end
    object SeniorityViewID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object SeniorityViewNotEndWorkTime: TBooleanField
      FieldName = 'NotEndWorkTime'
    end
  end
  object SeniorityViewDS: TDataSource
    DataSet = SeniorityView
    Left = 168
    Top = 344
  end
  object glConnect1: TglConnect
    Left = 168
    Top = 8
  end
  object DeleteSeniority: TADOQuery
    Connection = Trololo
    Parameters = <
      item
        Name = 'UID'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'DELETE *'
      'FROM Seniority'
      'WHERE UserName = :UID;')
    Left = 48
    Top = 392
  end
  object DeleteUser: TADOQuery
    Connection = Trololo
    Parameters = <
      item
        Name = 'UID'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'DELETE *'
      'FROM PersonalCard'
      'WHERE ID = :UID;')
    Left = 48
    Top = 440
  end
end
