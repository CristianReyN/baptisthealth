<%@ Language=VBScript %>
<!--#include file="includes/local_subs.asp"-->
<!--#include file="includes/IDInclude.asp"-->

<%
on error resume next

'Grab all agents that are on hold in order to display them in drop down list.
Dim objIQAgentRSH
Set objIQAgentRSH = Server.CreateObject("adodb.recordset")
Set objIQAgentRSH = IQGetAgentH(clng(intContactID))

'If there's an error, then redirect
If err.number > 0 then
	Response.Redirect"error.asp?err=Please log in again."
Else
	
	'Make sure the recordset contains data. If not, the user has no agents on hold.
	IF ObjIQAgentRSH.bof OR ObjIQAgentRSH.EOF Then
		Dim strRedirect6
		'strRedirect6 = "jpshodesIQ_menu.asp?User_ID="
		'strRedirect6 = strRedirect6 & Request("User_ID")
		'strRedirect6 = strRedirect6 & "&msg=You currently have no agents on hold"
		'Response.Redirect strRedirect6
		
		strConfirm = "You currently have no agents on hold."
		
		strConfirm = server.URLEncode(strConfirm)
		strRedirect6 = "confirmation.asp?user_id=" & Request("user_id") & "&message=" & strConfirm
		Response.Redirect strRedirect6
		
	ELSE
%>

		<html>
		
		<!--#include file="includes/head.asp"-->
			
		<!--<body topmargin="10" bottommargin="10" leftmargin="10" rightmargin="10" marginwidth="10" marginheight="10" bgcolor="#ffffff" onload="doInit();">//-->
			
			<!--#include file="includes/header.asp"-->
			
			
					<table width="100%">
					<tr>
						<td> 
							<br clear="all">
							<div class="header">
								Remove A Hold From An Agent
							</div>
							<div class=body>	
								<p><div class=headerwithbackground>Choose an agent.</div>
								<form action=remove_hold_2.asp?User_id=<%=Request("user_id")%> method=post id=form1 name=form1>
								<div align=left>
									<select name=agent>
								
										<%		
										Do while ObjIQAgentRSH.EOF = false
											Response.Write "<option value="&ObjIQAgentRSH("iq_agent_id")&">"&Trim(ObjIQAgentRSH("iq_agent_name"))&"</option>"&vbCrLf
											ObjIQAgentRSH.MoveNext
										Loop
								
										objIQAgentRSH.close
										set objIQAgentRSH = Nothing
										%>
						
									</select>
									<input type=submit name=removehold value="Remove Hold">
									</form>
								</div>
							</div>
						</td>
					</tr>
					</table>
				
		
		<!--#include file="includes/footer.asp"-->
			
			<%
			if err.number <> 0 then
				Response.Redirect ("error.asp?user_id=" & Request("user_id"))
			end if
			%>
			
		</body>
		
		</html>
		
	<%End If
	
End If%>