<!--#include file="includes/local_subs.asp"-->
<!--#include file="includes/IDInclude.asp"-->

<%
on error resume next

response.buffer = true

dim arrJobCart
dim arrJobQuestionnaires(0)
dim intJobCounter
dim intQACounter
dim strLastFlag

select case trim(Request("counter"))

	case ""
		intQACounter = 0
	
	case else
		intQACounter = clng(trim(Request("counter"))) + 1
	
end select

strJobCart = trim(Request.Form("txtJobCartJobs"))
arrJobCart = split(strJobCart, ",")

strJSIDs = trim(Request.Form("txtJobSeekerIDs"))
arrJSIDs = split(strJSIDs, ",")

if intQACounter = ubound(arrJobCart) then 'GetNumberOfJobsWithQuestionnaires(arrJobCart) then
	strLastFlag = "yes"
else
	strLastFlag = "no"
end if
%>

<html>

<!--#include file="includes/head.asp"-->

	
	<!--#include file="includes/header.asp"-->
	

				
				<form onsubmit="return ValidateForm()" NAME="frm" ACTION="apply_online_2a.asp" METHOD=POST>
				<input type="hidden" name="JobID" value="<%=intJobID%>">
				<input type="hidden" name="txtJobCartJobs" value="<%=strJobCart%>">
				<input type="hidden" name="txtJobSeekerIDs" value="<%=trim(Request("txtJobSeekerIDs"))%>">
				<input type="hidden" name="counter" value="<%=intQACounter%>">
				<input type="hidden" name="last_flag" value="<%=strLastFlag%>">
				<input TYPE="hidden" NAME="user_id" VALUE="<%=Request("user_id")%>">	
				<input TYPE="hidden" NAME="Email" VALUE="<%=Request("Email").item%>">
				<input TYPE="hidden" NAME="resume_text" VALUE="<%=Request("resume_text").item%>">
		
					<table width="400" align="center">
							<%
							intJobID = clng(trim(arrJobCart(intQACounter)))
							
							if GetJobQuestionnaireID(intJobID) <> 0 and clng(trim(arrJSIDs(intQACounter))) <> 0 then
							
								set objJobInfoRS = GetJobDetailsRS(intJobID)
								intJobQuestionnaireID = intJobID
							%>
								
								<tr>
									<td valign=top colspan=3>
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
								<tr>
									<td colspan=3 bgcolor="#FF9900">
										<div class="headerwithbackground">
												Job Questionnaire
										</div>
									</td>
								</tr>
								
								<%
								arrJobQuestionnaires(0) = intJobID
								
								Response.write DisplayJobQuestionnaire(APP_SERVER, arrJobQuestionnaires)
							
							else
							
								Response.Redirect "apply_online_2a.asp?txtJobCartJobs=" & server.urlencode(strJobCart) & "&txtJobSeekerIDs=" & server.urlencode(trim(Request.Form("txtJobSeekerIDs"))) & "&counter=" & intQACounter & "&last_flag=" & strLastFlag & "&user_id=" & request("user_id")
							
							end if
							%>
							
							<tr><td colspan=3>&nbsp;</td></tr>
						
						<tr>
							<td colspan=4 align=left>
								<input type="submit" name="submit" value="Submit Answers">
							</td>
						</tr>
			</table>
		
	<br clear='all'>
	
	<!--#include file="includes/footer.asp"-->
	
	<%
	if err.number <> 0 then
		Response.Redirect ("error.asp?user_id=" & Request("user_id"))
	end if
	%>
	
	</form>
	
</body>
</html>

<script language="javascript">
	
	function ValidateForm()
	{
		
		<%=strJavascript%>	
      
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
	
</script>