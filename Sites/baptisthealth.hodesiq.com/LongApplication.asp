<!--#include file="includes/local_subs.asp"-->
<!--#include file="includes/head.asp"-->
<!--#include file="includes/header.asp"-->

<%
	Dim strAppIDs
	Dim strFirstName
	Dim strMidName
	Dim strLastName
	Dim strStreet
	Dim strCity
	Dim strZip
	Dim strEmail
	Dim strHomePhone
	Dim strState
	Dim strErrorFindingUser
	Dim strJobsHTML
	Dim strHideJobs
	
	strAppIDs = Request.QueryString("AppID").Item

	If strAppIDs <> "" Then
		Call ViewApplicant(strAppIDs)
	End If
%>

<style>

body {
	font-family: Geneva, Arial, Helvetica, san-serif;
	font-size: 7pt;
	font-style: normal;
	font-weight: normal;
	color: #000000;
}
b {
	font-family: Geneva, Arial, Helvetica, san-serif;
	font-size: 7pt;
	font-style: normal;
	font-weight: normal;
	color: #000000;
}
.smalltext {
	font-family: Geneva, Arial, Helvetica, san-serif;
	font-size: 8pt;
	font-style: normal;
	font-weight: normal;
	color: #000000;
}
.smallertext {
	font-family: Geneva, Arial, Helvetica, san-serif;
	font-size: 7pt;
	font-style: normal;
	font-weight: normal;
	color: #000000;
}
.smalltextb {
	font-family: Geneva, Arial, Helvetica, san-serif;
	font-size: 8pt;
	font-style: bold;
	font-weight: bold;
	color: #000000;
}

</style>

<form name='frmLongApp' OnSubmit="return SubmitForm()" method='Post' action='WriteXml.asp'>
<%=strHideJobs%>
<input type='hidden' name='hidAppID' value='<%=Request.QueryString("AppID").Item%>'>
<input type='hidden' name='showhidStillEmployeed' value=''>
<td width="100%" height="3484" valign="top"> 
			<table width="100%" border="0" cellpadding="1" cellspacing="1">
				<tr>
					<td>
						<%=strErrorFindingUser%>
					</td>
				</tr>
        <tr> 
           <td height="5%" colspan="5" align="center"> <p class="smalltextb">THIS IS A SECURED SITE</p></td>
        </tr>			
        <tr><td height='5'></td></tr>
        <tr><td><p class="smalltextb">List of jobs applied for</p></td></tr>
				<%=strJobsHTML%>
				<tr><td height='5'></td></tr>
        <tr> 
                                    <td height="5%" colspan="5"> <p class="smalltextb">Fields 
                                        in bold are required</font></p></td>
                                  </tr>
                                  <tr> 
                                    <td height="1%"> <p class="smalltextb">Social 
                                        Security Number</font></td>
                                    <td><p class="smalltext">&nbsp;</font></td>
                                    <td colspan="3">
                                    <p class="smalltext">&nbsp;</font></td>
                                  </tr>
                                  <tr> 
                                    <td height="2%"> <p class="smalltext"> 
                                        <input name="txtSSN" type="text" value="" id="Social_Security"></font> 
                                    </td>
                                    <td><p class="smalltext">&nbsp;</font></td>
                                    <td colspan="3"><p class="smalltext">&nbsp;</font></td>
                                  </tr>
                                  <tr> 
                                    
          <td width="21%" valign="top"> 
            <p class="smalltextb">First Name</font></p></td>
          <td width="25%" valign="top">
                                      
            <p class="smalltext">Middle Name</font></p></td>
                                    
          <td colspan="3" valign="top">
                                      
            <p class="smalltextb">Last Name</font></p></td>
                                  </tr>
                                  <tr> 
                                    <td height="2%"><font size="-2"> 
                                      <input name="txtFirstName" id="First_Name" type="text" value="<%=strFirstName%>">
                                      </font></td>
                                    <td><font size="-2"> 
                                      <input name="txtMidName" id="Middle_Name" type="text" value="<%=strMidName%>">
                                      </font></td>
                                    <td colspan="3"><font size="-2"> 
                                      <input name="txtLastName" id="Last_Name" type="text" value="<%=strLastName%>">
                                      </font></td>
                                  </tr>
                                  <tr> 
                                    <td height="2%"> 
                                      <p class="smalltextb">Street Address</font> 
                                   <td class="smalltextb">County</td>
                                    <td colspan="3" class="smalltextb">City</td>
                                  </tr>
                                  <tr> 
                                    <td height="2%"><font size="-2"> 
                                      <input name="txtAddress" id="Address" type="text" value="<%=strStreet%>">
                                      </font></td>
                                    <td><font size="-2"> 
                                      <input name="txtCounty" id="County" type="text" value="">
                                      </font></td>
                                    <td colspan="3"><font size="-2"> 
                                      <input name="txtCity" id="City" type="text" value="<%=strCity%>">
                                      </font></td>
                                  </tr>
                                  <tr> 
                                    <td height="1%" class="smalltextb">State</td>
                                    <td class="smalltextb">Zip</td>
                                    <td colspan="3"><p class="smalltextb">Home 
                                        Phone</font></td>
                                  </tr>
                                  <tr> 
                                    <td height="2%"><font size="-2"> 
																			<select name='selState' size='-2'>
																			<%=GetStateList(strState, True)%>
																			</select>
                                      </font></td>
                                    <td><font size="-2"> 
                                      <input name="txtZip" id="Zip_Code" type="text" value="<%=strZip%>">
                                      </font></td>
                                    <td colspan="3"><font size="-2"> 
                                      <input name="txtHomePhone" id="Home_Phone" type="text" value="<%=strHomePhone%>">
                                      </font></td>
                                  </tr>
                                  <tr> 
                                    <td height="1%" valign="top"><p class="smalltext">Alternative 
                                        Phone</font></td>
                                    <td valign="top"><p class="smalltextb">Email 
                                        Address</font></td>
                                    <td colspan="3"><font size="-2">&nbsp;</font></td>
                                  </tr>
                                  <tr> 
                                    <td height="2%"><font size="-2"> 
                                      <input name="txtOtherPhone" id="Other_Phone" type="text" value="">
                                      </font></td>
                                    <td><font size="-2"> 
                                      <input name="txtEmailAddress" id="Email" type="text" value="<%=strEmail%>">
                                      <br>
                                      Click <a href="http://www.hotmail.com" target="other">here</a> to set up a FREE email address.
                                      </font></td>
                                    <td colspan="3"><font size="-2">&nbsp;</font></td>
                                  </tr>
                                  <tr> 
                                    <td height="18%" colspan="2" valign="top"> 
                                      <p class="smalltextb">Has your name legally 
              changed in the last ten years?</font>&nbsp; <br>
              <input type="radio" name="radNameChange" value="Yes">
              Yes 
              <input type="radio" name="radNameChange" value="No">
              No<br>
              Former name(s): <br>
              <textarea name="txtFormerName" cols="50"></textarea></font>
<p class='breakhere'></p>
              </td>
                                    <td colspan="3"></p></td>
                                  </tr>
                                  <!--
                                  <tr valign="top"> 
                                    <td height="4%" colspan="5"> <p> 
                                      <p class="smalltext">Where did you first 
                                        see this position? 
                                        <select name="selEmedia">
                                          <option value="">Please select</option>
                                          <option value="Advertisement">Advertisement</option>
                                          <option value="Job Posting">Job Posting</option>
                                        </select></font>
                                        </p></td>
                                  </tr>
                                  -->
                                  <tr> 
                                    <td height="1%" colspan="5"> <p class="smalltext">If 
                                        a Baptist Health employee referred you, 
                                        please indicate employee's name </font></td>
                                  </tr>
                                  <tr> 
                                    <td height="4%" colspan="2"> <p class="smalltext">Name 
                                        of employee 
                                        <input name="txtReferrerName" type="text" value="" size="45"></font> 
                                    </td>
                                    <td colspan="3"><p> 
                                      <p class="smalltext">Department 
                                        <input name="txtDept" type="text" value=""></font> 
                                      </p></td>
                                  </tr>
                                  <tr> 
                                    <td height="1%" colspan="5"> <p class="smalltext">If 
                                        you were referred by a school, please 
                                        indicate name of school</td>
                                  </tr>
                                  <tr> 
                                    <td height="2%" colspan="5"> <p class="smalltext"> 
                                        <input name="txtSchoolReferring" type="text" value="" size="45"></font> 
                                    </td>
                                  </tr>
                                  <tr> 
                                    
          <td colspan="2" rowspan="3" valign="top"> 
            <p class="smalltext">Have you resided in another state within the 
              last 7 years? </font> </td>
                                    <td width="28%" rowspan="3" valign="top"> 
                                      <span class="smalltext"> 
                                        <input type="radio" name="radPast7Years" value="Yes">
                                        Yes 
                                        <input type="radio" name="radPast7Years" value="No">
                                        No</span></font><br><span class="smallertext">&nbsp;&nbsp;If yes, enter<br>&nbsp;&nbsp;county and state</span></td>
                                    <td width="9%"> <p class="smalltext">
                                        <input name="txtCounty7Years_1" type="text" value="County" size="10">
                                      
                                      </td>
                                    <td width="17%" valign="top">
																			<select name="selState7Years_1">
																				<%=GetStateList("", False)%>
                                      </select>
                                    </td>
                                  </tr>
                                  <tr> 
                                    <td><input name="txtCounty7Years_2" type="text" value="County" size="10"></td>
                                    <td width="17%"><select name="selState7Years_2">
																				<%=GetStateList("", False)%>
                                      </select></td>
                                  </tr>
                                  <tr> 
                                    <td><input name="txtCounty7Years_3" type="text" value="County" size="10"></td>
                                    <td width="17%">
																			<select name="selState7Years_3">
																				<%=GetStateList("", False)%>
	                                    </select></td>
                                  </tr>
                                  <tr> 
                                    <td height="1%" colspan="2"> <p class="smalltext">Do 
                                        you have relatives employed at Baptist Health?</font></td>
                                    <td colspan="3"><p class="smalltext"> 
                                        <input type="radio" name="radRelativesWithBaptist" value="Yes">
                                        Yes 
                                        <input type="radio" name="radRelativesWithBaptist" value="No">
                                        No</font></td>
                                  </tr>
                                  <tr> 
                                    <td height="1%" colspan="2"> <p class="smalltext">What 
                                        is your availability?</font></td>
                                    <td colspan="3"><font size="-2">&nbsp;</font></td>
                                  </tr>
                                  <tr> 
                                    <td height="3%"> <p class="smalltext"> 
                                        <input type="checkbox" name="radAvailability" value="Full time">
                                        <span class="smalltext">Full time</span> 
                                        <br>
                                        <input type="checkbox" name="radAvailability" value="Part time">
                                        Part time </font></font> </td>
                                    <td><p class="smalltext"> 
                                        <input type="checkbox" name="radAvailability" value="PRN">
                                        PRN</font></font> <br>
                                        <input type="checkbox" name="radAvailability" value="Other">
                                        Other </font></td>
                                    <td colspan="3">&nbsp;</font></td>
                                  </tr>
                                  <tr> 
                                    <td height="2%"> <p class="smalltext">Hours 
                                        and days available </font></td>
                                    <td><p class="smalltext"> 
                                        <input type="text" name="txtAvailability_Hours_Days"></font> 
                                    </td>
                                    <td colspan="3"><font size="-2">&nbsp;</font></td>
                                  </tr>
                                  <tr> 
                                    <td height="2%"> <p class="smalltext">Date 
                                        available to start </font></td>
                                    <td><p class="smalltext"> 
                                        <input type="text" name="txtAvailability_Start_Date"></font> 
                                    </td>
                                    <td colspan="3"><font size="-2">&nbsp;</font></td>
                                  </tr>
                                  <tr> 
                                    <td height="2%"> <p class="smalltext">Salary 
                                        requirements </font></td>
                                    <td><p class="smalltext"> 
                                        <input type="text" name="txtSalaryRequirements"></font> 
                                    </td>
                                    <td colspan="3"><font size="-2">&nbsp;</font></td>
                                  </tr>
                                  <tr> 
                                    <td height="27%" colspan="5"> <p> 
                                      <p class="smalltext">Have you ever been 
                                        employed at any Baptist Health Facility? 
                                        <input type="radio" name="radEverEmployeedWithBaptist" value="Yes">
                                        Yes 
                                        <input type="radio" name="radEverEmployeedWithBaptist" value="No">
                                        No </font></p></td>
                                  </tr>
                                </table>
                              
      <table width="98%" border="0" cellpadding="1" cellspacing="1" bordercolor="#CCCCCC">
        <tr> 
                                  <td width="2%" rowspan="15" bgcolor="#003399"> 
                                    <p align="center"><font face="Verdana, Arial, Helvetica, sans-serif"><strong><font color="#FFFFFF">M<br>
                                      O<br>
                                      S<br>
                                      T<br>
                                      </font></strong></font></p>
                                    <p align="center"><font color="#FFFFFF"><strong><font face="Verdana, Arial, Helvetica, sans-serif">R<br>
                                      E<br>
                                      C<br>
                                      E<br>
                                      N<br>
                                      T</font></strong></font><font face="Verdana, Arial, Helvetica, sans-serif"><strong> 
                                      </strong></font></p></td>
                                  <td height="6%" colspan="4" bgcolor="#003399"><font color="#FFFFFF" face="Verdana, Arial, Helvetica, sans-serif"><strong>EMPLOYMENT 
                                    HISTORY</strong></font></td>
                                </tr>
                                <tr> 
                                  <td height="7%" colspan="4"> <p class="smalltext">Company </font>
                                      <font size="-2"> 
                                      <input name="txtEmpHistCo_1" type="text" size="75" id="Employer_name">
                                      </font></font></td>
                                </tr>
                                <tr> 
                                  <td width="25%" height="11%" valign="top"> <p class="smalltext">City </font>
                                      <font size="-2"> 
                                      <input type="text" name="txtEmpHistCity_1" id="Employer_city">
                                      </font> </td>
                                  <td width="9%" valign="top"> <p class="smalltext">State</font><font size="-2"><br>
                                      <select name="txtEmpHistState_1" size="1" id="Employer_State">
																				<%=GetStateList("", False)%>
                                      </select>
                                      </font></td>
                                  <td width="10%" valign="top"> <p class="smalltext">Zip</font><font size="-2"><br>
                                      <input name="txtEmpHistZip_1" type="text" size="10" id="Employer_Zip">
                                      </font></td>
                                  <td width="54%" valign="top"> <p class="smalltext">Phone 
                                      Number</font><font size="-2"><br>
                                      <input name="txtEmpHistPhone_1" type="text" size="15" id="Employer_phone">
                                      </font> </td>
                                </tr>
                                <tr> 
                                  <td height="10%"> <p class="smalltext">Job Title<font size="-2"> 
                                      <input type="text" name="txtEmpHistJobTitle_1" id="Job_title">
                                      </font></td>
                                  <td colspan="3"><TABLE width="473" align="left" cellPadding=0 cellSpacing=0>
                                      <TBODY>
                                        <TR> 
                                          <TD align=left width=159> <P class=smalltext><font size="-2">From 
                                              Mo. 
                                              <INPUT class=inputclass size='1' tabIndex=142 name='txtEmpHistFromMonth_1' id="From_month">
                                              Yr. 
                                              <INPUT class=inputclass tabIndex=143 size=1 name='txtEmpHistFromYear_1' id="From_year">
                                              </font></P></TD>
                                          <TD align=left width=312> <P class=smalltext><font size="-2">To Mo. 
                                              <INPUT name='txtEmpHistToMonth_1' class=inputclass size=1 tabIndex=144 size=2 id="To_month">
                                              Yr. 
                                              <INPUT class=inputclass tabIndex=145 size=1 name='txtEmpHistToYear_1' id="To_year">
                                              
                                              <input type="checkbox" name="chkStillEmployeed" value="Yes" id="Still_employed">
                                              Still employed
                                              </font></P></TD>
                                        </TR>
                                      </TBODY>
                                    </TABLE></td>
                                </tr>
                                <tr> 
                                  <td height="10%" colspan="4"> <p class="smalltext">Name 
                                      of immediate supervisor<br></font>
                                      <font size="-2"> 
                                      <input name="txtImmediateSuper_1" type="text" size="30">
                                      </font>May we contact them 
                                      <input type="radio" name="radEmpHistContactSuper_1" value="Yes">
                                      Yes 
                                      <input type="radio" name="radEmpHistContactSuper_1" value="No">
                                      No </td>
                                </tr>
                                <tr> 
                                  <td height="21%" colspan="4"> <p class="smalltext">Duties 
                                      Performed<br></font>
                                      <font size="-2"> 
                                      <textarea name="txtEmpHistDuties_1" cols="62"></textarea>
                                      </font></td>
                                </tr>
                                <tr> 
                                  <td height="10%"> <p class="smalltext">Salary</font><font size="-2"> 
                                      <input type="text" name="txtEmpHistSalary_1">
                                      </font></td>
                                  <td colspan="3"><p class="smalltext">Name of 
                                      Department or Unit<br></font>
                                      <font size="-2"> 
                                      <input type="text" name="txtEmpHistDeptName_1">
                                      </font></td>
                                </tr>
                                <tr> 
                                  <td height="25%" colspan="4" valign="top"> <p class="smalltext">Reason 
                                      for leaving</font><font size="-2"> <br>
                                      <textarea name="txtEmpHistLeaveReason_1" cols="62"></textarea>
                                      </font></td>
                                </tr>
                              </table>
                              <table width="98%" height="10" border="0" cellpadding="1" cellspacing="1" bordercolor="#CCCCCC">
                                <tr> 
                                  <td width="2%" rowspan="15" bgcolor="#003399"> 
                                    <p align="center"><font face="Verdana, Arial, Helvetica, sans-serif"><strong><font color="#FFFFFF">P<br>
                                      R<br>
                                      E<br>
                                      V<br>
                                      I<br>
                                      O<br>
                                      U<br>
                                      S</font></strong></font></p></td>
                                <tr> 
                                  <td height="8%" colspan="4"> <p class="smalltext">Company </font>
                                      <font size="-2"> 
                                      <input name="txtEmpHistCo_2" type="text" size="75">
                                      </font> </td>
                                </tr>
                                <tr> 
                                  <td width="25%" height="11%" valign="top"> <p class="smalltext">City<br></font> 
                                      <font size="-2"> 
                                      <input type="text" name="txtEmpHistCity_2">
                                      </font> </td>
                                  <td width="9%" valign="top"> <p class="smalltext">State</font><font size="-2"><br>
                                      <select name="txtEmpHistState_2" size="1">
																					<%=GetStateList("", False)%>
                                      </select>
                                      </font></td>
                                  <td width="10%" valign="top"> <p class="smalltext">Zip</font><font size="-2"> 
                                      <br>
                                      <input name="txtEmpHistZip_2" type="text" size="10">
                                      </font></td>
                                  <td width="54%" valign="top"> <p class="smalltext">Phone 
                                      Number</font><font size="-2"><br>
                                      <input name="txtEmpHistPhone_2" type="text" size="15">
                                      </font></td>
                                </tr>
                                <tr> 
                                  <td height="10%" valign="top"> <p class="smalltext">Job 
                                      Title<br></font>
                                      <font size="-2"> 
                                      <input type="text" name="txtEmpHistJobTitle_2">
                                      </font></td>
                                  <td colspan="3"><TABLE width="473" align="left" cellPadding=0 cellSpacing=0>
                                      <TBODY>
                                        <TR class="smalltext"> 
                                          <TD width=159 align=left> <P class=smalltext>From 
                                              Mo. 
                                              <INPUT class=inputclass tabIndex=142 size=1 name='txtEmpHistFromMonth_2'>
                                              Yr. 
                                              <INPUT class=inputclass tabIndex=143 size=1 name='txtEmpHistFromYear_2'>
                                            </P></TD>
                                          <TD width=312 align=left> <P class=smalltext>To Mo. 
                                              <INPUT name='txtEmpHistToMonth_2' class=inputclass tabIndex=144 size=1>
                                              Yr. 
                                              <INPUT class=inputclass tabIndex=145 size=1 name='txtEmpHistToYear_2'>
                                            </P></TD>
                                        </TR>
                                      </TBODY>
                                    </TABLE></td>
                                </tr>
                                <tr> 
                                  <td height="10%" colspan="4" valign="top"> <p class="smalltext">Name 
                                      of immediate supervisor<br>
                                      <input name="txtImmediateSuper_2" type="text" size="30"></font>
                                  </td>
                                </tr>
                                <tr> 
                                  <td height="22%" colspan="4" valign="top"> <p class="smalltext">Duties 
                                      Performed<br>
                                      <textarea name="txtEmpHistDuties_2" cols="62"></textarea></font>
                                  </td>
                                </tr>
                                <tr> 
                                  <td height="10%" valign="top"> <p class="smalltext">Salary</font><font size="-2"> 
                                      <input type="text" name="txtEmpHistSalary_2">
                                      </font></td>
                                  <td colspan="3" valign="top"> <p class="smalltext">Name 
                                      of Department or Unit<br>
                                      <input type="text" name="txtEmpHistDeptName"></font> 
                                  </td>
                                </tr>
                                <tr> 
                                  <td height="29%" colspan="4" valign="top"> <p class="smalltext">Reason 
                                      for leaving <br>
                                      <textarea name="txtEmpHistLeaveReason_2" cols="62"></textarea></font>
                                  </td>
                                </tr>
                              </table>
                              <table width="98%" height="10" border="0" cellpadding="1" cellspacing="1" bordercolor="#CCCCCC">
                                <tr> 
                                  <td width="2%" rowspan="15" bgcolor="#003399"> 
                                    <p align="center"><font face="Verdana, Arial, Helvetica, sans-serif"><strong><font color="#FFFFFF">P<br>
                                      R<br>
                                      E<br>
                                      V<br>
                                      I<br>
                                      O<br>
                                      U<br>
                                      S<br>
                                      </font></strong></font></p></td>
                                <tr> 
                                  <td height="7%" colspan="4"> <p class="smalltext">Company </font>
                                      <font size="-2"> 
                                      <input name="txtEmpHistCo_3" type="text" size="75">
                                      </font> </td>
                                </tr>
                                <tr> 
                                  <td width="22%" height="13%"> <p class="smalltext">City 
                                      <input type="text" name="txtEmpHistCity_3"></font> 
                                  </td>
                                  <td width="10%" valign="top"> <p class="smalltext">State<br>
                                      <select name="txtEmpHistState_3" size="1">
																				<%=GetStateList("", False)%>
                                      </select></font>
                                  </td>
                                  <td width="11%" valign="top"> <p class="smalltext">Zip 
                                      <br>
                                      <input name="txtEmpHistZip_3" type="text" size="10"></font>
                                  </td>
                                  <td width="55%"> <p class="smalltext">Phone 
                                      Number<br>
                                      <input name="txtEmpHistPhone_3" type="text" size="15"></font> 
                                  </td>
                                </tr>
                                <tr> 
                                  <td width="22%" height="10%"> <p class="smalltext">Job 
                                      Title<br>
                                      <input type="text" name="txtEmpHistJobTitle_3"></font>
                                  </td>
                                  <td colspan="3"><TABLE width="473" align="left" cellPadding=0 cellSpacing=0>
                                      <TBODY>
                                        <TR class="smalltext"> 
                                          <TD width=159 align=left> <P class=smalltext>From 
                                              Mo. 
                                              <INPUT class=inputclass tabIndex=142 size=1 name='txtEmpHistFromMonth_3'>
                                              Yr. 
                                              <INPUT class=inputclass tabIndex=143 size=1 name='txtEmpHistFromYear_3'>
                                            </P></TD>
                                          <TD width=312 align=left> <P class=smalltext>To 
                                              Mo. 
                                              <INPUT name='txtEmpHistToMonth_3' class=inputclass tabIndex=144 size=1>
                                              Yr. 
                                              <INPUT class=inputclass tabIndex=145 size=1 name='txtEmpHistToYear_3'>
                                            </P></TD>
                                        </TR>
                                      </TBODY>
                                    </TABLE></td>
                                </tr>
                                <tr> 
                                  <td height="10%" colspan="4"> <p class="smalltext">Name 
                                      of immediate supervisor<br></font>
                                      <font size="-2"> 
                                      <input name="txtImmediateSuper_3" type="text" size="30">
                                      </font> </td>
                                </tr>
                                <tr> 
                                  <td height="20%" colspan="4"> <p class="smalltext">Duties 
                                      Performed<br></font>
                                      <font size="-2"> 
                                      <textarea name="txtEmpHistDuties_3" cols="62"></textarea>
                                      </font></td>
                                </tr>
                                <tr> 
                                  <td height="10%"> <p class="smalltext">Salary</font><font size="-2"> 
                                      <input type="text" name="txtEmpHistSalary_3">
                                      </font></td>
                                  <td colspan="3"><p class="smalltext">Name of 
                                      Department or Unit<br></font>
                                      <font size="-2"> 
                                      <input type="text" name="txtNameOfDeptUnit">
                                      </font></td>
                                </tr>
                                <tr> 
                                  <td height="30%" colspan="4"> <p class="smalltext">Reason 
                                      for leaving</font><font size="-2"> <br>
                                      <textarea name="txtEmpHistLeaveReason_3" cols="62"></textarea>
                                      </font></td>
                                </tr>
                              </table>
                              <table width="100%" border="0" cellpadding="3" cellspacing="3">
                                <tr bgcolor="#003399"> 
                                    <td width="100%"><strong>&nbsp;<font color="#FFFFFF">EDUCATION</font></strong></td>
                                </tr>
                                <tr bgcolor="#003399"> 
                                  <td height="95%" bgcolor="#FFFFFF"><TABLE width=100% height="259" cellPadding=1 cellSpacing=1 bgColor=black>
                                      <TBODY>
                                        <TR> 
                                          <TD class=TCell align=middle width=16% bgColor=#eeeeee rowSpan=2> 
                                            <P class=smalltextb>Type of 
                                              School</P></TD>
                                          <TD width=28% height="4%" align=middle bgColor=#eeeeee class=TCell> 
                                            <P class=smalltextb>Name of 
                                              School</P></TD>
                                          <TD class=TCell align=middle width=24% bgColor=#eeeeee rowSpan=2> 
                                            <P class=smalltextb>Check Last 
                                              Year<BR>
                                              Attended in School</P>
                                            <P class=smalltext>&nbsp;</P></TD>
                                          <TD class=TCell vAlign=center align=middle width=32% bgColor=#eeeeee 
    rowSpan=2> <P class=smalltextb>Degree or Certificate</strong></P></TD>
                                        </TR>
                                        <TR> 
                                          <TD width=28% height="13%" align=middle bgColor=#eeeeee class=TCell> 
                                            <P class=smalltextb>City, State</P>
                                            <P class=smalltext>&nbsp;</P></TD>
                                        </TR>
                                        <TR> 
                                          <TD class=TCell align=middle width=16% bgColor=#eeeeee rowSpan=2> 
                                            <P class=smalltext>High School/<BR>GED</P></TD>
                                          <TD width=28% height="9%" align=middle bgColor=#eeeeee class=TCell> 
                                            <P class=smalltext> 
                                                <INPUT class=inputclass tabIndex=54 size=30 name='txtHighSchoolName' id='School_Name'>
                                            </P></TD>
                                          <TD class=TCell align=middle width=24% bgColor=#eeeeee rowSpan=2> 
                                            <P class=smalltext>9 
                                              <INPUT tabIndex=56 type=radio value=9 name=radLast_Year_High_School id='HS-Last_year'>
                                              10 
                                              <INPUT tabIndex=57 type=radio value=10 name=radLast_Year_High_School id='HS-Last_year'>
                                              11 
                                              <INPUT tabIndex=58 type=radio value=11 name=radLast_Year_High_School id='HS-Last_year'>
                                              12 
                                              <INPUT tabIndex=59 type=radio value=12 name=radLast_Year_High_School id='HS-Last_year'>
                                            </P>
                                            <P class=smalltext>Graduated/GED?<BR>
                                              <INPUT tabIndex=60 type=radio value=Yes name=radGraduated_High_School id='HS-Graduated'>
                                              Yes 
                                              <INPUT tabIndex=61 type=radio value=No  Name=radGraduated_High_School id='HS-Graduated'>
                                              No</P></TD>
                                          <TD class=TCell vAlign=center align=middle width=32% bgColor=#eeeeee rowSpan=2> <P class=smalltext> 
                                              <INPUT type='textbox' class=inputclass tabIndex=62 size=35 name=txtHigh_School_Degree_or_Certificate id='Degree_Certificate'>
                                            </P></TD>
                                        </TR>
                                        <TR> 
                                          <TD width=28% height="11%" align=middle bgColor=#eeeeee class=TCell> 
                                            <P class=smalltext> 
                                                <INPUT class=inputclass tabIndex=55 size=30 name=txtHigh_School_City_State id='School_address'>
                                            </P></TD>
                                        </TR>
                                        <TR> 
                                          <TD class=TCell align=middle width=16% bgColor=#eeeeee rowSpan=2> 
                                            <P class=smalltext>Undergraduate College/University</P></TD>
                                          <TD width=28% height="9%" align=middle bgColor=#eeeeee class=TCell> 
                                            <P class=smalltext> 
                                                <INPUT class=inputclass tabIndex=63 size=30 name=txtCollege_1_Name>
                                            </P></TD>
                                          <TD class=TCell align=middle width=24% bgColor=#eeeeee rowSpan=2> 
                                            <P class=smalltext>1 
                                              <INPUT tabIndex=65 type=radio value=1 name=radLast_Year_College_1>
                                              2 
                                              <INPUT tabIndex=66 type=radio value=2 name=radLast_Year_College_1>
                                              3 
                                              <INPUT tabIndex=67 type=radio value=3 name=radLast_Year_College_1 >
                                              4
                                              <INPUT tabIndex=68 type=radio value=4 name=radLast_Year_College_1>
                                            </P>
                                            <P class=smalltext>Graduated?<BR>
                                              <INPUT tabIndex=69 type=radio value=Yes name=radGraduated_College_1>
                                              Yes 
                                              <INPUT tabIndex=70 type=radio value=No name=radGraduated_College_1 >
                                              No</P></TD>
                                          <TD class=TCell vAlign=center align=middle width=32% bgColor=#eeeeee rowSpan=2> <P class=smalltext> 
                                              <INPUT type=text class=inputclass tabIndex=71 size=35 name=txtCollege_1_Degree_or_Certificate>
                                            </P></TD>
                                        </TR>
                                        <TR> 
                                          <TD width=28% height="11%" align=middle bgColor=#eeeeee class=TCell> 
                                            <P class=smalltext> 
                                                <INPUT type=text class=inputclass tabIndex=64 size=30 name=txtCollege_1_City_State>
                                            </P></TD>
                                        </TR>
                                        <TR> 
                                          <TD class=TCell align=middle width=16% bgColor=#eeeeee rowSpan=2> 
                                            <P class=smalltext>Graduate College/University</P></TD>
                                          <TD width=28% height="9%" align=middle bgColor=#eeeeee class=TCell> 
                                            <P class=smalltext> 
                                                <INPUT type=text class=inputclass tabIndex=63 size=30 name=txtCollege_2_Name>
                                            </P></TD>
                                          <TD class=TCell align=middle width=24% bgColor=#eeeeee rowSpan=2> 
                                            <P class=smalltext>1 
                                              <INPUT tabIndex=65 type=radio value=1 name=radLast_Year_College_2>
                                              2 
                                              <INPUT tabIndex=66 type=radio value=2 name=radLast_Year_College_2>
                                              3 
                                              <INPUT tabIndex=67 type=radio value=3 name=radLast_Year_College_2 >
                                              4 
                                              <INPUT tabIndex=68 type=radio value=4 name=radLast_Year_College_2>
                                            </P>
                                            <P class=smalltext>Graduated?<BR>
                                              <INPUT tabIndex=69 type=radio value=Yes name=radGraduated_College_2>
                                              Yes 
                                              <INPUT tabIndex=70 type=radio value=No  name=radGraduated_College_2 >
                                              No</P></TD>
                                          <TD class=TCell vAlign=center align=middle width=32% bgColor=#eeeeee rowSpan=2> <P class=smalltext> 
                                              <INPUT type='text' class=inputclass tabIndex=71 size=35 name=txtCollege_2_Degree_or_Certificate>
                                            </P></TD>
                                        </TR>
                                        <TR> 
                                          <TD width=28% height="11%" align=middle bgColor=#eeeeee class=TCell> 
                                            <P class=smalltext> 
                                                <INPUT type=text class=inputclass tabIndex=64 size=30 name=txtCollege_2_City_State>
                                            </P></TD>
                                        </TR>
                                        <TR> 
                                          <TD class=TCell align=middle width=16% bgColor=#eeeeee rowSpan=2> 
                                            <P class=smalltext>Technical School 
                                            </P></TD>
                                          <TD width=28% height="9%" align=middle bgColor=#eeeeee class=TCell> 
                                            <P class=smalltext> 
                                                <INPUT type=text class=inputclass tabIndex=72 size=30 name=txtCollege_3_Name>
                                            </P></TD>
                                          <TD class=TCell align=middle width=24% bgColor=#eeeeee rowSpan=2> 
                                            <P class=smalltext>1 
                                              <INPUT tabIndex=74 type=radio value=1 name=radLast_Year_College_3>
                                              2 
                                              <INPUT tabIndex=75 type=radio value=2 name=radLast_Year_College_3>
                                              3 
                                              <INPUT tabIndex=76 type=radio value=3 name=radLast_Year_College_3 >
                                              4 
                                              <INPUT tabIndex=77 type=radio value=4 name=radLast_Year_College_3>
                                            </P>
                                            <P class=smalltext>Graduated?<BR>
                                              <INPUT tabIndex=78 type=radio value=Yes name=radGraduated_College_3>
                                              Yes 
                                              <INPUT tabIndex=79 type=radio value=No name=radGraduated_College_3 >
                                              No</P></TD>
                                          <TD class=TCell vAlign=center align=middle width=32% bgColor=#eeeeee rowSpan=2> <P class=smalltext> 
                                              <INPUT type=text class=inputclass tabIndex=80 size=35 name=txtCollege_3_Degree_or_Certificate>
                                            </P></TD>
                                        </TR>
                                        <TR> 
                                          <TD width=28% height="14%" align=middle bgColor=#eeeeee class=TCell> 
                                            <P class=smalltext> 
                                                <INPUT type=text class=inputclass tabIndex=73 size=30 name=txtCollege_3_City_State>
                                            </P></TD>
                                        </TR>
                                      </TBODY>
                                    </TABLE>
                                    <TABLE width=100% height="199" cellPadding=1 cellSpacing=1 bgColor=black>
                                      <TBODY>
                                        <TR> 
                                          <TD height="11%" colspan="5" align=middle bgColor=#eeeeee class=TCell><strong>PROFESSIONAL 
                                            REGISTRATION, LICENSE OR ACCREDITATION</strong></TD>
                                        </TR>
                                        <TR> 
                                          <TD width=23% height="7%" align=middle bgColor=#eeeeee class=smalltextb>License</TD>
                                          <TD width=23% align=middle bgColor=#eeeeee class=smalltextb>Number</TD>
                                          <TD class=smalltextb align=middle width=11% bgColor=#eeeeee>Date 
                                            Issued </TD>
                                          <TD class=smalltextb vAlign=center align=middle width=17% bgColor=#eeeeee>Date 
                                            Expired </TD>
                                          <TD class=smalltextb vAlign=center align=middle width=26% bgColor=#eeeeee>Issued 
                                            By </TD>
                                        </TR>
                                        <TR> 
                                          <TD width=23% height="13%" align=middle bgColor=#eeeeee class=TCell> 
                                            <input type="text" name="txtLicenseName_1"></TD>
                                          <TD width=23% align=middle bgColor=#eeeeee class=TCell> 
                                            <input type="text" name="txtLicenseNumber_1"></TD>
                                          <TD class=TCell align=middle width=11% bgColor=#eeeeee> 
                                            <input name="txtLicenseIssueDate_1" type="text" size="8"></TD>
                                          <TD class=TCell vAlign=center align=middle width=17% bgColor=#eeeeee> 
                                            <input name="txtLicenseExpireDate_1" type="text" size="8"></TD>
                                          <TD class=TCell vAlign=center align=middle width=26% bgColor=#eeeeee> 
                                            <input type="text" name="txtLicenseIssuedBy_1"></TD>
                                        </TR>
                                        <TR> 
                                          <TD width=23% height="13%" align=middle bgColor=#eeeeee class=TCell> 
                                            <input type="text" name="txtLicenseName_2"></TD>
                                          <TD width=23% align=middle bgColor=#eeeeee class=TCell> 
                                            <input type="text" name="txtLicenseNumber_2"></TD>
                                          <TD class=TCell align=middle width=11% bgColor=#eeeeee> 
                                            <input name="txtLicenseIssueDate_2" type="text" size="8"></TD>
                                          <TD class=TCell vAlign=center align=middle width=17% bgColor=#eeeeee> 
                                            <input name="txtLicenseExpireDate_2" type="text" size="8"></TD>
                                          <TD class=TCell vAlign=center align=middle width=26% bgColor=#eeeeee> 
                                            <input type="text" name="txtLicenseIssuedBy_2"></TD>
                                        </TR>
                                        <TR> 
                                          <TD height="13%" align=middle bgColor=#eeeeee class=TCell> 
                                            <input type="text" name="txtLicenseName_3"></TD>
                                          <TD align=middle bgColor=#eeeeee class=TCell>
                                          <input type="text" name="txtLicenseNumber_3"></TD>
                                          <TD class=TCell align=middle bgColor=#eeeeee>
                                          <input name="txtLicenseIssueDate_3" type="text" size="8"></TD>
                                          <TD class=TCell vAlign=center align=middle bgColor=#eeeeee>
                                          <input name="txtLicenseExpireDate_3" type="text" size="8"></TD>
                                          <TD class=TCell vAlign=center align=middle bgColor=#eeeeee>
                                          <input type="text" name="txtLicenseIssuedBy_3"></TD>
                                        </TR>
                                        <TR> 
                                          <TD height="43%" colspan="5" align=middle bgColor=#eeeeee class=smalltext> 
                                            <div align="left">Is your license 
                                              currently or has it ever been under 
                                              restriction? 
                                              <input type="radio" name="radNoValidLicense" value="Yes">
                                              Yes 
                                              <input type="radio" name="radNoValidLicense" value="No">
                                              No <br>
                                              If yes, please explain: 
                                              <textarea name="txtNoValidLicense" cols="85"></textarea>
                                            </div></TD>
                                        </TR>
                                      </TBODY>
                                    </TABLE></td>
                                </tr>
                              </table>
                                <table width="98%" height="3" border="0" cellpadding="1" cellspacing="1">
                                  <tr bgcolor="#003399"> 
                                    <td height="20%" colspan="4"><p><font color="#FFFFFF" face="Verdana, Arial, Helvetica, sans-serif"><strong>&nbsp;REFERENCES<br>
                                        </strong></font><font color="#FFFFFF" size="-2"> 
                                        &nbsp; List three individuals who are 
                                        in a position to evaluate your training, 
                                        experience and attributes. Please omit 
                                        relatives.</font> </p></td>
                                  </tr>
                                  <tr> 
                                    <td width="23%" height="12%"> <p class="smalltext"><strong><font color="#0000FF">1)</font></strong> 
                                        Name</td>
                                    <td width="23%"><p class="smalltext">Position</td>
                                    <td width="32%"><p class="smalltext">Company</font></td>
                                    <td width="22%"><p class="smalltext">Phone</td>
                                  </tr>
                                  <tr> 
                                    <td height="24%"><font size="-2"> 
                                      <input type="text" name="txtRefName_1" id="Reference_name">
                                      </font></td>
                                    <td><font size="-2"> 
                                      <input type="text" name="txtRefPos_1" id="Reference_position">
                                      </font></td>
                                    <td><font size="-2"> 
                                      <input type="text" name="txtRefCo_1" id="Reference_company">
                                      </font></td>
                                    <td><font size="-2"> 
                                      <input name="txtRefPhone_1" type="text" size="10" id="Reference_phone">
                                      </font></td>
                                  </tr>
                                </table>
                                <table width="98%" height="2" border="0" cellpadding="1" cellspacing="1">
                                  <tr> 
                                    <td width="23%" height="16%"> <p class="smalltext"><strong><font color="#0000FF">2)</font></strong> 
                                        Name</font></td>
                                    <td width="23%"><p class="smalltext">Position</font></td>
                                    <td width="32%"><p class="smalltext">Company</font></td>
                                    <td width="22%"><p class="smalltext">Phone</td>
                                  </tr>
                                  <tr> 
                                    <td height="33%"><font size="-2"> 
                                      <input type="text" name="txtRefName_2" id="Reference_name">
                                      </font></td>
                                    <td><font size="-2"> 
                                      <input type="text" name="txtRefPos_2" id="Reference_position">
                                      </font></td>
                                    <td><font size="-2"> 
                                      <input type="text" name="txtRefCo_2" id="Reference_company">
                                      </font></td>
                                    <td><font size="-2"> 
                                      <input name="txtRefPhone_2" type="text" size="10" id="Reference_phone">
                                      </font></td>
                                  </tr>
                                </table>
                                <table width="98%" height="2" border="0" cellpadding="1" cellspacing="1">
                                  <tr> 
                                    <td width="23%" height="16%"> <p class="smalltext"><strong><font color="#0000FF">3)</font></strong> 
                                        Name</font></td>
                                    <td width="23%"><p class="smalltext">Position</font></td>
                                    <td width="32%"><p class="smalltext">Company</font></td>
                                    <td width="22%"><p class="smalltext">Phone</td>
                                  </tr>
                                  <tr> 
                                    <td height="33%"><font size="-2"> 
                                      <input type="text" name="txtRefName_3" id="Reference_name">
                                      </font></td>
                                    <td><font size="-2"> 
                                      <input type="text" name="txtRefPos_3" id="Reference_position">
                                      </font></td>
                                    <td><font size="-2"> 
                                      <input type="text" name="txtRefCo_3" id="Reference_company">
                                      </font></td>
                                    <td><font size="-2"> 
                                      <input name="txtRefPhone_3" type="text" size="10" id="Reference_phone">
                                      </font></td>
                                  </tr>
                                </table>
                              <table width="98%" height="32" border="0" cellpadding="3" cellspacing="3">
                                <tr> 
                                  <td width="100%" height="2%"> <hr></td>
                                </tr>
                                <tr> 
                                  <td height="6%" valign="top"> <p> 
                                    <p class="smalltext">Have you at any time 
                                      during the preceding year, been employed 
                                      in a managerial, accounting, auditing or 
                                      similar capacity role by (1) Baptist Health&#8217;s 
                                      current Medical Fiscal intermediary (First 
                                      Coast Options), or (2) any other agency 
                                      or organization which served during such 
                                      time as a Medical Fiscal intermediary for 
                                      Baptist Health? </font></p>
                                    <p class="smalltext"> 
                                      <input type="radio" name="radBaptistMngr" value="Yes" id="Baptist_manager">
                                      Yes 
                                      <input type="radio" name="radBaptistMngr" value="No" id="Baptist_manager">
                                      No </font> </p></td>
                                </tr>
                                <tr> 
                                  <td height="5%" valign="top"> <p> 
                                    <p class="smalltext">If hired, can you furnish 
                                      proof that you are eligible to work in the 
                                      United States? </font></p>
                                    <p class="smalltext"> 
                                      <input type="radio" name="radUSAllowed" value="Yes" id="US-Work_authorized">
                                      Yes 
                                      <input type="radio" name="radUSAllowed" value="No" id="US-Work_authorized">
                                      No</font></p></td>
                                </tr>
                                <tr> 
                                  <td height="49%"> <p class="smalltext">Do you 
                                        certify that you have not been found by 
                                        an administrative body or civil court 
                                        to have violated any of the statues, rules 
                                        or regulations pertaining to the Health 
                                        Care Financial Act, Medicare, Medicaid 
                                        or any other federal programs. </font>
                                      <p class="smalltext">
                                        <input type="radio" name="radNoFraud" value="Yes" id="No_Fraud">
                                        Yes 
                                        <input type="radio" name="radNoFraud" value="No" id="No_Fraud">
                                        No 
                                      <p class="smalltext">Have you even been 
                                        convicted of, or pled guilty, no contest 
                                        or nolo contendere to a crime? This includes 
                                        DUI or DWI, a criminal conviction, debarment, 
                                        sanction, or exclusion related to Medicare 
                                        Medicaid, or any other federal or state-funded 
                                        health care program(s), or ineligibility 
                                        for participation in a federally or state-funded 
                                        health care program. 
                                      <p class="smalltext">
                                        <input type="radio" name="radConviction" value="Yes" id="Conviction">
                                        Yes 
                                        <input type="radio" name="radConviction" value="No" id="Conviction">
                                        No<br>
                                        <br>
                                        If yes, give details (date, place, offense(s), 
                                        disposition, etc.)<br>
                                        <textarea name="txtConvictionList" cols="85"></textarea>
                                      <p class="smalltext">Have you ever been charged 
                                      with a crime and either been placed on a 
                                      court ordered probation, had adjudication 
                                      withheld, entered a pre-trial intervention 
                                      program, or have any criminal charges now 
                                      pending? 
                                      <input type="radio" name="radCrime" value="Yes" id="Crimes">
                                      Yes 
                                      <input type="radio" name="radCrime" value="No" id="Crimes">
                                      No 
                                    <p class="smalltext">If yes, give details:<br>
                                      <textarea name="txtCrime" cols="85"></textarea>
                                      <br>
                                    
          <p class="smalltextb">Baptist Health reserves the right to refuse to 
            consider any application not filled out in full.<br></p>
            
          <p class="smalltext">Please read carefully and sign below. 
          <p class="smalltext">
            <input type="checkbox" name="chkCertify_1" value="Agree_1" id="Agreement">
            I hereby certify that all of the facts and information listed on this 
            employment application are true and complete. I understand that any 
            false, incomplete or misleading information given by me on this application is 
            sufficient cause for rejection of this application. I also understand 
            and agree that any such false, incomplete, or misleading information 
            discovered on this application at any time after I am employed may 
            result in my dismissal. 
          <p class="smalltext">
                                        <input type="checkbox" name="chkCertify_2" value="Agree_2" id="Agreement">
                                        I hereby authorize Baptist Health to 
                                        investigate all statements contained in 
                                        this application, to interview the references 
                                        and previous employers listed in this 
                                        application, and to obtain a report from 
                                        a consumer reporting agency to be used 
                                        for employment purposes in accordance 
                                        with the Fair Credit Reporting Act. I 
                                        authorize the references and previous 
                                        employers listed to give Baptist Health 
                                        all facts, opinions and evaluations concerning 
                                        my previous employment and any other information 
                                        they may have, personal, or otherwise, 
                                        and release all such parties from any 
                                        liability which may allegedly arise from 
                                        furnishing such information to the Health 
                                        System, including, but not limited to, 
                                        any liability for defamation or invasion 
                                        of privacy. 
                                      <p class="smalltext">
                                        <input type="checkbox" name="chkCertify_3" value="Agree_3" id="Agreement">
                                        If I am offered employment, I understand 
                                        that such an offer will be conditioned 
                                        upon satisfactory results of a background 
                                        investigation and/or Baptist Health medical 
                                        examination or inquiry, including a drug 
                                        screen test. If then employed, I understand 
                                        I will be required to serve a ninety (90) 
                                        day probationary period. I understand 
                                        it is my responsibility to keep an accurate 
                                        and complete record of my hours worked 
                                        each day. I understand, also, that I must 
                                        be available to work on occasions other 
                                        than the hours to which I may be regularly 
                                        assigned. I further understand that my 
                                        employment and compensation can be terminated, 
                                        with or without cause or notice, at any 
                                        time, regardless of the successful completion 
                                        of my probationary period, at the option 
                                        of either Baptist Health or myself. 
                                        I understand that no supervisor or other 
                                        representative of Baptist Health other 
                                        than a specifically authorized representative 
                                        of Baptist Health has any authority 
                                        to enter into any agreement for employment 
                                        for any specified period of time, or to 
                                        make any agreement contrary to the foregoing. 
                                      <p class="smalltext">
                                        <input type="checkbox" name="chkCertify_4" value="Agree_4" id="Agreement">
                                        I further understand and voluntarily agree 
                                        as a condition of employment or my continued 
                                        employment, that I may be requested by 
                                        Baptist Health to submit to a urinalysis 
                                        or other drug screen test. Any positive 
                                        results of such test will be reported 
                                        to the appropriate licensing board and 
                                        my failure to take such test(s) when requested 
                                        to do so or unsatisfactory test results 
                                        will disqualify me from consideration 
                                        for employment, or if I am then employed, 
                                        may result in my immediate dismissal. 
                                    </td>
                                </tr>
                                <tr> 
                                  <td height="38%"> <P CLASS='breakhere'></P>
          <p class="smalltextb">FAIR CREDIT REPORTING ACT<br>
            DISCLOSURE TO APPLICANTS AND EMPLOYEES<br>
            <p class="smalltext">Pursuant to the Fair Credit Reporting Act, 15 U.S.C. 1681-1681u, Baptist 
            Health is providing this notice that Baptist Health may obtain a consumer 
            report, (including, but not limited to, a credit report) concerning 
            you for employment purposes and in conjunction with either your application 
            for employment and/or decisions concerning your employment status 
            with Baptist Health. </p>
                                        <p class="smalltextb"> 
                                        <input type="checkbox" name="chkCertify_5" value="Agree_5" id="Agreement">
                                        &quot;I certify that I have read, understand 
                                        and agree with the above.&quot;
                                      <p class="smalltextb"><br>
                                        FAIR CREDIT REPORTING ACT<br>
                                        AUTHORIZATION TO OBTAIN CONSUMER REPORT</p>
                                        <p class="smalltext">I hereby authorize Baptist Health to obtain 
                                        a consumer report (including, but not 
                                        limited to, criminal history, motor vehicle 
                                        reports, abuse registries, workers compensation 
                                        records as part of your physical, and, 
                                        in some cases, a credit report ) concerning 
                                        me. It is my understanding that Baptist 
                                        Health will use this consumer report for 
                                        employment and/or decisions concerning 
                                        my employment status with Baptist Health.
                                      <p class="smalltextb"> 
                                        <input type="checkbox" name="chkCertify_6" value="Agree_6" id="Agreement">
                                        &quot;I certify that I have read, understand 
                                        and agree with the above.&quot; 
                                      <p class="smalltextb">PRE-EMPLOYMENT 
                                        BACKGROUND INVESTIGATION<br></p>
                                        <p class="smalltext">Applicants are subject 
                                        to a background investigation with Florida 
                                        Department of Law Enforcement and other 
                                        state, out of state and local agencies. 
                                        <br>
                                        Applicants for employment are evaluated 
                                        on the merits of their qualifications 
                                        for positions available regardless of 
                                        the individual's race, sex, color, national 
                                        origin, age, handicap, religion, marital 
                                        status, or status as a veteran. Conviction 
                                        of a crime will not necessarily preclude 
                                        an applicant from consideration for employment 
                                        with Baptist Health.
   <!--
                                      <p class="smalltextb"><br>
                                        The following information is required 
                                        to perform the background investigation: 
                                       <table width="100%" border="0" cellspacing="1" cellpadding="1">
                                        <tr> 
                                          <td colspan="3" valign="top"><p class="smalltextb">Date of 
                                            Birth:</td>
                                        </tr>
                                        <tr> 
                                          <td width="14%" valign="top"><p class="smalltextb"> 
                                              Month 
                                              <select name="selBDateMonth">
                                                <option value=''>Month</option>
                                                <option value='January'>January</option>
                                                <option value='February'>February</option>
                                                <option value='March'>March</option>
                                                <option value='April'>April</option>
                                                <option value='May'>May</option>
                                                <option value='June'>June</option>
                                                <option value='July'>July</option>
                                                <option value='August'>August</option>
                                                <option value='September'>September</option>
                                                <option value='October'>October</option>
                                                <option value='November'>November</option>
                                                <option value='December'>December</option>
                                              </select>
                                            </p></td>
                                          <td width="9%" valign="top"><p class="smalltextb">Day<br> 
                                            <select name="selBDateDay">
                                              <option value=''>Day</option>
                                              <option value='01'>01</option>
                                              <option value='02'>02</option>
                                              <option value='03'>03</option>
                                              <option value='04'>04</option>
                                              <option value='05'>05</option>
                                              <option value='06'>06</option>
                                              <option value='07'>07</option>
                                              <option value='08'>08</option>
                                              <option value='09'>09</option>
                                              <option value='10'>10</option>
                                              <option value='11'>11</option>
                                              <option value='12'>12</option>
                                              <option value='13'>13</option>
                                              <option value='14'>14</option>
                                              <option value='15'>15</option>
                                              <option value='16'>16</option>
                                              <option value='17'>17</option>
                                              <option value='18'>18</option>
                                              <option value='19'>19</option>
                                              <option value='20'>20</option>
                                              <option value='21'>21</option>
                                              <option value='22'>22</option>
                                              <option value='23'>23</option>
                                              <option value='24'>24</option>
                                              <option value='25'>25</option>
                                              <option value='26'>26</option>
                                              <option value='27'>27</option>
                                              <option value='28'>28</option>
                                              <option value='29'>29</option>
                                              <option value='30'>30</option>
                                              <option value='31'>31</option>
                                            </select></td>
                                           
                                          <td width="77%" valign="top"><p class="smalltextb">Year<br> 
                                            <select name="selBDateYear">
																							<%Dim intYear
																								
																								For intYear = 1950 To 1985
																									Response.Write("<option value='" & intYear & "'>" & intYear & "</option>")
																								Next ' intYear
																							%>
                                            </select></td>
                                        </tr>
                                        <tr> 
                                          <td valign="top"><p class="smalltextb"> Sex<br> 
																						<select name="selGender">
                                              <option value='Male'>Male</option>
                                              <option value='Female'>Female</option>
                                            </select></td>
                                          <td valign="top"><p class="smalltextb">Race<br> 
																						<select name="selEthnicity">
                                              <option value='White'>White</option>
                                              <option value='Black'>Black</option>
                                              <option value='Asian'>Asian</option>
                                              <option value='Hispanic'>Hispanic</option>
                                              <option value='Other'>Other</option>
                                            </select></td>
                                          <td>&nbsp;</td>
                                        </tr>
                                      </table>
-->
                                      <p class="smalltextb"> 
                                        <input type="checkbox" name="chkFinalAgree" value="I agree" id="Final_agreement">
                                        &quot;I certify that I have read, understand 
                                        and agree with the above.&quot; 
                                      <p class="smalltext"><br>
                                        Acknowledgment: 
                                      <p class="smalltext">Your Full Name (which 
                                        will represent your electronic signature, 
                                        and which you agree Baptist Health can rely upon 
                                        to the same extent as your handwritten 
                                        signature) 
                                      <p class="smalltext"> 
                                        <input type="text" name="txtSignature" id="Signature"></p>
                                        <p class="smalltext"> Date of birth:<br>
                                        Month<input type='text' name='selBDateMonth' size='1'>&nbsp;&nbsp;
                                        Day<input type='text' name='selBDateDay' size='1'>
                                        <!--
                                          <p class="smalltextb"> 
                                              Last Six (6) Digits of Your Driver's 
                                              License Number or State I.D. Number
                                          <p class="smalltextb">Driver License 
                                            Number 
                                            <input name="txtDriverLicenseNumber" type="text" size="6">
                                            State I.D. Number 
                                            <input type="text" name="txtDriverLicenseIDNumber">
                                            State of Issue 
                                            <select name="selDriverLicenseState" size="1">
																							<%=GetStateList("", False)%>
                                            </select>
                                            -->
                                      <p class="smalltext"> 
                                      <input type="submit" name="subSubmit" value="Submit">
                                    <p></td>
                                </tr>
																<tr> 
																   <td height="5%" colspan="5" align="center"> <p class="smalltextb">THIS IS A SECURED SITE</p></td>
																</tr>			
                              </table>
                              
</form>
</body>
</html>

<!--#include file="includes/footer.asp"-->

<script language='JavaScript'>
	var strTextFields='txtSSN,txtFirstName,txtLastName,txtAddress,txtCounty,txtCity,txtZip,txtHomePhone,txtEmailAddress,txtHighSchoolName,txtHigh_School_Degree_or_Certificate,txtHigh_School_City_State,txtEmpHistCo_1,txtEmpHistCity_1,txtEmpHistState_1,txtEmpHistZip_1,txtEmpHistPhone_1,txtEmpHistJobTitle_1,txtEmpHistFromMonth_1,txtEmpHistFromYear_1,txtRefName_1,txtRefPos_1,txtRefCo_1,txtRefPhone_1,txtRefName_2,txtRefPos_2,txtRefCo_2,txtRefPhone_2,txtRefName_3,txtRefPos_3,txtRefCo_3,txtRefPhone_3,txtSignature';
	var arrTextFields=strTextFields.split(",");
	
	var strValidateCheckList='chkCertify_1,chkCertify_2,chkCertify_3,chkCertify_4,chkCertify_5,chkCertify_6,chkFinalAgree';
	var arrCheckList=strValidateCheckList.split(",");
	
	var strValidateRadio='radLast_Year_High_School,radGraduated_High_School,radBaptistMngr,radUSAllowed,radNoFraud,radConviction,radCrime'

	var arrValidateRadio=strValidateRadio.split(",")

	function SubmitForm()
		{
			if(document.frmLongApp.chkStillEmployeed.checked==true)
				{
					document.frmLongApp.showhidStillEmployeed.value='Yes';
				}
				
			var strID='';
			var strFieldID='';
			
			//Check for spaces
			for(iLoop=0; iLoop < arrTextFields.length; iLoop++)
				{
					if(CheckForSpaces(eval('document.frmLongApp.' + arrTextFields[iLoop] + '.value'))=='')
						{
							strFieldID = eval('document.frmLongApp.' + arrTextFields[iLoop] + '.id');
							
							strFieldID = strFieldID.replace("_", " ");
							
							alert('Please enter the missing data - ' + strFieldID)
							eval('document.frmLongApp.' + arrTextFields[iLoop] + '.focus()')
									
							return false;
						}
				}
				//***************************************************************
				
				//***************************************************************
				//Check for radio buttons
				var blnChecked=false;
				var intRadioLen=0;
				var intCntRadio=0;
				
				for(iLoop=0; iLoop < arrValidateRadio.length; iLoop++)
					{
						blnChecked=false;
						intRadioLen=eval('document.frmLongApp.' + arrValidateRadio[iLoop] + '.length');
						
						for(intCntRadio=0;intCntRadio<intRadioLen;intCntRadio++)
							{//alert(eval('document.frmLongApp.' + arrValidateRadio[iLoop] + '[' + intCntRadio + '].name'))
								strID = eval('document.frmLongApp.' + arrValidateRadio[iLoop] + '[' + intCntRadio + '].id');
								
								if(eval('document.frmLongApp.' + arrValidateRadio[iLoop] + '[' + intCntRadio + '].checked')==true)
									{
										blnChecked=true;
										break;
									}
							}
							
						if(blnChecked==false)
							{
								strID = strID.replace('_',' ')
								alert('Please make a selection - ' + strID)
								eval('document.frmLongApp.' + arrValidateRadio[iLoop] + '[0].focus()')
								return false;
							}
					}
				//End radio validation
				//***************************************************************
				
				//***************************************************************
				//Check for Checkboxes
				for(iLoop=0; iLoop < arrCheckList.length; iLoop++)
					{
						if(eval('document.frmLongApp.' + arrCheckList[iLoop] + '.checked')==false)
							{
								strID = eval('document.frmLongApp.' + arrCheckList[iLoop] + '.id');
								strID = strID.replace('_',' ')
								alert('Please make the required selection - ' + strID)
								eval('document.frmLongApp.' + arrCheckList[iLoop] + '.focus()')
												
								return false;
							}
					}
				//***************************************************************
				
				//********************************************************************
				//Conditional validation
				if(document.frmLongApp.chkStillEmployeed.checked==false)
					{
						if(CheckForSpaces(document.frmLongApp.txtEmpHistToMonth_1.value)=='')
							{
								strID = document.frmLongApp.txtEmpHistToMonth_1.id
								strID = strID.replace('_',' ')
								alert('Please enter the missing data - ' + strID);
								document.frmLongApp.txtEmpHistToMonth_1.focus();
								return false;
							}
							
						if(CheckForSpaces(document.frmLongApp.txtEmpHistToYear_1.value)=='')
							{
								strID = document.frmLongApp.txtEmpHistToYear_1.id
								strID = strID.replace('_',' ')
								alert('Please enter the missing data - ' + strID);
								document.frmLongApp.txtEmpHistToYear_1.focus();
								return false;
							}
					}
				
				if(document.frmLongApp.radNameChange[0].checked==true)
					{
						if(CheckForSpaces(document.frmLongApp.txtFormerName.value)=='')
							{
								alert('Please enter previous name(s)');
								document.frmLongApp.txtFormerName.select();
								return false;
							}
					}
	
				if(document.frmLongApp.radConviction[0].checked==true)
					{
						if(CheckForSpaces(document.frmLongApp.txtConvictionList.value)=='')
							{
								alert('Please enter the list of convictions');
								document.frmLongApp.txtConvictionList.focus();
								return false;
							}
					}
					
				if(document.frmLongApp.radCrime[0].checked==true)
					{
						if(CheckForSpaces(document.frmLongApp.txtCrime.value)=='')
							{
								alert('Please enter the list of crimes');
								document.frmLongApp.txtCrime.focus();
								return false;
							}
					}
				//********************************************************************
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