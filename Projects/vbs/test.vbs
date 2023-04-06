
Who's there?

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
ElseIf User <> "Rob" Then
    MsgBox "Hello and welcome" &User
    objShell.ShellExecute "chrome.exe", iURL, "", "", 1
End If

'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''



