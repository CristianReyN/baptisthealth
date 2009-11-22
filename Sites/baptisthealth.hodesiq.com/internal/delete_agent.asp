<!--#include file="includes/local_subs.asp"-->
<!--#include file="includes/IDInclude.asp"-->

<%
dim strConfirm
dim intReturnValue

'Call function that will delete the selected agent
'Response.Write clng(request.form("select1").item)

intReturnValue = DeleteAgent("DeleteAgent",clng(request("agent")))

Select Case intReturnValue		'check for errors

	Case 0
		strConfirm = "You have successfully deleted the selected agent."

	Case Else
		strConfirm = "<font color=#FF0000>There was an error deleting your agent, please try again later.</FONT>"

End Select
%>

<html>
	<head>
		<title>Bernard Hodes Group</title>
	</head>
	
	<%=ValidateLogin%>
	
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