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
		
				
					<form name="frm" action="" method="post">
					<table width="100%">
					<tr><td>
					
						<div class="headerwithbackground">
							Confirmation
						</div>
						<FONT SIZE="2" FACE="ARIAL,HELVETICA"><%=strMessage%></font>
					</td>
					<tr><td>&nbsp;</td></tr>
				
					</table>
					</form>
				
		
		<!--#include file="includes/footer.asp"-->
		
		<br clear="all">
		
		<%
		if err.number <> 0 then
			Response.Redirect ("error.asp?user_id=" & Request("user_id"))
		end if
		%>
	
	</body>

</HTML>
