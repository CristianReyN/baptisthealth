<!--#include file="includes/local_subs.asp"-->

<%
on error resume next
Response.Buffer = true

dim strURL2
dim strURL3
dim strErr
dim strConfirm
dim checkQueryString

strCurrentURL = Request.ServerVariables("HTTP_Referer")

if instr(1,strCurrentURL,"confirmation.asp",0) <> 0 or instr(1,strCurrentURL,"error.asp",0) <> 0 or instr(1,strCurrentURL,"joblist.asp",0) <> 0 then
	strCurrentURL = "job_start.asp"
end if

strCurrentURL = ReplaceStr(strCurrentURL, "&User_ID=", "", 1)
strCurrentURL = ReplaceStr(strCurrentURL, "?User_ID=", "", 1)

checkQueryString = instr(1,strCurrentURL,"?")
checkMessage = instr(1,strCurrentURL,"message=")

'Check user log in credentials
strGuid = CheckLogIn(cstr(Request("userid")),Cstr(Request("password")), HIRING_ORG_ID, Request.ServerVariables("REMOTE_ADDR"))
	
if err.number <> 0 then
		
	'strErr = err.description & "<BR>"
	'strURL2 = "default_LogIn.asp?err=" & strErr 
		
	strConfirm = "Either the password you entered was incorrect or you are not a registered user in our system.<br><br>Please try again or click ""Register"" to set up an account."
	strConfirm = server.URLEncode(strConfirm)
	strURL2 = "confirmation.asp?message=" & strConfirm
		
	Response.Redirect (strURL2)
	
else
		
	'User has logged in successfully
	dim incRecSet
	dim strRedirect3
	dim intContactID2
	dim intCanID	
	dim blnSuperUser
	
	'We need the user's contact ID
	Set incRecSet = Server.createObject("adodb.recordset")
		
	'Pass in the GUID returned by cclass.checklogin
	'Set incRecSet = LogInGetIDs(cstr(strGuid))
	Set incRecSet = LogInGetIDs(strGuid)

	If err.number <> 0 Then
		strRedirect3 = "error.asp?err=" & err.description
		Response.Redirect (strRedirect3)
	End If	
		
	'Assign the contactID grabbed from cclass.logingetids
	intContactID2=incRecSet("Job_SeekerID")
		
	intCanID = incRecSet("CandidateID")

	if len(intCanID) > 0 then
		blnSuperUser="Yes"
	else
		blnSuperUser="No"
	end if
				
	incRecSet.Close 
	set incRecSet = getuserinfo(intcontactid2)		
		
	'Response.Write intContactID2
	'Response.Flush
	'Response.End
		
	strFirstName = incRecSet("first_name")
	usermessage = "Welcome back " & strFirstName
	
	if checkQueryString = 0 then
		strURL3 = strCurrentURL & "?visit=1&message=" & server.urlencode(usermessage) &  "&JobSeekerID=" & intContactID2 & "&User_ID=" & strGuid &"&blnSuperUser="&blnSuperUser & "&chkJobCartJobs=" & server.URLEncode(request("chkJobCartJobs")) & "&JobID=" & request("JobID")
	else
		if checkmessage = 0 then
			strURL3 = strCurrentURL & "&visit=1&message=" & server.urlencode(usermessage) & "&JobSeekerID=" & intContactID2 & "&User_ID=" & strGuid &"&blnSuperUser="&blnSuperUser & "&chkJobCartJobs=" & server.URLEncode(request("chkJobCartJobs")) & "&JobID=" & request("JobID")
		else
			strURL3 = mid(strCurrentURL,1,len(strCurrentURL)- ((len(strCurrentURL) - checkmessage)+1)) & "message=" & usermessage &   "&JobSeekerID=" & intContactID2 & "&User_ID=" & strGuid & "&blnSuperUser=" & blnSuperUser & "&chkJobCartJobs=" & server.URLEncode(request("chkJobCartJobs")) & "&JobID=" & request("JobID")
		end if	
	end if	

	'strURL3 = "jpsHodesIQ_menu.asp?User_ID="&strGuid

	Response.Redirect(strURL3)

End If

%>               