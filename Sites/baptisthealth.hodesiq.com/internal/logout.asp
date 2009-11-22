<!--#include file="includes/local_subs.asp"-->

<%
dim strConfirm
dim intLReturn

intLReturn = Logout(Request("user_id"), "confirmation.asp")

if err.number <> 0 then
	Response.Redirect ("error.asp")
end if
	
strConfirm = "You have been successfully logged out.  Feel free to continue navigating through our career site."

%>

<html>
	<head>
		<title>Bernard Hodes Group</title>
	</head>
	
	<%=ValidateLogin%>
	
	<body>

		<FORM METHOD="POST" name="frm" action="confirmation.asp">

			<input TYPE="HIDDEN" NAME="message" VALUE="<%=strConfirm%>">
				
		</FORM>

	</body>
</html>

<script language="javascript">

	document.frm.submit();

</script>