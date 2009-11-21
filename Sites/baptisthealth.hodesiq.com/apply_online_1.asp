<!--#include file="includes/local_subs.asp"-->
<!--#include file="includes/IDInclude.asp"-->

<%
on error resume next

response.buffer = true

dim blnJobCartWasUsed
dim intDisplayNumber
dim arrJobCart
dim arrJobQuestionnaires
dim intNumberOfSelectedJobs
dim intJobQuestionnaireID

intJobQuestionnaireID = 0
intJobID = trim(Request("JobID"))
if intJobID <> "" then 

	intJobID = clng(intJobID)
	
	if GetJobQuestionnaireID(intJobID) <> 0 then intJobQuestionnaireID = intJobID
		
	set objJobInfoRS = GetJobDetailsRS(intJobID)
	intNumberOfSelectedJobs = 1
	blnJobCartWasUsed = false
	
else

	strJobCart = trim(Request("chkJobCartJobs"))
	arrJobCart = split(strJobCart, ", ")
	intNumberOfSelectedJobs = ubound(arrJobCart) + 1
	
	if intNumberOfSelectedJobs = 1 then
		intJobID = clng(trim(arrJobCart(0)))
		set objJobInfoRS = GetJobDetailsRS(intJobID)
		blnJobCartWasUsed = false
		
		if GetJobQuestionnaireID(intJobID) <> 0 then intJobQuestionnaireID = intJobID
			
	end if
	
	blnJobCartWasUsed = true
	
end if

First_Name = Request("First_Name")
Middle_Initial = Request("Middle_Initial")
Last_Name = Request("Last_Name")

Work_Phone = Request("Work_Phone")
Home_Phone = Request("Home_Phone")
Email = Request("Email")
Password = Request("Password")

Address = Request("Address")
City = Request("City")
State = Request("State")
Country = Request("Country")
Zip = Request("Zip")

resume_text = Request("resume_text")

Media_info = Request("media_info")
Other_Media = Request("Other_Media")

if len(Request("user_id"))>2 then 

	dim RsInfo
	
	set RsInfo = GetUserInfo(intJobSeekerID)
	
	First_Name = RsInfo.fields.item("first_name").value
	Middle_Initial = RsInfo.fields.item("middle_initial").value
	Last_Name = RsInfo.fields.item("last_name").value

	Work_Phone = RsInfo.fields.item("home_phone").value
	Home_Phone = RsInfo.fields.item("work_phone").value
	Email = RsInfo.fields.item("email").value
	Password = RsInfo.fields.item("password").value

	Address = RsInfo.fields.item("address").value
	City = RsInfo.fields.item("city").value
	State = RsInfo.fields.item("state").value
	Country = RsInfo.fields.item("country").value
	Zip = RsInfo.fields.item("zip").value

	resume_text = GetResume(intJobSeekerID)

end if

intDisplayNumber = 2

if Country = "" or isnull(Country) then Country = "1"
%>
<html>

<!--#include file="includes/head.asp"-->
	
	<!--<body topmargin="10" bottommargin="10" leftmargin="10" rightmargin="10" marginwidth="10" marginheight="10" bgcolor="#ffffff" onload="doInit();document.frm.First_Name.focus();GetDropdownValues();">//-->
	
	<!--#include file="includes/header.asp"-->
	
	<br clear='all'>
	
	
		
	
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
				
					<form onsubmit="return ValidateForm()" NAME="frm" ACTION="apply_online_2.asp" METHOD=POST>
					<input TYPE="hidden" NAME="user_id" VALUE="<%=Request("user_id")%>">
					<input type="hidden" name="JobID" value="<%=intJobID%>">
					
					<table width="420">
						
						<%if trim(request("message")) <> "" then%>
						<tr><td colspan=3>
							<font face=Arial size=4><%=trim(request("message"))%></font>
						</td></tr>
						<tr><td>&nbsp;</td></tr>
						<%end if%>
						
						<%if trim(request("confirmation")) <> "" then%>
							<tr>
								<td colspan=3>
									<FONT SIZE="2" FACE="HELVETICA,ARIAL,SANS SERIF">
									<b><%=trim(request("confirmation"))%></b></font>
								</td>
							</tr>
							<tr><td colspan=3>&nbsp;</td></tr>
						<%end if%>
						
						<%if not blnJobCartWasUsed then%>
							<tr>
								<td valign=top colspan=3>
									<FONT SIZE="3" FACE="ARIAL" color="#093980"><b>
									<%=objJobInfoRS.fields("title").value%>
									</b></font>
								</td>
							</tr>
							<tr>
								<td valign=top colspan=3>
									<FONT SIZE="2" FACE="ARIAL"><font color="#093980"><b>Job Code:</b></font>
									<%=objJobInfoRS.fields("requisition_code").value%>
									</font>
								</td>
							</tr>
							<tr><td colspan=3>&nbsp;</td></tr>
						<%else
							
							dim intCounter
							dim strJobCart
							dim objJobCartJobsRS
							
							set objJobCartJobsRS = GetJobCartJobsRS(strJobCart)
						%>
						
							<tr>
								<td colspan="2">
									<FONT SIZE="3" FACE="HELVETICA,ARIAL,SANS SERIF" color="#093980"><b>Jobs you are applying for:</b></font>
								</td>
							</tr>
						
							<%do while not objJobCartJobsRS.eof%>
								<tr>
									<td colspan="2">
										<FONT SIZE="2" FACE="HELVETICA,ARIAL,SANS SERIF">&#149;<%=objJobCartJobsRS.fields.item("title").value%></font>
									</td>
								</tr>
							<%
								objJobCartJobsRS.movenext
							loop
							
							set objJobCartJobsRS = nothing
							%>
							
							<tr><td>&nbsp;</td></tr>
							<input type="hidden" name="txtJobCartJobs" value="<%=strJobCart%>">
							
						<%end if%>
						
						<tr>
							<td colspan=3 bgcolor="#ffffff">
								<div class="headerwithbackground">
										1. General Information
								</div>
							</td>
						</tr>
						<tr>
							<td align=left colspan=3>
								<table border="0" width="100%" cellpadding="0" cellspacing="0">
						      <tr>
									<td width="40%">
										<FONT SIZE="1" FACE="HELVETICA,ARIAL,SANS SERIF">* FIRST NAME</FONT>
									</td>
						         <td width="20%">
										<FONT SIZE="1" FACE="HELVETICA,ARIAL,SANS SERIF"> M.I.</FONT>
									</td>
						         <td width="40%">
										<FONT SIZE="1" FACE="HELVETICA,ARIAL,SANS SERIF">* LAST NAME</font>
						         </td>
						      </tr>
								<tr>
									<td width="40%">
										<input type="text" name="First_Name" size="15" MAXLENGTH=25 value="<%=First_Name%>">
									</td>
									<td width="20%">
										<input type="text" name="Middle_Initial" size="2" MAXLENGTH=1 value="<%=Middle_Initial%>">
									</td>
									<td width="40%">
										<input type="text" name="Last_Name" size="18" MAXLENGTH=25 value="<%=Last_Name%>">
									</td>
								</tr>
								</table>
							</td>
						</tr>
						<tr>
				<td colspan=3>
				<table border="0" width="100%" cellpadding="0" cellspacing="0">
				<tr>
					<td width="50%">
						<FONT SIZE="1" FACE="HELVETICA,ARIAL,SANS SERIF">* HOME PHONE:</font>
					</td>
					<td width="50%">
						<FONT SIZE="1" FACE="HELVETICA,ARIAL,SANS SERIF">* WORK PHONE:</font>
					</td>
				</tr>
				<tr>
					<td width="50%">
						<input type="text" name="Home_Phone" size="25" MAXLENGTH=20 value="<%=Home_Phone%>">
					</td>
					<td width="50%">
						<input type="text" name="Work_Phone" size="25" MAXLENGTH=20 value="<%=Work_Phone%>">
					</td>
				</tr>
				</table>
				</td>
			</tr>
			<tr>
				<td colspan=3>
				<table border="0" width="100%" cellpadding="0" cellspacing="0">
				<tr>
					<td>
						<FONT SIZE="1" FACE="HELVETICA,ARIAL,SANS SERIF">* EMAIL:</font>
					</td>
				</tr>
				<tr>
					<td>
						<input type="text" name="Email" size="25" MAXLENGTH=50 value="<%=Email%>">
						<input type="hidden" name="Password" value="<%=Password%>">
					</td>
				</tr>
				</table>
			</td>
			</tr>
			<tr>
				<td colspan=3>
					<FONT SIZE="1" FACE="HELVETICA,ARIAL,SANS SERIF">* ADDRESS:</font>
				</td>
			</tr>
			<tr>
				<td colspan=3 align=left>
					<input type="text" name="Address" size="58" MAXLENGTH=150 value="<%=Address%>">
				</td>
			</tr>
	
			<tr>
				<td>
					<FONT SIZE="1" FACE="HELVETICA,ARIAL,SANS SERIF">* CITY:</font>
				</td>
				<td>
					<FONT SIZE="1" FACE="HELVETICA,ARIAL,SANS SERIF">* STATE/PROVINCE:</font>
				</td>
				<td>
					<FONT SIZE="1" FACE="HELVETICA,ARIAL,SANS SERIF">&nbsp; * POSTAL CODE:</font>
				</td>
			</tr>
	
			<tr>
				<td align=left>
					<input type="text" name="City" size="15" MAXLENGTH=30 value="<%=City%>">
				</td>
				<td>
					<select name="State">
						<option value="-1">SELECT ONE</option>
						<%=GetStateDropdown("", Country)%>
					</select>
					<input type="hidden" name="State_hidden" size="15" MAXLENGTH=2 value="<%=State%>">
				</td>
				<td align=left>
					&nbsp;<input type="text" name="Zip" size="8" MAXLENGTH=10 value="<%=Zip%>">
				</td>
			</tr>
			<tr>
				<td colspan="3">
					<FONT SIZE="1" FACE="HELVETICA,ARIAL,SANS SERIF">* COUNTRY:</font>
				</td>
			</tr>
			<tr>
				<td colspan="3">
					<select name="Country">
						<%=GetCountryDropdown(Country)%>
					</select>
					<input type="hidden" name="Country_hidden" size="15" MAXLENGTH=30 value="<%=Country%>">
				</td>
			</tr>
			<tr>
				<td colspan=3>
					<FONT SIZE="1" FACE="HELVETICA,ARIAL,SANS SERIF">*  WHERE DID YOU SEE THIS ADVERTISEMENT?:</font>
				</td>
			</tr>
			<tr>
				<td colspan=3 align=left>
					<select name="media_info">
						<option value="" selected>SELECT ONE</option>
						
						<%
						dim lngEmediaJobID
						
						if intJobID <> "" then
							lngEmediaJobID = intJobID
						else
							lngEmediaJobID = arrJobCart(0)
						end if
							
						Response.write GetReferralSources(lngEmediaJobID)
						%>
						
						<option value="6951">Other</option>
						
					</select>
					<input type="hidden" name="media_info_hidden" size="15" MAXLENGTH=25 value="<%=media_info%>">
				</td>
			</tr>
			<tr>
				<td colspan=3>
					<FONT SIZE="1" FACE="HELVETICA,ARIAL,SANS SERIF">IF YOU CHOSE OTHER, WHERE?</font>
				</td>
			</tr>
				<td colspan=3>
					<input type="text" name="Other_Media" size="25" MAXLENGTH=40 value="<%=Other_Media%>">
				</td>
			</tr>
	
			<tr><td>&nbsp;</td></tr>
	
			<!--BEGIN QUESTIONNAIRE-->
			<%if intJobQuestionnaireID <> 0 then%>
			<%'if not isempty(arrJobQuestionnaires) then%>
				<tr>
					<td colspan=3 bgcolor="#ffffff">
						<div class="headerwithbackground">
										2. Questionnaire
								</div>
					</td>
				</tr>
								
				<%
				redim arrJobQuestionnaires(0)
				arrJobQuestionnaires(0) = intJobQuestionnaireID
				
				Response.write DisplayJobQuestionnaire(APP_SERVER, arrJobQuestionnaires)
				%>
				
				<input type="hidden" name="one_qa" value="yes">
							
				<tr><td>&nbsp;</td></tr>
									
				<%intDisplayNumber = 3
			
			elseif intNumberOfSelectedJobs > 1 then%>
			
				<input type="hidden" name="apply_1a" value="yes">	
				
			<%end if%>
			
			<!--END QUESTIONNAIRE-->
	
			<tr>
				<td colspan=3 bgcolor="#ffffff">
					<div class="headerwithbackground">
						<%=intDisplayNumber%>. Resume or Profile
					</div>
				</td>
			</tr>
			<tr>
				<td colspan=3>
					<FONT SIZE="1" FACE="HELVETICA,ARIAL,SANS SERIF">* PLEASE PASTE A COPY OF YOUR RESUME OR PROFILE BELOW.</font>
				</td>
			</tr>
			<tr>
				<td colspan=3 align=left>
					<textarea cols="44" rows="6" name="resume_text"><%=resume_text%></textarea>
				</td>
			</tr>
	
			<tr>
				<td colspan=4 align=left>
					<input type="submit" name="submit" value="Apply Now">
				</td>
			</tr>
	
			<tr><td colspan="4">&nbsp;</td></tr>
			
			</table>
		</form>
		</td>
		
	</tr>
	</table>
	
	<!--#include file="includes/footer.asp"-->	

	<%
	if err.number <> 0 then
		Response.Redirect ("error.asp?user_id=" & Request("user_id"))
	end if
	
	if not blnJobCartWasUsed then set objJobInfoRS = nothing
	%>
	
</body>
</html>

<script language="javascript">
	
	function GetDropdownValues()
	{	
		for (var optionIndex = 0; optionIndex < document.frm.media_info.options.length; optionIndex++)
		{
			if (document.frm.media_info.options[optionIndex].value == document.frm.media_info_hidden.value)
			{
				document.frm.media_info.options[optionIndex].selected = true;
				break;
			}
		}
		
		for (var optionIndex = 0; optionIndex < document.frm.State.options.length; optionIndex++)
		{
			if (document.frm.State.options[optionIndex].value == document.frm.State_hidden.value)
			{
				document.frm.State.options[optionIndex].selected = true;
				break;
			}
		}
		
		for (var optionIndex = 0; optionIndex < document.frm.Country.options.length; optionIndex++)
		{
			if (document.frm.Country.options[optionIndex].value == document.frm.Country_hidden.value)
			{
				document.frm.Country.options[optionIndex].selected = true;
				break;
			}
		}
	}
	
	function ValidateForm()
	{
		
		var blnMediaPicked;
		
		blnOtherChosen = true;
		
		if (CheckForSpaces(document.frm.First_Name.value) == "")
		{
			alert("Please enter your First Name");
			document.frm.First_Name.value = "";
         document.frm.First_Name.focus();
         return false;
      }
      

      
      if (CheckForSpaces(document.frm.Last_Name.value) == "")
      {
			alert("Please enter your Last Name");
			document.frm.Last_Name.value = "";
         document.frm.Last_Name.focus();
         return false;
      }
      
      if (CheckForSpaces(document.frm.Home_Phone.value) == "")
      {
			alert("Please enter your Home Phone Number");
			document.frm.Home_Phone.value = "";
         document.frm.Home_Phone.focus();
         return false;
      }
      
      if (CheckForSpaces(document.frm.Work_Phone.value) == "")
      {
			alert("Please enter your Home Work Number");
			document.frm.Work_Phone.value = "";
         document.frm.Work_Phone.focus();
         return false;
      }
		
		if (CheckForSpaces(document.frm.Email.value) == "")
      {
			alert("Please enter your E-mail address.");
			document.frm.Email.value = "";
         document.frm.Email.focus();
         return false;
      }
      
      if (document.frm.Email.value.indexOf("@")==-1 || document.frm.Email.value.indexOf(".")==-1 || document.frm.Email.value.indexOf(" ")!=-1 || document.frm.Email.value.length < 6) 
      {
			alert("Sorry, your email address is not valid.");
         document.frm.Email.focus();
         return false;
      }
		
		
		if (CheckForSpaces(document.frm.Address.value) == "")
      {
			alert("Please enter your address");
			document.frm.Address.value = "";
         document.frm.Address.focus();
         return false;
      }
      
      
		if (CheckForSpaces(document.frm.City.value) == "")
      {
			alert("Please enter the city in which you live");
			document.frm.City.value = "";
         document.frm.City.focus();
         return false;
      }
      
      
      if (document.frm.State.options[document.frm.State.selectedIndex].value == "-1")
		{
			alert("Please enter the state in which you live");
         document.frm.State.focus();
         return false;
		}
		
		if (CheckForSpaces(document.frm.Zip.value) == "")
      {
			alert("Please enter your postal code");
			document.frm.Zip.value = "";
         document.frm.Zip.focus();
         return false;
      }
		
		if (document.frm.Country.options[document.frm.Country.selectedIndex].value == "-1")
		{
			alert("Please enter the country in which you live");
         document.frm.Country.focus();
         return false;
		}
		
		         
      if (document.frm.media_info.options[document.frm.media_info.selectedIndex].value == "")
      {
			alert("Please let us know where you heard about this site.");
         document.frm.media_info.focus();
         return false;
      }
      
		if (document.frm.media_info.options[document.frm.media_info.selectedIndex].value == "6951")
      {
			if(CheckForSpaces(document.frm.Other_Media.value) == "")
         {
				alert("Please let us know where you heard about this site.");
				document.frm.Other_Media.value = "";
            document.frm.Other_Media.focus();
            return false;
         }
      }
      else
      {
			blnOtherChosen = false;
		}
		
		if (document.frm.resume_text.value == "")
		{
			alert("Please paste a copy of your resume.");
			document.frm.resume_text.focus();
			return false;
		}
      
		if (!blnOtherChosen)
		{
			for (var loopIndex = 0; loopIndex < document.frm.media_info.options.length; loopIndex++)
			{
				if (document.frm.media_info.options[loopIndex].selected)
            {
					frm.Other_Media.value  = document.frm.media_info.options[loopIndex].text;
            }               
         }
      }
      
      <%=strJavascript%>	
      
      return true;
      
	}
	
	function CheckForSpaces(strTextIn)
	{	
		var strWorkText;
		var intPointer;
			
		strWorkText = strTextIn;
		intPointer = strWorkText.indexOf(" ");
			
		for (var loopIndex = 0; loopIndex < strTextIn.length; loopIndex++)
		{
			strWorkText = strWorkText.substring(0, intPointer) + strWorkText.substring(intPointer + 1, strWorkText.length);
			intPointer = strWorkText.indexOf(" ", intPointer);
				
			if(intPointer == -1)
			{break;}
		}
		return strWorkText;
	}
	
</script>