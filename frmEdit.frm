VERSION 5.00
Begin VB.Form frmEdit 
   AutoRedraw      =   -1  'True
   BackColor       =   &H00FFFFFF&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "BrickBall Editor"
   ClientHeight    =   2670
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   3825
   Icon            =   "frmEdit.frx":0000
   LinkTopic       =   "frmEdit"
   MaxButton       =   0   'False
   Palette         =   "frmEdit.frx":0442
   PaletteMode     =   2  'Custom
   Picture         =   "frmEdit.frx":076F
   ScaleHeight     =   178
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   255
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton cmdFill 
      BackColor       =   &H00FFFF80&
      Caption         =   "&Fill"
      Height          =   360
      Left            =   90
      Style           =   1  'Graphical
      TabIndex        =   3
      Top             =   2250
      Width           =   870
   End
   Begin VB.CommandButton cmdClear 
      BackColor       =   &H00FFFF80&
      Caption         =   "&Clear"
      Height          =   360
      Left            =   1035
      Style           =   1  'Graphical
      TabIndex        =   2
      Top             =   2250
      Width           =   870
   End
   Begin VB.CommandButton cmdInvert 
      BackColor       =   &H00FFFF80&
      Caption         =   "&Invert"
      Height          =   360
      Left            =   1965
      Style           =   1  'Graphical
      TabIndex        =   1
      Top             =   2250
      Width           =   870
   End
   Begin VB.CommandButton cmdSave 
      BackColor       =   &H00FFFF80&
      Caption         =   "&Save"
      Height          =   360
      Left            =   2910
      Style           =   1  'Graphical
      TabIndex        =   0
      Top             =   2250
      Width           =   870
   End
   Begin VB.Image imgB 
      Height          =   375
      Left            =   105
      Picture         =   "frmEdit.frx":5C5B
      Top             =   1200
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image imgBrick 
      Height          =   180
      Index           =   95
      Left            =   3600
      Stretch         =   -1  'True
      Tag             =   "1"
      Top             =   900
      Width           =   240
   End
   Begin VB.Image imgBrick 
      Height          =   180
      Index           =   94
      Left            =   3360
      Stretch         =   -1  'True
      Tag             =   "1"
      Top             =   900
      Width           =   240
   End
   Begin VB.Image imgBrick 
      Height          =   180
      Index           =   93
      Left            =   3120
      Stretch         =   -1  'True
      Tag             =   "1"
      Top             =   900
      Width           =   240
   End
   Begin VB.Image imgBrick 
      Height          =   180
      Index           =   92
      Left            =   2880
      Stretch         =   -1  'True
      Tag             =   "1"
      Top             =   900
      Width           =   240
   End
   Begin VB.Image imgBrick 
      Height          =   180
      Index           =   91
      Left            =   2640
      Stretch         =   -1  'True
      Tag             =   "1"
      Top             =   900
      Width           =   240
   End
   Begin VB.Image imgBrick 
      Height          =   180
      Index           =   90
      Left            =   2400
      Stretch         =   -1  'True
      Tag             =   "1"
      Top             =   900
      Width           =   240
   End
   Begin VB.Image imgBrick 
      Height          =   180
      Index           =   89
      Left            =   2160
      Stretch         =   -1  'True
      Tag             =   "1"
      Top             =   900
      Width           =   240
   End
   Begin VB.Image imgBrick 
      Height          =   180
      Index           =   88
      Left            =   1920
      Stretch         =   -1  'True
      Tag             =   "1"
      Top             =   900
      Width           =   240
   End
   Begin VB.Image imgBrick 
      Height          =   180
      Index           =   87
      Left            =   1680
      Stretch         =   -1  'True
      Tag             =   "1"
      Top             =   900
      Width           =   240
   End
   Begin VB.Image imgBrick 
      Height          =   180
      Index           =   86
      Left            =   1440
      Stretch         =   -1  'True
      Tag             =   "1"
      Top             =   900
      Width           =   240
   End
   Begin VB.Image imgBrick 
      Height          =   180
      Index           =   85
      Left            =   1200
      Stretch         =   -1  'True
      Tag             =   "1"
      Top             =   900
      Width           =   240
   End
   Begin VB.Image imgBrick 
      Height          =   180
      Index           =   84
      Left            =   960
      Stretch         =   -1  'True
      Tag             =   "1"
      Top             =   900
      Width           =   240
   End
   Begin VB.Image imgBrick 
      Height          =   180
      Index           =   83
      Left            =   720
      Stretch         =   -1  'True
      Tag             =   "1"
      Top             =   900
      Width           =   240
   End
   Begin VB.Image imgBrick 
      Height          =   180
      Index           =   82
      Left            =   480
      Stretch         =   -1  'True
      Tag             =   "1"
      Top             =   900
      Width           =   240
   End
   Begin VB.Image imgBrick 
      Height          =   180
      Index           =   81
      Left            =   240
      Stretch         =   -1  'True
      Tag             =   "1"
      Top             =   900
      Width           =   240
   End
   Begin VB.Image imgBrick 
      Height          =   180
      Index           =   80
      Left            =   0
      Stretch         =   -1  'True
      Tag             =   "1"
      Top             =   900
      Width           =   240
   End
   Begin VB.Image imgBrick 
      Height          =   180
      Index           =   79
      Left            =   3600
      Stretch         =   -1  'True
      Tag             =   "1"
      Top             =   720
      Width           =   240
   End
   Begin VB.Image imgBrick 
      Height          =   180
      Index           =   78
      Left            =   3360
      Stretch         =   -1  'True
      Tag             =   "1"
      Top             =   720
      Width           =   240
   End
   Begin VB.Image imgBrick 
      Height          =   180
      Index           =   77
      Left            =   3120
      Stretch         =   -1  'True
      Tag             =   "1"
      Top             =   720
      Width           =   240
   End
   Begin VB.Image imgBrick 
      Height          =   180
      Index           =   76
      Left            =   2880
      Stretch         =   -1  'True
      Tag             =   "1"
      Top             =   720
      Width           =   240
   End
   Begin VB.Image imgBrick 
      Height          =   180
      Index           =   75
      Left            =   2640
      Stretch         =   -1  'True
      Tag             =   "1"
      Top             =   720
      Width           =   240
   End
   Begin VB.Image imgBrick 
      Height          =   180
      Index           =   74
      Left            =   2400
      Stretch         =   -1  'True
      Tag             =   "1"
      Top             =   720
      Width           =   240
   End
   Begin VB.Image imgBrick 
      Height          =   180
      Index           =   73
      Left            =   2160
      Stretch         =   -1  'True
      Tag             =   "1"
      Top             =   720
      Width           =   240
   End
   Begin VB.Image imgBrick 
      Height          =   180
      Index           =   72
      Left            =   1920
      Stretch         =   -1  'True
      Tag             =   "1"
      Top             =   720
      Width           =   240
   End
   Begin VB.Image imgBrick 
      Height          =   180
      Index           =   71
      Left            =   1680
      Stretch         =   -1  'True
      Tag             =   "1"
      Top             =   720
      Width           =   240
   End
   Begin VB.Image imgBrick 
      Height          =   180
      Index           =   70
      Left            =   1440
      Stretch         =   -1  'True
      Tag             =   "1"
      Top             =   720
      Width           =   240
   End
   Begin VB.Image imgBrick 
      Height          =   180
      Index           =   69
      Left            =   1200
      Stretch         =   -1  'True
      Tag             =   "1"
      Top             =   720
      Width           =   240
   End
   Begin VB.Image imgBrick 
      Height          =   180
      Index           =   68
      Left            =   960
      Stretch         =   -1  'True
      Tag             =   "1"
      Top             =   720
      Width           =   240
   End
   Begin VB.Image imgBrick 
      Height          =   180
      Index           =   67
      Left            =   720
      Stretch         =   -1  'True
      Tag             =   "1"
      Top             =   720
      Width           =   240
   End
   Begin VB.Image imgBrick 
      Height          =   180
      Index           =   66
      Left            =   480
      Stretch         =   -1  'True
      Tag             =   "1"
      Top             =   720
      Width           =   240
   End
   Begin VB.Image imgBrick 
      Height          =   180
      Index           =   65
      Left            =   240
      Stretch         =   -1  'True
      Tag             =   "1"
      Top             =   720
      Width           =   240
   End
   Begin VB.Image imgBrick 
      Height          =   180
      Index           =   64
      Left            =   0
      Stretch         =   -1  'True
      Tag             =   "1"
      Top             =   720
      Width           =   240
   End
   Begin VB.Image imgBrick 
      Height          =   180
      Index           =   63
      Left            =   3600
      Stretch         =   -1  'True
      Tag             =   "1"
      Top             =   540
      Width           =   240
   End
   Begin VB.Image imgBrick 
      Height          =   180
      Index           =   62
      Left            =   3360
      Stretch         =   -1  'True
      Tag             =   "1"
      Top             =   540
      Width           =   240
   End
   Begin VB.Image imgBrick 
      Height          =   180
      Index           =   61
      Left            =   3120
      Stretch         =   -1  'True
      Tag             =   "1"
      Top             =   540
      Width           =   240
   End
   Begin VB.Image imgBrick 
      Height          =   180
      Index           =   60
      Left            =   2880
      Stretch         =   -1  'True
      Tag             =   "1"
      Top             =   540
      Width           =   240
   End
   Begin VB.Image imgBrick 
      Height          =   180
      Index           =   59
      Left            =   2640
      Stretch         =   -1  'True
      Tag             =   "1"
      Top             =   540
      Width           =   240
   End
   Begin VB.Image imgBrick 
      Height          =   180
      Index           =   58
      Left            =   2400
      Stretch         =   -1  'True
      Tag             =   "1"
      Top             =   540
      Width           =   240
   End
   Begin VB.Image imgBrick 
      Height          =   180
      Index           =   57
      Left            =   2160
      Stretch         =   -1  'True
      Tag             =   "1"
      Top             =   540
      Width           =   240
   End
   Begin VB.Image imgBrick 
      Height          =   180
      Index           =   56
      Left            =   1920
      Stretch         =   -1  'True
      Tag             =   "1"
      Top             =   540
      Width           =   240
   End
   Begin VB.Image imgBrick 
      Height          =   180
      Index           =   55
      Left            =   1680
      Stretch         =   -1  'True
      Tag             =   "1"
      Top             =   540
      Width           =   240
   End
   Begin VB.Image imgBrick 
      Height          =   180
      Index           =   54
      Left            =   1440
      Stretch         =   -1  'True
      Tag             =   "1"
      Top             =   540
      Width           =   240
   End
   Begin VB.Image imgBrick 
      Height          =   180
      Index           =   53
      Left            =   1200
      Stretch         =   -1  'True
      Tag             =   "1"
      Top             =   540
      Width           =   240
   End
   Begin VB.Image imgBrick 
      Height          =   180
      Index           =   52
      Left            =   960
      Stretch         =   -1  'True
      Tag             =   "1"
      Top             =   540
      Width           =   240
   End
   Begin VB.Image imgBrick 
      Height          =   180
      Index           =   51
      Left            =   720
      Stretch         =   -1  'True
      Tag             =   "1"
      Top             =   540
      Width           =   240
   End
   Begin VB.Image imgBrick 
      Height          =   180
      Index           =   50
      Left            =   480
      Stretch         =   -1  'True
      Tag             =   "1"
      Top             =   540
      Width           =   240
   End
   Begin VB.Image imgBrick 
      Height          =   180
      Index           =   49
      Left            =   240
      Stretch         =   -1  'True
      Tag             =   "1"
      Top             =   540
      Width           =   240
   End
   Begin VB.Image imgBrick 
      Height          =   180
      Index           =   48
      Left            =   0
      Stretch         =   -1  'True
      Tag             =   "1"
      Top             =   540
      Width           =   240
   End
   Begin VB.Image imgBrick 
      Height          =   180
      Index           =   47
      Left            =   3600
      Stretch         =   -1  'True
      Tag             =   "1"
      Top             =   360
      Width           =   240
   End
   Begin VB.Image imgBrick 
      Height          =   180
      Index           =   46
      Left            =   3360
      Stretch         =   -1  'True
      Tag             =   "1"
      Top             =   360
      Width           =   240
   End
   Begin VB.Image imgBrick 
      Height          =   180
      Index           =   45
      Left            =   3120
      Stretch         =   -1  'True
      Tag             =   "1"
      Top             =   360
      Width           =   240
   End
   Begin VB.Image imgBrick 
      Height          =   180
      Index           =   44
      Left            =   2880
      Stretch         =   -1  'True
      Tag             =   "1"
      Top             =   360
      Width           =   240
   End
   Begin VB.Image imgBrick 
      Height          =   180
      Index           =   43
      Left            =   2640
      Stretch         =   -1  'True
      Tag             =   "1"
      Top             =   360
      Width           =   240
   End
   Begin VB.Image imgBrick 
      Height          =   180
      Index           =   42
      Left            =   2400
      Stretch         =   -1  'True
      Tag             =   "1"
      Top             =   360
      Width           =   240
   End
   Begin VB.Image imgBrick 
      Height          =   180
      Index           =   41
      Left            =   2160
      Stretch         =   -1  'True
      Tag             =   "1"
      Top             =   360
      Width           =   240
   End
   Begin VB.Image imgBrick 
      Height          =   180
      Index           =   40
      Left            =   1920
      Stretch         =   -1  'True
      Tag             =   "1"
      Top             =   360
      Width           =   240
   End
   Begin VB.Image imgBrick 
      Height          =   180
      Index           =   39
      Left            =   1680
      Stretch         =   -1  'True
      Tag             =   "1"
      Top             =   360
      Width           =   240
   End
   Begin VB.Image imgBrick 
      Height          =   180
      Index           =   38
      Left            =   1440
      Stretch         =   -1  'True
      Tag             =   "1"
      Top             =   360
      Width           =   240
   End
   Begin VB.Image imgBrick 
      Height          =   180
      Index           =   37
      Left            =   1200
      Stretch         =   -1  'True
      Tag             =   "1"
      Top             =   360
      Width           =   240
   End
   Begin VB.Image imgBrick 
      Height          =   180
      Index           =   36
      Left            =   960
      Stretch         =   -1  'True
      Tag             =   "1"
      Top             =   360
      Width           =   240
   End
   Begin VB.Image imgBrick 
      Height          =   180
      Index           =   35
      Left            =   720
      Stretch         =   -1  'True
      Tag             =   "1"
      Top             =   360
      Width           =   240
   End
   Begin VB.Image imgBrick 
      Height          =   180
      Index           =   34
      Left            =   480
      Stretch         =   -1  'True
      Tag             =   "1"
      Top             =   360
      Width           =   240
   End
   Begin VB.Image imgBrick 
      Height          =   180
      Index           =   33
      Left            =   240
      Stretch         =   -1  'True
      Tag             =   "1"
      Top             =   360
      Width           =   240
   End
   Begin VB.Image imgBrick 
      Height          =   180
      Index           =   32
      Left            =   0
      Stretch         =   -1  'True
      Tag             =   "1"
      Top             =   360
      Width           =   240
   End
   Begin VB.Image imgBrick 
      Height          =   180
      Index           =   31
      Left            =   3600
      Stretch         =   -1  'True
      Tag             =   "1"
      Top             =   180
      Width           =   240
   End
   Begin VB.Image imgBrick 
      Height          =   180
      Index           =   30
      Left            =   3360
      Stretch         =   -1  'True
      Tag             =   "1"
      Top             =   180
      Width           =   240
   End
   Begin VB.Image imgBrick 
      Height          =   180
      Index           =   29
      Left            =   3120
      Stretch         =   -1  'True
      Tag             =   "1"
      Top             =   180
      Width           =   240
   End
   Begin VB.Image imgBrick 
      Height          =   180
      Index           =   28
      Left            =   2880
      Stretch         =   -1  'True
      Tag             =   "1"
      Top             =   180
      Width           =   240
   End
   Begin VB.Image imgBrick 
      Height          =   180
      Index           =   27
      Left            =   2640
      Stretch         =   -1  'True
      Tag             =   "1"
      Top             =   180
      Width           =   240
   End
   Begin VB.Image imgBrick 
      Height          =   180
      Index           =   26
      Left            =   2400
      Stretch         =   -1  'True
      Tag             =   "1"
      Top             =   180
      Width           =   240
   End
   Begin VB.Image imgBrick 
      Height          =   180
      Index           =   25
      Left            =   2160
      Stretch         =   -1  'True
      Tag             =   "1"
      Top             =   180
      Width           =   240
   End
   Begin VB.Image imgBrick 
      Height          =   180
      Index           =   24
      Left            =   1920
      Stretch         =   -1  'True
      Tag             =   "1"
      Top             =   180
      Width           =   240
   End
   Begin VB.Image imgBrick 
      Height          =   180
      Index           =   23
      Left            =   1680
      Stretch         =   -1  'True
      Tag             =   "1"
      Top             =   180
      Width           =   240
   End
   Begin VB.Image imgBrick 
      Height          =   180
      Index           =   22
      Left            =   1440
      Stretch         =   -1  'True
      Tag             =   "1"
      Top             =   180
      Width           =   240
   End
   Begin VB.Image imgBrick 
      Height          =   180
      Index           =   21
      Left            =   1200
      Stretch         =   -1  'True
      Tag             =   "1"
      Top             =   180
      Width           =   240
   End
   Begin VB.Image imgBrick 
      Height          =   180
      Index           =   20
      Left            =   960
      Stretch         =   -1  'True
      Tag             =   "1"
      Top             =   180
      Width           =   240
   End
   Begin VB.Image imgBrick 
      Height          =   180
      Index           =   19
      Left            =   720
      Stretch         =   -1  'True
      Tag             =   "1"
      Top             =   180
      Width           =   240
   End
   Begin VB.Image imgBrick 
      Height          =   180
      Index           =   18
      Left            =   480
      Stretch         =   -1  'True
      Tag             =   "1"
      Top             =   180
      Width           =   240
   End
   Begin VB.Image imgBrick 
      Height          =   180
      Index           =   17
      Left            =   240
      Stretch         =   -1  'True
      Tag             =   "1"
      Top             =   180
      Width           =   240
   End
   Begin VB.Image imgBrick 
      Height          =   180
      Index           =   16
      Left            =   0
      Stretch         =   -1  'True
      Tag             =   "1"
      Top             =   180
      Width           =   240
   End
   Begin VB.Image imgBrick 
      Height          =   180
      Index           =   15
      Left            =   3600
      Stretch         =   -1  'True
      Tag             =   "1"
      Top             =   0
      Width           =   240
   End
   Begin VB.Image imgBrick 
      Height          =   180
      Index           =   14
      Left            =   3360
      Stretch         =   -1  'True
      Tag             =   "1"
      Top             =   0
      Width           =   240
   End
   Begin VB.Image imgBrick 
      Height          =   180
      Index           =   13
      Left            =   3120
      Stretch         =   -1  'True
      Tag             =   "1"
      Top             =   0
      Width           =   240
   End
   Begin VB.Image imgBrick 
      Height          =   180
      Index           =   12
      Left            =   2880
      Stretch         =   -1  'True
      Tag             =   "1"
      Top             =   0
      Width           =   240
   End
   Begin VB.Image imgBrick 
      Height          =   180
      Index           =   11
      Left            =   2640
      Stretch         =   -1  'True
      Tag             =   "1"
      Top             =   0
      Width           =   240
   End
   Begin VB.Image imgBrick 
      Height          =   180
      Index           =   10
      Left            =   2400
      Stretch         =   -1  'True
      Tag             =   "1"
      Top             =   0
      Width           =   240
   End
   Begin VB.Image imgBrick 
      Height          =   180
      Index           =   9
      Left            =   2160
      Stretch         =   -1  'True
      Tag             =   "1"
      Top             =   0
      Width           =   240
   End
   Begin VB.Image imgBrick 
      Height          =   180
      Index           =   8
      Left            =   1920
      Stretch         =   -1  'True
      Tag             =   "1"
      Top             =   0
      Width           =   240
   End
   Begin VB.Image imgBrick 
      Height          =   180
      Index           =   7
      Left            =   1680
      Stretch         =   -1  'True
      Tag             =   "1"
      Top             =   0
      Width           =   240
   End
   Begin VB.Image imgBrick 
      Height          =   180
      Index           =   6
      Left            =   1440
      Stretch         =   -1  'True
      Tag             =   "1"
      Top             =   0
      Width           =   240
   End
   Begin VB.Image imgBrick 
      Height          =   180
      Index           =   5
      Left            =   1200
      Stretch         =   -1  'True
      Tag             =   "1"
      Top             =   0
      Width           =   240
   End
   Begin VB.Image imgBrick 
      Height          =   180
      Index           =   4
      Left            =   960
      Stretch         =   -1  'True
      Tag             =   "1"
      Top             =   0
      Width           =   240
   End
   Begin VB.Image imgBrick 
      Height          =   180
      Index           =   3
      Left            =   720
      Stretch         =   -1  'True
      Tag             =   "1"
      Top             =   0
      Width           =   240
   End
   Begin VB.Image imgBrick 
      Height          =   180
      Index           =   2
      Left            =   480
      Stretch         =   -1  'True
      Tag             =   "1"
      Top             =   0
      Width           =   240
   End
   Begin VB.Image imgBrick 
      Height          =   180
      Index           =   1
      Left            =   240
      Stretch         =   -1  'True
      Tag             =   "1"
      Top             =   0
      Width           =   240
   End
   Begin VB.Image imgBrick 
      Height          =   180
      Index           =   0
      Left            =   0
      Stretch         =   -1  'True
      Tag             =   "1"
      Top             =   0
      Width           =   240
   End
End
Attribute VB_Name = "frmEdit"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'------------------------
'-       BrickBall      -
'------------------------
'-  (c) 2003 Marshall   -
'------------------------

Private Sub Command1_Click()

End Sub

Private Sub cmdClear_Click()
    For b = 0 To 95
        imgBrick(b).Tag = "0"
        imgBrick(b).Picture = Nothing
    Next
End Sub

Private Sub cmdFill_Click()
    For b = 0 To 95
        imgBrick(b).Tag = "1"
        imgBrick(b).Picture = imgB.Picture
    Next
End Sub

Private Sub cmdInvert_Click()
    For b = 0 To 95
        imgBrick_Click (b)
    Next
End Sub

Private Sub Form_Load()
    Dim Brick(95) As Integer
    On Error Resume Next
    
    ChDir App.Path
    Open "level.dat" For Input As #1
    
    For b = 0 To 95
        imgBrick(b).Picture = imgB.Picture
        Input #1, Brick(b)
        If Brick(b) = 0 Then imgBrick(b).Picture = Nothing: imgBrick(b).Tag = "0"
    Next
    Close #1
End Sub

Private Sub imgBrick_Click(Index As Integer)
    If imgBrick(Index).Picture <> imgB.Picture Then imgBrick(Index).Picture = imgB.Picture: imgBrick(Index).Tag = "1": Exit Sub
    If imgBrick(Index).Picture = imgB.Picture Then imgBrick(Index).Picture = Nothing: imgBrick(Index).Tag = "0"
End Sub

Private Sub cmdSave_Click()
    'On Error Resume Next
    
    ChDir App.Path
    Open "level.dat" For Output As #1
    
    For b = 0 To 95
        Print #1, imgBrick(b).Tag
    Next
    Close #1
End Sub
