<%@ Language=VBScript %>
<!--#include file="includes/local_subs.asp"-->
<!--#include file="includes/IDInclude.asp"-->

<% 
Response.Buffer = true

on error resume next

'Make sure the user isn't accessing the page without logging in first. 
If Len(request("agent"))=0 Then	
	Response.Redirect"error.asp?err=Please log in before trying to access our site."
End If
%>


<%
Dim str
'Grab job titles, descriptions and locations that match the agent.
str = GetAgentRequisitons (Request("agent"),Request("User_id"),HIRING_ORG_ID)

'If at least one job is returned, it is safe to assume that the length of the job info
' will be greater than two.
If Len(str)> 2 Then
	Response.Write "<Title>Please select a job that matches your agent.</title>"
Else 
	Response.Write "<Title>There are currently no jobs that match your agent.</title>"
End If
%>


<!--#include file="includes/header.asp"-->

			
				<FORM name="frm" action="" METHOD="POST">
				<table "100%"><tr>
				<td align="center" valign="top" colspan=3> 
					<%=GetMessage(request("message"))%>
					
				</td>
			</tr>
			<tr>
				<td align="left" colspan=3>        
					<div class="header">
						<%
						'If at least one job is returned, it is safe to assume that the length of the job info
						' will be greater than two.
						If Len(str)> 2 Then
							Response.Write "<div class=headerwithbackground>Please select a job that matches your agent.</div>"
						Else 
							Response.Write "<div class=bodytext>There are currently no jobs that match your agent.</div>"
						End If
						%>
					</div>
				</td>
			</tr>
			<tr>
				<td>
					<div class=body>
					<%=str%>
					</div>
				</td>
			</tr>
		</table>
		</form>
		
		<!--#include file="includes/footer.asp"-->
	
	