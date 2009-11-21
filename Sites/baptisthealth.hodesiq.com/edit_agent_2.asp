<!--#include file="includes/local_subs.asp"-->
<!--#include file="includes/IDInclude.asp"-->

<%
	dim strConfirm
	
	'There are four form fields that my contain multiple values:
	' 1. expertise
	' 2. JobType
	' 3. refsource
	' 4. location
	' The following code will loop through each item and place it into an array

	Dim vntExpertise()
	Dim x
	Dim value
	x=0
	For each value in Request("expertise")
		Redim Preserve vntExpertise(x)
		vntExpertise(x) = value
		x = x + 1
		'Response.write  "<BR>" & value 
	Next

	Dim vntJobType()
	Dim aa
	Dim value4
	aa=0
	For each value4 in Request("JobType")
		Redim Preserve vntJobType(aa)
		vntJobType(aa) = value4
		aa = aa + 1
	Next
	

	Dim vntReferral()
	Dim y
	Dim value1
	y=0
	For each value1 in Request("refSource")
		Redim Preserve vntReferral(y)
		vntReferral(y) = value1
		y = y + 1
	Next

	Dim vntLocation()
	Dim z
	Dim value2
	z=0
	For each value2 in Request("location")
		Redim Preserve vntLocation(z)
		vntLocation(z) = value2
		z = z + 1
	Next



Dim strKeywords
strKeywords = ""
If Len(Request("keywordstext"))>1 Then
	Dim objKW
	Set objKW = Server.CreateObject("IQ_Search.IQ_ContainsParser")
	strKeywords = objKW.ParseKeywords(Request("keywordstext"))
End If


' Call CreateAgent to place the non-array data into the database. 
Dim intEAReturn

intEAReturn = EditAgent(clng(INTCONTACTID), Request("agent_id"), Request.form("profilename"), clng(Request.form("education")), _
			clng(Request.form("compensationF")), clng(Request.form("compensationt")), _
			clng(Request.form("joblevel")), clng(Request.form("percenttravel")), clng(Request.form("startdate")),strKeywords)


'Check the return value for errors
Select Case intEAReturn

	Case 0 


	'No errors so add the arrays to their respective join tables
	'The sub procedure SendToJoinTable needs the agentID, dataelement and stored proc
	Dim Q
	For Q = 0 to Ubound(vntExpertise)
		SendToJoinTable Request("agent_id"), vntExpertise(Q), "sp_AgentExpertiseJoin"
	Next

	For Q = 0 to Ubound(vntJobType)
		SendToJoinTable Request("agent_id"), vntJobType(Q), "sp_AgentJobTypeJoin" 
	Next
	
	For Q = 0 to Ubound(vntLocation)
		SendToJoinTable Request("agent_id"), vntLocation(Q), "sp_AgentLocationJoin"
	Next
	
	For Q = 0 to Ubound(vntReferral)
		SendToJoinTable Request("agent_id"), vntReferral(Q), "sp_AgentReferralJoin" 
	Next
	
	If err.number = 0 Then
		strConfirm = "You have successfully edited the agent named " & Request.form("profilename") & "."
	End If
 
Case 12
	strConfirm = "<font color=#FF0000>Information needed to edit your job agent is missing. Please try again.</font>"
	
Case 32
	strConfirm = "<font color=#FF0000>You cannot create two user agents with the same name. Please hit the back button and rename your agent.</font>"
	
Case 22
	strConfirm = "<font color=#FF0000>There was an error adding your updated agent information to the database, please try again later.</font>"

Case Else
	strConfirm = "<font color=#FF0000>There was an error updating the current agent, please try again later.</font>"
	
End Select 
%>

<html>
	<head>
		<title>Bernard Hodes Group</title>
	</head>
	<body>

		<FORM METHOD="POST" name="frm" action="confirmation.asp">

			<input TYPE="HIDDEN" NAME="message" VALUE="<%=strConfirm%>">
			<input TYPE="HIDDEN" NAME="user_id" VALUE="<%=Request("user_id")%>">
				
		</FORM>

	</body>
</html>

<script language="javascript">

	document.frm.submit();

</script>