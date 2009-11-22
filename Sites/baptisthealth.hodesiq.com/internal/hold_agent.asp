<!--#include file="includes/local_subs.asp"-->
<%
'Allow buffering so there are no errors when trying to redirect
Response.Buffer = True

'make sure the user is not accessing the page without logging in.
If Len(request("user_id"))=0 Then
	Response.Redirect "default_Login.asp?err=Please log in before trying to access our site."
End If

dim strConfirm
dim intReturnValue

'Call function that will delete the selected agent
intReturnValue = HoldAgent(clng(Request("agent")))

Select Case intReturnValue		'check for errors

	Case 0

		'Redirect user back to menu page
		'Pass along user ID and message to be displayed.
		'Dim strRedirectM
		'strRedirectM = "jpsHodesIQ_menu.asp?User_id="
		'strRedirectM = strRedirectM & Request("user_id")
		'strRedirectM = strRedirectM & "&msg=You have successfully placed the selected agent on hold"
		'Response.Redirect strRedirectM
		strConfirm = "You have successfully placed the selected agent on hold"
		
	Case Else
		'Response.Write "There was an error placing your agent on hold."
		strConfirm = "<font color=#FF0000>There was an error placing your agent on hold, please try again later.</font>"
		
End Select
%>

<html>
	<head>
		<title>Bernard Hodes Group</title>
	</head>
	
	
	
	<body>

		<FORM METHOD="POST" name="frm" action="confirmation.asp">

			<input TYPE="HIDDEN" NAME="message" VALUE="<%=strConfirm%>">
			<input TYPE="HIDDEN" NAME="user_id" VALUE="<%=Request("user_id")%>">
				
		</FORM>

	</body>
</html>

<script language="javascript">

	document.frm.submit();

</script>