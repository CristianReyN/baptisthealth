<!--#include file="includes/local_subs.asp"-->
<%
on error resume next

dim strMessage

strMessage = trim(Request("confirmation"))

if strMessage = "" then strMessage = trim(Request("message"))
%>

<HTML>

	<!--#include file="includes/head.asp"-->
	
	
	<!--<body topmargin="10" bottommargin="10" leftmargin="10" rightmargin="10" marginwidth="10" marginheight="10" bgcolor="#ffffff" onload="doInit();">//-->
		
		<!--#include file="includes/header.asp"-->
		
				<table width="660">
				<tr><td width="5%">&nbsp;</td>
					<td valign="top" width="160">
					<!--BEGIN HOT OPENINGS TABLE-->
					<%=GetTopX(5, 160, "#093980", "#FFFFFF","#D9D1C3" ,"#000000", "Hot Openings!")%>
					<!--END HOT OPENINGS TABLE-->
					<br>
					<%CreateUL%>
				</td>
				<td>&nbsp; &nbsp; &nbsp; &nbsp;</td>
				<td valign="top">
					<form name="frm" action="" method="post">
					<table width="400">
					<tr><td>
					
						<div class="headerwithbackground">
							Confirmation
						</div>
						<FONT SIZE="2" FACE="ARIAL,HELVETICA"><%=strMessage%></font>
					</td>
					<tr><td>&nbsp;</td></tr>
				
					</table>
					</form>
				</td>
		</tr>
		</table>
		
		<!--#include file="includes/footer.asp"-->
		
		<br clear="all">
		
		<%
		if err.number <> 0 then
			Response.Redirect ("error.asp?user_id=" & Request("user_id"))
		end if
		%>
	
	</body>

</HTML>
