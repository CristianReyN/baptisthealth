<!--#include file="includes/local_subs.asp"-->
<!--#include file="includes/IDInclude.asp"-->
<!--#include virtual="../cc/JS_agent.asp"-->

<%on error resume next%>
           
<html>

<!--#include file="includes/head.asp"-->

<!--<body topmargin="10" bottommargin="10" leftmargin="10" rightmargin="10" marginwidth="10" marginheight="10" bgcolor="#ffffff" onload="doInit();">//-->

	<%
	'Get user information recordset in order to populate registration
	'form fields with preexisting information
	dim rsUserInfo
	set rsUserInfo = server.CreateObject("ADODB.Recordset")
	set rsUserInfo = GetUserInfo(intJobSeekerID)
	%>
	
	
	
	<!--#include file="includes/header.asp"-->
	
		<table width="660">
				<tr><td width="5%">&nbsp;</td>
					<td valign="top" width="160">
					<!--BEGIN HOT OPENINGS TABLE-->
					<%=GetTopX(5, 160, "#093980", "#FFFFFF","#D9D1C3" ,"#000000", "Hot Openings!")%>
					<!--END HOT OPENINGS TABLE-->
					<br>
					<%CreateUL%>
				</td>
				<td>&nbsp; &nbsp; &nbsp; &nbsp;</td>
				<td>
				
				<FORM action=edit_registration_2.asp name=frmnewuser method=post onsubmit="return Validate()">
				<input type=hidden name="user_id" value="<%=Request("user_id")%>">
				<input type=hidden name="SSN" value="<%=HTMLEncode(Trim(rsUserInfo.Fields("social_security").Value))%>">
				
				<table width="400"><tr>
					<td valign="top">   
									<div class="headerwithbackground">
										Personal Preferences
									</div>
									<div class="body">
										Our technology allows you to receive e-mail notices for jobs
										that may match your profile, and to choose 
										whether or not you want to remain anonymous to us. Should you 
										express your interest for a job with us you may be requested 
										to release additional contact 
										information.
										<br>
										<b>Required fields are denoted by *</b>
									</div>
								</td>
							</tr> 
							<tr>
								<td align="left">
									<br>        
									<div class="headerwithbackground">
										My Account Login Preferences
									</div>
									<div class="body">
										<strong>E-mail: *</strong>
										<br>
										<%=Trim(rsUserInfo.Fields("Email").Value)%>
										<br>                                                                   
										<strong>Password: *</strong>
										<br>
										Minimum length: 6 characters
										<br>	        
										<input maxLength="50" name="password" type="password" value="<%=Trim(rsUserInfo.Fields("Password").Value)%>">
										<br>
										<strong>Verify Password:</strong> *<br>
										Minimum length: 6 characters
										<br>	        
										<input maxLength="50" name="password2" type="password" value="<%=Trim(rsUserInfo.Fields("Password").Value)%>"> 
										<br>
										<strong>Password Recovery Question: </strong>
										<br>
										<input name="question" maxlength="2000" size="38" value="<%=Trim(rsUserInfo.Fields("question").Value)%>"> 
										<br> 
										If you forget your password, we will email it to you if you are able to answer your password question.
		  								<br>
										<strong>Password Recovery Answer: </strong>
										<br>
										<input name="response" maxlength="2000" size="38" value="<%=Trim(rsUserInfo.Fields("answer").Value)%>">
										<br>
										We will also email you your password recovery
										answer using your preferred method.
									</div>
									<br>        
									<div class="headerwithbackground">
										My Contact Information
									</div>
									<table>
										<tr>
											<td align="left" vAlign="bottom">
									     
											<div class="body">
										First Name: *
										<br>
										<%
										'If the user filled out this field when registering, populate it. 
										'Otherwise just display an empty text box.
										if not isnull(rsUserInfo.Fields("First_Name").Value) then%>
	                       					<INPUT name=firstname value="<%=Trim(rsUserInfo.Fields("First_Name").Value)%>"> 
	                       				<%else%>	
	                       					<INPUT name=firstname>
	                       				<%end if%>	
									</div>
								</td>
								<td align="center" vAlign="bottom">
								    
									<div class="body">
										Middle Initial:
										<br>
	                      				<%if not isnull(rsUserInfo.Fields("Middle_Initial").Value) then%>
	                       					<INPUT name=middlename value="<%=Trim(rsUserInfo.Fields("Middle_Initial").Value)%>" SIZE=1 MAXLENGTH=1>
	                       				<%else%>	
	                       					<INPUT name=middlename SIZE=1 MAXLENGTH=1>
	                       				<%end if%>	
									</div>
								</td>
								<td align="left" vAlign="bottom" colspan=2>
								     
									<div class="body">
										Last Name: *
										<br>
								        <%if not isnull(rsUserInfo.Fields("Last_Name").Value) then%>
	                       					<INPUT name=lastname value="<%=Trim(rsUserInfo.Fields("Last_Name").Value)%>"> 
	                       				<%else%>
	                       				<INPUT name=lastname>
	                       				<%end if%>	
									</div>
								</td>
							</tr>
							<tr>
								<td align="left" vAlign="top" colspan=4>
									<br>        
									<div class="body">
										Address:
										<br>
										<%if not isnull(rsUserInfo.Fields("Address").Value) then%>
	                       					<INPUT name=address value="<%=Trim(rsUserInfo.Fields("Address").Value)%>"  maxlength=200>
	                       				<%else%>
	                       					<INPUT name=address value=""  maxlength=200>
	                       				<%end if%>	
									</div>
								</td>
							</tr>
							<tr>
								<td align="left" vAlign="bottom" colspan=4>
									<br>        
									<div class="body">
										Address 2:
										<br>
										<%if not isnull(rsUserInfo.Fields("Address2").Value) then%>
	                       					<INPUT name=address2 value="<%=Trim(rsUserInfo.Fields("Address2").Value)%>"  maxlength=200>
	                       				<%else%>
	                       					<INPUT name=address2 value=""  maxlength=200>
	                       				<%end if%>	
									</div>
								</td>
							</tr>
							<tr>
								<td align="left" vAlign="top">
									<br>
									<div class="body">
										City:
										<br>
										<%if not isnull(rsUserInfo.Fields("City").Value) then%>
											<INPUT name=city value="<%=Trim(rsUserInfo.Fields("City").Value)%>"> 
										<%else%>
											<INPUT name=city>	
										<%end if%>		
									</div>
								</td>
								<td align="left" vAlign="top">  
									<br>      
									<div class="body">
										State/Province:
										<%Response.Write GETSTATES(rsUserInfo.Fields("state"))%>
									</div>
								</td>
								<td align="left" vAlign="top" colspan=2>
									<br>        
									<div class="body">				
										Zip Code:
										<br>
								        <%if not isnull(rsUserInfo.Fields("Zip").Value) then%>
	                       					<INPUT name=zipcode value="<%=Trim(rsUserInfo.Fields("Zip").Value)%>">
	                       				<%else%>
	                       					<INPUT name=zipcode>
	                       				<%end if%>
									</div>
								</td>
							</tr>
							<tr>	
								<td align="left" vAlign="top" width="33%" colspan=2>
									<br>        
									<div class="body">
										Country:
										<br>
										<%if not isnull(rsUserInfo.Fields("Country").Value) then%>
	                       					<%GetCountries(rsUserInfo.Fields("Country").Value)%> 
	                       				<%else%>
	                       					<%GetCountries(0)%> 
	                       				<%end if%>
										
									</div>
								</td>
								
							</tr>
						<tr>
						
					<td align="left" vAlign="bottom" width="33%">
					<br>        
					<div class="body">
						Home Phone:
						<br>
					
							<%if not isnull(rsUserInfo.Fields("Home_Phone").Value) then%>
							<INPUT name=homephone size="15" maxlength=17 value="<%=Trim(rsUserInfo.Fields("Home_Phone").Value)%>">
						<%else%>
							<INPUT name=homephone size="15" maxlength=17>	
						<%end if%>		
					</div>
					</td>	
					<td align="left" vAlign="bottom" width="33%">
						<br>        
						<div class="body">
							Work Phone:
							<br>
								<%if not isnull(rsUserInfo.Fields("Work_Phone").Value) then%>
								<INPUT name=workphone size="15" maxlength=17 value="<%=Trim(rsUserInfo.Fields("Work_Phone").Value)%>">
							<%else%>
								<INPUT name=workphone size="15" maxlength=17>
							<%end if%>
						</div>
					</td>
					<td align="left" vAlign="bottom" width="33%" colspan=2>
						<br>        
						<div class="body">
                       		Mobile Phone:
							<br>
					
							<%if not isnull(rsUserInfo.Fields("Mobile_Phone").Value) then%>
	                       		<INPUT name="mobilephone" size="15" maxlength=17 value="<%=Trim(rsUserInfo.Fields("Mobile_Phone").Value)%>">
	                       	<%else%>
	                       		<INPUT name="mobilephone" size="15" maxlength=17>	
	                       	<%end if%>	 
						</div>
					</td>
				</tr>
				</table>
				</td>
				</tr>
							
							 
							<tr vAlign="top" align="left">
								<td align="left"> 
									<br>
									<div class="headerwithbackground">
										My Notification Preferences 
		       						</div>
									<div class="body">	
										Privacy Options:
										<br>			
										<%if rsUserInfo.Fields("Active_Or_Passive").Value = FALSE then%>			
										<inpUT name=privacy type=checkbox value = 1>
										<%else%>
										<inpUT CHECKED name=privacy type=checkbox value = 1>
										<%end if%>			 
										I wish to remain anonymous.
										<br>
										
										If you select this option, your job profile, resume, and 
										preference information remain confidential.
										<br>
									</div>
								</td>
							</tr>
							<tr>
								<td align="left">
									<br>        
									<div class="headerwithbackground">
										E-mail Format Preference:
									</div>
									<div class="body">
										<%if rsUserInfo.Fields("Contact_Method").Value = 1 then%>
											<INPUT CHECKED name=emailtype type=radio value=1>
											Plain Text
											<BR>
											<INPUT name=emailtype type=radio value=2>
											HTML (web page format)
											<br>
											<INPUT name=emailtype type=radio value=3>
											WAP enabled Cell Phone
										<%elseif rsUserInfo.Fields("Contact_Method").Value = 2 then%>
											<INPUT name=emailtype type=radio value=1>
											Plain Text
											<BR>
											<INPUT CHECKED name=emailtype type=radio value=2>
											HTML (web page format)
											<br>
											<INPUT name=emailtype type=radio value=3>
											WAP enabled Cell Phone
										<%else%>
											<INPUT  name=emailtype type=radio value=1>
											Plain Text
											<BR>
											<INPUT  name=emailtype type=radio value=2>
											HTML (web page format)
											<br>
											<INPUT CHECKED name=emailtype type=radio value=3>
											WAP enabled Cell Phone	
										<%end if%>					
									</div>
								</td>
							</tr> 
							<tr>
								<td align="left">
									<br>        
									<div class="headerwithbackground">
										Notification Preferences:
									</div>
									<div class="body">
										<%if rsUserInfo.Fields("Contact_By_Mail").Value = true then%>
											<INPUT CHECKED name=notifyjobs type=checkbox value=1>
										<%else%>
											<INPUT name=notifyjobs type=checkbox value=1>
										<%end if%>		 
										Send me e-mail when a new job posting matches my ideal job criteria.
									</div>
								</td>
							</tr> 
							<tr>
								<td align="left">
								
								
									<%if rsUserInfo.Fields("Contact_Frequency").Value = 8 then%>				
			<div class=body>
				<INPUT name =notifyfrequency type=radio value=8 CHECKED> 
				Immediately 
			</div>
		</td>
	</tr> 
	<tr>
		<td align="left">
			
				
			<div class=body>
				<INPUT name=notifyfrequency type=radio value=9> 
				Daily
			</div>
		</td>
	</tr> 
	<tr>
		<td align="left">
			
				
			<div class=body>
				<INPUT name=notifyfrequency type=radio value=<%=WeekDay(Date)%>> 
				Weekly
			</div>
		</td>
	</tr> 
	
		<%elseif rsUserInfo.Fields("Contact_Frequency").Value = 9 then%>	
			<div class=body>
				<INPUT name =notifyfrequency type=radio value=8> 
				Immediately 
			</div>
		</td>
	</tr> 
	<tr>
		<td align="left">
			
				
			<div class=body>
				<INPUT name=notifyfrequency type=radio value=9 CHECKED> 
				Daily
			</div>
		</td>
	</tr> 
	<tr>
		<td align="left">
			
				
			<div class=body>
				<INPUT name=notifyfrequency type=radio value=<%=WeekDay(Date)%>> 
				Weekly
			</div>
		</td>
	</tr> 
			
		<%else%>
		
			<div class=body>
				<INPUT name =notifyfrequency type=radio value=8> 
				Immediately 
			</div>
		</td>
	</tr> 
	<tr>
		<td align="left">
			
				
			<div class=body>
				<INPUT name=notifyfrequency type=radio value=9> 
				Daily
			</div>
		</td>
	</tr> 
	<tr>
		<td align="left">
			
				
			<div class=body>
				<INPUT name=notifyfrequency type=radio value=<%=WeekDay(Date)%> CHECKED> 
				Weekly
			</div>
		</td>
	</tr> 
	<%End If%>
							
				<tr>
				
				<td>
					<table>
						<tr>
							<td align="left" vAlign="top">
							<br>        
							<div class="headerwithbackground">
							My Resume
							</div>			
							<div class="body">
								Cut and paste a copy of your resume.
								<br>
								<%
								Dim RsRecRez
								Set RsRecRez = Server.CreateObject("adodb.recordset")
								Set RsRecRez = WriteRez(intJobSeekerID)
	
								Dim strRez
								If Not RsRecRez.EOF Then
								strRez = Trim(RsRecRez.Fields(0).Value)
								Else
								strRez=""
								End If
								%>
								<textarea cols="50" rows="4" name="rez"><%=strRez%></textarea>
							</div>
						</td>
						</tr>
						<tr>
							<td width="50%">
								<input type="submit" value="Update Registration" id="submit1" name="submit1">
								<input type="reset" value="Reset" id="reset1" name="reset1">    
							</td>
						</tr>
					</table>
				</td>	
				</tr>
			
				</form>
				
				</table>
			
					
				</td>
			</tr>
		</table>  
	
<form name="frm" action="" method="post"></form>

<!--#include file="includes/footer.asp"-->			

</div>

	<%
	if err.number <> 0 then
		Response.Redirect ("error.asp?user_id=" & Request("user_id"))
	end if
	%>

</body>
</html>