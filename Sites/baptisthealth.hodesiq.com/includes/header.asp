<html>

<!--#include file="head.asp"-->

<body bgcolor="#ffffff" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" onload="initialize();">

 
 


	<table width="100%" cellspacing="0" cellpadding="0">
		<tr>
			<td class="logoCell"><a href="http://www.e-baptisthealth.com" border="0"><script type="text/javascript" language="JavaScript"><!--
												if (screen.width < 800)
													{
													document.write('<img class="logoImg" src="http://www.e-baptisthealth.com/images/gwn/logo/bhLogo.jpg" border="0">');
													}

												else
													{
													document.write('<img class="logoImg" src="http://www.e-baptisthealth.com/images/gwn/logo/bhLogoWide.jpg" border="0">');
													}
												--></script></a></td>
			<td class="noPf" width="1" bgcolor="#08347b"><img src="http://www.e-baptisthealth.com/images/spacer.gif"></td>
			<td class="noPf" width="100%" bgcolor="#08347b"><table class="noPf" border="0" cellpadding="0" cellspacing="0" width="100%">
					<tr>
						<td class="noPf" height="21" align="right"><form class="noPf" method="post" action="http://www.e-baptisthealth.com/tools/search/results" id="form1" name="form1"><input type="hidden" name="S" value="5"><script type="text/javascript" language="JavaScript"><!--
												
												
												if (screen.width < 800)
													{
													document.write('<input class="searchBox" type="text" size="10" name="SEARCH_TERMS" value="">');
													}

												else
													{
													document.write('<input class="searchBox" type="text" size="15" name="SEARCH_TERMS" value="">');
													}
													
												--></script></td>
						<td height="21" width="48" align="right">
							<input type="image" alt="Enter search word or phrase and click here" src="http://www.e-baptisthealth.com/images/gwn/search.gif" onMouseOver="this.src='http://www.e-baptisthealth.com/images/gwn/search-over.gif';" onMouseOut="this.src='http://www.e-baptisthealth.com/images/gwn/search.gif';" border="0" name="image"></form></td>
						<td><script type="text/javascript" language="JavaScript"><!--
												
												if (screen.width < 800)
													{
													document.write('<img src="http://www.e-baptisthealth.com/images/spacer.gif" width="20">');
													}

												else
													{
													}
												--></script></td>
					</tr>
					<tr>
						<td colspan="3" height="43" width="100%" align="right" valign="top" bgcolor="#fdebbc"><script type="text/javascript" language="JavaScript"><!--
												
												if (screen.width < 800)
													{
													
													}

												else
													{
													document.write('<img class="watermarkImg" src="http://www.e-baptisthealth.com/images/gwn/layout/watermark.gif" width="429" height="43" border="0">');
													}
												--></script></td>
					</tr>
					<tr>
						<td class="noPf" height="20" width="100%" bgcolor="#08347b"><img src="http://www.e-baptisthealth.com/images/spacer.gif"></td>
					</tr>
				</table>
			</td>
		</tr>

		<tr>
			
				


				
						
					


				
						
					


				
						
							<!-- Default Navigation Exists ("Do Not Remove") -->
						


						


						
							<!-- cdm: critical closure of if/then -->
							<!-- cdm: continue on with Default "NOT Removed" -->
						


						
								
									<!-- Right Navigation Exists -->
								


								
							


						
								
									<!-- Left Navigation Exists -->
									<td class="navCell" bgcolor="fdebbc" valign="top">
								


								<!-- display default navigation -->


								
										


  	<!-- begin: navBar -->	



<%dim BGColor
If (Instr(1, Request.ServerVariables("URL"), "apply_online", VbTextCompare) = 0) And (Instr(1, Request.ServerVariables("URL"), "LongApplication.asp", VbTextCompare) = 0) And (Instr(1, Request.ServerVariables("URL"), "applicationFullLogin.asp", VbTextCompare) = 0) Then
	BGColor="#ffffff"
else
	BGColor=LONG_FORM_COLOR
end if%>

<%'If (Instr(1, Request.ServerVariables("URL"), "apply_online", VbTextCompare) = 0) And (Instr(1, Request.ServerVariables("URL"), "LongApplication.asp", VbTextCompare) = 0) And (Instr(1, Request.ServerVariables("URL"), "applicationFullLogin.asp", VbTextCompare) = 0) Then%>

<table cellpadding="0" cellspacing="0" border="0" width="100%">

<!-- header -->
	
		
	
<!-- cdm: colspan/use spacer inside -->
		<tr>
			<td valign="top" align="left" class="navBarHdrCell" colspan="2"><a class="navBarHdr" onmouseOver="this.className='navBarHdrOver';" onmouseOut="this.className='navBarHdr';" href="http://community.e-baptisthealth.com/services/more.html" target><img src="http://www.e-baptisthealth.com/images/spacer.gif" width="3" border="0">Patient Services</a></td>
		</tr>

	
		
	

	

<!-- mainNav -->

	
		
	

		<tr>
			<td valign="top"><img src="http://www.e-baptisthealth.com/images/spacer.gif" width="3" border="0"><img src="http://www.e-baptisthealth.com/images/nav/navStd.gif" class="vimg" border="0"><img src="http://www.e-baptisthealth.com/images/spacer.gif" width="3" border="0"></td>
			<td valign="top" width="100%"><a class="navBar" onmouseOver="this.className='navBarOver';" onmouseOut="this.className='navBar';" href="http://community.e-baptisthealth.com/tools/find-physician/index.jsp" target>Find a Physician</a></td>
		</tr>
		<tr>
			<td colspan="2"><img src="http://www.e-baptisthealth.com/images/spacer.gif" width="1" height="2" border="0"></td>
		</tr>

		
			
		


	
		
	

		<tr>
			<td valign="top"><img src="http://www.e-baptisthealth.com/images/spacer.gif" width="3" border="0"><img src="http://www.e-baptisthealth.com/images/nav/navStd.gif" class="vimg" border="0"><img src="http://www.e-baptisthealth.com/images/spacer.gif" width="3" border="0"></td>
			<td valign="top" width="100%"><a class="navBar" onmouseOver="this.className='navBarOver';" onmouseOut="this.className='navBar';" href="http://patients.e-baptisthealth.com" target>Patient &amp; Visitor<br>Information</a></td>
		</tr>
		<tr>
			<td colspan="2"><img src="http://www.e-baptisthealth.com/images/spacer.gif" width="1" height="2" border="0"></td>
		</tr>

		
			
		


	
		
	

		<tr>
			<td valign="top"><img src="http://www.e-baptisthealth.com/images/spacer.gif" width="3" border="0"><img src="http://www.e-baptisthealth.com/images/nav/navStd.gif" class="vimg" border="0"><img src="http://www.e-baptisthealth.com/images/spacer.gif" width="3" border="0"></td>
			<td valign="top" width="100%"><a class="navBar" onmouseOver="this.className='navBarOver';" onmouseOut="this.className='navBar';" href="http://patients.e-baptisthealth.com/pc/intro.html" target>Primary Care</a></td>
		</tr>
		<tr>
			<td colspan="2"><img src="http://www.e-baptisthealth.com/images/spacer.gif" width="1" height="2" border="0"></td>
		</tr>

		
			
		


	
		
	
<tr>
		<td colspan="2"><img src="http://www.e-baptisthealth.com/images/spacer.gif" width="1" height="6" border="0"></td>
	</tr>

</table>

<!-- end: navBar -->




										


  	<!-- begin: navBar -->	






<table cellpadding="0" cellspacing="0" border="0" width="100%">

<!-- header -->
	
		
	

		<tr>
			<td valign="top" class="navBarHdrCell" colspan="2">
			<span class="navBarHdr"><img src="http://www.e-baptisthealth.com/images/spacer.gif" width="3" border="0">About Baptist Health</span></td>
		</tr>

	
		
	

	

<!-- mainNav -->

	
		
	

		<tr>
			<td valign="top"><img src="http://www.e-baptisthealth.com/images/spacer.gif" width="3" border="0"><img src="http://www.e-baptisthealth.com/images/nav/navStd.gif" class="vimg" border="0"><img src="http://www.e-baptisthealth.com/images/spacer.gif" width="3" border="0"></td>
			<td valign="top" width="100%"><a class="navBar" onmouseOver="this.className='navBarOver';" onmouseOut="this.className='navBar';" href="http://www.e-baptisthealth.com/about_us/hospitals/index.html" target>Our Circle of Care</a></td>
		</tr>
		<tr>
			<td colspan="2"><img src="http://www.e-baptisthealth.com/images/spacer.gif" width="1" height="2" border="0"></td>
		</tr>

		
			
		


	
		
	

		<tr>
			<td valign="top"><img src="http://www.e-baptisthealth.com/images/spacer.gif" width="3" border="0"><img src="http://www.e-baptisthealth.com/images/nav/navStd.gif" class="vimg" border="0"><img src="http://www.e-baptisthealth.com/images/spacer.gif" width="3" border="0"></td>
			<td valign="top" width="100%"><a class="navBar" onmouseOver="this.className='navBarOver'" onmouseOut="this.className='navBar';" href="http://community.e-baptisthealth.com/wtg/index.html" target>Ways to Give</a></td>
		</tr>
		<tr>
			<td colspan="2"><img src="http://www.e-baptisthealth.com/images/spacer.gif" width="1" height="2" border="0"></td>
		</tr>

		
			
		


	
		
	

		<tr>
			<td valign="top"><img src="http://www.e-baptisthealth.com/images/spacer.gif" width="3" border="0"><img src="http://www.e-baptisthealth.com/images/nav/navStd.gif" class="vimg" border="0"><img src="http://www.e-baptisthealth.com/images/spacer.gif" width="3" border="0"></td>
			<td valign="top" width="100%"><a class="navBar" onmouseOver="this.className='navBarOver'" onmouseOut="this.className='navBar';" href="http://community.e-baptisthealth.com/careers/index.html" target>Careers</a></td>
		</tr>
		<tr>
			<td colspan="2"><img src="http://www.e-baptisthealth.com/images/spacer.gif" width="1" height="2" border="0"></td>
		</tr>

		
			
		


	
		
	

		<tr>
			<td valign="top"><img src="http://www.e-baptisthealth.com/images/spacer.gif" width="3" border="0"><img src="http://www.e-baptisthealth.com/images/nav/navStd.gif" class="vimg" border="0"><img src="http://www.e-baptisthealth.com/images/spacer.gif" width="3" border="0"></td>
			<td valign="top" width="100%"><a class="navBar" onmouseOver="this.className='navBarOver'" onmouseOut="this.className='navBar'" href="http://community.e-baptisthealth.com/careers/volunteers.html" target>Volunteers</a></td>
		</tr>
		<tr>
			<td colspan="2"><img src="http://www.e-baptisthealth.com/images/spacer.gif" width="1" height="2" border="0"></td>
		</tr>

		
			
		


	
		
	
<tr>
		<td colspan="2"><img src="http://www.e-baptisthealth.com/images/spacer.gif" width="1" height="6" border="0"></td>
	</tr>

</table>

<!-- end: navBar -->




									


								
										


										
												


  	<!-- begin: navBar -->	






<table cellpadding="0" cellspacing="0" border="0" width="100%">

<!-- header -->
	
		
	

		<tr>
			<td valign="top" class="navBarHdrCell" colspan="2">
			<span class="navBarHdr"><img src="http://www.e-baptisthealth.com/images/spacer.gif" width="3" border="0">Medical Monday </span></td>
		</tr>

	
		
	

	

<!-- mainNav -->

	
		
	

		<tr>
			<td valign="top"><img src="http://www.e-baptisthealth.com/images/spacer.gif" width="3" border="0"><img src="http://www.e-baptisthealth.com/images/nav/navStd.gif" class="vimg" border="0"><img src="http://www.e-baptisthealth.com/images/spacer.gif" width="3" border="0"></td>
			<td valign="top" width="100%"><a class="navBar" onmouseOver="this.className='navBarOver';" onmouseOut="this.className='navBar';" href="http://community.e-baptisthealth.com/archives/2004/0414medicalMon.html" target>Medical Monday Topics</a></td>
		</tr>
		<tr>
			<td colspan="2"><img src="http://www.e-baptisthealth.com/images/spacer.gif" width="1" height="2" border="0"></td>
		</tr>

		
			
		


	
		
	
<tr>
		<td colspan="2"><img src="http://www.e-baptisthealth.com/images/spacer.gif" width="1" height="6" border="0"></td>
	</tr>

</table>

<!-- end: navBar -->




											


										
												

												


  	<!-- begin: navBar -->	






<table cellpadding="0" cellspacing="0" border="0" width="100%">

<!-- header -->
	
		
	

		<tr>
			<td valign="top" class="navBarHdrCell" colspan="2">
			<span class="navBarHdr"><img src="http://www.e-baptisthealth.com/images/spacer.gif" width="3" border="0">Special Feature</span></td>
		</tr>

	
		
	

	

<!-- mainNav -->

	
		
	

		<tr>
			<td valign="top"><img src="http://www.e-baptisthealth.com/images/spacer.gif" width="3" border="0"><img src="http://www.e-baptisthealth.com/images/nav/navStd.gif" class="vimg" border="0"><img src="http://www.e-baptisthealth.com/images/spacer.gif" width="3" border="0"></td>
			<td valign="top" width="100%"><a class="navBar" onmouseOver="this.className='navBarOver';" onmouseOut="this.className='navBar';" href="http://community.e-baptisthealth.com/archives/2004/halloween.html" target>Halloween Safety</a></td>
		</tr>
		<tr>
			<td colspan="2"><img src="http://www.e-baptisthealth.com/images/spacer.gif" width="1" height="2" border="0"></td>
		</tr>

		
			
		


	
		
	

		<tr>
			<td valign="top"><img src="http://www.e-baptisthealth.com/images/spacer.gif" width="3" border="0"><img src="http://www.e-baptisthealth.com/images/nav/navStd.gif" class="vimg" border="0"><img src="http://www.e-baptisthealth.com/images/spacer.gif" width="3" border="0"></td>
			<td valign="top" width="100%"><a class="navBar" onmouseOver="this.className='navBarOver'" onmouseOut="this.className='navBar'" href="http://jacksonville.com/tu-online/stories/102504/bus_16992532.shtml" target="_blank">Electronic Medical Record</a></td>
		</tr>
		<tr>
			<td colspan="2"><img src="http://www.e-baptisthealth.com/images/spacer.gif" width="1" height="2" border="0"></td>
		</tr>

		
			
		


	
		
	
<tr>
		<td colspan="2"><img src="http://www.e-baptisthealth.com/images/spacer.gif" width="1" height="6" border="0"></td>
	</tr>

</table>

<!-- end: navBar -->

<%'end if%>


											


										

										

									

								
									</td>

									<td class="noPf" bgcolor="#08347b" height="100%" width="1"><img src="http://www.e-baptisthealth.com/images/spacer.gif" width="1"></td>

									<!-- cdm: close navBar td -->
									<!-- cdm: begin breadcrumb td here when there is a positive for nav -->

									<!-- End of Left Navigation Exists -->
									<td valign="top" width="100%">
								


							
					

				
				<!-- insert breadcrumb -->
				<table cellspacing="0" cellpadding="0" border="0" width="100%">
					<tr>
						<td>
							
								
										
											<table class="bgbreadcrumb" cellspacing="0" cellpadding="0" border="0" width="100%" background="http://www.e-baptisthealth.com/images/layout/breadcrumbBg.gif">
										
									
							

							<tr>
								<td align="left" valign="bottom" class="copy">
									<img src="http://www.e-baptisthealth.com/images/spacer.gif" width="9">

									
										
												
													<a class="navBcrumb" target href="http://www.e-baptisthealth.com/"><img src="http://www.e-baptisthealth.com/images/nav/breadCrumb.gif" width="7" height="10" border="0">e-baptisthealth.com<img src="http://www.e-baptisthealth.com/images/spacer.gif" width="4" height="8" border="0"></a>
												
											
									
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>

			<script type="text/javascript" language="JavaScript">
<!--
	if (screen.width > 800)
		{
		document.write('<table cellspacing="0" cellpadding="3" border="0" width="740" bgcolor="<%=BGColor%>">');
		}

	else
		{
		document.write('<table cellspacing="0" cellpadding="3" border="0" width="100%" bgcolor="<%=BGColor%>">');
		}
-->
</script>

				<%If (Instr(1, Request.ServerVariables("URL"), "apply_online", VbTextCompare) = 0) And (Instr(1, Request.ServerVariables("URL"), "LongApplication.asp", VbTextCompare) = 0) And (Instr(1, Request.ServerVariables("URL"), "applicationFullLogin.asp", VbTextCompare) = 0) Then%>
					<tr><td COLSPAN="2"><img src="http://community.e-baptisthealth.com/images/c_careers_hdr.gif"></td></tr>
				<%end if%>							
				<tr>
					<td valign="top" width="160">
					<%If (Instr(1, Request.ServerVariables("URL"), "apply_online", VbTextCompare) = 0) And (Instr(1, Request.ServerVariables("URL"), "LongApplication.asp", VbTextCompare) = 0) And (Instr(1, Request.ServerVariables("URL"), "applicationFullLogin.asp", VbTextCompare) = 0) Then%>

					<!--BEGIN HOT OPENINGS TABLEEE8C82-->
					<%=GetTopX(5, 160, "#093980", "#FFFFFF","#fdebbc","#000000", "New Openings!")%>
					<!--END HOT OPENINGS TABLE-->
					<br>
					<%CreateUL%>
					<%end if%>
					&nbsp;&nbsp;
				</td>
				
					<td class="pfContent" VALIGN="top">
						<!-- Image -->
						
						
						
						<!-- Content -->
						<div id="divContent">
						
						<!-- start: body -->




									<table bgcolor="<%=BGColor%>" VALIGN="top" cellspacing="0" cellpadding="0" border="0" width="100%" bgcolor>
										<tr>
											<td><img src="http://www.e-baptisthealth.com/images/spacer.gif" width="8"></td><!-- very important navBar/content spacer -->
											<td><img src="http://www.e-baptisthealth.com/images/spacer.gif" height="9"></td>
											<td><img src="http://www.e-baptisthealth.com/images/spacer.gif" width="8"></td><!-- very important content/border spacer -->										</tr>
</tr>


										
										<tr>
											<td></td>
											<td VALIGN="top">

											<!-- begin: content body -->
	