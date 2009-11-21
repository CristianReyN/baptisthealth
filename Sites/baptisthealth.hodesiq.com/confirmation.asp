<!--#include file="includes/local_subs.asp"-->
<!--#include virtual="../cc/JS_jobCart.asp"-->
<%
on error resume next

dim strMessage

strMessage = trim(Request("confirmation"))

if strMessage = "" then strMessage = trim(Request("message"))

dim sDeleteCookies
sDeleteCookies = ""

for each job in Request.Cookies

	if instr(1, job, JOB_CART_JOB_NAME, 0) <> 0 and trim(Request.Cookies(job)) <> "" then
		sDeleteCookies = sDeleteCookies & "DeleteJobCookie('" &  JOB_CART_JOB_NAME &  "','" &  trim(Request.Cookies(job)) & "');"
	end if
		
next

%>


	<SCRIPT LANGUAGE=javascript>
	<!--
		<%if sDeleteCookies <> "" then%>
			eval("<%=sDeleteCookies%>");
		<%end if%>
	//-->
	</SCRIPT>
	
	
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
		