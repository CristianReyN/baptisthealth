<!--#include file="includes/local_subs.asp"-->
<!--#include file="includes/IDInclude.asp"-->

<%
Response.Buffer=true

dim strConfirm

Dim strAddress
Dim strAddress2

If Len (Request("address")) < 1 Then
strAddress = Request("address") & " "
Else
strAddress = Request("address")
End If

If Len (Request("address2"))< 1 Then
strAddress2=Request("address2") & " "
Else
strAddress2=Request("address2")
End If

dim strhomephone
If Len (Request.form("HomePhone")) < 1 Then
strhomePhone = Request.form("HomePhone") & " "
Else
strhomePhone = Request.form("HomePhone")
End If

dim strworkphone
If Len (Request.form("WorkPhone")) < 1 Then
strWorkPhone = Request.form("WorkPhone") & " "
Else
strWorkPhone = Request.form("WorkPhone")
End If

dim strmobilePhone
If Len (Request.form("MobilePhone")) < 1 Then
strMobilePhone = Request.form("MobilePhone") & " "
Else
strMobilePhone = Request.form("MobilePhone")
End If

dim strrez
If Len (Request.form("rez")) < 1 Then
strrez = Request.form("rez") & " "
Else
strrez = Request.form("rez")
End If

Dim intER
intER = EditResume(clng(intJobSeekerID), strRez)

Dim IntEUReturn
intEUReturn = 0


dim strhomeid
dim strworkid
dim strmobileid
dim straddressid

strhomeid = Request.Form("homephoneid")
strworkid = Request.Form("workphoneid")
strmobileid = Request.Form("mobilephoneid")
straddressid = Request.Form("addressid")

intEUReturn = EditUserInfo(clng(intJobSeekerID),Cstr(Request.form("password")), _
			Cbool(Request.form("Privacy")), CBool(Request.form("notifyjobs")), clng(Request.form("emailtype")), clng(Request.form("notifyFrequency")), _
			Cstr(Request.form("FirstName")), cstr(Request.form("MiddleName")), Cstr(Request.form("LastName")), Request.form("SSN"), strAddress, strAddress2, _
			Cstr(Request.form("City")), Cstr(Request.form("state")),clng(Request("country")),Cstr(Request.form("ZipCode")),strHomePhone,strWorkPhone,StrMobilePhone, _ 
			Request.Form("homephoneid"), Request.Form("workphoneid"), Request.Form("mobilephoneid"), Request.Form("addressid"), _ 
			cstr(Request.Form("question")),cstr(Request.Form("response")))

						
select case intEUReturn
			
	case 0 'success
		'Response.redirect "jpshodesIq_menu.asp?blnSuperUser=Yes&User_id=" & Request("user_id")& "&Msg=You have successfully edited your registration information."
		strConfirm = "You have successfully edited your registration information."
	case 320 'email exists for user
		'Response.redirect "jpshodesIq_menu.asp?blnSuperUser=Yes&User_id=" & Request("user_id")& "&Msg=You have already registered with us using this email address. Please hit the back button and enter a new email address."
		strConfirm = "<font color=#FF0000>You have already registered with us using this email address. Please hit the back button and enter a new email address.</font>"
	case else
		'Response.redirect "jpshodesIq_menu.asp?blnSuperUser=Yes&User_id=" & Request("user_id")& "&Msg=There was an error editing your information in the database. Please try again."	
		strConfirm = "<font color=#FF0000>There was an error editing your information in the database, please try again later.</font>"
		
end select
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
