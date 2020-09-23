Attribute VB_Name = "modMain"
'------------------------
'-       BrickBall      -
'------------------------
'-      modMain.bas     -
'------------------------

Public Declare Function BitBlt Lib "gdi32" (ByVal hDestDC As Long, ByVal X As Long, ByVal Y As Long, ByVal nWidth As Long, ByVal nHeight As Long, ByVal hSrcDC As Long, ByVal xSrc As Long, ByVal ySrc As Long, ByVal dwRop As Long) As Long
Public Declare Function StretchBlt Lib "gdi32" (ByVal hdc As Long, ByVal X As Long, ByVal Y As Long, ByVal nWidth As Long, ByVal nHeight As Long, ByVal hSrcDC As Long, ByVal xSrc As Long, ByVal ySrc As Long, ByVal nSrcWidth As Long, ByVal nSrcHeight As Long, ByVal dwRop As Long) As Long
Public Declare Function PatBlt Lib "gdi32" (ByVal hdc As Long, ByVal X As Long, ByVal Y As Long, ByVal nWidth As Long, ByVal nHeight As Long, ByVal dwRop As Long) As Long

Public NowTime As Long, Delay As Integer
Public StartTick As Long, LastTick As Long

Private Declare Function timeGetTime Lib "winmm.dll" () As Long

Public Brick(95) As BrickType
Public Paddle As PaddleType
Public Ball As BallType

Public Score As Integer
Public Lives As Integer
Public BricksLeft As Integer

Public Sub DelayGame()
    StartTick = timeGetTime
    NowTime = timeGetTime
    Do Until NowTime - LastTick > Delay
        DoEvents
        NowTime = timeGetTime
    Loop
    LastTick = NowTime
End Sub

Public Sub SetupBricks()
    ChDir App.Path
    
    Open "level.dat" For Input As #1
    
    BricksLeft = 96
    
    For b = 0 To 95
        Brick(b).Width = frmGame.picBrick(0).ScaleWidth
        Brick(b).Height = frmGame.picBrick(0).ScaleHeight
        Input #1, Tst
        If Tst = "0" Then Brick(b).Destroyed = True: BricksLeft = BricksLeft - 1 Else Brick(b).Destroyed = False
    Next
    
    Close #1
    
    For b = 0 To 16
        Brick(b).X = b * Brick(b).Width
        Brick(b).Y = 0
    Next
    For b = 16 To 31
        Brick(b).X = (b - 16) * Brick(b).Width
        Brick(b).Y = 1 * Brick(b).Height
    Next
    For b = 32 To 47
        Brick(b).X = (b - 32) * Brick(b).Width
        Brick(b).Y = 2 * Brick(b).Height
    Next
    For b = 48 To 63
        Brick(b).X = (b - 48) * Brick(b).Width
        Brick(b).Y = 3 * Brick(b).Height
    Next
    For b = 64 To 79
        Brick(b).X = (b - 64) * Brick(b).Width
        Brick(b).Y = 4 * Brick(b).Height
    Next
    For b = 80 To 95
        Brick(b).X = (b - 80) * Brick(b).Width
        Brick(b).Y = 5 * Brick(b).Height
    Next
End Sub

Public Sub SetupPaddle()
    Paddle.X = frmGame.ScaleWidth / 2 - frmGame.picPaddle.ScaleWidth / 2
    Paddle.Y = frmGame.ScaleHeight - frmGame.picPaddle.ScaleHeight - 20
    Paddle.Width = frmGame.picPaddle.ScaleWidth * 1.5
    Paddle.Height = frmGame.picPaddle.ScaleHeight
    
    Paddle.Moving = False
End Sub

Public Sub SetupBall()
    Ball.X = frmGame.ScaleWidth / 2 - frmGame.picBall.ScaleWidth / 2
    Ball.Y = frmGame.ScaleHeight - frmGame.picBall.ScaleHeight - 200
    Ball.Width = frmGame.picBall.ScaleWidth
    Ball.Height = frmGame.picBall.ScaleHeight
    
    Ball.Moving = False
    
    Ball.XSpeed = 1
    Ball.YSpeed = 1
End Sub
