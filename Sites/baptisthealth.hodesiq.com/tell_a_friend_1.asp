<!--#include file="includes/local_subs.asp"-->
<!--#include file="includes/IDInclude.asp"-->

<%
on error resume next

dim blnJobCartWasUsed

intJobID = trim(Request("JobID"))
if intJobID <> "" then 
	intJobID = clng(intJobID)
	set objJobInfoRS = GetJobDetailsRS(intJobID)
	blnJobCartWasUsed = false
else
	blnJobCartWasUsed = true
end if

strFrom = TRIM(Request("from_name"))
strFromEmail = TRIM(Request("from_email"))

strToName = TRIM(Request("to_name"))
strTo = TRIM(Request("to_email"))
strPersonal = request("personal")

if len(Request("user_id"))>2 then 

	dim RsInfo
	
	set RsInfo = GetUserInfo(intJobSeekerID)
	
	strFrom = RsInfo.fields.item("first_name").value & " " & RsInfo.fields.item("last_name").value
	strFromEmail = RsInfo.fields.item("email").value
	
end if

%>

<HTML>

<!--#include file="includes/head.asp"-->

	<body topmargin="10" bottommargin="10" leftmargin="10" rightmargin="10" marginwidth="10" marginheight="10" bgcolor="#ffffff" onload="doInit();document.frm.from_name.focus();">

	<!--#include file="includes/header.asp"-->
	
		
		<table border="0" cellspacing="0" cellpadding="0">
		<tr>
			<td width="5%">&nbsp;</td>
			<td valign="top" width="160">
				<!--BEGIN HOT OPENINGS TABLEEE8C82-->
				<%=GetTopX(5, 160, "#093980", "#FFFFFF","#D9D1C3" ,"#000000", "Hot Openings!")%>
				<!--END HOT OPENINGS TABLE-->
				<br>
				<%CreateUL%>
			</td>
			<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
			<td valign="top">
				<FORM name="frm" action="tell_a_friend_2.asp" METHOD=POST onsubmit="return ValidateEmail()">
				<input type=HIDDEN name="JobID" value="<%=intJobID%>">
				<input type="HIDDEN" name="user_id" value="<%=request("user_id")%>">
	
			<table cellspacing="0" cellpadding="0" width="400">
			
			<%if trim(request("message")) <> "" then%>
						<tr><td colspan=3>
							<font face=Arial size=4><%=trim(request("message"))%></font>
						</td></tr>
						<tr><td>&nbsp;</td></tr>
						<%end if%>
			
			<%if trim(request("confirmation")) <> "" then%>
				<tr>
					<td colspan=3>
						<FONT SIZE="2" FACE="HELVETICA,ARIAL,SANS SERIF" color="#FF9900">
						<b><%=trim(request("confirmation"))%></b></font>
					</td>
				</tr>
				<tr><td colspan=3>&nbsp;</td></tr>
			<%end if%>
	
			
							
							<%if not blnJobCartWasUsed then%>
								
								<tr>
									<td valign=top colspan=3 align="left" width="100%">
										<FONT SIZE="3" FACE="ARIAL" color="#093980"><b>
										<%=objJobInfoRS.fields("title").value%>
										</b></font>
									</td>
								</tr>
								<tr>
									<td valign=top colspan=3>
										<FONT SIZE="2" FACE="ARIAL"><font color="#093980"><b>Job Code:</b></font>
										<%=objJobInfoRS.fields("requisition_code").value%>
										</font>
									</td>
								</tr>
								<tr><td colspan=3>&nbsp;</td></tr>
									
							<%else
							
								dim intCounter
								dim strJobCart
								dim objJobCartJobsRS
										
								strJobCart = trim(Request("chkJobCartJobs"))
								set objJobCartJobsRS = GetJobCartJobsRS(strJobCart)
								%>
									
								<tr>
									<td valign=top colspan=3 align="left" width="100%">
										<FONT SIZE="3" FACE="ARIAL" color="#093980"><b>Jobs you are referring:</b></font>
									</td>
								</tr>
										
								<%do while not objJobCartJobsRS.eof%>
									<tr>
										<td valign=top colspan=3 align="left" width="100%">
											<FONT SIZE="2" FACE="ARIAL">&#149;<%=objJobCartJobsRS.fields.item("title").value%></font>
										</td>
									</tr>
								<%
									objJobCartJobsRS.movenext
								loop
								
								set objJobCartJobsRS = nothing
								%>
									
								<tr>
									<td>
										&nbsp;
										<input type="hidden" name="txtJobCartJobs" value="<%=strJobCart%>">
									</td>
								</tr>
								
									
							<%end if%>
								
							
							<tr>
								<td colspan=3>
									<div class="headerwithbackground">
										Referral Information
									</div>
								</td>
							</tr>
							
							<tr>
								<td>
									<FONT SIZE="1" FACE="HELVETICA,ARIAL,SANS SERIF">* YOUR NAME:</FONT>
								</td>
								<td width="60">&nbsp;</td>
								<td>
									<FONT SIZE="1" FACE="HELVETICA,ARIAL,SANS SERIF">* YOUR EMAIL:</FONT>
								</td>
							</tr>
							<tr>
								<td>
									<input type="text" name="from_name" size="20" value="<%=strFrom%>">
								</td>
								<td width="60">&nbsp;</td>
								<td>
									<input type="text" name="from_email" size="20" value="<%=strFromEmail%>">
								</td>
							</tr>
							<tr>
								<td>
									<FONT SIZE="1" FACE="HELVETICA,ARIAL,SANS SERIF">* FRIEND'S NAME:</FONT>
								</td>
								<td width="60">&nbsp;</td>
								<td>
									<FONT SIZE="1" FACE="HELVETICA,ARIAL,SANS SERIF">* FRIEND'S EMAIL:</FONT>
								</td>
							</tr>
							<tr>
								<td>
									<input type="text" name="to_name" size="20" value="<%=strToName%>">
								</td>
								<td width="60">&nbsp;</td>
								<td>
									<input type="text" name="to_email" size="20" value="<%=strTo%>">
								</td>
							</tr>
							
							<tr>
								<td colspan="3">
									<FONT SIZE="1" FACE="HELVETICA,ARIAL,SANS SERIF">BRIEF MESSAGE:</FONT>
								</td>
							</tr>
							<tr>
								<td colspan="3">
									<input type="text" name="personal" size="56" value="<%=strPersonal%>">
								</td>
							</tr>
							<tr>
								<td colspan="3" align="left">
									<input type="submit" name="Send" value="Send Now !">
								</td>
							</tr>
							</table>
							</form>
						</td>
					</tr>
			
			</table>
	
	
	<!--#include file="includes/footer.asp"-->
	
   <%
	if err.number <> 0 then
		Response.Redirect ("error.asp?user_id=" & Request("user_id"))
	end if
	
	if not blnJobCartWasUsed then set objJobInfoRS = nothing
	%>
	

	
</body>

</html>

<SCRIPT LANGUAGE=javascript>
<!--

	function ValidateEmail()
	{
		if (CheckForSpaces(document.frm.from_name.value) == "")
		{
			alert("Please enter your name");
			document.frm.from_name.value= "";
			document.frm.from_name.focus();
			return false;
		}
			
		if (CheckForSpaces(document.frm.from_email.value) == "")
		{
			alert("Please enter your email address");
			document.frm.from_email.value= "";
			document.frm.from_email.focus();
			return false;
		}
			
		if (document.frm.from_email.value.indexOf("@")==-1 || document.frm.from_email.value.indexOf(".")==-1 || document.frm.from_email.value.indexOf(" ")!=-1 || document.frm.from_email.value.length < 6) 
		{
			alert("Sorry, your email address is not valid.");
			document.frm.from_email.focus();
			return false;
		}
			
		if (CheckForSpaces(document.frm.to_name.value) == "")
		{
			alert("Please enter your friend's name");
			document.frm.to_name.value= "";
			document.frm.to_name.focus();
			return false;
		}
			
		if (CheckForSpaces(document.frm.to_email.value) == "")
		{
			alert("Please enter your friend's email address");
			document.frm.to_email.value= "";
			document.frm.to_email.focus();
			return false;
		}
			
		if (document.frm.to_email.value.indexOf("@")==-1 || document.frm.to_email.value.indexOf(".")==-1 || document.frm.to_email.value.indexOf(" ")!=-1 || document.frm.to_email.value.length < 6) 
		{
			alert("Sorry, your friend's email address is not valid.");
			document.frm.to_email.focus();
			return false;
		}

		return true;
	}
	
	function CheckForSpaces(strTextIn)
	{	
		var strWorkText;
		var intPointer;
			
		strWorkText = strTextIn;
		intPointer = strWorkText.indexOf(" ");
			
		for (var loopIndex = 0; loopIndex < strTextIn.length; loopIndex++)
		{
			strWorkText = strWorkText.substring(0, intPointer) + strWorkText.substring(intPointer + 1, strWorkText.length);
			intPointer = strWorkText.indexOf(" ", intPointer);
				
			if(intPointer == -1)
			{break;}
		}
		return strWorkText;
	}
		
//-->
</SCRIPT>





