<!--#include file="includes/local_subs.asp"-->

<%
On Error Resume Next
Dim IntCUReturn
dim strAddress
dim strAddress2

If Len (Request("address")) < 1 Then
strAddress = Request("address") & " "
Else
strAddress = Request("address")
End If

If Len (Request("address2"))< 1 Then
strAddress2=Request("address2") & " "
Else
strAddress2=Request("address2")
End If

dim strhomephone
If Len (Request.form("HomePhone")) < 1 Then
strhomePhone = Request.form("HomePhone") & " "
Else
strhomePhone = Request.form("HomePhone")
End If

dim strworkphone
If Len (Request.form("WorkPhone")) < 1 Then
strWorkPhone = Request.form("WorkPhone") & " "
Else
strWorkPhone = Request.form("WorkPhone")
End If

dim strmobilePhone
If Len (Request.form("MobilePhone")) < 1 Then
strMobilePhone = Request.form("MobilePhone") & " "
Else
strMobilePhone = Request.form("MobilePhone")
End If

dim strResume
If Len (Request.form("resume")) < 1 Then
strResume = Request.form("resume") & " "
Else
strResume = Request.form("resume")
End If


'Call function that adds user. IntCUReturn will contain the value
' returned from the stored procedure.		

IntCUReturn = AddAgentJobSeeker(Cstr(Request.form("FirstName")),Cstr(Request.form("LastName")), cstr(Request.form("MiddleName")), _ 
				  "", Cstr(Request.form("email")), Cstr(Request.form("password")),HIRING_ORG_ID, Cbool(Request.form("Privacy")), CBool(Request.form("notifyjobs")), clng(Request.form("emailtype")), clng(Request.form("notifyFrequency")), _ 
				  strAddress, strAddress2, Cstr(Request.form("City")), cstr(Request.Form("State")),Request("country"), Cstr(Request.form("ZipCode")), _ 
				  strHomePhone, strWorkPhone, strMobilePhone, _ 
				  strResume, cstr(Request.Form("question")),cstr(Request.Form("response")), _ 
				  "","CLUC",510,"","","","","","","")
				  
Dim strURL23
Dim strURL3
Dim strErr

'Check user log in credentials
strGuid = CheckLogIn(cstr(Request("email")),Cstr(Request("password")),HIRING_ORG_ID, Request.ServerVariables("REMOTE_ADDR"))

if err.number = -2147217873 then

	strErr = "You have already registered an account with us.  Sign in using the registration menu."
	strURL23 = "confirmation.asp?confirmation=" & server.urlencode(strErr)
	Response.Redirect (strURL23)

end if

If err.number <> 0 Then
	
	strErr = err.description
	strURL23 = "error.asp?err=" & strErr 
	Response.Redirect (strURL23)

Else
		
	'User has logged in successfully
	Dim incRecSet
	Dim strRedirect3
	Dim intContactID2
		
	'We need the user's contact ID
	Set incRecSet = Server.createObject("adodb.recordset")
		
	'Pass in the GUID returned by cclass.checklogin
	Set incRecSet = LogInGetIDs(cstr(strGuid))
	
	If err.number <> 0 Then
		strRedirect3 = "error.asp?err=" & err.description
		Response.Redirect (strRedirect3)
	End If	
		
	'Assign the contactID grabbed from cclass.logingetids
	intContactID2=incRecSet("CandidateID")		
		
	incRecSet.Close		
		
	strErr = "You have successfully added your profile."
	strURL3 = "confirmation.asp?confirmation=" & server.urlencode(strErr) & "&User_ID=" & strGuid
	'strURL3 = "add_agent_1.asp?User_ID="&strGuid
	Response.Redirect(strURL3)

End If
	
Response.Redirect strRedirect2
%>