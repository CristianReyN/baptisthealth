<!--#include file="includes/local_subs.asp"-->
<!--#include file="includes/IDInclude.asp"-->

<%on error resume next%>

<html>

<!--#include file="includes/head.asp"-->

<script LANGUAGE="javascript">
<!--

function Validate()
	
	{
		if (document.criteria.expertise.value == "")
		{
			alert("Please choose at least one area of expertise");
			document.criteria.expertise.focus();
			return false
		}
		
		if (document.criteria.education.value == "")
		{
			alert("Please enter your education level");
			document.criteria.education.focus();
			return false
		}
		
		if (document.criteria.jobtype.value == "")
		{
			alert("Please select at least one job type preference.");
			document.criteria.jobtype.focus();
			return false
		}


		if (document.criteria.location.value == "")
		{
			alert("Please select at least one location where you would like to work.");
			document.criteria.location.focus();
			return false
		}

		if (document.criteria.compensationf.value == "")
		{
			alert("Please select the low compensation range.");
			document.criteria.compensationf.focus();
			return false
		}

		if (document.criteria.compensationt.value == "")
		{
			alert("Please select the high compensation range.");
			document.criteria.compensationt.focus();
			return false
		}


		var fromValue = document.criteria.compensationf.selectedIndex;
		var toValue = document.criteria.compensationt.selectedIndex;
	
		if(fromValue > toValue)
		{
		alert("Your low compensation cannot be greater than your high compensation");
		//currentForm.compensationt.selectedIndex = 0;
		document.criteria.compensationt.focus();
		return false
		}
		


		if (document.criteria.joblevel.value == "")
		{
			alert("Please select a job level.");
			document.criteria.joblevel.focus();
			return false
		}
		
	
		
		if (document.criteria.percenttravel.value == "")
		{
			alert("Please select the percentage of time you are willing to travel.");
			document.criteria.percenttravel.focus();
			return false
		}


		if (document.criteria.startdate.value == "")
		{
			alert("Please let us know when you will be able to accept a position.");
			document.criteria.startdate.focus();
			return false
		}

		if (document.criteria.refSource.value == "")
		{
			alert("Please let us know where you heard about our career site.");
			document.criteria.refSource.focus();
			return false
		}
		
		if (document.criteria.profilename.value == "")
		{
			alert("Please give this agent a name.");
			document.criteria.profilename.focus();
			return false
		}



		return true
	}
	
 
function selectall()
{
	if (document.criteria.alllocations.checked)
	{
	// Loop through the select box to see how many are selected;
		for (i=0; i<document.criteria.location.length; i++)
		{
			document.criteria.location.options[i].selected = true
			
		}
	}	
	else
	{
		for (i=0; i<document.criteria.location.length; i++)
		{
			document.criteria.location.options[i].selected = false
			
		}
	
	}
}	
	
//-->
</script>



<!--<body topmargin="10" bottommargin="10" leftmargin="10" rightmargin="10" marginwidth="10" marginheight="10" bgcolor="#ffffff" onload="doInit();">//-->

	<!--#include file="includes/header.asp"-->
	
	
			<form name="criteria" id="criteria" onsubmit="return Validate()" action="add_agent_2.asp" method="post"> 
            <input type="hidden" name="user_id" value="<%=Request("user_id")%>">
				<table width="">
					<tr>
                <td vAlign="top" colSpan="3">
                <div class="body">
                  <p class="criteria">Tell us about
                  yourself, so we can locate available positions that may
                  interest you!<br>
                  <ul>
                    <li>An * means that field is
                      required
                    <li>To choose multiple selections, use the Control 
                    key [Windows] or the Command key [Macintosh] when you click 
                    to select or de-select.</li></ul>
                 </div>
                    </td></tr>
              <tr>
                <td valign="top">
                  
                  <div class="subheader">Name This Agent *
                  </div>
                  <input type="text" name="profilename" size="20"><br>
                  
 </td></tr>
              <tr>
                 <td vAlign="middle" colSpan="3">
             
                  <div class="headerwithbackground">
                  Expertise and Education
                  </div>
                 
 				</td></tr>
</center>
              <tr>
                <td vAlign="middle">
                  <p align="left">
                  
                  <div class="subheader">
                  Expertise *<br><select multiple class="options" name="expertise" size=5> 
                 <%GetAgentMultipleOptions HIRING_ORG_ID, "Expertise"%>
                 </select>
                 </div>
                 </p>
 </td>

<center>
                <td width="20" vAlign="middle">&nbsp;</td>
                <td vAlign="top">
                <div class="subheader">
                  Education *
                </div>
                <select class="options" name="education"> <option VALUE="0">Attended High School</option><option VALUE="1">High School Degree</option><option VALUE="2">Some College</option><option VALUE="3">Two-Year Degree</option><option VALUE="4">Four-Year Degree</option><option VALUE="5">Masters Degree</option><option VALUE="6">Doctorate</option></select>
                  <br></td></tr>
              <tr>
                <td vAlign="middle" colSpan="3">
                  <div class="headerwithbackground">
                  Job Type and Location
                  </div>
             
 </td></tr>
</center>
              <tr>
                <td vAlign="middle">
                  <p align="left">
                  <div class="subheader">Job Type
                  </div>
                  <select multiple class="options" name="jobtype" size=5> 
                     
                  <option value="0">Direct
                  <option value="1">Contract
                  <option value="2">Temporary
                  </select>
                  </p>
			
 
 </td>

<center>
                <td width="20" vAlign="middle">&nbsp;</td>
                <td vAlign="middle">
                <div class="subheader">
                 Location
                 </div>
                 <select multiple class="options" name="location" size=5> 
                  <%GetAgentMultipleOptions HIRING_ORG_ID, "CityStates"%>
                 </select> <br clear="all"><input type="checkbox" name="alllocations" onClick="selectall()"><font size=-1>Select All Locations * </font></td></tr>
              <tr>
                <td vAlign="middle" colSpan="3">
                  
                  <div class="headerwithbackground">Job Preferences
                  </div>
 </td></tr>
</center>

<tr>
	<td vAlign="top">
		<div class="subheader">Compensation</div>
		<center>	
		<table border="0" width="" cellpadding="0" cellspacing="0">
		<!--<tr>
			<td width="50%" align="center">
				<div class="subheader">FROM</div>
			</td>
			<td width="50%" align="center">
				<div class="subheader">TO</div>
			</td>
	
		</tr>-->
		<tr>
			<td width="50%">
				<select class="options" name="compensationf"> 
					<option VALUE="0" SELECTED>
						<div class="subheader">ANY</div>
					</option>
					<option VALUE="1">10,000</option><option VALUE="2">15,000</option><option VALUE="3">20,000</option><option VALUE="4">25,000</option><option VALUE="5">30,000</option><option VALUE="6">35,000</option><option VALUE="7">40,000</option><option VALUE="8">45,000</option><option VALUE="9">50,000</option><option VALUE="10">55,000</option><option VALUE="11">60,000</option><option VALUE="12">65,000</option><option VALUE="13">70,000</option><option VALUE="14">75,000</option><option VALUE="15">80,000</option><option VALUE="16">85,000</option><option VALUE="17">90,000</option><option VALUE="18">95,000</option><option VALUE="19">100,000</option><option VALUE="20">110,000</option><option VALUE="21">120,000</option><option VALUE="22">130,000</option><option VALUE="23">140,000</option><option VALUE="24">150,000</option><option VALUE="25">160,000</option><option VALUE="26">170,000</option><option VALUE="27">180,000</option><option VALUE="28">190,000</option><option VALUE="29">200,000</option><option VALUE="30">210,000</option><option VALUE="31">220,000</option><option VALUE="32">230,000</option><option VALUE="33">240,000</option><option VALUE="34">250,000</option><option VALUE="35">300,000+</option>
            </select>
            <font size="2">&nbsp; TO &nbsp;</font>
			<!--</td>
			<td width="50%">-->
				<select class="options" name="compensationt"> 
					<option VALUE="35" SELECTED>
						<div class="subheader">ANY</div>
               </option>
               <option VALUE="1">10,000</option><option VALUE="2">15,000</option><option VALUE="3">20,000</option><option VALUE="4">25,000</option><option VALUE="5">30,000</option><option VALUE="6">35,000</option><option VALUE="7">40,000</option><option VALUE="8">45,000</option><option VALUE="9">50,000</option><option VALUE="10">55,000</option><option VALUE="11">60,000</option><option VALUE="12">65,000</option><option VALUE="13">70,000</option><option VALUE="14">75,000</option><option VALUE="15">80,000</option><option VALUE="16">85,000</option><option VALUE="17">90,000</option><option VALUE="18">95,000</option><option VALUE="19">100,000</option><option VALUE="20">110,000</option><option VALUE="21">120,000</option><option VALUE="22">130,000</option><option VALUE="23">140,000</option><option VALUE="24">150,000</option><option VALUE="25">160,000</option><option VALUE="26">170,000</option><option VALUE="27">180,000</option><option VALUE="28">190,000</option><option VALUE="29">200,000</option><option VALUE="30">210,000</option><option VALUE="31">220,000</option><option VALUE="32">230,000</option><option VALUE="33">240,000</option><option VALUE="34">250,000</option><option VALUE="35">300,000+</option>
            </select> 
			</td>
		</tr>
		</table>
	</td>
	
   <td width="20" vAlign="middle">&nbsp; </td>
                <td vAlign="middle">
                <br>
                <div class="subheader">
                  Job Level *
                </div>
                <select class="options" name="joblevel"> <option VALUE="0">Internship</option><option VALUE="1" SELECTED>Entry-Level</option><option VALUE="2">Mid-Career</option><option VALUE="3">Executive</option><option VALUE="4">Senior Executive</option></select>
                <br></td></tr>
              <tr>
                <td vAlign="middle">
                <div class="subheader">
                    Percent Travel
                </div>
                <select class="options" name="percenttravel"> 
                <option value="0">No Travel
                <option value="1">5%
                <option value="2">10%
                <option value="3">15%
                <option value="4">20%
                <option value="5">25%
                <option value="6">30%
                <option value="7">35%
                <option value="8">40%
                <option value="9">45%
                <option value="10">50%
                <option value="11">55%
                <option value="12">60%
                <option value="13">65%
                <option value="14">70%
                <option value="15">75%
                <option value="16">80%
                <option value="17">85%
                <option value="18">90%
                <option value="19">95%
                <option value="20">No Limit
                </option></select></td>
                <td width="20" vAlign="middle">&nbsp;<br></td>
                <td vAlign="middle">
                <div class="subheader">
                  Start Date
                </div>
                <select class="options" name="startdate"> <option VALUE="0" SELECTED>Immediately</option><option VALUE="1">Within 30 days</option><option VALUE="2">Within 60 days</option><option VALUE="3">Within 70 days</option><option VALUE="4">Within 120 days</option><option VALUE="5">Within 120+ days</option></select> 
                  
				<br></td></tr>
              <tr>
                <td vAlign="top" colspan=2>
                <div class="subheader">Referral 
                  Source *
                </div>
                <select multiple class="options" name="refSource" size=5>
                <% 'Response.Write GetEmedia(job_id) 
                GetAgentMultipleOptions HIRING_ORG_ID, "Emedia"%>
                                      <option value="-1">Other</option>
                                        </select></td>
               
           </tr>
              <tr>
                <td vAlign="top" colSpan="3">
                  
                  <div class="headerwithbackground">
                  Keywords
                  </div>
 </td></tr>
              <tr>
                <td vAlign="top" colSpan="3">
                <div class="subheader">Search
                  Hints 
                 </div>
                 <div class="body">Enter any 
                  &quot;keywords&quot; to help us find jobs that more closely match your 
                  needs. Don't enter wildcards (* or &amp;). We'll display jobs 
                  for you that contain whole or partial word matches to any or 
                  all of these keywords in Job ID, Job Title, and/or Job 
                  Description.</div><br>
                  
                  <p><textarea name="keywordstext" rows="3" cols="50"></textarea> 
                  
                </p></td></tr></tbody></table>
              <p align="center"><input type="submit" id=submit1 name=submit1>  &nbsp;<input type="reset" id=reset1 name=reset1>
</form>
<p>&nbsp;

	  
	  
<!--#include file="includes/footer.asp"-->

	<%
	if err.number <> 0 then
		Response.Redirect ("error.asp?user_id=" & Request("user_id"))
	end if
	%>

</body>

</html>