<%
response.buffer = true

On Error Resume Next

Dim intLogOnInfo
Dim RsRec
Dim HstrGuid

Dim intContactID
Dim intHiringOrgID
dim intJobSeekerID
Dim strRedirect

Function RedirectToLogin(theError)
 RedirectToLogin = "error.asp?err=" & server.URLEncode(theError)
End Function


HStrGuid = Request("User_Id")

'Response.write HstrGuid

If Len(HstrGuid) < 2 Then 
	'response.redirect ("default_login.asp?err=Please+Log+In")

Else

	intLogOnInfo = LogInEveryPage(cstr(HstrGuid))
	
	
	If err.number <> 0 Then
		
		Dim strErrD
		strErrD = err.description
	
	
		strRedirect = RedirectToLogin(strErrD)
	
		Response.Redirect StrRedirect
	
	End If

	If intLogOnInfo  = 0 Then
		Dim incRecSet
		Set incRecSet = Server.createObject("adodb.recordset")
				

		Set incRecSet = LogInGetIDs(cstr(HstrGuid))
		
		If err.number <> 0 Then
		RedirectToLogin(err.description)
		Response.Redirect strRedirect	
		End If	


		If incRecset.EOF or incRecSet.BOF Then 
		Dim includeRedirectString
		includeRedirectString =  "error.asp?err=" & server.URLEncode("Your session has expired.")
		Response.Redirect includeRedirectString
		End If
		
				
		intHiringOrgID = incRecSet("HiringOrgId")
		intContactID=incRecSet("CandidateID")
		intJobSeekerID = incRecSet("job_SeekerID")
		
	
			
		'Response.Write "the hiring org id is " & intHiringOrgID & "<BR>"
		'Response.Write "the contact id is " & intcontactID & "<BR>"
		'Response.Write "the job seeker id is " & intjobseekerID & "<BR>"
		
			
		
	End If

End If

%>