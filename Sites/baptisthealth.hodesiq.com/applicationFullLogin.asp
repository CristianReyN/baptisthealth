<!--#include file="includes\local_subs.asp"-->
<!--#include file="includes\head.asp"-->
<!--#include file="includes\header.asp"-->

<%
Dim strAction
Dim blnFound

blnFound = True

strAction = Request.Form("TAKE_ACTION").Item

Select Case strAction
	Case "VERIFY_USER"
		dim RsInfo
		dim arInputparameters
			
		lngAppID = Clng(Request("ApplicantID").Item)
			
		arInputparameters = Array(Request("LastName"), lngAppID)

		set RsInfo = ExecuteDynamicStoredProcedure("p_View_Applicant_Personal_Info_SimpleVerify", arInputparameters)
			
		if RsInfo.RecordCount > 0 then
			'First_Name = RsInfo.fields.item("first_name").value
			'Middle_Initial = RsInfo.fields.item("middle_initial").value
			'Last_Name = RsInfo.fields.item("last_name").value

			'Home_Phone = RsInfo.fields.item("home_phone").value
			'Work_Phone = RsInfo.fields.item("work_phone").value
			'Mobile_Phone = RsInfo.fields.item("Mobile_Phone").value
			'Email = RsInfo.fields.item("email").value
			'Password = RsInfo.fields.item("password").value

			'Address = RsInfo.fields.item("address").value
			'City = RsInfo.fields.item("city").value
			
			'State = RsInfo.fields.item("state").value
			'StateName = GetStateName(Clng(State))
			'Zip = RsInfo.fields.item("zip").value

			'RecruiterEmail = RsInfo.fields.item("RecruiterEmail").value

			'strOnLoad = "onLoad='document.frm.First_Name.focus();'"
			
			Response.Redirect("LongApplication.asp?AppID=" & lngAppID)
		else
			blnFound = False
		end if
End Select
%>

<p align="center">

<% if blnFound = False then %>

<font color="red"><b>Unfortunately we were unable to log you in.</b></font>

<% end if %>
<form name="frm" action="applicationfullLogin.asp" method="post">
<input type="hidden" name="TAKE_ACTION">
<table border='0' width='600' align='center'>
<tr>
<td class="" colspan="2" align="center"><b>Welcome Back</b></td>
</tr>
<tr><td class="" colspan="2" height="50">&nbsp;</td></tr>
<tr>
<td class="">Enter Your Last Name:</td>
<td class=""><input type="text" size="15" name="LastName" value=""></td>
</tr>
<tr>
<td class="">Enter Your Id Number:</td>
<td class=""><input type="text" size="15" name="ApplicantID" value=""></td>
</tr>
<tr><td class="" align="center" colspan="2"><input type="button" value="Continue" name="Continue" OnClick='SubmitForm();'></td></tr>
<tr><td class="" colspan="2" height="150">&nbsp;</td></tr>
</table>


</form>

</p>

<!--#include file="includes\footer.asp"-->
<script language='JavaScript'>
	function SubmitForm()
		{
			document.frm.TAKE_ACTION.value='VERIFY_USER';
			document.frm.submit();
		}
</script>