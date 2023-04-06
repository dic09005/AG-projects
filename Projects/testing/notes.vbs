'https://www.youtube.com/watch?v=03BfHDJsFpk&list=PLc3SzDYhhiGXH8hEHtayRPdwAsddelkh6&index=1


' Dim x
' x = 1
' Dim y
' y = 2
' Dim z
' z = x + y
' MsgBox "The sum is" &z

'VBScript Intro

' Option Explicit 'This is a variable check

' Dim firstNumber
' firstNumber = InputBox("Please enter a number to add", "1st Number")
' firstNumber = CInt(firstNumber)

' Dim secondNumber
' secondNumber = InputBox("Please enter the second number to add" &vbCrLf& "to the sum", "2nd Number",0)
' secondNumber = CInt(secondNumber)

' Dim sum
' sum = firstNumber + secondNumber

' MsgBox "The sum is" &sum

''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
'https://www.youtube.com/watch?v=Wd344ElH_Yg&list=PLc3SzDYhhiGXH8hEHtayRPdwAsddelkh6&index=2
'www.deviantart.com

'VBScript Procedures(Sub and Function)

'Sub
' Option Explicit
' Dim inputWeight
' inputWeight = CDbl(InputBox("Enter the weight in kilos"))
' Call ConvertWeight(inputWeight)
' 'ConvertWeight inputWeight
' Call EndScript

' 'Sub procedure starts
' Sub ConvertWeight(Kilos)
'     Dim Pounds
'     Pounds = 2.205 * Kilos
'     MsgBox "The weight of" & Kilos & "Kg is equivalent to" &_
'         Pounds & "lbs"
' 'Sub procedure ends
' End Sub

' Sub EndScript
'     MsgBox"Thank you for using our script"
' End Sub


'Function
' Option Explicit
' Dim inputWeight
' inputWeight = CDbl(InputBox("Enter the weight in kilos"))
' MsgBox "The Weight of" &inputWeight& "Kg is equivalent to" &_
'     Pounds(inputWeight) & "lbs"
' MsgBox ExitMessage()

' 'Function procedure starts
' Function Pounds(Kilos)
'     Pounds = 2.205 * Kilos
' 'Function procedure ends
' End Function

' Function ExitMessage()
'     ExitMessage = "Thank you for using our script"
' End Function

''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

'VBScript If Then''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
'https://www.youtube.com/watch?v=NiIqELIZGNg&list=PLc3SzDYhhiGXH8hEHtayRPdwAsddelkh6&index=3

' Option Explicit
' Dim name
' name = Trim(InputBox("Please enter your name", "Name Entry", ""))
' If Len(name) > 5 Then MsgBox "The Name is " & UCase(name) & " and it is " & len(name) & " characters."


' Option Explicit
' Dim name
' name = Trim(InputBox("Please enter your name", "Name Entry", ""))
' If Len(name) > 5 Then 
'     MsgBox "The Name is " & UCase(name) & "."
'     MsgBox "The length of the name is " & len(name) & " characters."
' End If

'VBScript If Then Else'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

' Option Explicit
' Dim strTime
' strTime = Time
' If inStr(1,strTime,"AM")<>0 Then 
'     REM if block starts
'     MsgBox"The current time is: "& strTime &". Have a good Morning!"
'     REM if block ends
' Else 
'     REM Else block starts
'     MsgBox"The current time is: "& strTime &". Have a good day and good night!"
'     REM Else block ends
' End If

'VBScript If Then ElseIf EndIf'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

' Option Explicit
' Dim intDayOfWeek
' intDayOfWeek = WeekDay(Date)
' Dim strMessage
' If intDayOfWeek = 1 Then 'for # you can use vbSunday
'     strMessage = "Sunday"
' ElseIf intDayOfWeek = 2 Then 
'     strMessage = "Monday"
' ElseIf intDayOfWeek = 3 Then 
'     strMessage = "Tuesday"
' ElseIf intDayOfWeek = 4 Then 
'     strMessage = "Wednesday"
' ElseIf intDayOfWeek = 5 Then 
'     strMessage = "Thursday"
' ElseIf intDayOfWeek = 6 Then 
'     strMessage = "Friday"
' ElseIf intDayOfWeek = 7 Then 
'     strMessage = "Saturday"
' Else
'     strMessage = "Unknown day"
' End If
' MsgBox "Have a happy" & "-" & strMessage

'VBScript Nested If ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

' Option Explicit
' Dim a,b,c,biggest
' a = 100
' b = 101
' c = 800
' If a > b Then
'     If a > c Then
'         biggest = a 
'     Else
'         biggest = c
'     End If
' Else 
'     if b > c Then
'         biggest = b 
'     Else 
'         biggest = c 
'     End If
' End If
' MsgBox "The biggest number is " & biggest

'VBScript String Compare ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
'https://www.youtube.com/watch?v=vP2ScuW7H5U&list=PLc3SzDYhhiGXH8hEHtayRPdwAsddelkh6&index=4

' Option Explicit
' Call Main

' Sub Main    
'     Dim stringA, stringB
'     stringA = Wscript.Arguments.Item(0)
'     stringB = Wscript.Arguments.Item(1)
'     Select Case StrComp(stringA, stringB, vbTextCompare)
'         Case 0 
'             MsgBox "Both the strings are the same.", vbInformation, "Success"
'         Case 1
'             MsgBox stringA & " is grater than " & stringB, vbQuestion, "Warning"
'         Case -1
'             MsgBox stringA & " is less than " & stringB, vbQuestion, "Warning"
'         Case Else
'             MsgBox "There is an error in string comparison.", vbCritical, "Error"
'     End Select
' End Sub 

'VBScript loop ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
'https://www.youtube.com/watch?v=LXgnnFoGq1Y&list=PLc3SzDYhhiGXH8hEHtayRPdwAsddelkh6&index=5

' Option Explicit

' Dim i
' 'Call Loop1
' Call Loop2

' Sub Loop1
' For i = 1 to 5
'     MsgBox "The current value of i is " & i, vbInformation, "For loop"
' Next
' End Sub

' Sub Loop2
' For i = 1 to 10 Step 2
'     MsgBox "The current value of i is " & i, vbInformation, "For loop"
'     'If i = 5 Then Exit For
' Next
' End Sub

'VBScript For Each loop ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

' Option Explicit
' On Error Resume Next
' Dim objFSO, folder, file
' Set objFSO = CreateObject("Scripting.FileSystemObject")
' Set folder = objFSO.GetFolder("FilePath") 'ADD FILE PATH

' For Each file in folder.files
'     MsgBox file.name
' Next

'VBScript While ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
'https://www.youtube.com/watch?v=cIFONuSKH1Q&list=PLc3SzDYhhiGXH8hEHtayRPdwAsddelkh6&index=6

' Option Explicit
' Dim i
' i = 1
' Loop1

' Sub Loop1
' While i<=5
'     MsgBox "The current value of i is " & i, vbInformation, "For loop"
'     i = i + 1
' Wend 
' End Sub 

' Example Script

' Option Explicit
' Dim objFSO, objFile 
' Set objFSO = CreateObject("Scripting.FileSystemObject")
' Set objFile = objFSO.CreateTextFile("C:\Users\AG\Desktop" & Date & ".html", True) ' True means to overwrite the file if it already exists
' WriteHead
' WriteBody

' Sub WriteHead
'     With objFile
'         .WriteLine("<html>")
'         .WriteLine("<head>")
'         .WriteLine("<title>Report</title>")
'         .WriteLine("<style>")
'         .WriteLine("body {color:red;font-size:30px;background-color:honeydew}")
'         .WriteLine("</style>")
'         .WriteLine("</head>")
'     End With
' End Sub

' Sub WriteBody
'     With objFile
'         .WriteLine("<body>")
'         .WriteLine("<h3 align='center'>Report generated on " &Date& "</h3>")
'         .WriteLine("<p>Orders placed</p>")
'         .WriteLine("<table border='5' height='100px'>")
'         .WriteLine("<tr><td>Number of Customers</td><td>10</td></tr>")
'         .WriteLine("<tr><td>Total Order value</td><td>$10000</td></tr>")
'         .WriteLine("</body>")
'         .WriteLine("</html>")
'     End With
' End Sub

'VBScript Do While ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
'https://www.youtube.com/watch?v=kFVEa42Q8Nw&list=PLc3SzDYhhiGXH8hEHtayRPdwAsddelkh6&index=7

' Option Explicit

' Dim i
' i = 1
' Loop1
' 'Loop2

' Sub Loop1
' Do While i<=5
'     MsgBox "The current value of i is " & i, vbInformation, "For loop"
'     i = i + 1 
' loop
' End Sub

' Sub Loop2
' i = 1
' Do
'     MsgBox "The current value of i is " & i, vbInformation, "For loop"
'     i = i + 1 
' Loop While i<=5
' End Sub


'VBScript Sort Array ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

'Run in Cmd Using : CScript {Filename}

' Option Explicit
' On Error Resume Next
' Dim Numbers(9)

' FillNumbers
' Sort

' Sub FillNumbers
'     Numbers(0) = 10
'     Numbers(1) = 2
'     Numbers(2) = 3
'     Numbers(3) = 8
'     Numbers(4) = 12
'     Numbers(5) = 1
'     Numbers(6) = 37
'     Numbers(7) = 27
'     Numbers(8) = 17
' End Sub

' Sub Sort
'     Dim i, j, temp, strNumbers
'     For i = 0 to 8
'         For j = 0 to 8 - i 
'             If Numbers(j) < Numbers(j+1) Then 'Swap them!
'                 temp = Numbers(j)
'                 Numbers(j) = Numbers(j+1)
'                 Numbers(j+1) = temp
'             End If
'         Next
'         strNumbers = ""
'         For j = 0 to 9
'             strNumbers = strNumbers & Numbers(j) & " "
'         Next
'         WScript.Echo "i = " &i& " The array is " & strNumbers
'     Next
' End Sub    


'VBScript SQL CRUD ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''


'https://www.youtube.com/watch?v=knqPG5KDn7E&list=PLc3SzDYhhiGXH8hEHtayRPdwAsddelkh6&index=8



Option Explicit
Dim User
Dim Password
Dim iURL 
Dim aURL
Dim bURL
Dim objShell


iURL = "https://bbsitimenet.cloud.centralservers.com/Login.aspx"
aURL = "https://rob-dickson.github.io/AG-projects/"
bURL = "https://www.youtube.com/"

set objShell = CreateObject("Shell.Application")


User = InputBox("What is your Username?","Who is the User?")

If User = "Rob" Then
    
    Password = InputBox("What is your Password?", "Password")
    IF Password = "Nerd" Then
        objShell.ShellExecute "chrome.exe", aURL, "", "", 1
        objShell.ShellExecute "chrome.exe", bURL, "", "", 1
        objShell.ShellExecute "chrome.exe", iURL, "", "", 1
        MsgBox "Hello and welcome back" &User
    ElseIf Password <> "Nerd" Then
        MsgBox "Go away! You are not " &User, vbCritical
    End If
ElseIf User = "Tabatha" Then
    objShell.ShellExecute "chrome.exe", iURL, "", "", 1
    MsgBox "Hello and welcome" &User
ElseIf User <> "Tabatha" Then
    MsgBox "Go away " &User, vbCritical
End If


















