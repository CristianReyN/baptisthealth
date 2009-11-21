<!--#include file="includes/local_subs.asp"-->
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<%
on error resume next

dim strFrom, strFromEmail, strToName, strTo
dim strJobBody, strPersonal, strMessage
dim objCDOMail
dim strConfirm
dim strAction

dim intCount
dim arrJobIDs
dim strJobCartJobs

intJobID = trim(Request("JobID"))

if intJobID <> "" then 
	redim arrJobIDs(0)
	arrJobIDs(0) = clng(intJobID)
else
	strJobCartJobs = trim(request("chkJobCartJobs"))
	arrJobIDs = split(strJobCartJobs, ",")
end if

strFrom = TRIM(Request("from_name"))
strFromEmail = TRIM(Request("from_email"))

strToName = TRIM(Request("to_name"))
strTo = TRIM(Request("to_email"))

strPersonal = request("personal")

SendReferralMessages arrJobIDs, "Baptist Health Careers Web site", sDomain, strFrom, strFromEmail, strTo, strPersonal, strMessage, true

if err.number = 0 then
	strConfirm = "Thank you for your referral.  Please feel free to browse our other open positions."
	strAction = "confirmation.asp"
else
	strConfirm = "An error occurred while attempting to process your request.  Please try again."
	strAction = "tell_a_friend_1.asp?JobID=" & intJobId
end if
%>

<html>

<head>
</head>

<body>

	<form name="frm" action="<%=strAction%>" method="post">

		<input TYPE="hidden" NAME="confirmation" VALUE="<%=strConfirm%>">
		<input TYPE="hidden" NAME="txtJobCartJobs" VALUE="<%=strJobCartJobs%>">
		
		<input TYPE="hidden" NAME="from_name" VALUE="<%=strFrom%>">
		<input TYPE="hidden" NAME="from_email" VALUE="<%=strFromEmail%>">
		<input TYPE="hidden" NAME="to_name" VALUE="<%=strToName%>">
		<input TYPE="hidden" NAME="to_email" VALUE="<%=strTo%>">
		
		<input TYPE="hidden" NAME="personal" VALUE="<%=strPersonal%>">
		
		<input TYPE="hidden" NAME="user_id" VALUE="<%=Request("user_id")%>">
		
	</form>

</body>

<script language="javascript">
<!--
	document.frm.submit()
//-->
</script>

</html>



