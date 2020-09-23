VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H00000000&
   Caption         =   "Fun With Arrow Keys"
   ClientHeight    =   5625
   ClientLeft      =   3405
   ClientTop       =   1395
   ClientWidth     =   5490
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   5625
   ScaleWidth      =   5490
   Begin VB.Timer Timer1 
      Interval        =   500
      Left            =   360
      Top             =   3480
   End
   Begin VB.Label Label7 
      BackStyle       =   0  'Transparent
      Caption         =   "E x i t"
      ForeColor       =   &H00C000C0&
      Height          =   255
      Left            =   4320
      TabIndex        =   6
      Top             =   4680
      Width           =   495
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "A b o u t "
      ForeColor       =   &H00C000C0&
      Height          =   255
      Left            =   3360
      TabIndex        =   5
      Top             =   4680
      Width           =   735
   End
   Begin VB.Label Label5 
      BackStyle       =   0  'Transparent
      Caption         =   "Press the Aroow Keys to move the Circle"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   255
      Left            =   120
      TabIndex        =   4
      Top             =   5160
      Width           =   4695
   End
   Begin VB.Line Line4 
      BorderColor     =   &H00FFFF00&
      BorderWidth     =   6
      X1              =   3000
      X2              =   5160
      Y1              =   4200
      Y2              =   4200
   End
   Begin VB.Line Line3 
      BorderColor     =   &H00FFFF00&
      BorderWidth     =   6
      X1              =   3000
      X2              =   5160
      Y1              =   120
      Y2              =   120
   End
   Begin VB.Line Line2 
      BorderColor     =   &H00FFFF00&
      BorderWidth     =   4
      X1              =   5160
      X2              =   5160
      Y1              =   120
      Y2              =   4200
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00FFFF00&
      BorderWidth     =   6
      X1              =   3000
      X2              =   3000
      Y1              =   120
      Y2              =   4200
   End
   Begin VB.Shape Shape1 
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   615
      Left            =   3960
      Shape           =   3  'Circle
      Top             =   3480
      Width           =   495
   End
   Begin VB.Label Label4 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000C000&
      Height          =   375
      Left            =   240
      TabIndex        =   3
      Top             =   960
      Width           =   975
   End
   Begin VB.Label Label3 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000C000&
      Height          =   375
      Left            =   1800
      TabIndex        =   2
      Top             =   960
      Width           =   975
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000C000&
      Height          =   375
      Left            =   1080
      TabIndex        =   1
      Top             =   1440
      Width           =   975
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000C000&
      Height          =   375
      Left            =   1080
      TabIndex        =   0
      Top             =   360
      Width           =   855
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
' by Mohammad Munir
' Karachi Pakistan
' munir112@yahoo.com

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
If Shape1.Left >= 4560 Then
   MsgBox "can't move RIGHT", vbCritical, "E R R O R"
   Shape1.Left = Shape1.Left - 50
   Exit Sub
   End If
   
If Shape1.Left <= 3120 Then
   MsgBox "can't move LEFT", vbCritical, "E R R O R"
   Shape1.Left = Shape1.Left + 50
   Exit Sub
   End If
   
If Shape1.Top <= 240 Then
   MsgBox "Can't move UP", vbCritical, "E R R O R"
   Shape1.Top = Shape1.Top + 50
   Exit Sub
End If



If Shape1.Top >= 3480 Then
   MsgBox "can't move DOWN ", vbCritical, "E R R O R"
   Shape1.Top = Shape1.Top - 50
   
   Exit Sub
   
End If


' ---------------------------------------------------------------
' ---------------------------------------------------------------
' ---------------------------------------------------------------


If KeyCode = vbKeyUp Then
   Shape1.Top = Shape1.Top - 50
   Label1.Caption = "UP"
End If
If KeyCode = vbKeyDown Then
   Shape1.Top = Shape1.Top + 50
   Label2.Caption = "DOWN"
End If
If KeyCode = vbKeyLeft Then
   Shape1.Left = Shape1.Left - 50
   Label4.Caption = "LEFT"
End If
If KeyCode = vbKeyRight Then
   Shape1.Left = Shape1.Left + 50
   Label3.Caption = "RIGHT"
End If
End Sub


Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer)
Label1.Caption = ""
Label2.Caption = ""
Label3.Caption = ""
Label4.Caption = ""
End Sub

Private Sub Form_Load()
Shape1.Top = 1680
Shape1.Left = 3960
End Sub

Private Sub Form_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Label6.ForeColor = &HC000C0
Label7.ForeColor = &HC000C0
End Sub

Private Sub Label6_Click()
Form1.Enabled = False
Form2.Show
End Sub

Private Sub Label6_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Label6.ForeColor = &HFFFF&
End Sub

Private Sub Label7_Click()
MsgBox "Thank you for using it. Please vote it if you like !!", vbInformation, "T h a n k s"
Unload Me
End
End Sub

Private Sub Label7_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Label7.ForeColor = &HFFFF&
End Sub

Private Sub Timer1_Timer()
If Label5.Visible = True Then
   Label5.Visible = False
Else
   Label5.Visible = True
End If
End Sub
