VERSION 5.00
Begin VB.Form frmGame 
   BackColor       =   &H00FFFFFF&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "BrickBall"
   ClientHeight    =   5760
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   7680
   FillStyle       =   0  'Solid
   ForeColor       =   &H00FFFF00&
   Icon            =   "frmGame.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Palette         =   "frmGame.frx":0442
   PaletteMode     =   2  'Custom
   ScaleHeight     =   384
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   512
   StartUpPosition =   2  'CenterScreen
   Begin VB.PictureBox picBackGround 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H00FFFFFF&
      FillStyle       =   0  'Solid
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFF00&
      Height          =   5820
      Left            =   1275
      Picture         =   "frmGame.frx":076F
      ScaleHeight     =   384
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   512
      TabIndex        =   6
      Top             =   4755
      Visible         =   0   'False
      Width           =   7740
   End
   Begin VB.PictureBox picPaddleMask 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   240
      Left            =   135
      Picture         =   "frmGame.frx":10CCE
      ScaleHeight     =   12
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   48
      TabIndex        =   5
      Top             =   855
      Visible         =   0   'False
      Width           =   780
   End
   Begin VB.PictureBox picPaddle 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   240
      Left            =   135
      Picture         =   "frmGame.frx":10D19
      ScaleHeight     =   12
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   48
      TabIndex        =   4
      Top             =   630
      Visible         =   0   'False
      Width           =   780
   End
   Begin VB.PictureBox picBallMask 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   300
      Left            =   510
      Picture         =   "frmGame.frx":10E35
      ScaleHeight     =   16
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   16
      TabIndex        =   3
      Top             =   1140
      Visible         =   0   'False
      Width           =   300
   End
   Begin VB.PictureBox picBall 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   300
      Left            =   210
      Picture         =   "frmGame.frx":10E85
      ScaleHeight     =   16
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   16
      TabIndex        =   2
      Top             =   1140
      Visible         =   0   'False
      Width           =   300
   End
   Begin VB.PictureBox picBrick 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   435
      Index           =   0
      Left            =   255
      Picture         =   "frmGame.frx":10F4E
      ScaleHeight     =   25
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   32
      TabIndex        =   1
      Top             =   120
      Visible         =   0   'False
      Width           =   540
   End
   Begin VB.PictureBox picBackBuf 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H00FFFFFF&
      FillStyle       =   0  'Solid
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFF00&
      Height          =   5820
      Left            =   240
      ScaleHeight     =   384
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   512
      TabIndex        =   0
      Top             =   4755
      Visible         =   0   'False
      Width           =   7740
   End
   Begin VB.Label lblBadNews 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "Game Over"
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   48
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF8080&
      Height          =   1365
      Left            =   1275
      TabIndex        =   7
      Top             =   3030
      Visible         =   0   'False
      Width           =   4905
   End
End
Attribute VB_Name = "frmGame"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'------------------------
'-       BrickBall      -
'------------------------
'-  (c) 2003 Marshall   -
'------------------------

Dim QuitFlag As Boolean

Private Sub Form_Load()
    Show
    SetupBricks
    SetupPaddle
    SetupBall
    Lives = 3
    GameLoop
End Sub

Private Sub GameLoop()
    Delay = 18
    
    Do
        DoEvents
        DelayGame
        
        MoveBall

        PaintGame
    Loop Until QuitFlag
    
End Sub

Private Sub MoveBall()
    BitBlt picBackBuf.hdc, Ball.X, Ball.Y, Ball.Width, Ball.Height, picBackGround.hdc, Ball.X, Ball.Y, vbSrcCopy

    Ball.X = Ball.X + Ball.XSpeed * 6
    Ball.Y = Ball.Y + Ball.YSpeed * 6
    
    If Ball.Y > Paddle.Y - Ball.Height And Ball.Y < Paddle.Y + Paddle.Height Then
        If Ball.X > Paddle.X And Ball.X < Paddle.X + Paddle.Width Then
            TmpX = Ball.X + Ball.Width / 2
            If TmpX > (Paddle.X + Paddle.Width / 2) + 1 Then Ball.XSpeed = 1.2
            If TmpX > (Paddle.X + Paddle.Width / 2) + Paddle.Width / 2 - 30 Then Ball.XSpeed = 1.5
            If TmpX < (Paddle.X + Paddle.Width / 2) - 1 Then Ball.XSpeed = -1.2
            If TmpX < (Paddle.X + Paddle.Width / 2) - Paddle.Width / 2 + 30 Then Ball.XSpeed = -1.5
            
            Ball.YSpeed = -Ball.YSpeed
        End If
    ElseIf Ball.Y > 512 Then
        SetupBall
        Lives = Lives - 1
        BitBlt picBackBuf.hdc, 10, 345, 70, 100, picBackGround.hdc, 10, 345, vbSrcCopy
        If Lives = -1 Then QuitFlag = True: lblBadNews.Visible = True
    End If
    
    If Ball.X < 0 Then Ball.XSpeed = -Ball.XSpeed
    If Ball.X > 512 - Ball.Width Then Ball.XSpeed = -Ball.XSpeed
    If Ball.Y < 0 Then Ball.YSpeed = -Ball.YSpeed
    
    For b = 0 To UBound(Brick)
        If Ball.Y + Ball.Height > Brick(b).Y - Ball.Height And Ball.Y < Brick(b).Y + Brick(b).Height And Not Brick(b).Destroyed Then
            BounceX = False
            If Ball.X + Ball.Width > Brick(b).X And Ball.X < Brick(b).X + Brick(b).Width Then
                Brick(b).Destroyed = True
                BricksLeft = BricksLeft - 1
                Score = Score + 10
                If BricksLeft = 0 Then SetupBricks: Form_Paint
                BitBlt picBackBuf.hdc, 10, 345, 70, 100, picBackGround.hdc, 10, 345, vbSrcCopy
                BitBlt picBackBuf.hdc, Brick(b).X, Brick(b).Y, Brick(b).Width, Brick(b).Height, picBackGround.hdc, Brick(b).X, Brick(b).Y, vbSrcCopy
                BitBlt hdc, Brick(b).X, Brick(b).Y, Brick(b).Width, Brick(b).Height, picBackGround.hdc, Brick(b).X, Brick(b).Y, vbSrcCopy
                BounceX = True
                BounceY = True
            End If
        End If
    Next
    
    If BounceX Then
        BounceX = False
        Ball.XSpeed = -Ball.XSpeed
    End If

    If BounceY Then
        BounceY = False
        Ball.YSpeed = -Ball.YSpeed
    End If
    
    BitBlt picBackBuf.hdc, Ball.X, Ball.Y, Ball.Width, Ball.Height, picBallMask.hdc, 0, 0, vbSrcAnd
    BitBlt picBackBuf.hdc, Ball.X, Ball.Y, Ball.Width, Ball.Height, picBall.hdc, 0, 0, vbSrcInvert
    
End Sub
Private Sub PaintGame()

    StretchBlt picBackBuf.hdc, Paddle.X, Paddle.Y, Paddle.Width, Paddle.Height, picPaddleMask.hdc, 0, 0, 48, 12, vbSrcAnd
    StretchBlt picBackBuf.hdc, Paddle.X, Paddle.Y, Paddle.Width, Paddle.Height, picPaddle.hdc, 0, 0, 48, 12, vbSrcInvert
    
    picBackBuf.CurrentX = 10
    picBackBuf.CurrentY = 345
    picBackBuf.Print "Score: " & Score
    
    picBackBuf.CurrentX = 10
    picBackBuf.CurrentY = 360
    picBackBuf.Print "Lives: " & Lives
    
    'StretchBlt hdc, 0, 0, ScaleWidth, ScaleHeight, picBackBuf.hdc, 0, 0, 512, 384, vbSrcCopy
    'BitBlt hdc, 0, 0, 512, 384, picBackBuf.hdc, 0, 0, vbSrcCopy
    BitBlt hdc, 0, 345, 512, 39, picBackBuf.hdc, 0, 345, vbSrcCopy
    BitBlt hdc, Ball.X - 16, Ball.Y - 16, Ball.Width + 32, Ball.Height + 32, picBackBuf.hdc, Ball.X - 16, Ball.Y - 16, vbSrcCopy
End Sub

Private Sub Form_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    'If Button = vbLeftButton Then
    '    Paddle.Width = Paddle.Width + 10
    'Else
    '    Paddle.Width = Paddle.Width - 10
    'End If
End Sub

Private Sub Form_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    BitBlt picBackBuf.hdc, Paddle.X, Paddle.Y, Paddle.Width, Paddle.Height, picBackGround.hdc, Paddle.X, Paddle.Y, vbSrcCopy
    
    Paddle.X = X - Paddle.Width / 2
    Paddle.Moving = True
    
    
End Sub

Private Sub Form_Paint()
    BitBlt picBackBuf.hdc, 0, 0, 512, 384, picBackGround.hdc, 0, 0, vbSrcCopy
    
    'blit all the bricks
    For b = 0 To UBound(Brick)
        If Not Brick(b).Destroyed Then
            BitBlt picBackBuf.hdc, Brick(b).X, Brick(b).Y, Brick(b).Width, Brick(b).Height, picBrick(0).hdc, 0, 0, vbSrcCopy
        End If
    Next
    BitBlt hdc, 0, 0, 512, 384, picBackBuf.hdc, 0, 0, vbSrcCopy
End Sub

Private Sub Form_Unload(Cancel As Integer)
    End
End Sub

