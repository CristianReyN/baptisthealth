<!--#include file="includes/local_subs.asp"-->

<%if isnull(Request.Form("txtAnswer")) or Request.Form("txtAnswer") = "" then
	if len(request("user_id")) > 2 then
		Response.Redirect ("job_start.asp?user_id=" & request("user_id"))
	end if
	if len(request("message")) > 1 then
		message = request("message")
		Response.Redirect ("confirmation.asp?message=" & message)
	end if	
	%>

	<HTML>
	
	<SCRIPT LANGUAGE=javascript>
	<!--
		function ValidateQA()
		{
			if(frmQuestion.txtAnswer.value == "")
			{
				alert("Please enter the answer to your Question");
				return false
			}
		return true
		}
	//-->
	</SCRIPT>

	<%
	on error resume next
	dim rsQuestion
	dim strConfirm

	Set rsQuestion=server.CreateObject("adodb.recordset") 
	set rsQuestion = GetQuestion(request("userid"), HIRING_ORG_ID)

	if rsQuestion.EOF OR rsQuestion.fields(0).value = "" then
		'Response.Redirect("default_Login.asp?Err=Unable to find a question in our database.")
		strConfirm = "We were unable to find a question in our database."
		strConfirm = server.URLEncode(strConfirm)
		Response.Redirect "confirmation.asp?message=" & strConfirm
	else
		%>

<!--#include file="includes/head.asp"-->


		<!--<body topmargin="10" bottommargin="10" leftmargin="10" rightmargin="10" marginwidth="10" marginheight="10" bgcolor="#ffffff" onload="doInit();">//-->
		
		<!--#include file="includes/header.asp"-->
	
		
		
			<table width="660">
					
						<tr><td width="5%">&nbsp;</td>
						<td valign="top" width="160">
					<!--BEGIN HOT OPENINGS TABLEEE8C82-->
					<%=GetTopX(5, 160, "#093980", "#FFFFFF","#D9D1C3" ,"#000000", "Hot Openings!")%>
					<!--END HOT OPENINGS TABLE-->
					<br>
					<%CreateUL%>
				</td>
				<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				<td valign="top">
				<table width="400"><tr>
				<td align="left" colspan=2>
							<p>        
							<div class=headerwithbackground>
								Lost Password Lookup
							</div>
							</p>
						</tr>
						

						<TR>
							<TD colspan = 2>
								<div class=plainText>Type in the answer to the question to have your password e-mailed to you.</div>
							</td>
						</tr>
						<TR>
							<TD>
								<p><div class=headerwithbackground>Question:
						
							</TD>
							<TD>
								<%=rsQuestion.Fields(0).Value%>
							</TD>
						</TR>
						<TR>
							<TD>
								<p><div class=headerwithbackground>Answer:</div>
							</TD>
							<FORM action="LostPassword.asp" method=POST id=frmQuestion name=frmQuestion onsubmit="return ValidateQA()">
							<TD>
								<INPUT type="text" id=txtAnswer size=55 name=txtAnswer>
							</TD>
						</TR>
						<TR>
							<TD colspan=2 align=left>
								<INPUT type="submit" value="Submit" id=submit1 name=submit1> <!--<INPUT type="reset" value="Reset" id=reset1 name=reset1>-->
							</TD>
						</TR>
					</table>
					</TD>
						</TR>
					</table>
					
							<INPUT type="hidden" id=txtHiringOrgID name=txtHiringOrgID value=<%=HIRING_ORG_ID%>>
							<INPUT type="hidden" id=txtUserType name=txtUserType value=<%=Request.QueryString("usertype")%>>
							<INPUT type="hidden" id=txtUserID name=txtUserID value=<%=Request.QueryString("userid")%>>
							</form>

			
				
	<form name="frm" action="" method="post"></form>
			
			<!--#include file="includes/footer.asp"-->
		
		
		</BODY>
		</HTML>
	<%end if%>
	<%else%>
	<% 'process answer to see if it matches our database, if it does email the password to user
	on error resume next
	dim strAnswer 'variables to hold values sent to check answer
	dim strUserID
	dim intHiringOrgID
	dim intUserType
	strAnswer = cstr(trim(Request.Form("txtAnswer"))) 'values from hidden textboxes
	strUserID = cstr(trim(Request.Form("txtUserID")))
	intHiringOrgID = clng(trim(Request.Form("txtHiringOrgID")))

	dim strEmail 'variable to hold email address and password
	'strEmail = clsLostPasswordAnswer.CheckAnswer(strAnswer,strUserID,intHiringOrgID,intUserType)

	strEmail = CheckAnswer(strAnswer,strUserID,intHiringOrgID)
	if err.number <> 0 then
		select case err.number	
	   
			case -2147213992
	         strConfirm = "<font color=#ff0000>Your answer does not match the answer in our database.</font>"
				strConfirm = server.URLEncode(strConfirm)
				Response.Redirect "confirmation.asp?message=" & strConfirm
	                    
			case else
				'everything else
	         strConfirm = "<font color=#ff0000>An error occured trying to check your answer, please try again later.</font>"
				strConfirm = server.URLEncode(strConfirm)
				Response.Redirect "confirmation.asp?message=" & strConfirm
							
		End Select
	end if

	Dim intStrPosition 'parse output from above function into email and password
	intStrPosition = InStr(strEmail, "Email=")
	    
	Dim MyBody
	Dim MyCDONTSMail

	Set MyCDONTSMail = CreateObject("CDONTS.NewMail")
	MyCDONTSMail.From= "agent@hodes.com"
	MyCDONTSMail.To= strUserID
	MyCDONTSMail.Subject="Your Password"
	MyBody = "Your IQ Password is" & vbCrLf
	MyBody = MyBody & strEmail
	MyCDONTSMail.Body= MyBody
	MyCDONTSMail.Send
	set MyCDONTSMail=nothing

	if err.number <> 0 then
		strConfirm = "<font color=#ff0000>There was an error emailing your password, please try again later.</font>"
	else	
		strConfirm = "Your password has been emailed"
		strConfirm = server.URLEncode(strConfirm)
		Response.Redirect "confirmation.asp?message=" & strConfirm
	End If
End If
%>


