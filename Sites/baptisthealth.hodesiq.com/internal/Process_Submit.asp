<%@ Language=VBScript %>
<!--#include file="includes/local_subs.asp"-->
<!--#include file="includes/IDInclude.asp"-->

<%

'This page will check which submit button is checked and will redirect
'to the appropriate page.

Dim strBeg
Dim strMid
Dim strEnd
strBeg = "jpshodesIQ_"
strEnd = ".asp?User_ID="&Request("User_Id")
strEnd2="&agent="&Request("agent")
Dim strRedirect7
Response.Buffer = True
If Len(Request.form("edit"))>0 Then 
strMid ="edit_agent_1"
'strRedirect7 = strBeg&strMid&strEnd&strEnd2
strRedirect7 = strMid&strEnd&strEnd2
Response.Redirect strRedirect7
ElseIf Len(Request.form("deleted"))>0 Then 
strMid ="delete_agent"
'strRedirect7 = strBeg&strMid&strEnd&strEnd2
strRedirect7 = strMid&strEnd&strEnd2
Response.Redirect strRedirect7
ElseIf Len(Request.form("hold"))>0 Then 
strMid ="hold_agent"
'strRedirect7 = strBeg&strMid&strEnd&strEnd2
strRedirect7 = strMid&strEnd&strEnd2
Response.Redirect strRedirect7
Else 
strMid ="view_agent_jobs"
'strRedirect7 = strBeg&strMid&strEnd&strEnd2
strRedirect7 = strMid&strEnd&strEnd2
Response.Redirect strRedirect7
End If
%>