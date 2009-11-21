<%@ Language=VBScript %>
<!--#include file="includes/local_subs.asp"-->
<!--#include file="includes/IDInclude.asp"-->

<%on error resume next%>

<html>

	<SCRIPT LANGUAGE=javascript>
		<!--

			function ValidateJobNumber(thisForm)
			{
				if (frmjobid.JobID.value == "")
				{
					alert("Please enter a job id");
					frmjobid.JobID.focus();
					return false
				}
				return true
			}
			
		//-->
		</SCRIPT>

<!--#include file="includes/head.asp"-->
	
<!--y topmargin="10" bottommargin="10" leftmargin="10" rightmargin="10" marginwidth="10" marginheight="10" bgcolor="#ffffff" onload="doInit();">//-->


	<!--#include file="includes/header.asp"-->


				<table width="400">
					<tr>
                <td vAlign="top">
			
					<br clear="all">
					<div class="header">
						View Job Information By Entering A Job Code
					</div>
					<div class=body>	
		
						<p><div class=headerwithbackground>Enter Job Code.</div>
						<form action="job_detail.asp?User_id=<%=Request("user_id")%>" method=post name=frmjobid onsubmit="return ValidateJobNumber()">
						<div align=left>
							<input type=text name=JobID maxlength=15>
							<input type = hidden name=fromjobIdPage value=y>
							<!--<p>-->
							<input type = submit value="Search" id=submit1 name=submit1>
						</div>
						</form>
						
						<%if trim(request("flag")) = "notfound" then%>
							<font class="plainText">We were unable to find a job matching the Job Code that you entered.<br>
							Please try again.</font>					
						<%end if%>
			
					</div>
				</td>
			</tr>
			</table>
		
	
	<form name="frm" action="" method="post"></form>
	
	<!--#include file="includes/footer.asp"-->
	
	<%
	if err.number <> 0 then
		Response.Redirect ("error.asp?user_id=" & Request("user_id"))
	end if
	%>
	
</body>
</html>
