' Created By Mani Sai Prasad On 29-03-2018
Contact = InputBox("Which Conctact Do You Want To Crash?", "WhatsApp Crash")
Message = InputBox("What Is The Message?","WhatsApp Crash")
T = InputBox("How Many Times Needs It To Be Send?","WhatsApp Crash")
If MsgBox("You've Filled It In Correctely", 1024 + vbSystemModal, "WhatsApp Crash") = vbOk Then

' Go To WhatsApp
Set WshShell = WScript.CreateObject("WScript.Shell")
Return = WshShell.Run("https://web.whatsapp.com/", 1)

' Loading Time

If MsgBox("Is WhatsApp Loaded?" & vbNewLine & vbNewLine & "Press No To Cancel", vbYesNo + vbQuestion + vbSystemModal, "WhatsApp Crash") = vbYes Then

' Go To The WhatsApp Search Bar
WScript.Sleep 50
WshShell.SendKeys "{TAB}"

' Go To The Contacts Chat
WScript.Sleep 50
WshShell.SendKeys Contact
WScript.Sleep 50
WshShell.SendKeys "{ENTER}"

' The Loop For The Messages
For i = 0 to T
WScript.Sleep 5
WshShell.SendKeys Message
WScript.Sleep 5
WshShell.SendKeys "{ENTER}"
Next

' End Of The Script
WScript.Sleep 3000
MsgBox "Crashing Of " + Contact + " Is Done", 1024 + vbSystemModal, "Crash Is Done"

' Canceled Script
Else
MsgBox "Process Has Been Canceled", vbSystemModal, "Crash is Canceled"
End If
Else
End If