<%Server.ScriptTimeout = 300%>
<!--#include file="includes/local_subs.asp"-->
<!--#include virtual="../cc/jobseeker.asp"-->

<%
on error resume next


dim strFirstName
dim strMiddleInitial
dim strLastName
dim strHomePhone
dim strWorkPhone
dim strEmail
dim strPassword

dim strAddress
dim strCity
dim lngState
dim strStateName
dim lngCountry
dim strCountryName
dim strZip

dim lngReferral
dim strReferralSource

dim strResume
dim strContactInfo

dim blnAddQA
dim arrJobIDs
dim strJobCartJobs
dim strJobSeekerIDs

dim intResult
dim strAction
dim strConfirm


dim strHTML
dim strMediaCode


if trim(Request("one_qa")) = "yes" then
	blnAddQA = true
else
	blnAddQA = false
end if

intJobID = trim(Request("JobID"))

if intJobID <> "" then 
	redim arrJobIDs(0)
	arrJobIDs(0) = clng(intJobID)
else
	strJobCartJobs = trim(request("txtJobCartJobs"))
	arrJobIDs = split(strJobCartJobs, ", ")
end if

strFirstName = trim(Request("txtFirstName"))
strMiddleInitial = Left(trim(Request("txtMidName")), 1)
strLastName = trim(Request("txtLastName"))

strHomePhone = trim(Request("txtHomePhone"))
strWorkPhone = trim(Request("txtOtherPhone"))

strEmail = trim(Request("txtEmailAddress"))
strPassword = trim(Request("Password"))
if strPassword = "" then strPassword = strEmail

strAddress = trim(Request("txtAddress"))
strCity = trim(Request("txtCity"))

'lngState = Request("selState").Item
'if lngState <> -1 then strStateName = GetStateName(lngState)

strStateName = Request("selState").Item

lngCountry = clng(trim(Request("Country")))
if lngCountry <> -1 then strCountryName = GetCountryName(lngCountry)

strZip = trim(Request("txtZip"))

lngReferral = clng(trim(Request("Media_info")))
strReferralSource = GetEMediaName(lngReferral)

if lngReferral = 6951 then strReferralSource = strReferralSource & " (" & trim(Request("Other_Media")) & ")"

strResume = trim(Request("resume_text"))

strContactInfo = strFirstName & " "
if strMiddleInitial <> "" then strContactInfo = strContactInfo & strMiddleInitial & ". "   
strContactInfo = strContactInfo & strLastName & vbcrlf
	
if strAddress <> "" then strContactInfo = strContactInfo & strAddress & vbcrlf
if strCity <> "" then strContactInfo = strContactInfo & strCity
if strCity <> "" and strStateName <> "" then strContactInfo = strContactInfo & ", "
if strStateName <> "" then strContactInfo = strContactInfo & strStateName
if strZip <> "" then strContactInfo = strContactInfo & "  " & strZip
strContactInfo = strContactInfo & vbcrlf
if strCountryName <> "" then
	strContactInfo = strContactInfo & strCountryName & vbcrlf & vbcrlf
else
	strContactInfo = strContactInfo & vbcrlf
end if
		
if strHomePhone <> "" then strContactInfo = strContactInfo & "H:  " & strHomePhone & vbcrlf
if strWorkPhone <> "" then strContactInfo = strContactInfo & "W:  " & strWorkPhone & vbcrlf
strContactInfo = strContactInfo & strEmail & vbcrlf & vbcrlf
strContactInfo = strContactInfo & "Referral Source:  " & strReferralSource & vbcrlf & vbcrlf

strResume = strContactInfo & strResume & vbcrlf & vbcrlf

'intResult = AddJobSeeker_JobCart_EmailQA_Baptist(APP_SERVER, arrJobIDs, strFirstName, strLastName, strMiddleInitial, "", _
'										 strEmail, strPassword, strAddress, strCity, lngState, lngCountry, strZip, _
'										 strHomePhone, strWorkPhone, strResume, lngReferral, "", 5, blnAddQA)


strSSN = ""
blnAlwaysSendNotification = false
intApplicantSource = 5
intJobSeekerID = ""
strMediaCode = lngReferral
'strEmail = Email
strJSPassword = ""
'strAddress = savedAddress
'strCity = City
intstate =lngState
intCountry = lngCountry
'strZip = savedZip
'strHomePhone = Home_Phone
'strWorkPhone = savedWork_Phone
strMobilePhone = ""
'strResume = resume_text
'strMediaCode = Media_info
iGender = ""
iEthnicity = ""
'strFirstName = First_Name
'strLastName = Last_Name
strMiddleName = strMiddleInitial

intResult =  InsertJobSeeker_NoQIDArray_EmailQA_BAPTIST(strAppServer, arrJobIDs, strFirstName, strLastname, strMiddleName, strSSN, _
					  strEmail, strJSPassword, strAddress, strCity, intState, strStateName, intCountry, _
					  strZip, strHomePhone, strWorkPhone, strMobilePhone, strResume, strMediaCode, intJobSeekerID, _
					  intApplicantSource, blnAddQA, blnAlwaysSendNotification, iGender, iEthnicity)
												 
										 
										 
select case intResult

	case 0
		strAction = "apply_online_1.asp?JobID=" & intJobId
		strConfirm = "An error occurred while attempting to process your request.  Please try again."
	
	case -1
		strAction = UnsecuredBaseURL & "confirmation.asp"
		strConfirm = "You have already applied for the selected position(s).  Please feel free to browse our site for other opportunities of interest."
	
	case 1
		
		strJobCartJobs = FilterJobsWithoutQuestionnaires(arrJobIDs, strJobSeekerIDs)
		
		strCollectAppIDs = Left(strCollectAppIDs, Len(strCollectAppIDs)-1)
		
		if trim(request("apply_1a")) = "yes" and strJobCartJobs <> "" then
			strAction = "apply_online_1a.asp"
		else
			'strCollectAppIDs = Left(strCollectAppIDs, Len(strCollectAppIDs)-1)
			
			strAction = UnsecuredBaseURL & "confirmation.asp"
		end if
		
		strConfirm = "Thank you for considering Baptist Health as your employer of choice.  Your Application has been received and we will be reviewing your qualifications.  Please continue to check your e-mail for communication regarding the status of your application." & vbCrLf & vbCrLf & "We appreciate your interest in Baptist Health and wish you success in your employment endeavors." & vbCrLf & vbCrLf & "Very Sincerely," & vbCrLf & vbCrLf & "Baptist HR Staff" & vbCrLf & vbCrLf & "*** This is an automatically generated communication. ***" & vbCrLf & "*** Please do not respond to this e-mail. ***"
		
end select

Response.Write "UnsecuredBaseURL=" & UnsecuredBaseURL
Response.End 


%>

<!--#includes file="XMLFunctions_Subs.asp"-->

<%
	'Very simple
	'This function is defined in XMLFunctions_Subs.asp
	'WriteXMLFile gets the xml text from CreateXML()
	If ((Err.number = 0) And (intResult = 1)) Then
		Call WriteXMLFile(CreateXML(Request.Form))
	End If
%>

<html>

<head></head>

<body>

	<form name="frm" action="<%=strAction%>" method="post">

		<input TYPE="hidden" NAME="confirmation" VALUE="<%=strConfirm%>">
		
		<input TYPE="hidden" NAME="First_Name" VALUE="<%=First_Name%>">
		<input TYPE="hidden" NAME="Middle_Initial" VALUE="<%=savedMiddle_Initial%>">
		<input TYPE="hidden" NAME="Last_Name" VALUE="<%=Last_Name%>">
		
		<input TYPE="hidden" NAME="Home_Phone" VALUE="<%=Home_Phone%>">
		<input TYPE="hidden" NAME="Work_Phone" VALUE="<%=savedWork_Phone%>">
				
		<input TYPE="hidden" NAME="Email" VALUE="<%=strEmail%>">
		
		<input TYPE="hidden" NAME="Address" VALUE="<%=savedAddress%>">
		<input TYPE="hidden" NAME="City" VALUE="<%=City%>">
		<input TYPE="hidden" NAME="State" VALUE="<%=savedState%>">
		<input TYPE="hidden" NAME="Country" VALUE="<%=savedCountry%>">
		<input TYPE="hidden" NAME="Zip" VALUE="<%=savedZip%>">		
		
		<input TYPE="hidden" NAME="resume_text" VALUE="<%=strresume%>">
		
		<input TYPE="hidden" NAME="Media_info" VALUE="<%=Media_info%>">
		<input TYPE="hidden" NAME="Other_Media" VALUE="<%=Other_Media%>">
		
		<input TYPE="hidden" NAME="txtJobCartJobs" VALUE="<%=strJobCartJobs%>">
		<input TYPE="hidden" NAME="txtJobSeekerIDs" VALUE="<%=strJobSeekerIDs%>">
		
		<input TYPE="hidden" NAME="user_id" VALUE="<%=Request("user_id")%>">	
		
				
	</form>

</body>

</html>

<script language="javascript">
<!--
	document.frm.submit()
//-->
</script>
