Attribute VB_Name = "modTypes"
'------------------------
'-       BrickBall      -
'------------------------
'-     modTypes.bas     -
'------------------------

Public Type BrickType
    X As Long
    Y As Long
    
    Width As Long
    Height As Long
    
    Destroyed As Boolean
    
    TypeOfBrick As Integer
End Type

Public Type PaddleType
    X As Long
    Y As Long
    
    Width As Long
    Height As Long
    
    Moving As Boolean
End Type

Public Type BallType
    X As Long
    Y As Long
    
    Width As Long
    Height As Long
    
    Moving As Boolean
    
    XSpeed As Long
    YSpeed As Long
End Type
