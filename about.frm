VERSION 5.00
Begin VB.Form Form2 
   BackColor       =   &H00FFC0FF&
   BorderStyle     =   0  'None
   ClientHeight    =   1740
   ClientLeft      =   2430
   ClientTop       =   3015
   ClientWidth     =   6960
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1740
   ScaleWidth      =   6960
   ShowInTaskbar   =   0   'False
   Begin VB.CommandButton Command1 
      BackColor       =   &H0000C000&
      Caption         =   "Go back"
      Height          =   315
      Left            =   5160
      Style           =   1  'Graphical
      TabIndex        =   3
      Top             =   1080
      Width           =   975
   End
   Begin VB.Label Label5 
      BackStyle       =   0  'Transparent
      Caption         =   "munir112@yahoo.com"
      ForeColor       =   &H00C00000&
      Height          =   255
      Left            =   2160
      TabIndex        =   5
      Top             =   1440
      Width           =   1695
   End
   Begin VB.Label Label4 
      BackStyle       =   0  'Transparent
      Caption         =   "for any Comments please Contact "
      ForeColor       =   &H000000FF&
      Height          =   255
      Left            =   1680
      TabIndex        =   4
      Top             =   1200
      Width           =   2535
   End
   Begin VB.Label Label3 
      BackStyle       =   0  'Transparent
      Caption         =   "By Mohammad Munir"
      ForeColor       =   &H000000FF&
      Height          =   255
      Left            =   2160
      TabIndex        =   2
      Top             =   960
      Width           =   1575
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "Version       1.12"
      ForeColor       =   &H000000FF&
      Height          =   255
      Left            =   2280
      TabIndex        =   1
      Top             =   600
      Width           =   1335
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "Fun With Arrow Keys"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00008000&
      Height          =   495
      Left            =   1320
      TabIndex        =   0
      Top             =   120
      Width           =   4095
   End
End
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Form1.Enabled = True
Unload Me
End Sub


