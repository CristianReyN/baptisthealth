<!--#include file="includes/local_subs.asp"-->

<%
'Allow buffering so there are no errors when trying to redirect
Response.Buffer = true
dim strConfirm
dim strRedirectM
dim intReturnValue
'Call function that will delete the selected agent
'Response.Write clng(request.form("select1").item)

intReturnValue = RemoveHold(clng(Request("agent")))

select case intReturnValue		'check for errors

	case 0

	
		strConfirm = "The agent's hold has successfully been removed."

	case 11

		strConfirm = "<font color=#ff0000>The selected agent is not on hold.</font>"
		
	case 21

		
		strConfirm = "<font color=#ff0000>There was an error removing the hold, please try again later.</font>"
		
	case else

		
		strConfirm = "<font color=#ff0000>There was an error removing the hold, please try again later.</font>"

end select

strConfirm = server.URLEncode(strConfirm)
strRedirectM = "confirmation.asp?user_id=" & Request("user_id") & "&message=" & strConfirm
Response.Redirect strRedirectM
%>