<%@ Language=VBScript %>
<!--#include file="includes/local_subs.asp"-->
<!--#include file="includes/IDInclude.asp"-->

<%
on error resume next

strCurrentURL = Request.ServerVariables("HTTP_Referer")
if len(request("user_id"))<1 OR NOT IsNumeric(intContactId) then
	Response.Redirect ("job_start.asp?message=" & request("Message")&"&User_ID="&Request("user_ID")) 
end if
%>

<!--#include file="includes/header.asp"-->
	

				
				<div class="header">
					<%if len(Request("message")) > 1 then
						Response.Write (Request("message"))
					else
						err.clear%>
						<div class=headerwithbackground>Job Agent Menu</div>
					<%end if%>
				</div>
				<div class="body">
					<%
					Dim objIQAgentRS
					Set objIQAgentRS = Server.CreateObject("adodb.recordset")


					Set objIQAgentRS = IQGetAgent(clng(intcontactID))

					Dim blnHaveRecords
					blnHaveRecords = false
						

					If err.number > 0 then
						Response.Write err.description
						'Response.Redirect"default_Login.asp?err=Please log in again."
					Else
					
						IF ObjIQAgentRS.bof OR ObjIQAgentRS.EOF Then
							Response.Write "You currently have no active agents. Click"
							%>
							<a href="add_agent_1.asp?User_ID=<%=Request("user_id")%>"> here</a> to create a job agent.
							<%
							Response.Write "<form name=""frmAgent"" action =Process_Submit.asp?User_id="&Request("user_id")&" method=post>"
							%>
							<input type="hidden" name="edit" value="">
							<input type="hidden" name="deleted" value="">
							<input type="hidden" name="hold" value="">
							<input type="hidden" name="jobs" value="">
							<%
						ELSE
							'Set boolean variable to indicate that we have records and should loop through 
							'created array. 
							blnHaveRecords = True
							Response.Write "<p>Choose an agent and then select an action.</p>"
							Response.Write "<form name=""frmAgent"" action =Process_Submit.asp?User_id="&Request("user_id")&" method=post>"
							%>
							<input type="hidden" name="user_id" value="<%=Request("user_id")%>">
							<%
							'Response.write "<div align=center><select name=agent>"
							Response.write "<div align=left><select name=agent>"
		
							Do while ObjIQAgentRS.EOF = false
								Response.Write "<option value="&ObjIQAgentRS("iq_agent_id")&">"&Trim(ObjIQAgentRS("iq_agent_name"))&"</option>"&vbCrLf
								ObjIQAgentRS.MoveNext
							Loop
							%>
							
							</select>&nbsp;
							
							
							  <!--
							  <tr>
								<td width="50%"><input type="submit" name="edit" value="Edit Agent"></td>
							    <td width="50%"><input type="submit" name="delete" value="Delete Agent"></td>
							  </tr>
							  <tr>
							    <td width="50%"><input type="submit" name="hold" value="Place Agent on Hold"></td>
							    <td width="50%"><input type="submit" name="jobs" value="View Agent Jobs"></td>
							  </tr>
							  -->
							 <br>
							 <br><a href="Javascript: document.frmAgent.edit.value = 'edit'; document.frmAgent.submit();"><font face='arial' size='2'>Edit Agent</font></a>
							 <br><a href="Javascript: document.frmAgent.deleted.value = 'deleted'; document.frmAgent.submit();"><font face='arial' size='2'>Delete Agent</font></a>
							 <br><a href="Javascript: document.frmAgent.hold.value = 'hold'; document.frmAgent.submit();"><font face='arial' size='2'>Place Agent on Hold</font></a>
							 <br><a href="Javascript: document.frmAgent.jobs.value = 'jobs'; document.frmAgent.submit();"><font face='arial' size='2'>View Agent Jobs</font></a>
							  
							
							
							<input type="hidden" name="edit" value="">
							<input type="hidden" name="deleted" value="">
							<input type="hidden" name="hold" value="">
							<input type="hidden" name="jobs" value="">
							
							</form>
							
							<form name="frm" action="" method="post"></form>
						
							<%
							objIQAgentRS.close
							set objIQAgent = Nothing	
						End If
	
					End If 
					%>

					<p>
					<%
					Response.write "<p class=registerheader>"& request("msg")&" </p>"
					%>
					</div>
				
		
	<!--#include file="includes/footer.asp"-->

	
<script language="javascript">
<!--

	function ClearSubmitFields()
	{
		document.frmAgent.edit.value = "";
		document.frmAgent.deleted.value = "";
		document.frmAgent.hold.value = "";
		document.frmAgent.jobs.value = "";
	}
	
//-->
</script>