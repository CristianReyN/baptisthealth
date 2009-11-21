<!--#include file="includes/local_subs.asp"-->
<!--#include file="includes/IDInclude.asp"-->


<html>
<%
on error resume next

strCurrentURL = Request.ServerVariables("HTTP_Referer")
if len(request("user_id"))<1 then
Response.Redirect ("car_main.asp")
end if%>
<%

CONST strAgentMode = "edit"

Dim RsAgent
Set RsAgent = Server.CreateObject("adodb.recordset")
Set RsAgent = GetUserAgent(clng(intcontactID), clng(Request("agent")))

%> 

<!--#include file="includes/head.asp"-->

<SCRIPT LANGUAGE=javascript>
<!--

function Validate(thisForm)
	
	{
		if (criteria.profilename.value == "")
		{
			alert("Please give this profile a name.");
			criteria.profilename.focus();
			return false
		}

		if (criteria.expertise.value == "")
		{
			alert("Please choose at least one area of expertise");
			criteria.expertise.focus();
			return false
		}
		
		if (criteria.education.value == "")
		{
			alert("Please enter your education level");
			criteria.education.focus();
			return false
		}
		
		if (criteria.jobtype.value == "")
		{
			alert("Please select at least one job type preference.");
			criteria.jobtype.focus();
			return false
		}


		if (criteria.location.value == "")
		{
			alert("Please select at least one location where you would like to work.");
			criteria.location.focus();
			return false
		}

		if (criteria.compensationf.value == "")
		{
			alert("Please select the low compensation range.");
			criteria.compensationf.focus();
			return false
		}

		if (criteria.compensationt.value == "")
		{
			alert("Please select the high compensation range.");
			criteria.compensationt.focus();
			return false
		}

		var fromValue = criteria.compensationf.selectedIndex;
		var toValue = criteria.compensationt.selectedIndex;
	
		if(fromValue > toValue && fromValue!=0 && toValue!= 0)
		{
		alert("Your low compensation cannot be greater than your high compensation");
		//currentForm.compensationt.selectedIndex = 0;
		criteria.compensationt.focus();
		return false
		}
	
		
		if (criteria.joblevel.value == "")
		{
			alert("Please select a job level.");
			criteria.joblevel.focus();
			return false
		}
		
	
		
		if (criteria.percenttravel.value == "")
		{
			alert("Please select the percentage of time you are willing to travel.");
			criteria.percenttravel.focus();
			return false
		}


		if (criteria.startdate.value == "")
		{
			alert("Please let us know when you will be able to accept a position.");
			criteria.startdate.focus();
			return false
		}

		if (criteria.refSource.value == "")
		{
			alert("Please let us know where you heard about our career site.");
			criteria.refSource.focus();
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
</SCRIPT>



<!--<body topmargin="10" bottommargin="10" leftmargin="10" rightmargin="10" marginwidth="10" marginheight="10" bgcolor="#ffffff" onload="doInit();">//-->
	
	<!--#include file="includes/header.asp"-->
	
	
         
				
						<form name="criteria" id="criteria" onsubmit="return Validate()" action="edit_agent_2.asp" method="post"> 
		            <input type = hidden name=user_id value=<%=Request("user_id")%>>
		            <input type = hidden name=agent_id value=<%=RsAgent("iq_Agent_ID")%>>
						<table width="400"><tr>
		                <td vAlign="top" colSpan="3">
		                <div class="body">
		                  <p align="center" class="criteria">Please make any changes to this agent and press submit to update.<br>
		                  <ul>
		                    <li>An * means that field is
		                      required
		                    <li>To choose multiple selections, use the Control 
		                    key [Windows] or the Command key [Macintosh] when you click 
		                    to select or de-select.</li></ul>
		                 </div>
		                    </td></tr>
		              <tr>                
		                <td vAlign="middle" colSpan="3">
		                  <div class="headerwithbackground">
		                  Profile Name *
		                  </div>
		                 
		 				</td></tr>
		              <tr>
		                <td valign="top">
		                  <input type="text" name=profilename size="20" value="<%=trim(rsagent("iq_Agent_Name"))%>"><br>
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
		                  Expertise *<br><select multiple class="options" name="expertise"> 
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
		                <select class="options" name="education"> 
		                <OPTION VALUE=0 <%If RsAgent("iq_education_id") = 0 Then Response.Write " SELECTED"%>>Attended High School</OPTION>
		                <OPTION VALUE=1 <%If RsAgent("iq_education_id") = 1 Then Response.Write " SELECTED"%>>High School Degree</OPTION>
		                <OPTION VALUE=2 <%If RsAgent("iq_education_id") = 2 Then Response.Write " SELECTED"%>>Some College</OPTION>
		                <OPTION VALUE=3 <%If RsAgent("iq_education_id") = 3 Then Response.Write " SELECTED"%>>Two-Year Degree</OPTION>
		                <OPTION VALUE=4 <%If RsAgent("iq_education_id") = 4 Then Response.Write " SELECTED"%>>Four-Year Degree</OPTION>
		                <OPTION VALUE=5 <%If RsAgent("iq_education_id") = 5 Then Response.Write " SELECTED"%>>Masters Degree</OPTION>
		                <OPTION VALUE=6 <%If RsAgent("iq_education_id") = 6 Then Response.Write " SELECTED"%>>Doctorate</OPTION>
		                </select>
		                  <br></td></tr>
		              <tr>
		                <td vAlign="middle" colSpan="3">
		                  <div class="headerwithbackground">
		                  Job Type and Location
		                  </div>
		                  
		 </td></tr>
		</center>
		              <tr>
		                <td vAlign="top">
		                  <p align="left">
		                  <div class="subheader">Job Type Preferences *
		                  </div>
		               
		               
		                  <select multiple class="options" name="jobtype">
		                   
		                  <option value=0 <%LoopThroughJobType RsAgent("iq_Agent_ID"),0%>>Direct</option>
		                  <option value=1 <%LoopThroughJobType RsAgent("iq_Agent_ID"),1%>>Contract</option>
		                  <option value=2 <%LoopThroughJobType RsAgent("iq_Agent_ID"),2%>>Temporary</option>

		                  </select></p>
		 </td>

		<center>
		                <td width="20" vAlign="middle">&nbsp;</td>
		                <td vAlign="top">
		                <div class="subheader">
		                 Location
		                 </div>
		                 <select multiple class="options" name="location" size="6"> 
		                  <%GetAgentMultipleOptions HIRING_ORG_ID, "CityStates"%>
		                 </select><br><input type=checkbox name="alllocations" onClick="selectall()"><font face="arial" size="1">Select All Locations * </font></td></tr>
		              <tr>
		                <td vAlign="middle" colSpan="3">
		                  <div class="headerwithbackground">Job Preferences
		                  </div>
		 </td></tr>
		</center>
		              <tr>
		                <td vAlign="top">
		                  
		                  <div class="subheader">
		                  Compensation 
						  </div>
		<center>	
		 <table border="0" width="100%">
		  
		  
		  <tr>
		    <td width="33%"><select class="options" name="compensationf"> 
								<OPTION VALUE=0 <%GetComp"f",0%>>
								ANY
								</OPTION>
								<OPTION VALUE=1 <%GetComp"f",1%>>10,000</OPTION>
								<OPTION VALUE=2 <%GetComp"f",2%>>15,000</OPTION>
								<OPTION VALUE=3 <%GetComp"f",3%>>20,000</OPTION>
								<OPTION VALUE=4 <%GetComp"f",4%>>25,000</OPTION>
								<OPTION VALUE=5 <%GetComp"f",5%>>30,000</OPTION>
								<OPTION VALUE=6 <%GetComp"f",6%>>35,000</OPTION>
								<OPTION VALUE=7 <%GetComp"f",7%>>40,000</OPTION>
								<OPTION VALUE=8 <%GetComp"f",8%>>45,000</OPTION>
								<OPTION VALUE=9 <%GetComp"f",9%>>50,000</OPTION>
								<OPTION VALUE=10 <%GetComp"f",10%>>55,000</OPTION>
								<OPTION VALUE=11 <%GetComp"f",11%>>60,000</OPTION>
								<OPTION VALUE=12 <%GetComp"f",12%>>65,000</OPTION>
								<OPTION VALUE=13 <%GetComp"f",13%>>70,000</OPTION>
								<OPTION VALUE=14 <%GetComp"f",14%>>75,000</OPTION>
								<OPTION VALUE=15 <%GetComp"f",15%>>80,000</OPTION>
								<OPTION VALUE=16 <%GetComp"f",16%>>85,000</OPTION>
								<OPTION VALUE=17 <%GetComp"f",17%>>90,000</OPTION>
								<OPTION VALUE=18 <%GetComp"f",18%>>95,000</OPTION>
								<OPTION VALUE=19 <%GetComp"f",19%>>100,000</OPTION>
								<OPTION VALUE=20 <%GetComp"f",20%>>110,000</OPTION>
								<OPTION VALUE=21 <%GetComp"f",21%>>120,000</OPTION>
								<OPTION VALUE=22 <%GetComp"f",22%>>130,000</OPTION>
								<OPTION VALUE=23 <%GetComp"f",23%>>140,000</OPTION>
								<OPTION VALUE=24 <%GetComp"f",24%>>150,000</OPTION>
								<OPTION VALUE=25 <%GetComp"f",25%>>160,000</OPTION>
								<OPTION VALUE=26 <%GetComp"f",26%>>170,000</OPTION>
								<OPTION VALUE=27 <%GetComp"f",27%>>180,000</OPTION>
								<OPTION VALUE=28 <%GetComp"f",28%>>190,000</OPTION>
								<OPTION VALUE=29 <%GetComp"f",29%>>200,000</OPTION>
								<OPTION VALUE=30 <%GetComp"f",30%>>210,000</OPTION>
								<OPTION VALUE=31 <%GetComp"f",31%>>220,000</OPTION>
								<OPTION VALUE=32 <%GetComp"f",32%>>230,000</OPTION>
								<OPTION VALUE=33 <%GetComp"f",33%>>240,000</OPTION>
								<OPTION VALUE=34 <%GetComp"f",34%>>250,000</OPTION>
								<OPTION VALUE=35 <%GetComp"f",35%>>300,000+</OPTION>
		                   </select>
		    
		    <font size="2">&nbsp; TO &nbsp;</font>
		    <select class="options" name="compensationt"> 
		                   <OPTION VALUE=35 <%GetComp"t",0%>>
		                   ANY
		                        <OPTION VALUE=1 <%GetComp"t",1%>>10,000</OPTION>
								<OPTION VALUE=2 <%GetComp"t",2%>>15,000</OPTION>
								<OPTION VALUE=3 <%GetComp"t",3%>>20,000</OPTION>
								<OPTION VALUE=4 <%GetComp"t",4%>>25,000</OPTION>
								<OPTION VALUE=5 <%GetComp"t",5%>>30,000</OPTION>
								<OPTION VALUE=6 <%GetComp"t",6%>>35,000</OPTION>
								<OPTION VALUE=7 <%GetComp"t",7%>>40,000</OPTION>
								<OPTION VALUE=8 <%GetComp"t",8%>>45,000</OPTION>
								<OPTION VALUE=9 <%GetComp"t",9%>>50,000</OPTION>
								<OPTION VALUE=10 <%GetComp"t",10%>>55,000</OPTION>
								<OPTION VALUE=11 <%GetComp"t",11%>>60,000</OPTION>
								<OPTION VALUE=12 <%GetComp"t",12%>>65,000</OPTION>
								<OPTION VALUE=13 <%GetComp"t",13%>>70,000</OPTION>
								<OPTION VALUE=14 <%GetComp"t",14%>>75,000</OPTION>
								<OPTION VALUE=15 <%GetComp"t",15%>>80,000</OPTION>
								<OPTION VALUE=16 <%GetComp"t",16%>>85,000</OPTION>
								<OPTION VALUE=17 <%GetComp"t",17%>>90,000</OPTION>
								<OPTION VALUE=18 <%GetComp"t",18%>>95,000</OPTION>
								<OPTION VALUE=19 <%GetComp"t",19%>>100,000</OPTION>
								<OPTION VALUE=20 <%GetComp"t",20%>>110,000</OPTION>
								<OPTION VALUE=21 <%GetComp"t",21%>>120,000</OPTION>
								<OPTION VALUE=22 <%GetComp"t",22%>>130,000</OPTION>
								<OPTION VALUE=23 <%GetComp"t",23%>>140,000</OPTION>
								<OPTION VALUE=24 <%GetComp"t",24%>>150,000</OPTION>
								<OPTION VALUE=25 <%GetComp"t",25%>>160,000</OPTION>
								<OPTION VALUE=26 <%GetComp"t",26%>>170,000</OPTION>
								<OPTION VALUE=27 <%GetComp"t",27%>>180,000</OPTION>
								<OPTION VALUE=28 <%GetComp"t",28%>>190,000</OPTION>
								<OPTION VALUE=29 <%GetComp"t",29%>>200,000</OPTION>
								<OPTION VALUE=30 <%GetComp"t",30%>>210,000</OPTION>
								<OPTION VALUE=31 <%GetComp"t",31%>>220,000</OPTION>
								<OPTION VALUE=32 <%GetComp"t",32%>>230,000</OPTION>
								<OPTION VALUE=33 <%GetComp"t",33%>>240,000</OPTION>
								<OPTION VALUE=34 <%GetComp"t",34%>>250,000</OPTION>
								<OPTION VALUE=35 <%GetComp"t",35%>>300,000+</OPTION>
		                   
		                   
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
		                <select class="options" name="joblevel"> 
		                <OPTION VALUE=0 <% If RsAgent("iq_Job_Level_ID")= 0 Then response.write " SELECTED"%>>Internship</OPTION>
		                <OPTION VALUE=1 <% If RsAgent("iq_Job_Level_ID")= 1 Then response.write " SELECTED"%>>Entry-Level</OPTION>
		                <OPTION VALUE=2 <% If RsAgent("iq_Job_Level_ID")= 2 Then response.write " SELECTED"%>>Mid-Career</OPTION>
		                <OPTION VALUE=3 <% If RsAgent("iq_Job_Level_ID")= 3 Then response.write " SELECTED"%>>Executive</OPTION>
		                <OPTION VALUE=4 <% If RsAgent("iq_Job_Level_ID")= 4 Then response.write " SELECTED"%>>Senior Executive</OPTION></select>
		                <br></td></tr>
		              <tr>
		                <td vAlign="middle">
		                <div class="subheader">
		                    Percent Travel
		                </div>
		                <select class="options" name="percenttravel"> 
							<option value=0 <% If RsAgent("iq_Percent_Travel_ID")= 0 Then response.write " SELECTED"%>>No Travel</option>
		                    <option value=1 <% If RsAgent("iq_Percent_Travel_ID")= 1 Then response.write " SELECTED"%>>5%</option>
		                    <option value=2 <% If RsAgent("iq_Percent_Travel_ID")= 2 Then response.write " SELECTED"%>>10%</option>
		                    <option value=3 <% If RsAgent("iq_Percent_Travel_ID")= 3 Then response.write " SELECTED"%>>15%</option>
		                    <option value=4 <% If RsAgent("iq_Percent_Travel_ID")= 4 Then response.write " SELECTED"%>>20%</option>
		                    <option value=5 <% If RsAgent("iq_Percent_Travel_ID")= 5 Then response.write " SELECTED"%>>25%</option>
		                    <option value=6 <% If RsAgent("iq_Percent_Travel_ID")= 6 Then response.write " SELECTED"%>>30%</option>
		                    <option value=7 <% If RsAgent("iq_Percent_Travel_ID")= 7 Then response.write " SELECTED"%>>35%</option>
		                    <option value=8 <% If RsAgent("iq_Percent_Travel_ID")= 8 Then response.write " SELECTED"%>>40%</option>
		                    <option value=9 <% If RsAgent("iq_Percent_Travel_ID")= 9 Then response.write " SELECTED"%>>45%</option>
		                    <option value=10 <% If RsAgent("iq_Percent_Travel_ID")=10 Then response.write " SELECTED"%>>50%</option>
		                    <option value=11 <% If RsAgent("iq_Percent_Travel_ID")= 11 Then response.write " SELECTED"%>>55%</option>
		                    <option value=12 <% If RsAgent("iq_Percent_Travel_ID")= 12 Then response.write " SELECTED"%>>60%</option>
		                    <option value=13 <% If RsAgent("iq_Percent_Travel_ID")= 13 Then response.write " SELECTED"%>>65%</option>
		                    <option value=14 <% If RsAgent("iq_Percent_Travel_ID")= 14 Then response.write " SELECTED"%>>70%</option>
		                    <option value=15 <% If RsAgent("iq_Percent_Travel_ID")= 15 Then response.write " SELECTED"%>>75%</option>
		                    <option value=16 <% If RsAgent("iq_Percent_Travel_ID")= 16 Then response.write " SELECTED"%>>80%</option>
		                    <option value=17 <% If RsAgent("iq_Percent_Travel_ID")= 17 Then response.write " SELECTED"%>>85%</option>
		                    <option value=18 <% If RsAgent("iq_Percent_Travel_ID")= 18 Then response.write " SELECTED"%>>90%</option>
		                    <option value=19 <% If RsAgent("iq_Percent_Travel_ID")= 19 Then response.write " SELECTED"%>>95%</option>
		                    <option value=20 <% If RsAgent("iq_Percent_Travel_ID")= 20 Then response.write " SELECTED"%>>No Limit</option>
		                    </select></td>
		                <td width="20" vAlign="middle">&nbsp;<br></td>
		                <td vAlign="middle">
		                <div class="subheader">
		                  Start Date
		                </div>
		                <select class="options" name="startdate">
		                <OPTION VALUE=0>Immediately</OPTION>
		                <OPTION VALUE=1 <% If RsAgent("iq_Start_Date_ID")= 1 Then response.write " SELECTED"%>>Within 30 days</OPTION>
		                <OPTION VALUE=2 <% If RsAgent("iq_Start_Date_ID")= 2 Then response.write " SELECTED"%>>Within 60 days</OPTION>
		                <OPTION VALUE=3 <% If RsAgent("iq_Start_Date_ID")= 3 Then response.write " SELECTED"%>>Within 70 days</OPTION>
		                <OPTION VALUE=4 <% If RsAgent("iq_Start_Date_ID")= 4 Then response.write " SELECTED"%>>Within 120 days</OPTION>
		                <OPTION VALUE=5 <% If RsAgent("iq_Start_Date_ID")= 5 Then response.write " SELECTED"%>>Within 120+ days</OPTION>
		                </select> 
		                  
						<br></td></tr>
		              <tr>
		                <td vAlign="top" colspan=2>
		                <div class="subheader">Referral 
		                  Source *
		                </div>
		                <select multiple class="options" name="refSource">
		                <%GetAgentMultipleOptions HIRING_ORG_ID, "Emedia"%>
		                                      <option value = -1>Other</option>
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
		                 <div class="body">Edit your
		                  &quot;keywords&quot; to help us find jobs that more closely match your 
		                  needs. Don't enter wildcards (* or &amp;). We'll display jobs 
		                  for you that contain whole or partial word matches to any or 
		                  all of these keywords in Job ID, Job Title, and/or Job 
		                  Description. </div><br>
		                  
		                  <%
		                  Dim strKeywords
		                  If len(rsagent("iq_keywords"))>1 Then
								'strKeywords = Trim(Mid(rsagent("iq_keywords"),2,len(rsagent("iq_keywords"))-2))
								strKeywords = rsagent("iq_keywords")
								Response.Write "<input type=hidden name=oldkw value=y>"
		                  End If
		                  %>   
		                  
		                  <p><textarea name="keywordstext" rows="3" cols="50"><%=strkeywords%></textarea> 
		                  
		                </p></td></tr></tbody></table>
		              <p align="center"><input type=submit id=submit1 name=submit1>  &nbsp;<input type=reset id=reset1 name=reset1>
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




              