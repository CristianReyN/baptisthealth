<!--#include file="includes/local_subs.asp"-->
<%
on error resume next

dim strAction
dim strConfirm
dim arrJobSeekerIDs
dim arrJobIDs
dim strJobCartJobs
dim strJobSeekerIDs
dim intQuestionnaireID
dim intCounter
dim intQACounter
dim strQA
dim objJob
sttQA = ""

strJobCartJobs = trim(request("txtJobCartJobs"))
strJobSeekerIDs = trim(request("txtJobSeekerIDs"))

arrJobIDs = split(strJobCartJobs, ",")
arrJobSeekerIDs =  split(strJobSeekerIDs, ",")

intQACounter = clng(trim(Request("counter")))

'for intCounter = 0 to ubound(arrJobIDs)

	intJobID = clng(trim(arrJobIDs(intQACounter)))

	set objJob = GetJobDetailsRS(intJobId)
		
	intQuestionnaireID = GetJobQuestionnaireID(intJobID)
	if intQuestionnaireID <> 0 and arrJobSeekerIDs(intQACounter) <> 0 and arrJobIDs(intQACounter) <> 0 then
		dim objJS
		
		dim strResume
		dim strEmail
		
		strResume  = request("resume_text").item
		strEmail  = request("email").item
		
		strCollectAppIDs = Request.Form("hidAppIDs").Item & arrJobSeekerIDs(intQACounter) & ","
		InsertQuestionnaireResults intJobId, arrJobSeekerIDs(intQACounter), intQuestionnaireID
		strQA = GetQuestionnaireResults(arrJobSeekerIDs(intQACounter))
		SendApplyNotificationEmail objJob, strQA, strEmailBody, strResume, strEmail
	end if
	
'next

select case err.number

	case 0
	
		if trim(request("last_flag")) = "yes" then
			strCollectAppIDs = Left(strCollectAppIDs, Len(strCollectAppIDs)-1)
			strAction = "LongApplication.asp?AppID=" & strCollectAppIDs '"confirmation.asp"
		else
			strAction = "apply_online_1a.asp"
		end if
		
		strConfirm = "Thank you for expressing interest and applying with Baptist Health System.  Your application and/or resume will be reviewed.  If your application is selected for further review during the process, you will be contacted within 14 business days. Again, thank you."
		
	case else
		strAction = "apply_online_1a.asp"
		strConfirm = "An error occurred while attempting to process your request.  Please try again." 
		' & " number " & err.number & " description " & err.Description
		
end select
%>

<html>

<head></head>

<body>

	<form name="frm" action="<%=strAction%>" method="post">

		<input TYPE="hidden" NAME="confirmation" VALUE="<%=strConfirm%>">
		<input type="hidden" name="hidAppIDs" value="<%=strCollectAppIDs%>">
		<input TYPE="hidden" NAME="First_Name" VALUE="<%=First_Name%>">
		<input TYPE="hidden" NAME="Middle_Initial" VALUE="<%=savedMiddle_Initial%>">
		<input TYPE="hidden" NAME="Last_Name" VALUE="<%=Last_Name%>">
		
		<input TYPE="hidden" NAME="Home_Phone" VALUE="<%=Home_Phone%>">
		<input TYPE="hidden" NAME="Work_Phone" VALUE="<%=savedWork_Phone%>">
				
		<input TYPE="hidden" NAME="Email" VALUE="<%=Request("Email").Item%>">
		
		<input TYPE="hidden" NAME="Address" VALUE="<%=savedAddress%>">
		<input TYPE="hidden" NAME="City" VALUE="<%=City%>">
		<input TYPE="hidden" NAME="State" VALUE="<%=savedState%>">
		<input TYPE="hidden" NAME="Country" VALUE="<%=savedCountry%>">
		<input TYPE="hidden" NAME="Zip" VALUE="<%=savedZip%>">		
		
		<input TYPE="hidden" NAME="resume_text" VALUE="<%=Request("resume_text").Item%>">
		
		<input TYPE="hidden" NAME="Media_info" VALUE="<%=Media_info%>">
		<input TYPE="hidden" NAME="Other_Media" VALUE="<%=Other_Media%>">
		
		<input TYPE="hidden" NAME="txtJobCartJobs" VALUE="<%=strJobCartJobs%>">
		<input TYPE="hidden" NAME="txtJobSeekerIDs" VALUE="<%=strJobSeekerIDs%>">
		<input type="hidden" name="counter" value="<%=trim(Request("counter"))%>">
		
		<input TYPE="hidden" NAME="user_id" VALUE="<%=Request("user_id")%>">	
				
	</form>

</body>

</html>

<script language="javascript">
<!--
	document.frm.submit()
//-->
</script>