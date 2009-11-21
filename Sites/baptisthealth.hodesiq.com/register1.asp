<!--#include file="includes/local_subs.asp"-->
<!--#include virtual="../cc/JS_agent.asp"-->

<%on error resume next%>
               
<!--#include file="includes/header.asp"-->
		
		
				<form action="register2.asp" name="frm" method="post" onsubmit="return Validate3()">
				
				<table width="100%">
				<tr>
				<td width="400">
				<%=Request("message")%>  
				<div class="headerwithbackground">
					Personal Preferences
				</div>
				<div class="plainText">
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
			<td align="left" width="400">
				<br>        
				<div class="headerwithbackground">
					My Account Login Preferences
				</div>
				<div class="plainText">
					<strong>E-mail: *</strong>
					<br>
					<input maxLength="50" name="email">
					<br>                                                                   
					<strong>Password: *</strong>
					<br>
					Minimum length: 6 characters
					<br>	        
					<input maxLength="50" name="password" type="password">
					<br>
					<strong>Verify Password:</strong> *<br>
					Minimum length: 6 characters
					<br>	        
					<input maxLength="50" name="password2" type="password"> 
					<br>
					<strong>Password Recovery Question: * </strong>
					<br>
					<input name="question" maxlength="2000" size="38"> 
					<br> 
					If you forget your password, we will email it to you if you are able to answer your password question.
			  		<br>
					<strong>Password Recovery Answer: *</strong>
					<br>
					<input name="response" maxlength="2000" size="38">
					<br>
					We will also email you your password recovery
					answer using your preferred method.
				</div>
				<br>        
				<div class="headerwithbackground">
					My Contact Information
				</div>
				<table width="400">
				<tr>
					<td align="left" vAlign="bottom">
						      
												<div class="plainText">
											First Name: *
											<br>
											<input name="firstname"> 
										</div>
									</td>
									<td align="center" vAlign="bottom">
								     
										<div class="plainText">
											Middle Initial:
											<br>
											<input name="middlename" maxlength=1 size=1> 
										</div>
									</td>
									<td align="left" vAlign="bottom" colspan=2>
									      
										<div class="plainText">
											Last Name: *
											<br>
											<input name="lastname"> 
										</div>
									</td>
								</tr>
								<tr>
									<td align="left" vAlign="top" colspan=4>
										<br>        
										<div class="plainText">
											Address:
											<br>
											<input name="address" maxlength="200" size=35>
										</div>
									</td>
								</tr>
								<tr>
									<td align="left" vAlign="bottom" colspan=4>
										<br>        
										<div class="plainText">
											Address 2:
											<br>
											<input name="address2" maxlength="200" size=35>
										</div>
									</td>
									</tr>
									<tr>
									<td align="left" vAlign="top">
										<br>
										<div class="plainText">
											City:
											<br>
											<input name="city" type=text maxlength=50> 
										</div>
									</td>
									<td align="left" vAlign="top">  
										<br>      
										<div class="plainText">
											State/Province:
											<br>	
										<select name="State">
											<option value="0">SELECT ONE</option>
											<%=GetLocationDropdownOptions("All")%>
										</select>
										<input type="hidden" name="State_hidden" size="15" MAXLENGTH=2 value="<%=State%>">
										</div>
									</td>
									<td align="left" vAlign="top" width="33%" colspan=2>
										<br>        
										<div class="plainText">				
											Zip Code:
											<br>
											<input name="zipcode"> 
										</div>
									</td>
								</tr>
								<tr>
									<td align="left" vAlign="top" width="33%" colspan=2>
										<br>        
										<div class="plainText">
											Country:
											<br>
											<select name="Country">
												<%=GetCountryDropdownOptions()%>
											</select>
											<input type="hidden" name="Country_hidden" size="15" MAXLENGTH=30 value="<%=Country%>">
										</div>
									</td>
									
								</tr>
							<tr>
							
						<td align="left" vAlign="bottom" width="33%">
										<br>        
										<div class="plainText">
											Home Phone:
											<br>
											<input name="homephone" size="15" maxlength=17>
										</div>
						</td>	
						<td align="left" vAlign="bottom" width="33%">
							<br>        
							<div class="plainText">
								Work Phone:
								<br>
								
								
								<input name="workphone" size="15" maxlength=17>
							</div>
						</td>
						<td align="left" vAlign="bottom" width="33%" colspan=2>
							<br>        
							<div class="plainText">
		                    		Mobile Phone:
								<br>
								<input name="mobilephone" size="15" maxlength=17> 
							</div>
						</td>
					</tr>
					</table>
			
								
								 
								<tr vAlign="top" align="left">
									<td align="left"> 
										<br>
										<div class="headerwithbackground">
											My Notification Preferences 
			       						</div>
										<div class="plainText">	
											Privacy Options:
											<br>			
											<input name="privacy" type="checkbox" value="1"> 
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
										<div class="plainText">
											<input name="emailtype" type="radio" value="1">
											Plain Text
											<br>
											<input CHECKED name="emailtype" type="radio" value="2">
											HTML (web page format)
											<br>
											<input name="emailtype" type="radio" value="3">
											WAP enabled Cell Phone
										</div>
									</td>
								</tr> 
								<tr>
									<td align="left">
										<br>        
										<div class="headerwithbackground">
											Notification Preferences:
										</div>
										<div class="plainText">
											<input CHECKED name="notifyjobs" type="checkbox" value="1"> 
											Send me e-mail when a new job posting matches my ideal job criteria.
										</div>
									</td>
								</tr> 
								<tr>
									<td align="left">
										<div class="plainText">
											<input name="notifyfrequency" type="radio" value="8"> 
											Immediately 
										</div>
									</td>
								</tr> 
								<tr>
									<td align="left">	
										<div class="plainText">
											<input name="notifyfrequency" type="radio" value="9" CHECKED> 
											Daily
										</div>
									</td>
								</tr> 
								<tr>
									<td align="left">	
										<div class="plainText">
											<input name="notifyfrequency" type="radio" value="<%=WeekDay(Date)%>"> 
											Weekly
										</div>	
									</td>
								</tr> 
								
					<tr>
					
					<td>
						<table width="400">
							<tr>
								<td align="left" vAlign="top">
								<br>        
								<div class="headerwithbackground">
								My Resume
								</div>			
								<div class="plainText">
									Cut and paste a copy of your resume.
									<br>
									<textarea cols="50" rows="4" name="resume"></textarea>
								</div>
							</td>
							</tr>
							<tr>
								<td align="left" width="50%">
									<input type="submit" value="Register With Us" id="submit1" name="submit1">
									<input type="reset" value="Reset" id="reset1" name="reset1">    
								</td>
							</tr>
						</table>
					</td>	
					</tr>
				
				</form>
					</table>
		<br clear="all">	
<!--#include file="includes/footer.asp"-->			





