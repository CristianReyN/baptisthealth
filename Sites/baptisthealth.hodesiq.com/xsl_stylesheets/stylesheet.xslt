<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	
<xsl:template match="/">

<LINK REL="stylesheet" HREF="http://community.e-baptisthealth.com/components/css/greystone.css" TYPE="text/css" />
<LINK REL="stylesheet" HREF="http://community.e-baptisthealth.com/components/css/bmc.css" TYPE="text/css" />
<title>Baptist Health of Northeast Florida - Work Worth Doing</title>
<html>

<head>
	<STYLE TYPE="text/css">
			P.breakhere{page-break-before: always}
	</STYLE>

	<link REL="stylesheet" HREF="http://community.e-baptisthealth.com/components/css/greystone.css" TYPE="text/css" />
	<link REL="stylesheet" HREF="http://community.e-baptisthealth.com/components/css/bmc.css" TYPE="text/css" />
</head>

<body leftmargin="3" topmargin="6" class="copy" bgcolor="#ffffff">
<table border="0" cellpadding="0" cellspacing="0" width="764" bordercolor="#f5f5f5">

	<tr><td bgcolor="#09357a"><img src="/images/spacer.gif" WIDTH="1" HEIGHT="1" /></td></tr>

	<tr>
		<td bgcolor="#09357a" valign="top" align="left">
			<table border="0" cellpadding="0" cellspacing="0" width="763">
				<tr>
					<td width="1"><img src="/images/spacer.gif" width="1" /></td>
	
					<td width="100%" bgcolor="#ffffff" valign="top">
				
						<table border="0" cellpadding="0" cellspacing="0" width="100%">
							<tr>
								<td width="175" valign="top" align="center">
								<a class="logo" alt="e-baptisthealth.com" title="e-baptisthealth.com" href="http://www.e-baptisthealth.com">
								<img id="bmcLogo" src="http://community.e-baptisthealth.com/images/logo/bhLogo.jpg" border="0" /></a>
								</td>
								<td width="588" valign="top" align="left" height="100%" class="brPx1">
									<table cellspacing="0" cellpadding="0" border="0" width="588" height="74" background="http://community.e-baptisthealth.com/images/header/watermark.jpg">
										<tr>
											<td><img src="/images/spacer.gif" width="2" /></td>
											<td align="left" valign="top" width="150">
												<img class="vimg" id="imgMedicalservices" src="http://community.e-baptisthealth.com/images/header/medicalservices.gif" />
											</td>
											<td><img src="/images/spacer.gif" width="5" /></td>
											<td align="left" valign="top" width="150"><img class="vimg" id="imgHealthinformation" src="http://community.e-baptisthealth.com/images/header/healthinformation.gif" /></td>
									<table cellspacing="0" cellpadding="0" border="0" width="100%">
										<tr>
											<td width="100%" bgcolor="#09357a" class="hospitalStrip" valign="bottom">Baptist Medical Centers:
										
											</td>
										</tr>
									</table>

										</tr>
									</table>

								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>

			<table cellspacing="0" cellpadding="0" border="0" width="763">
				<tr>
					<td width="1"><img src="/images/spacer.gif" width="1" /></td>
					<td width="100%"><img src="/images/spacer.gif" width="1" /></td>
				</tr>
			</table>
		</td>
	</tr>
</table>

<table border="0" cellpadding="0" cellspacing="0" width="764" bordercolor="#f5f5f5">
	<tr>
		<td bgcolor="#003366" valign="top" align="left">
			<table cellspacing="0" cellpadding="0" border="0" width="763">

				<tr>
					<td width="100%">

						<table border="0" cellpadding="0" cellspacing="0" width="100%">
							<tr>
								<td width="1"><img src="/images/spacer.gif" width="1" /></td>

								<!-- left side navigation -->
								<td width="175" bgcolor="#fdebbc" valign="top">
									<table cellspacing="0" cellpadding="0" border="0" width="100%">
										<tr>
											<td>
											</td>
											<td>
											<!--half down-->
											
<table cellpadding="0" cellspacing="0" border="0" width="100%">
	<tr>
		<td>
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
			.smalltextb {
				font-family: Geneva, Arial, Helvetica, san-serif;
				font-size: 8pt;
				font-style: bold;
				font-weight: bold;
				color: #000000;
			}
			</style>
		</td>
	</tr>
	<tr>
		<td width="100%" height="0" valign="top"> 
			<table width="100%" border="0" cellpadding="1" cellspacing="1">
        <tr><td height='5'></td></tr>
        <tr>
					<td>
						<p class="smalltextb">List of jobs applied for</p>
					</td>
				</tr>
				
				<xsl:if test="LongApplication/strhidJob1 != ''" >
				<tr>
					<td colspan='3'>
						<li><p class='smalltextb'><xsl:value-of select="LongApplication/strhidJob1" /></p></li>
					</td>
				</tr>
				</xsl:if>

				<xsl:if test="LongApplication/strhidJob2 != ''" >
				<tr>
					<td colspan='3'>
						<li><p class='smalltextb'><xsl:value-of select="LongApplication/strhidJob2" /></p></li>
					</td>
				</tr>
				</xsl:if>

				<xsl:if test="LongApplication/strhidJob3 != ''" >
				<tr>
					<td colspan='3'>
						<li><p class='smalltextb'><xsl:value-of select="LongApplication/strhidJob3" /></p></li>
					</td>
				</tr>
				</xsl:if>
												
				<xsl:if test="LongApplication/strhidJob4 != ''" >
				<tr>
					<td colspan='3'>
						<li><p class='smalltextb'><xsl:value-of select="LongApplication/strhidJob4" /></p></li>
					</td>
				</tr>
				</xsl:if>
																
				<xsl:if test="LongApplication/strhidJob5 != ''" >
				<tr>
					<td colspan='3'>
						<li><p class='smalltextb'><xsl:value-of select="LongApplication/strhidJob5" /></p></li>
					</td>
				</tr>
				</xsl:if>

				<xsl:if test="LongApplication/strhidJob6 != ''" >
				<tr>
					<td colspan='3'>
						<li><p class='smalltextb'><xsl:value-of select="LongApplication/strhidJob6" /></p></li>
					</td>
				</tr>
				</xsl:if>
				
				<xsl:if test="LongApplication/strhidJob7 != ''" >
				<tr>
					<td colspan='3'>
						<li><p class='smalltextb'><xsl:value-of select="LongApplication/strhidJob7" /></p></li>
					</td>
				</tr>
				</xsl:if>				
								
				<tr><td height='5'></td></tr>
			
        <tr> 
					<td height="5%" colspan="5"> <p class="smalltextb">Fields in bold are required</p></td>
        </tr>
        <tr> 
          <td height="1%"> <p class="smalltextb">Social Security Number</p></td>
          <td><p class="smalltext"></p></td>
          <td colspan="3"><p class="smalltext"></p></td>
        </tr>
        <tr> 
          <td height="2%"><p class="smalltext"><input name="txtSSN" type="text" value="{LongApplication/txtSSN}" /></p></td>
          <td><p class="smalltext"></p></td>
          <td colspan="3"><p class="smalltext"></p></td>
        </tr>
        
       <tr> 
          <td width="21%" valign="top"><p class="smalltextb">First Name</p></td>
          <td width="25%" valign="top"><p class="smalltext">Middle Name</p></td>
          <td colspan="3" valign="top"><p class="smalltextb">Last Name</p></td>
				</tr>        
				
        <tr> 
          <td height="2%"><font size="-2"><input name="txtFirstName" type="text" value="{LongApplication/txtFirstName}" /></font></td>
          <td><font size="-2"><input name="txtMidName" type="text" value="{LongApplication/txtMidName}" /></font></td>
          <td colspan="3"><font size="-2"><input name="txtLastName" type="text" value="{LongApplication/txtLastName}" /></font></td>
        </tr>
        <tr> 
          <td height="2%"><p class="smalltextb">Street Address</p></td>
          <td class="smalltextb">County</td>
          <td colspan="3" class="smalltextb">City</td>
        </tr>
        <tr>
					<td height="2%"><font size="-2"><input name="txtAddress" type="text" value="{LongApplication/txtAddress}" /></font></td>
          <td><font size="-2"><input name="txtCounty" type="text" value="{LongApplication/txtCounty}" /></font></td>
          <td colspan="3"><font size="-2"><input name="txtCity" type="text" value="{LongApplication/txtCity}" /></font></td>
        </tr>

        <tr> 
          <td height="1%" class="smalltextb">State</td>
          <td class="smalltextb">Zip</td>
          <td colspan="3"><p class="smalltextb">Home Phone</p></td>
        </tr>
        
        <tr> 
          <td height="2%"><font size="-2"><input type="text" name="selState" value="{LongApplication/selState}" /></font></td>
          <td><font size="-2"><input name="txtZip" type="text" value="{LongApplication/txtZip}" /></font></td>
          <td colspan="3"><font size="-2"><input name="txtHomePhone" type="text" value="{LongApplication/txtHomePhone}" /></font></td>
        </tr>
        <tr> 
          <td height="1%" valign="top"><p class="smalltext">Alternative Phone</p></td>
          <td valign="top"><p class="smalltextb">Email Address</p></td>
          <td colspan="3"><font size="-2"></font></td>
        </tr>
        <tr> 
          <td height="2%"><font size="-2"><input name="txtOtherPhone" type="text" value="{LongApplication/txtOtherPhone}" /></font></td>
          <td><font size="-2"><input name="txtEmailAddress" type="text" value="{LongApplication/txtEmailAddress}" /></font></td>
          <td colspan="3"><font size="-2"></font></td>
        </tr>

        <tr> 
          <td height="18%" colspan="2" valign="top"><p class="smalltextb">Has your name legally changed in the last ten years?</p><br/>
						<xsl:if test="LongApplication/radNameChange = 'Yes'" >
            <input type="radio" name="radNameChange" disabled="disabled" checked="checked" />
            Yes 
            <input type="radio" name="radNameChange" disabled="disabled"  />
            No<br/>
						</xsl:if>
						
						<xsl:if test="LongApplication/radNameChange = 'No'" >
            <input type="radio" name="radNameChange" disabled="disabled" />
            Yes 
            <input type="radio" name="radNameChange"  disabled="disabled" checked="checked" />
            No<br/>
						</xsl:if>
						
            Former name(s): <br/>
            <input type="text" name="txtFormerName" value="{LongApplication/txtFormerName}" />
            <!--
            <textarea name="txtFormerName" cols="50" /></textarea>
            -->
          </td>
          <td colspan="3"></td>
        </tr>
        
<!--
        <tr valign="top"> 
          <td height="4%" colspan="5"><p class="smalltext">Where did you first see this position?</p>
            <input type="text" name="selEmedia" value="{LongApplication/selEmedia}" />
          </td>
        </tr>
-->
        <tr> 
          <td height="1%" colspan="5"><p class="smalltext">If a Baptist Health employee referred you, please indicate employee's name</p></td>
        </tr>
        <tr> 
          <td height="4%" colspan="3"><p class="smalltext">Name of employee<input name="txtReferrerName" type="text" value="{LongApplication/txtReferrerName}" size="45" /></p>
          </td>
          <td colspan="3"><p class="smalltext">Department<input name="txtDept" type="text" value="{LongApplication/txtDept}" /></p></td>
        </tr>

        <tr> 
          <td height="1%" colspan="5"> <p class="smalltext">If you were referred by a school, please indicate name of school</p></td>
        </tr>
        <tr> 
          <td height="2%" colspan="5"> <p class="smalltext"><input name="txtSchoolReferring" type="text" value="{LongApplication/txtSchoolReferring}" size="45" /></p></td>
        </tr>

        <tr> 
          <td colspan="2" rowspan="3" valign="top"><p class="smalltext">Have you resided in another state within the last 7 years?</p></td>
          <td width="28%" rowspan="3" valign="top" align="right">
          <p class="smalltext">
					<xsl:if test="LongApplication/radPast7Years = 'Yes'" >
          <input type="radio" name="radPast7Years" disabled="disabled" checked="checked" />Yes 
          <input type="radio" name="radPast7Years"  disabled="disabled" />No<br/>
						<!--
						<tr>
						<td><input name="txtCounty7Years_2" type="text" value="{LongApplication/txtCounty7Years_2}" size="10" /></td>
						<td><input type="text" name="selState7Years_2" value="{LongApplication/selState7Years_2}" /></td>
						</tr>
						<tr>
						<td><input name="txtCounty7Years_3" type="text" value="{LongApplication/txtCounty7Years_3}" size="10" /></td>
						<td><input type="text" name="selState7Years_3" value="{LongApplication/selState7Years_3}" /></td>
						</tr>
						-->
					</xsl:if>          
					<xsl:if test="LongApplication/radPast7Years = 'No'" >
          <input type="radio" name="radPast7Years" disabled="disabled" />Yes 
          <input type="radio" name="radPast7Years"  disabled="disabled" checked="checked" />No
					</xsl:if>          

          </p>If yes,</td>
          <td width="9%"><p class="smalltext"><input name="txtCounty7Years_1" type="text" value="{LongApplication/txtCounty7Years_1}" size="10" /></p></td>
          <td width="17%" valign="top"><input type="text" name="selState7Years_1" value="{LongApplication/selState7Years_1}" /></td>
        </tr>

        <tr> 
          <td><input name="txtCounty7Years_2" type="text" value="{LongApplication/txtCounty7Years_2}" size="10" /></td>
          <td width="17%"><input type="text" name="selState7Years_2" value="{LongApplication/selState7Years_2}" /></td>
        </tr>

        <tr>
					<td><input name="txtCounty7Years_3" type="text" value="{LongApplication/txtCounty7Years_3}" size="10" /></td>
          <td width="17%"><input type="text" name="selState7Years_3" value="{LongApplication/selState7Years_3}" /></td>
        </tr>
        
        <tr> 
          <td height="1%" colspan="2"><p class="smalltext">Do you have relatives employed at Baptist Health?</p></td>
          <td colspan="1" align="right"><p class="smalltext">
          
					<xsl:if test="LongApplication/radRelativesWithBaptist = 'Yes'" >
          <input type="radio" name="radRelativesWithBaptist" disabled="disabled" checked="checked" />Yes 
          <input type="radio" name="radRelativesWithBaptist"  disabled="disabled" />No
					</xsl:if>          

					<xsl:if test="LongApplication/radRelativesWithBaptist = 'No'" >
          <input type="radio" name="radRelativesWithBaptist" disabled="disabled" />Yes 
          <input type="radio" name="radRelativesWithBaptist"  disabled="disabled" checked="checked" />No
					</xsl:if>          
          
          </p></td>
        </tr>

        <tr> 
          <td height="1%" colspan="2"><p class="smalltext">What is your availability?</p></td>
          <td colspan="3"><font size="-2"></font></td>
        </tr>

				<xsl:choose>        
        <xsl:when test="contains(LongApplication/radAvailability, 'Full time') and contains(LongApplication/radAvailability, 'PRN') and contains(LongApplication/radAvailability, 'Part time') and contains(LongApplication/radAvailability, 'Other')">
					<TR><TD><P class="smalltext"><INPUT disabled="disabled" checked="checked" tabIndex="15" type="checkbox" /><font color="red">Full Time</font></P></TD>
						<TD><P class="smalltext"><INPUT disabled="disabled" checked="checked" tabIndex="16" type="checkbox" /><font color="red">PRN</font></P></TD>
					</TR>
					<TR>
						<TD><P class="smalltext"><INPUT disabled="disabled" checked="checked" tabIndex="17" type="checkbox" /><font color="red">Part Time</font></P></TD>
						<TD><P class="smalltext"><INPUT disabled="disabled" checked="checked" tabIndex="18" type="checkbox" /><font color="red">Other</font></P></TD>
					</TR>
				</xsl:when>
        <xsl:when test="contains(LongApplication/radAvailability, 'Full time') and contains(LongApplication/radAvailability, 'PRN') and contains(LongApplication/radAvailability, 'Part time')">
					<TR><TD><P class="smalltext"><INPUT disabled="disabled" checked="checked" tabIndex="15" type="checkbox" /><font color="red">Full Time</font></P></TD>
						<TD><P class="smalltext"><INPUT disabled="disabled" checked="checked" tabIndex="16" type="checkbox" /><font color="red">PRN</font></P></TD>
					</TR>
					<TR>
						<TD><P class="smalltext"><INPUT disabled="disabled" checked="checked" tabIndex="17" type="checkbox" /><font color="red">Part Time</font></P></TD>
						<TD><P class="smalltext"><INPUT disabled="disabled" tabIndex="18" type="checkbox" /><font color="red">Other</font></P></TD>
					</TR>
				</xsl:when>
        <xsl:when test="contains(LongApplication/radAvailability, 'Full time') and contains(LongApplication/radAvailability, 'PRN') and contains(LongApplication/radAvailability, 'Other')">
					<TR><TD><P class="smalltext"><INPUT disabled="disabled" checked="checked" tabIndex="15" type="checkbox" /><font color="red">Full Time</font></P></TD>
						<TD><P class="smalltext"><INPUT disabled="disabled" checked="checked" tabIndex="16" type="checkbox" /><font color="red">PRN</font></P></TD>
					</TR>
					<TR>
						<TD><P class="smalltext"><INPUT disabled="disabled" tabIndex="17" type="checkbox" /><font color="red">Part Time</font></P></TD>
						<TD><P class="smalltext"><INPUT disabled="disabled" checked="checked" tabIndex="18" type="checkbox" /><font color="red">Other</font></P></TD>
					</TR>
				</xsl:when>
        <xsl:when test="contains(LongApplication/radAvailability, 'PRN') and contains(LongApplication/radAvailability, 'Part time') and contains(LongApplication/radAvailability, 'Other')">
					<TR><TD><P class="smalltext"><INPUT disabled="disabled" tabIndex="15" type="checkbox" /><font color="red">Full Time</font></P></TD>
						<TD><P class="smalltext"><INPUT disabled="disabled" checked="checked" tabIndex="16" type="checkbox" /><font color="red">PRN</font></P></TD>
					</TR>
					<TR>
						<TD><P class="smalltext"><INPUT disabled="disabled" checked="checked" tabIndex="17" type="checkbox" /><font color="red">Part Time</font></P></TD>
						<TD><P class="smalltext"><INPUT disabled="disabled" checked="checked" tabIndex="18" type="checkbox" /><font color="red">Other</font></P></TD>
					</TR>
				</xsl:when>
        <xsl:when test="contains(LongApplication/radAvailability, 'Full time') and contains(LongApplication/radAvailability, 'Part time') and contains(LongApplication/radAvailability, 'Other')">
					<TR><TD><P class="smalltext"><INPUT disabled="disabled" checked="checked" tabIndex="15" type="checkbox" /><font color="red">Full Time</font></P></TD>
						<TD><P class="smalltext"><INPUT disabled="disabled" tabIndex="16" type="checkbox" /><font color="red">PRN</font></P></TD>
					</TR>
					<TR>
						<TD><P class="smalltext"><INPUT disabled="disabled" checked="checked" tabIndex="17" type="checkbox" /><font color="red">Part Time</font></P></TD>
						<TD><P class="smalltext"><INPUT disabled="disabled" checked="checked" tabIndex="18" type="checkbox" /><font color="red">Other</font></P></TD>
					</TR>
				</xsl:when>
        <xsl:when test="contains(LongApplication/radAvailability, 'Full time') and contains(LongApplication/radAvailability, 'PRN')">
					<TR><TD><P class="smalltext"><INPUT disabled="disabled" checked="checked" tabIndex="15" type="checkbox" /><font color="red">Full Time</font></P></TD>
						<TD><P class="smalltext"><INPUT disabled="disabled" checked="checked" tabIndex="16" type="checkbox" /><font color="red">PRN</font></P></TD>
					</TR>
					<TR>
						<TD><P class="smalltext"><INPUT disabled="disabled" tabIndex="17" type="checkbox" /><font color="red">Part Time</font></P></TD>
						<TD><P class="smalltext"><INPUT disabled="disabled" tabIndex="18" type="checkbox" /><font color="red">Other</font></P></TD>
					</TR>
				</xsl:when>
        <xsl:when test="contains(LongApplication/radAvailability, 'Full time') and contains(LongApplication/radAvailability, 'Part time')">
					<TR><TD><P class="smalltext"><INPUT disabled="disabled" checked="checked" tabIndex="15" type="checkbox" /><font color="red">Full Time</font></P></TD>
						<TD><P class="smalltext"><INPUT disabled="disabled" tabIndex="16" type="checkbox" /><font color="red">PRN</font></P></TD>
					</TR>
					<TR>
						<TD><P class="smalltext"><INPUT disabled="disabled" checked="checked" tabIndex="17" type="checkbox" /><font color="red">Part Time</font></P></TD>
						<TD><P class="smalltext"><INPUT disabled="disabled" tabIndex="18" type="checkbox" /><font color="red">Other</font></P></TD>
					</TR>
				</xsl:when>
        <xsl:when test="contains(LongApplication/radAvailability, 'PRN') and contains(LongApplication/radAvailability, 'Other')">
					<TR><TD><P class="smalltext"><INPUT disabled="disabled" tabIndex="15" type="checkbox" /><font color="red">Full Time</font></P></TD>
						<TD><P class="smalltext"><INPUT disabled="disabled" checked="checked" tabIndex="16" type="checkbox" /><font color="red">PRN</font></P></TD>
					</TR>
					<TR>
						<TD><P class="smalltext"><INPUT disabled="disabled" tabIndex="17" type="checkbox" /><font color="red">Part Time</font></P></TD>
						<TD><P class="smalltext"><INPUT disabled="disabled" checked="checked" tabIndex="18" type="checkbox" /><font color="red">Other</font></P></TD>
					</TR>
				</xsl:when>
        <xsl:when test="contains(LongApplication/radAvailability, 'Part time') and contains(LongApplication/radAvailability, 'Other')">
					<TR><TD><P class="smalltext"><INPUT disabled="disabled" tabIndex="15" type="checkbox" /><font color="red">Full Time</font></P></TD>
						<TD><P class="smalltext"><INPUT disabled="disabled" tabIndex="16" type="checkbox" /><font color="red">PRN</font></P></TD>
					</TR>
					<TR>
						<TD><P class="smalltext"><INPUT disabled="disabled" checked="checked" tabIndex="17" type="checkbox" /><font color="red">Part Time</font></P></TD>
						<TD><P class="smalltext"><INPUT disabled="disabled" checked="checked" tabIndex="18" type="checkbox" /><font color="red">Other</font></P></TD>
					</TR>
				</xsl:when>

        <xsl:when test="contains(LongApplication/radAvailability, 'Part time') and contains(LongApplication/radAvailability, 'PRN')">
					<TR><TD><P class="smalltext"><INPUT disabled="disabled" tabIndex="15" type="checkbox" /><font color="red">Full Time</font></P></TD>
						<TD><P class="smalltext"><INPUT disabled="disabled" checked="checked" tabIndex="16" type="checkbox" /><font color="red">PRN</font></P></TD>
					</TR>
					<TR>
						<TD><P class="smalltext"><INPUT disabled="disabled" checked="checked" tabIndex="17" type="checkbox" /><font color="red">Part Time</font></P></TD>
						<TD><P class="smalltext"><INPUT disabled="disabled" tabIndex="18" type="checkbox" /><font color="red">Other</font></P></TD>
					</TR>
				</xsl:when>
				
        <xsl:when test="contains(LongApplication/radAvailability, 'Full time') and contains(LongApplication/radAvailability, 'Other')">
					<TR><TD><P class="smalltext"><INPUT disabled="disabled" checked="checked" tabIndex="15" type="checkbox" /><font color="red">Full Time</font></P></TD>
						<TD><P class="smalltext"><INPUT disabled="disabled" tabIndex="16" type="checkbox" /><font color="red">PRN</font></P></TD>
					</TR>
					<TR>
						<TD><P class="smalltext"><INPUT disabled="disabled" tabIndex="17" type="checkbox" /><font color="red">Part Time</font></P></TD>
						<TD><P class="smalltext"><INPUT disabled="disabled" checked="checked" tabIndex="18" type="checkbox" /><font color="red">Other</font></P></TD>
					</TR>
				</xsl:when>
				
        <xsl:when test="contains(LongApplication/radAvailability, 'Full time')">
					<TR><TD><P class="smalltext"><INPUT disabled="disabled" checked="checked" tabIndex="15" type="checkbox" /><font color="red">Full Time</font></P></TD>
						<TD><P class="smalltext"><INPUT disabled="disabled" tabIndex="16" type="checkbox" /><font color="red">PRN</font></P></TD>
					</TR>
					<TR>
						<TD><P class="smalltext"><INPUT disabled="disabled" tabIndex="17" type="checkbox" /><font color="red">Part Time</font></P></TD>
						<TD><P class="smalltext"><INPUT disabled="disabled" tabIndex="18" type="checkbox" /><font color="red">Other</font></P></TD>
					</TR>
				</xsl:when>				
        <xsl:when test="contains(LongApplication/radAvailability, 'Part time')">
					<TR><TD><P class="smalltext"><INPUT disabled="disabled" tabIndex="15" type="checkbox" /><font color="red">Full Time</font></P></TD>
						<TD><P class="smalltext"><INPUT disabled="disabled" tabIndex="16" type="checkbox" /><font color="red">PRN</font></P></TD>
					</TR>
					<TR>
						<TD><P class="smalltext"><INPUT disabled="disabled" checked="checked" tabIndex="17" type="checkbox" /><font color="red">Part Time</font></P></TD>
						<TD><P class="smalltext"><INPUT disabled="disabled" tabIndex="18" type="checkbox" /><font color="red">Other</font></P></TD>
					</TR>
				</xsl:when>
        <xsl:when test="contains(LongApplication/radAvailability, 'PRN')">
					<TR><TD><P class="smalltext"><INPUT disabled="disabled" tabIndex="15" type="checkbox" /><font color="red">Full Time</font></P></TD>
						<TD><P class="smalltext"><INPUT disabled="disabled" checked="checked" tabIndex="16" type="checkbox" /><font color="red">PRN</font></P></TD>
					</TR>
					<TR>
						<TD><P class="smalltext"><INPUT disabled="disabled" tabIndex="17" type="checkbox" /><font color="red">Part Time</font></P></TD>
						<TD><P class="smalltext"><INPUT disabled="disabled" tabIndex="18" type="checkbox" /><font color="red">Other</font></P></TD>
					</TR>
				</xsl:when>
        <xsl:when test="contains(LongApplication/radAvailability, 'Other')">
					<TR><TD><P class="smalltext"><INPUT disabled="disabled" tabIndex="15" type="checkbox" /><font color="red">Full Time</font></P></TD>
						<TD><P class="smalltext"><INPUT disabled="disabled" tabIndex="16" type="checkbox" /><font color="red">PRN</font></P></TD>
					</TR>
					<TR>
						<TD><P class="smalltext"><INPUT disabled="disabled" tabIndex="17" type="checkbox" /><font color="red">Part Time</font></P></TD>
						<TD><P class="smalltext"><INPUT disabled="disabled" checked="checked" tabIndex="18" type="checkbox" /><font color="red">Other</font></P></TD>
					</TR>
				</xsl:when>				
				</xsl:choose>
<!--
				<xsl:if test="LongApplication/radAvailability = 'Full time'" >
				<tr> 
					<td height="3%">
						<input type="radio" name="radAvailability" disabled="disabled" checked="checked" />
						<span class="smalltext">Full time</span><br/>
						<input type="radio" name="radAvailability" disabled="disabled" />
						Part Time
					</td>
					<td>
						<input type="radio" name="radAvailability" disabled="disabled" />
						PRN<br/>
						<input type="radio" name="radAvailability" disabled="disabled" />
						Other
					</td>
					<td colspan="3"></td>
				</tr>
				</xsl:if>
	
				<xsl:if test="LongApplication/radAvailability = 'Part time'" >
				<tr> 
					<td height="3%">
						<input type="radio" name="radAvailability" disabled="disabled" />
						<span class="smalltext">Full time</span><br/>
						<input type="radio" name="radAvailability" disabled="disabled" checked="checked" />
						Part Time
					</td>
					<td>
						<input type="radio" name="radAvailability" disabled="disabled" />
						PRN<br/>
						<input type="radio" name="radAvailability" disabled="disabled" />
						Other
					</td>
					<td colspan="3"></td>
				</tr>
				</xsl:if>

				<xsl:if test="LongApplication/radAvailability = 'PRN'" >
				<tr> 
					<td height="3%">
						<input type="radio" name="radAvailability" disabled="disabled" />
						<span class="smalltext">Full time</span><br/>
						<input type="radio" name="radAvailability" disabled="disabled" />
						Part Time
					</td>
					<td>
						<input type="radio" name="radAvailability" disabled="disabled" checked="checked" />
						PRN<br/>
						<input type="radio" name="radAvailability" disabled="disabled" />
						Other
					</td>
					<td colspan="3"></td>
				</tr>
				</xsl:if>

				<xsl:if test="LongApplication/radAvailability = 'Other'" >
				<tr> 
					<td height="3%">
						<input type="radio" name="radAvailability" disabled="disabled" />
						<span class="smalltext">Full time</span><br/>
						<input type="radio" name="radAvailability" disabled="disabled" />
						Part Time
					</td>
					<td>
						<input type="radio" name="radAvailability" disabled="disabled" />
						PRN<br/>
						<input type="radio" name="radAvailability" disabled="disabled" checked="checked" />
						Other
					</td>
					<td colspan="3"></td>
				</tr>
				</xsl:if>
-->
        <tr> 
          <td height="2%"><p class="smalltext">Hours and days available </p></td>
          <td><p class="smalltext"><input type="text" name="txtAvailability_Hours_Days" value="{LongApplication/txtAvailability_Hours_Days}" /></p></td>
          <td colspan="3"><font size="-2"></font></td>
        </tr>

        <tr> 
          <td height="2%"><p class="smalltext">Date available to start</p></td>
          <td><p class="smalltext"><input type="text" name="txtAvailability_Start_Date" value="{LongApplication/txtAvailability_Start_Date}" /></p></td>
          <td colspan="3"><font size="-2"></font></td>
        </tr>

        <tr> 
          <td height="2%"><p class="smalltext">Salary requirements </p></td>
          <td><p class="smalltext"><input type="text" name="txtSalaryRequirements" value="{LongApplication/txtSalaryRequirements}" /></p></td>
          <td colspan="3"><font size="-2"></font></td>
        </tr>				

        <tr> 
          <td height="27%" colspan="5">
			<p class="smalltextb">Have you ever been employed at any Baptist Health Facility? 
				<xsl:choose>
				<xsl:when test="LongApplication/radEverEmployeedWithBaptist" >
					<xsl:if test="LongApplication/radEverEmployeedWithBaptist = 'Yes'" >
						<input type="radio" name="radEverEmployeedWithBaptist" disabled="disabled" checked="checked" />Yes 
						<input type="radio" name="radEverEmployeedWithBaptist" disabled="disabled" />No
					</xsl:if>
            
					<xsl:if test="LongApplication/radEverEmployeedWithBaptist = 'No'" >
						<input type="radio" name="radEverEmployeedWithBaptist" disabled="disabled" />Yes 
						<input type="radio" name="radEverEmployeedWithBaptist" disabled="disabled" checked="checked" />No
					</xsl:if>
				</xsl:when>
				<xsl:otherwise>
					<input type="radio" name="radEverEmployeedWithBaptist" disabled="disabled" />Yes 
					<input type="radio" name="radEverEmployeedWithBaptist" disabled="disabled" />No
				</xsl:otherwise>
				</xsl:choose>
            </p>
            <P CLASS="breakhere"></P>
          </td>
         </tr>
        
		  </table>
 		</td>
	</tr>
</table>

<!--End half down-->
<!--Employ Hist-->
<table width="98%" border="0" cellpadding="1" cellspacing="1" bordercolor="#CCCCCC">
  <tr> 
    <td width="2%" rowspan="17" bgcolor="#003399"> 
      <p align="center">
      <font face="Verdana, Arial, Helvetica, sans-serif">
				<strong>
					<font color="#FFFFFF">M<br/>
                                O<br/>
                                S<br/>
                                T<br/>
           </font>
          </strong>
        </font>
      </p>

       <p align="center">
				<font color="#FFFFFF">
					<strong>
						<font face="Verdana, Arial, Helvetica, sans-serif">R<br/>
																															 E<br/>
																															 C<br/>
																															 E<br/>
																															 N<br/>
																															 T
						</font>
					</strong>
				</font>
				<font face="Verdana, Arial, Helvetica, sans-serif">
					<strong> 
          </strong>
        </font>
       </p>
		</td>
		
	  <td height="6%" colspan="4" bgcolor="#003399">
			<font color="#FFFFFF" face="Verdana, Arial, Helvetica, sans-serif">
				<strong>
					EMPLOYMENT HISTORY
				</strong>
			</font>
		</td>
	</tr>
	
	<tr>
		<td height="7%" colspan="4"> <p class="smalltext">Company</p></td>
	</tr>
	
	<tr>
		<td height="7%" colspan="4"> <p class="smalltext"><input name="txtEmpHistCo_1" type="text" size="75" value="{LongApplication/txtEmpHistCo_1}" /></p></td>
	</tr>
	<!--
  <tr> 
    <td height="7%" colspan="4"> <p class="smalltext">Company</p>
        <font size="-2">
        <input name="txtEmpHistCo_1" type="text" size="75" value="{LongApplication/txtEmpHistCo_1}" />
        </font>
    </td>
  </tr>
-->
	<tr>
		<td width="25%" valign="top">
		<p class="smalltext">City</p>
		</td>
		
		<td width="9%" valign="top">
		<p class="smalltext">State</p>
		</td>					
		
		<td width="10%" valign="top">
		<p class="smalltext">Zip</p>
		</td>

		<td width="54%" valign="top">
		<p class="smalltext">Phone Number</p>
		</td>
		
	</tr>
	<tr>
		<td width="25%" valign="top">
		<p class="smalltext"><input type="text" name="txtEmpHistCity_1" value="{LongApplication/txtEmpHistCity_1}" /></p>
		</td>

		<td width="9%" valign="top">
		<p class="smalltext"><input type="text" name="txtEmpHistState_1" value="{LongApplication/txtEmpHistState_1}" /></p>
		</td>					
		
		<td width="10%" valign="top">
		<p class="smalltext"><input name="txtEmpHistZip_1" type="text" value="{LongApplication/txtEmpHistZip_1}" size="10" /></p>
		</td>


		<td width="54%" valign="top"><p class="smalltext"><input name="txtEmpHistPhone_1" type="text" size="15" value="{LongApplication/txtEmpHistPhone_1}" /></p>
		</td>
	</tr>

<!--
  <tr> 
    <td width="25%" height="11%" valign="top"> <p class="smalltext">City</p>
        <font size="-2"> 
        <input type="text" name="txtEmpHistCity_1" value="{LongApplication/txtEmpHistCity_1}" />
        </font>
    </td>
    <td width="9%" valign="top"> <p class="smalltext">State</p><font size="-2"><br/>
        <input type="text" name="txtEmpHistState_1" value="{LongApplication/txtEmpHistState_1}" />
        </font>
    </td>
    <td width="10%" valign="top"><p class="smalltext">Zip</p><font size="-2"><br/>
        <input name="txtEmpHistZip_1" type="text" value="{LongApplication/txtEmpHistZip_1}" size="10" />
        </font></td>
    <td width="54%" valign="top"><p class="smalltext">Phone 
        Number</p><font size="-2"><br/>
        <input name="txtEmpHistPhone_1" type="text" size="15" value="{LongApplication/txtEmpHistPhone_1}" />
        </font>
    </td>
  </tr>
-->
  <tr>
		<td height="10%"><p class="smalltext">Job Title</p></td>
  </tr>

  <tr>
		<td height="10%"><p class="smalltext"><input type="text" name="txtEmpHistJobTitle_1" value="{LongApplication/txtEmpHistJobTitle_1}" /></p></td>
		
    <td colspan="3">
			<TABLE width="473" align="left" cellPadding="0" cellSpacing="0">
        <TBODY>
          <TR> 
            <TD align="left" width="159"><P class="smalltext"><font size="-2">From 
                Mo. 
                <INPUT class="inputclass" tabIndex="142" size="1" name="txtEmpHistFromMonth_1" value="{LongApplication/txtEmpHistFromMonth_1}" />
                Yr. 
                <INPUT class="inputclass" tabIndex="143" size="2" name="txtEmpHistFromYear_1" value="{LongApplication/txtEmpHistFromYear_1}" />
                </font></P>
            </TD>
            <TD align="left" width="312"><P class="smalltext"><font size="-2">To 
                Mo. 
                <INPUT name="txtEmpHistToMonth_1" class="inputclass" tabIndex="144" size="1" value="{LongApplication/txtEmpHistToMonth_1}" />
                Yr. 
                <INPUT class="inputclass" tabIndex="145" size="2" name="txtEmpHistToYear_1" value="{LongApplication/txtEmpHistToYear_1}" />

                  <xsl:if test="LongApplication/showhidStillEmployeed = 'Yes'" >
                  <input type="checkbox" name="chkStillEmployeed" disabled="disabled" checked="checked" />
                  Still employed
                  </xsl:if>

                  <xsl:if test="LongApplication/showhidStillEmployeed = ''" >
                  <input type="checkbox" name="chkStillEmployeed" disabled="disabled" />
                  Still employeed
                  </xsl:if>
                </font></P>
            </TD>
          </TR>
        </TBODY> 
      </TABLE>
    </td>
  </tr>  

  <tr> 
<!--  
    <td height="10%"><p class="smalltext">Job Title<font size="-2"> 
        <input type="text" name="txtEmpHistJobTitle_1" value="{LongApplication/txtEmpHistJobTitle_1}" />
        </font></p>
    </td>
    <td colspan="3">
			<TABLE width="473" align="left" cellPadding="0" cellSpacing="0">
        <TBODY>
          <TR> 
            <TD align="left" width="159"><P class="smalltext"><font size="-2">From 
                Mo. 
                <INPUT class="inputclass" style="WIDTH: 18px" tabIndex="142" size="2" name="txtEmpHistFromMonth_1" value="{LongApplication/txtEmpHistFromMonth_1}" />
                Yr. 
                <INPUT class="inputclass" style="WIDTH: 18px" tabIndex="143" size="4" name="txtEmpHistFromYear_1" value="{LongApplication/txtEmpHistFromYear_1}" />
                </font></P>
            </TD>
            <TD align="left" width="312"><P class="smalltext"><font size="-2">To 
                Mo. 
                <INPUT name="txtEmpHistToMonth_2" class="inputclass" style="WIDTH: 18px" tabIndex="144" size="2" value="{LongApplication/txtEmpHistToMonth_2}" />
                Yr. 
                <INPUT class="inputclass" style="WIDTH: 18px" tabIndex="145" size="4" name="txtEmpHistToYear_2" value="{LongApplication/txtEmpHistToYear_2}" />

                  <xsl:if test="LongApplication/showhidStillEmployeed = 'Yes'" >
                  <input type="checkbox" name="chkStillEmployeed" disabled="disabled" checked="checked" />
                  Still employeed
                  </xsl:if>

                  <xsl:if test="LongApplication/showhidStillEmployeed = ''" >
                  <input type="checkbox" name="chkStillEmployeed" disabled="disabled" />
                  Still employeed
                  </xsl:if>
                </font></P>
            </TD>
          </TR>
        </TBODY> 
      </TABLE>
    </td>
    -->
   </tr> 
   
   <tr>
		<td height="10%" colspan="4"><p class="smalltext">Name 
				of immediate supervisor</p></td>
   </tr>
	<tr>
		<td height="10%" colspan="4"><p class="smalltext"><input name="txtImmediateSuper_1" type="text" size="30" value="{LongApplication/txtImmediateSuper_1}" /></p></td>
  </tr>
  <tr>
		<td>May we contact them
				<xsl:if test="LongApplication/radEmpHistContactSuper_1 = 'Yes'" >
				<input type="radio" name="radEmpHistContactSuper_1" disabled="disabled" checked="checked" />Yes 
				<input type="radio" name="radEmpHistContactSuper_1" disabled="disabled" />No 
				</xsl:if>

				<xsl:if test="LongApplication/radEmpHistContactSuper_1 = 'No'" >
				<input type="radio" name="radEmpHistContactSuper_1" disabled="disabled" />Yes 
				<input type="radio" name="radEmpHistContactSuper_1" disabled="disabled" checked="checked" />No 
				</xsl:if></td>
  </tr>
   <!--
	<tr> 
		<td height="10%" colspan="4"><p class="smalltext">Name 
				of immediate supervisor</p><br/>
				<font size="-2"> 
				<input name="txtImmediateSuper_1" type="text" size="30" value="{LongApplication/txtImmediateSuper_1}" />
				</font><p class="smalltext">May we contact them</p>
				<xsl:if test="LongApplication/radEmpHistContactSuper_1 = 'Yes'" >
				<input type="radio" name="radEmpHistContactSuper_1" disabled="disabled" checked="checked" />
				Yes 
				<input type="radio" name="radEmpHistContactSuper_1" disabled="disabled" />
				No 
				</xsl:if>

				<xsl:if test="LongApplication/radEmpHistContactSuper_1 = 'No'" >
				<input type="radio" name="radEmpHistContactSuper_1" disabled="disabled" />
				Yes 
				<input type="radio" name="radEmpHistContactSuper_1" disabled="disabled" checked="checked" />
				No 
				</xsl:if>				
		</td>
 	</tr>
-->
<tr>
	<td height="21%" colspan="4"><p class="smalltext">Duties 
        Performed</p></td>
</tr>
<tr>
	<td height="21%" colspan="4"><p class="smalltext"><textarea name="txtEmpHistDuties_1" cols="62"><xsl:value-of select="LongApplication/txtEmpHistDuties_1" /></textarea></p></td>
</tr>
<!--
  <tr> 
    <td height="21%" colspan="4"><p class="smalltext">Duties 
        Performed</p><br/>
        <font size="-2"> 
        <textarea name="txtEmpHistDuties_1" cols="62"><xsl:value-of select="LongApplication/txtImmediateSuper_1" /></textarea>
        </font>
     </td>
  </tr>
-->
	<tr>
		<td height="10%"><p class="smalltext">Salary</p></td>
		<td colspan="3"><p class="smalltext">Name of 
        Department or Unit</p></td>
  </tr>
  
	<tr>
		<td height="10%"><p class="smalltext"><input type="text" name="txtEmpHistSalary_1" value="{LongApplication/txtEmpHistSalary_1}" /></p></td>
		<td colspan="3"><p class="smalltext"><input type="text" name="txtEmpHistDeptName_1" value="{LongApplication/txtEmpHistDeptName_1}" /></p></td>
  </tr>
<!--
	<tr> 
    <td height="10%"><p class="smalltext">Salary</p><font size="-2"> 
        <input type="text" name="txtEmpHistSalary_1" value="{LongApplication/txtEmpHistSalary_1}" />
        </font>
    </td>
    <td colspan="3"><p class="smalltext">Name of 
        Department or Unit</p><br/>
        <font size="-2"> 
        <input type="text" name="txtEmpHistDeptName_1" value="{LongApplication/txtEmpHistDeptName_1}" />
        </font>
     </td>
  </tr>
-->
	<tr>
		<td height="25%" colspan="4" valign="top"><p class="smalltext">Reason 
        for leaving</p></td>
	</tr>

	<tr>
		<td height="25%" colspan="4" valign="top"><p class="smalltext"><font size="-2">
        <textarea name="txtEmpHistLeaveReason_1" cols="62"><xsl:value-of select="LongApplication/txtEmpHistLeaveReason_1" /></textarea>
        </font></p></td>
	</tr>
<!--
  <tr> 
    <td height="25%" colspan="4" valign="top"><p class="smalltext">Reason 
        for leaving</p><br/>
        <font size="-2">
        <textarea name="txtEmpHistLeaveReason_1" cols="62"><xsl:value-of select="LongApplication/txtEmpHistLeaveReason_1" /></textarea>
        </font>
    </td>
  </tr>
  -->
</table>
<table width="98%" height="10" border="0" cellpadding="1" cellspacing="1" bordercolor="#CCCCCC">
  <tr> 
   <td width="2%" rowspan="15" bgcolor="#003399"> 
    <p align="center"><font face="Verdana, Arial, Helvetica, sans-serif"><strong><font color="#FFFFFF">P<br/>
      R<br/>
      E<br/>
      V<br/>
      I<br/>
      O<br/>
      U<br/>
      S</font></strong></font></p>
   </td>
  </tr>

  <tr> 
    <td colspan="4"> <p class="smalltext">Company</p>
    </td>
  </tr>

  <tr> 
    <td colspan="4"> <p class="smalltext"><input name="txtEmpHistCo_2" type="text" size="75" value="{LongApplication/txtEmpHistCo_2}" /></p>
    </td>
  </tr>
<!--      
  <tr> 
    <td height="8%" colspan="4"> <p class="smalltext">Company</p>
        <font size="-2"> 
        <input name="txtEmpHistCo_2" type="text" size="75" value="{LongApplication/txtEmpHistCo_2}" />
        </font>
    </td>
  </tr>
  -->
  
  <tr>
		<td width="25%" height="11%" valign="top"> <p class="smalltext">City</p></td>
		<td width="9%" valign="top"> <p class="smalltext">State</p></td>
		<td width="10%" valign="top"> <p class="smalltext">Zip</p></td>
		<td width="54%" valign="top"> <p class="smalltext">Phone 
        Number</p></td>
  </tr>
  
  <tr>
		<td width="25%" height="11%" valign="top"> <p class="smalltext"><input type="text" name="txtEmpHistCity_2" value="{LongApplication/txtEmpHistCity_2}" /></p></td>
		<td width="9%" valign="top"> <p class="smalltext"><input type="text" name="txtEmpHistState_2" value="{LongApplication/txtEmpHistState_2}" /></p></td>
		<td width="10%" valign="top"> <p class="smalltext"><input name="txtEmpHistZip_2" type="text" size="10" value="{LongApplication/txtEmpHistZip_2}" /></p></td>
		<td width="54%" valign="top"> <p class="smalltext"><input name="txtEmpHistPhone_2" type="text" size="15" value="{LongApplication/txtEmpHistPhone_2}" /></p></td>
  </tr>
<!--    
  <tr> 
    <td width="25%" height="11%" valign="top"> <p class="smalltext">City</p><br/>
        <font size="-2"> 
        <input type="text" name="txtEmpHistCity_2" value="{LongApplication/txtEmpHistCity_2}" />
        </font> 
    </td>
    <td width="9%" valign="top"> <p class="smalltext">State</p><font size="-2"><br/>
        <input type="text" name="txtEmpHistState_2" value="{LongApplication/txtEmpHistState_2}" />
        </font>
    </td>
    <td width="10%" valign="top"> <p class="smalltext">Zip</p><font size="-2"> 
        <br/>
        <input name="txtEmpHistZip_2" type="text" size="10" value="{LongApplication/txtEmpHistZip_2}" />
        </font>
    </td>
    <td width="54%" valign="top"> <p class="smalltext">Phone 
        Number</p><font size="-2"><br/>
        <input name="txtEmpHistPhone_2" type="text" size="15" value="{LongApplication/txtEmpHistPhone_2}" />
        </font>
    </td>
  </tr>
-->

	<tr>
		<td valign="top"> <p class="smalltext">Job Title</p></td>
	</tr>
	
	<tr>
		<td valign="top"> <p class="smalltext"><input type="text" name="txtEmpHistJobTitle_2" value="{LongApplication/txtEmpHistJobTitle_2}" /></p></td>
		
    <td colspan="3">
			<TABLE width="473" align="left" cellPadding="0" cellSpacing="0">
        <TBODY>
          <TR class="smalltext"> 
            <TD width="159" align="left"> <P class="smalltext">From 
                Mo. 
                <INPUT class="inputclass" tabIndex="142" size="1" name="txtEmpHistFromMonth_2" value="{LongApplication/txtEmpHistFromMonth_2}" />
                Yr. 
                <INPUT class="inputclass" tabIndex="143" size="2" name="txtEmpHistFromYear_2" value="{LongApplication/txtEmpHistFromYear_2}" />
              </P>
            </TD>
            <TD width="312" align="left"> <P class="smalltext">To 
                Mo. 
                <INPUT name="txtEmpHistToMonth_2" class="inputclass" tabIndex="144" size="1" value="{LongApplication/txtEmpHistToMonth_2}" />
                Yr. 
                <INPUT class="inputclass" tabIndex="145" size="2" name="txtEmpHistToYear_2" value="{LongApplication/txtEmpHistToYear_2}" />
              </P>
            </TD>
          </TR>
        </TBODY>
      </TABLE>
      </td>
	</tr>
	
  <tr> 
  <!--
    <td height="10%" valign="top"> <p class="smalltext">Job 
        Title</p><br/>
        <font size="-2">
        <input type="text" name="txtEmpHistJobTitle_2" value="{LongApplication/txtEmpHistJobTitle_2}" />
        </font>
    </td>

    <td colspan="3">
			<TABLE width="473" align="left" cellPadding="0" cellSpacing="0">
        <TBODY>
          <TR class="smalltext"> 
            <TD width="159" align="left"> <P class="smalltext">From 
                Mo. 
                <INPUT class="inputclass" style="WIDTH: 18px" tabIndex="142" size="2" name="txtEmpHistFromMonth_2" value="{LongApplication/txtEmpHistFromMonth_2}" />
                Yr. 
                <INPUT class="inputclass" style="WIDTH: 18px" tabIndex="143" size="4" name="txtEmpHistFromYear_2" value="{LongApplication/txtEmpHistFromYear_2}" />
              </P>
            </TD>
            <TD width="312" align="left"> <P class="smalltext">To 
                Mo. 
                <INPUT name="txtEmpHistToMonth_2" class="inputclass" style="WIDTH: 18px" tabIndex="144" size="2" value="{LongApplication/txtEmpHistToMonth_2}" />
                Yr. 
                <INPUT class="inputclass" style="WIDTH: 18px" tabIndex="145" size="4" name="txtEmpHistToYear_2" value="{LongApplication/txtEmpHistToYear_2}" />
              </P>
            </TD>
          </TR>
        </TBODY>
      </TABLE>
      </td>
-->
  </tr>
  
	<tr> 
		<td height="10%" colspan="4" valign="top"> <p class="smalltext">Name 
				of immediate supervisor<br/>
				<input name="txtImmediateSuper_2" type="text" size="30" value="{LongApplication/txtImmediateSuper_2}" /></p>
		</td>
	</tr>

  <tr> 
    <td height="22%" colspan="4" valign="top"> <p class="smalltext">Duties 
        Performed<br/>
        <textarea name="txtEmpHistDuties_2" cols="62"><xsl:value-of select="LongApplication/txtEmpHistDuties_2" /></textarea></p>
    </td>
  </tr>

<tr>
	<td height="10%" valign="top"> <p class="smalltext">Salary</p></td>
	<td colspan="3" valign="top"> <p class="smalltext">Name 
        of Department or Unit</p></td>
</tr>

<tr>
	<td height="10%" valign="top"> <p class="smalltext"><input type="text" name="txtEmpHistSalary_2" value="{LongApplication/txtEmpHistSalary_2}" /></p></td>
	<td colspan="3" valign="top"> <p class="smalltext"><input type="text" name="txtEmpHistDeptName" value="{LongApplication/txtEmpHistDeptName}" /></p></td>
</tr>

<!--
  <tr> 
    <td height="10%" valign="top"> <p class="smalltext">Salary</p><font size="-2"> 
        <input type="text" name="txtEmpHistSalary_2" value="{LongApplication/txtEmpHistSalary_2}" />
        </font>
    </td>
    <td colspan="3" valign="top"> <p class="smalltext">Name 
        of Department or Unit</p><br/>
        <input type="text" name="txtEmpHistDeptName" value="{LongApplication/txtEmpHistDeptName}" />
    </td>
  </tr>
-->
	<tr>
		<td height="29%" colspan="4" valign="top"> <p class="smalltext">Reason 
        for leaving</p></td>
	</tr>
	
	<tr>
		<td height="29%" colspan="4" valign="top"> <p class="smalltext"><textarea name="txtEmpHistLeaveReason_2" cols="62"><xsl:value-of select="LongApplication/txtEmpHistLeaveReason_2" /></textarea></p></td>
	</tr>
	<!--
  <tr> 
    <td height="29%" colspan="4" valign="top"> <p class="smalltext">Reason 
        for leaving</p><br/>
        <textarea name="txtEmpHistLeaveReason_2" cols="62"><xsl:value-of select="LongApplication/txtEmpHistLeaveReason_2" /></textarea>
    </td>
  </tr>
  -->
</table>

<table width="98%" height="10" border="0" cellpadding="1" cellspacing="1" bordercolor="#CCCCCC">
  <tr> 
    <td width="2%" rowspan="16" bgcolor="#003399">
      <p align="center"><font face="Verdana, Arial, Helvetica, sans-serif"><strong><font color="#FFFFFF">P<br/>
        R<br/>
        E<br/>
        V<br/>
        I<br/>
        O<br/>
        U<br/>
        S<br/>
        </font></strong></font></p>
    </td>
  </tr>
  
  <tr> 
    <td height="7%" colspan="4"> <p class="smalltext">Company </p></td>
  </tr>

  <tr> 
    <td height="7%" colspan="4"> <p class="smalltext"><input name="txtEmpHistCo_3" type="text" size="75" value="{LongApplication/txtEmpHistCo_3}" /></p>
        </td>
  </tr>
<!--
  <tr> 
    <td height="7%" colspan="4"> <p class="smalltext">Company </p>
        <font size="-2"> 
        <input name="txtEmpHistCo_3" type="text" size="75" value="{LongApplication/txtEmpHistCo_3}" />
        </font> </td>
  </tr>
-->  

<tr>
	<td width="22%" height="13%"> <p class="smalltext">City</p></td>
	<td width="10%" valign="top"> <p class="smalltext">State</p></td>
	<td width="11%" valign="top"> <p class="smalltext">Zip</p></td>
	<td width="55%"> <p class="smalltext">Phone Number</p></td>
</tr>

<tr>
	<td width="22%" height="13%"> <p class="smalltext"><input type="text" name="txtEmpHistCity_3" value="{LongApplication/txtEmpHistCity_3}" /></p></td>
	<td width="10%" valign="top"> <p class="smalltext"><input type="text" name="txtEmpHistState_3" value="{LongApplication/txtEmpHistState_3}" /></p></td>
	<td width="11%" valign="top"> <p class="smalltext"><input name="txtEmpHistZip_3" type="text" size="10" value="{LongApplication/txtEmpHistZip_3}" /></p></td>
	<td width="55%"> <p class="smalltext"><input name="txtEmpHistPhone_3" type="text" size="15" value="{LongApplication/txtEmpHistPhone_3}" /></p></td>
</tr>

<!--
  <tr> 
    <td width="22%" height="13%"> <p class="smalltext">City</p> 
        <input type="text" name="txtEmpHistCity_3" value="{LongApplication/txtEmpHistCity_3}" /> 
    </td>
    <td width="10%" valign="top"> <p class="smalltext">State</p><br/>
        <input type="text" name="txtEmpHistState_3" value="{LongApplication/txtEmpHistState_3}" />
    </td>
    <td width="11%" valign="top"> <p class="smalltext">Zip 
        <br/>
        <input name="txtEmpHistZip_3" type="text" size="10" value="{LongApplication/txtEmpHistZip_3}" /></p>
    </td>
    <td width="55%"> <p class="smalltext">Phone 
        Number<br/>
        <input name="txtEmpHistPhone_3" type="text" size="15" value="{LongApplication/txtEmpHistPhone_3}" /></p> 
    </td>
  </tr>
-->

<tr>
	<td width="22%" height="10%"> <p class="smalltext">Job Title</p></td>
</tr>

<tr>
	<td width="22%" height="10%"> <p class="smalltext"><input type="text" name="txtEmpHistJobTitle_3" value="{LongApplication/txtEmpHistJobTitle_3}" /></p></td>
	
    <td colspan="3"><TABLE width="473" align="left" cellPadding="0" cellSpacing="0">
        <TBODY>
          <TR class="smalltext"> 
            <TD width="159" align="left"> <P class="smalltext">From 
                Mo. 
                <INPUT class="inputclass" tabIndex="142" size="1" name="txtEmpHistFromMonth_3" value="{LongApplication/txtEmpHistFromMonth_3}" />
                Yr. 
                <INPUT class="inputclass" tabIndex="143" size="2" name="txtEmpHistFromYear_3" value="{LongApplication/txtEmpHistFromYear_3}" />
              </P>
            </TD>
            <TD width="312" align="left"> <P class="smalltext">To 
                Mo. 
                <INPUT name="txtEmpHistToMonth_3" class="inputclass" tabIndex="144" size="1" value="{LongApplication/txtEmpHistToMonth_3}" />
                Yr. 
                <INPUT class="inputclass" tabIndex="145" size="2" name="txtEmpHistToYear_3" value="{LongApplication/txtEmpHistToYear_3}" />
              </P>
            </TD>
          </TR>
        </TBODY>
      </TABLE></td>
</tr>

  <tr> 
  <!--
    <td width="22%" height="10%"> <p class="smalltext">Job 
        Title<br/>
        <input type="text" name="txtEmpHistJobTitle_3" value="{LongApplication/txtEmpHistJobTitle_3}" /></p>
    </td>

    <td colspan="3"><TABLE width="473" align="left" cellPadding="0" cellSpacing="0">
        <TBODY>
          <TR class="smalltext"> 
            <TD width="159" align="left"> <P class="smalltext">From 
                Mo. 
                <INPUT class="inputclass" style="WIDTH: 18px" tabIndex="142" size="2" name="txtEmpHistFromMonth_3" value="{LongApplication/txtEmpHistFromMonth_3}" />
                Yr. 
                <INPUT class="inputclass" style="WIDTH: 18px" tabIndex="143" size="4" name="txtEmpHistFromYear_3" value="{LongApplication/txtEmpHistFromYear_3}" />
              </P>
            </TD>
            <TD width="312" align="left"> <P class="smalltext">To 
                Mo. 
                <INPUT name="txtEmpHistToMonth_3" class="inputclass" style="WIDTH: 18px" tabIndex="144" size="2" value="{LongApplication/txtEmpHistToMonth_3}" />
                Yr. 
                <INPUT class="inputclass" style="WIDTH: 18px" tabIndex="145" size="4" name="txtEmpHistToYear_3" value="{LongApplication/txtEmpHistToYear_3}" />
              </P>
            </TD>
          </TR>
        </TBODY>
      </TABLE></td>
      -->
  </tr>

  <tr> 
		<td height="10%" colspan="4"> <p class="smalltext">Name 
        of immediate supervisor</p></td>  
  </tr>

	<tr>
		<td height="10%" colspan="4"> <p class="smalltext"><input name="txtImmediateSuper_3" type="text" size="30" value="{LongApplication/txtImmediateSuper_3}" /></p></td>  
	</tr>
<!--
  <tr> 
    <td height="10%" colspan="4"> <p class="smalltext">Name 
        of immediate supervisor<br/></p>
        <font size="-2"> 
        <input name="txtImmediateSuper_3" type="text" size="30" value="{LongApplication/txtImmediateSuper_3}" />
        </font> </td>
  </tr>
 -->
 <tr>
	<td height="20%" colspan="4"> <p class="smalltext">Duties 
        Performed<br/></p></td>
 </tr>
<tr>
	<td height="20%" colspan="4"> <p class="smalltext"><textarea name="txtEmpHistDuties_3" cols="62"><xsl:value-of select="LongApplication/txtEmpHistDuties_3" /></textarea><br/></p></td>
</tr>
	<!--
 <tr> 
      <td height="20%" colspan="4"> <p class="smalltext">Duties 
        Performed<br/></p>
        <font size="-2"> 
        <textarea name="txtEmpHistDuties_3" cols="62"><xsl:value-of select="LongApplication/txtEmpHistDuties_3" /></textarea>
        </font></td>
  </tr>
-->
<tr>
	<td height="10%"> <p class="smalltext">Salary</p></td>
	<td colspan="3"><p class="smalltext">Name of 
        Department or Unit</p></td>
</tr>

<tr>
	<td height="10%"> <p class="smalltext"><input type="text" name="txtEmpHistSalary_3" value="{LongApplication/txtEmpHistSalary_3}" /></p></td>
	<td colspan="3"><p class="smalltext"><input type="text" name="txtNameOfDeptUnit" value="{LongApplication/txtNameOfDeptUnit}" /></p></td>
</tr>
<!--
  <tr> 
    <td height="10%"> <p class="smalltext">Salary</p><font size="-2"> 
        <input type="text" name="txtEmpHistSalary_3" value="{LongApplication/txtEmpHistSalary_3}" />
        </font>
     </td>
    <td colspan="3"><p class="smalltext">Name of 
        Department or Unit<br/></p>
        <font size="-2"> 
        <input type="text" name="txtNameOfDeptUnit" value="{LongApplication/txtNameOfDeptUnit}" />
        </font></td>
  </tr>
-->
<tr>
	<td height="30%" colspan="4"> <p class="smalltext">Reason11 
        for leaving</p></td>
</tr>
<tr>
	<td height="30%" colspan="4"> <p class="smalltext"><textarea name="txtEmpHistLeaveReason_3" cols="62"><xsl:value-of select="LongApplication/txtEmpHistLeaveReason_3" /></textarea></p></td>
</tr>
<!--
  <tr> 
    <td height="30%" colspan="4"> <p class="smalltext">Reason 
        for leaving</p><font size="-2"> <br/>
        <textarea name="txtEmpHistLeaveReason_3" cols="62"><xsl:value-of select="LongApplication/txtEmpHistLeaveReason_3" /></textarea>
        </font>
    </td>
  </tr>
  -->
</table>

<table width="100%" border="0" cellpadding="3" cellspacing="3">
  <tr bgcolor="#003399"> 
      <td width="100%"><strong><font color="#FFFFFF">EDUCATION</font></strong></td>
  </tr>
  
  <tr bgcolor="#003399"> 
    <td height="95%" bgcolor="#FFFFFF">
			<TABLE width="100%" height="259" cellPadding="1" cellSpacing="1" bgColor="black">
        <TBODY>
          <TR> 
            <TD class="TCell" align="middle" width="16%" bgColor="#eeeeee" rowSpan="2"> 
              <P class="smalltextb">Type of 
                School</P>
            </TD>
            <TD width="28%" height="4%" align="middle" bgColor="#eeeeee" class="TCell"> 
              <P class="smalltextb">Name of 
                School</P>
            </TD>
            <TD class="TCell" align="middle" width="24%" bgColor="#eeeeee" rowSpan="2"> 
              <P class="smalltextb">Check Last 
                Year<BR/>
                Attended in School</P>
              <P class="smalltext"></P>
            </TD>
            <TD class="TCell" vAlign="center" align="middle" width="32%" bgColor="#eeeeee" rowSpan="2"> 
            <P class="smalltextb">Degree or Certificate</P>
           </TD>
         </TR>
         
        <TR> 
          <TD width="28%" height="13%" align="middle" bgColor="#eeeeee" class="TCell"> 
            <P class="smalltextb">City, State</P>
            <P class="smalltext"></P>
          </TD>
        </TR>
        <TR> 
          <TD class="TCell" align="middle" width="16%" bgColor="#eeeeee" rowSpan="2"> 
            <P class="smalltext">High School<BR/>GED</P>
          </TD>
          <TD width="28%" height="9%" align="middle" bgColor="#eeeeee" class="TCell"> 
            <P class="smalltext"> 
                <INPUT class="inputclass" tabIndex="54" size="30" name="txtHighSchoolName" value="{LongApplication/txtHighSchoolName}" />
            </P>
          </TD>
          <TD class="TCell" align="middle" width="24%" bgColor="#eeeeee" rowSpan="2"> 
            <P class="smalltext">
							<xsl:if test="LongApplication/radLast_Year_High_School = '9'" >
							9 
              <INPUT tabIndex="56" type="radio" value="9" name="radLast_Year_High_School"  disabled="disabled" checked="checked" />
              10 
              <INPUT tabIndex="57" type="radio" value="10" name="radLast_Year_High_School" disabled="disabled" />
              11 
              <INPUT tabIndex="58" type="radio" value="11" name="radLast_Year_High_School" disabled="disabled" />
              12 
              <INPUT tabIndex="59" type="radio" value="12" name="radLast_Year_High_School" disabled="disabled" />
              </xsl:if>
              
							<xsl:if test="LongApplication/radLast_Year_High_School = '10'" >
							9 
              <INPUT tabIndex="56" type="radio" value="9" name="radLast_Year_High_School"  disabled="disabled" />
              10 
              <INPUT tabIndex="57" type="radio" value="10" name="radLast_Year_High_School" disabled="disabled" checked="checked" />
              11 
              <INPUT tabIndex="58" type="radio" value="11" name="radLast_Year_High_School" disabled="disabled" />
              12 
              <INPUT tabIndex="59" type="radio" value="12" name="radLast_Year_High_School" disabled="disabled" />
              </xsl:if>
              
							<xsl:if test="LongApplication/radLast_Year_High_School = '11'" >
							9 
              <INPUT tabIndex="56" type="radio" value="9" name="radLast_Year_High_School"  disabled="disabled" />
              10 
              <INPUT tabIndex="57" type="radio" value="10" name="radLast_Year_High_School" disabled="disabled" />
              11 
              <INPUT tabIndex="58" type="radio" value="11" name="radLast_Year_High_School" disabled="disabled" checked="checked" />
              12 
              <INPUT tabIndex="59" type="radio" value="12" name="radLast_Year_High_School" disabled="disabled" />
              </xsl:if>              
              
							<xsl:if test="LongApplication/radLast_Year_High_School = '12'" >
							9 
              <INPUT tabIndex="56" type="radio" value="9" name="radLast_Year_High_School"  disabled="disabled" />
              10 
              <INPUT tabIndex="57" type="radio" value="10" name="radLast_Year_High_School" disabled="disabled" />
              11 
              <INPUT tabIndex="58" type="radio" value="11" name="radLast_Year_High_School" disabled="disabled" />
              12 
              <INPUT tabIndex="59" type="radio" value="12" name="radLast_Year_High_School" disabled="disabled" checked="checked" />
              </xsl:if>              
            </P>
            <P class="smalltext">Graduated/GED?<BR/>
							<xsl:if test="LongApplication/radGraduated_High_School = 'Yes'" >
              <INPUT tabIndex="60" type="radio" value="Yes" name="radGraduated_High_School" disabled="disabled" checked="checked" />
              Yes 
              <INPUT tabIndex="61" type="radio" value="No" Name="radGraduated_High_School" disabled="disabled" />
              No
              </xsl:if>
              

							<xsl:if test="LongApplication/radGraduated_High_School = 'No'" >
              <INPUT tabIndex="60" type="radio" value="Yes" name="radGraduated_High_School" disabled="disabled" />
              Yes 
              <INPUT tabIndex="61" type="radio" value="No" Name="radGraduated_High_School" disabled="disabled" checked="checked" />
              No
              </xsl:if>
              </P></TD>
          <TD class="TCell" vAlign="center" align="middle" width="32%" bgColor="#eeeeee" rowSpan="2"> <P class="smalltext"> 
              <INPUT type="textbox" class="inputclass" tabIndex="62" size="35" name="txtHigh_School_Degree_or_Certificate" value="{LongApplication/txtHigh_School_Degree_or_Certificate}" />
            </P>
          </TD>
        </TR>

        <TR> 
          <TD width="28%" height="11%" align="middle" bgColor="#eeeeee" class="TCell"> 
            <P class="smalltext"> 
                <INPUT class="inputclass" tabIndex="55" size="30" name="txtHigh_School_City_State" value="{LongApplication/txtHigh_School_City_State}" />
            </P>
					</TD>
        </TR>
        <TR> 
          <TD class="TCell" align="middle" width="16%" bgColor="#eeeeee" rowSpan="2"> 
            <P class="smalltext">Undergraduate College/University</P></TD>
          <TD width="28%" height="9%" align="middle" bgColor="#eeeeee" class="TCell"> 
            <P class="smalltext"> 
                <INPUT class="inputclass" tabIndex="63" size="30" name="txtCollege_1_Name" value="{LongApplication/txtCollege_1_Name}" />
            </P></TD>
          <TD class="TCell" align="middle" width="24%" bgColor="#eeeeee" rowSpan="2"> 
            <P class="smalltext"> 
							<xsl:if test="LongApplication/radLast_Year_College_1 = '1'" >
							1
              <INPUT tabIndex="65" type="radio" value="1" name="radLast_Year_College_1" disabled="disabled" checked="checked" />
              2 
              <INPUT tabIndex="66" type="radio" value="2" name="radLast_Year_College_1" disabled="disabled" />
              3 
              <INPUT tabIndex="67" type="radio" value="3" name="radLast_Year_College_1" disabled="disabled" />
              4 
              <INPUT tabIndex="68" type="radio" value="4" name="radLast_Year_College_1" disabled="disabled" />
              </xsl:if>
              
							<xsl:if test="LongApplication/radLast_Year_College_1 = '2'" >
              <INPUT tabIndex="65" type="radio" value="1" name="radLast_Year_College_1" disabled="disabled" />
              2 
              <INPUT tabIndex="66" type="radio" value="2" name="radLast_Year_College_1" disabled="disabled" checked="checked" />
              3 
              <INPUT tabIndex="67" type="radio" value="3" name="radLast_Year_College_1" disabled="disabled" />
              4 
              <INPUT tabIndex="68" type="radio" value="4" name="radLast_Year_College_1" disabled="disabled" />
              </xsl:if>
              
							<xsl:if test="LongApplication/radLast_Year_College_1 = '3'" >
              <INPUT tabIndex="65" type="radio" value="1" name="radLast_Year_College_1" disabled="disabled" />
              2 
              <INPUT tabIndex="66" type="radio" value="2" name="radLast_Year_College_1" disabled="disabled" />
              3 
              <INPUT tabIndex="67" type="radio" value="3" name="radLast_Year_College_1" disabled="disabled" checked="checked" />
              4 
              <INPUT tabIndex="68" type="radio" value="4" name="radLast_Year_College_1" disabled="disabled" />
              </xsl:if>
              
							<xsl:if test="LongApplication/radLast_Year_College_1 = '4'" >
              <INPUT tabIndex="65" type="radio" value="1" name="radLast_Year_College_1" disabled="disabled" />
              2 
              <INPUT tabIndex="66" type="radio" value="2" name="radLast_Year_College_1" disabled="disabled" />
              3 
              <INPUT tabIndex="67" type="radio" value="3" name="radLast_Year_College_1" disabled="disabled" />
              4 
              <INPUT tabIndex="68" type="radio" value="4" name="radLast_Year_College_1" disabled="disabled" checked="checked" />
              </xsl:if>
            </P>
            <P class="smalltext">Graduated?<BR/>
							<xsl:if test="LongApplication/radGraduated_College_1 = 'Yes'" >
              <INPUT tabIndex="69" type="radio" value="Yes" name="radGraduated_College_1" disabled="disabled" checked="checked" />
              Yes 
              <INPUT tabIndex="70" type="radio" value="No" name="radGraduated_College_1" disabled="disabled" />
              No
              </xsl:if>
              
							<xsl:if test="LongApplication/radGraduated_College_1 = 'No'" >
              <INPUT tabIndex="69" type="radio" value="Yes" name="radGraduated_College_1" disabled="disabled" />
              Yes 
              <INPUT tabIndex="70" type="radio" value="No" name="radGraduated_College_1" disabled="disabled" checked="checked" />
              No
              </xsl:if>
              </P></TD>
          <TD class="TCell" vAlign="center" align="middle" width="32%" bgColor="#eeeeee" rowSpan="2"> <P class="smalltext"> 
              <INPUT type="text" class="inputclass" tabIndex="71" size="35" name="txtCollege_1_Degree_or_Certificate" value="{LongApplication/txtCollege_1_Degree_or_Certificate}" />
            </P></TD>
        </TR>
        
        <TR> 
          <TD width="28%" height="11%" align="middle" bgColor="#eeeeee" class="TCell"> 
            <P class="smalltext">
                <INPUT type="text" class="inputclass" tabIndex="64" size="30" name="txtCollege_1_City_State" value="{LongApplication/txtCollege_1_City_State}" />
            </P></TD>
        </TR>
        <TR> 
          <TD class="TCell" align="middle" width="16%" bgColor="#eeeeee" rowSpan="2"> 
            <P class="smalltext">Graduate College/University</P></TD>
          <TD width="28%" height="9%" align="middle" bgColor="#eeeeee" class="TCell"> 
            <P class="smalltext"> 
                <INPUT type="text" class="inputclass" tabIndex="63" size="30" name="txtCollege_2_Name" value="{LongApplication/txtCollege_2_Name}" />
            </P></TD>
          <TD class="TCell" align="middle" width="24%" bgColor="#eeeeee" rowSpan="2"> 
            <P class="smalltext">
 							<xsl:if test="LongApplication/radLast_Year_College_2 = '1'" >
							1 
              <INPUT tabIndex="65" type="radio" value="1" name="radLast_Year_College_2" disabled="disabled" checked="checked" />
              2 
              <INPUT tabIndex="66" type="radio" value="2" name="radLast_Year_College_2" disabled="disabled" />
              3 
              <INPUT tabIndex="67" type="radio" value="3" name="radLast_Year_College_2" disabled="disabled" />
              4 
              <INPUT tabIndex="68" type="radio" value="4" name="radLast_Year_College_2" disabled="disabled" />
              </xsl:if>

 							<xsl:if test="LongApplication/radLast_Year_College_2 = '2'" >
							1 
              <INPUT tabIndex="65" type="radio" value="1" name="radLast_Year_College_2" disabled="disabled" />
              2 
              <INPUT tabIndex="66" type="radio" value="2" name="radLast_Year_College_2" disabled="disabled" checked="checked" />
              3 
              <INPUT tabIndex="67" type="radio" value="3" name="radLast_Year_College_2" disabled="disabled" />
              4 
              <INPUT tabIndex="68" type="radio" value="4" name="radLast_Year_College_2" disabled="disabled" />
              </xsl:if>              
              
 							<xsl:if test="LongApplication/radLast_Year_College_2 = '3'" >
							1 
              <INPUT tabIndex="65" type="radio" value="1" name="radLast_Year_College_2" disabled="disabled" />
              2 
              <INPUT tabIndex="66" type="radio" value="2" name="radLast_Year_College_2" disabled="disabled" />
              3 
              <INPUT tabIndex="67" type="radio" value="3" name="radLast_Year_College_2" disabled="disabled" checked="checked" />
              4 
              <INPUT tabIndex="68" type="radio" value="4" name="radLast_Year_College_2" disabled="disabled" />
              </xsl:if>              
              
 							<xsl:if test="LongApplication/radLast_Year_College_2 = '4'" >
							1 
              <INPUT tabIndex="65" type="radio" value="1" name="radLast_Year_College_2" disabled="disabled" />
              2 
              <INPUT tabIndex="66" type="radio" value="2" name="radLast_Year_College_2" disabled="disabled" />
              3 
              <INPUT tabIndex="67" type="radio" value="3" name="radLast_Year_College_2" disabled="disabled" />
              4 
              <INPUT tabIndex="68" type="radio" value="4" name="radLast_Year_College_2" disabled="disabled" checked="checked" />
              </xsl:if>              
            </P>
            <P class="smalltext">Graduated?<BR/>
							<xsl:if test="LongApplication/radGraduated_College_2 = 'Yes'" >
              <INPUT tabIndex="69" type="radio" value="Yes" name="radGraduated_College_2" disabled="disabled" checked="checked" />
              Yes 
              <INPUT tabIndex="70" type="radio" value="No"  name="radGraduated_College_2" disabled="disabled" />
              No
              </xsl:if>
              
							<xsl:if test="LongApplication/radGraduated_College_2 = 'No'" >
              <INPUT tabIndex="69" type="radio" value="Yes" name="radGraduated_College_2" disabled="disabled" />
              Yes 
              <INPUT tabIndex="70" type="radio" value="No"  name="radGraduated_College_2" disabled="disabled" checked="checked" />
              No
              </xsl:if>
              </P></TD>
          <TD class="TCell" vAlign="center" align="middle" width="32%" bgColor="#eeeeee" rowSpan="2"> <P class="smalltext"> 
              <INPUT type='text' class="inputclass" tabIndex="71" size="35" name="txtCollege_2_Degree_or_Certificate" value="{LongApplication/txtCollege_2_Degree_or_Certificate}" />
            </P></TD>
        </TR>

        <TR> 
          <TD width="28%" height="11%" align="middle" bgColor="#eeeeee" class="TCell"> 
            <P class="smalltext"> 
                <INPUT type="text" class="inputclass" tabIndex="64" size="30" name="txtCollege_2_City_State" value="{LongApplication/txtCollege_2_City_State}" />
            </P></TD>
        </TR>
        <TR> 
          <TD class="TCell" align="middle" width="16%" bgColor="#eeeeee" rowSpan="2"> 
            <P class="smalltext">Technical School 
            </P></TD>
          <TD width="28%" height="9%" align="middle" bgColor="#eeeeee" class="TCell"> 
            <P class="smalltext"> 
                <INPUT type="text" class="inputclass" tabIndex="72" size="30" name="txtCollege_3_Name" value="{LongApplication/txtCollege_3_Name}" />
            </P></TD>
          <TD class="TCell" align="middle" width="24%" bgColor="#eeeeee" rowSpan="2"> 
            <P class="smalltext">
							<xsl:if test="LongApplication/radLast_Year_College_3 = '1'" >
							1 
              <INPUT tabIndex="74" type="radio" value="1" name="radLast_Year_College_3" disabled="disabled" checked="checked" />
              2 
              <INPUT tabIndex="75" type="radio" value="2" name="radLast_Year_College_3" disabled="disabled" />
              3 
              <INPUT tabIndex="76" type="radio" value="3" name="radLast_Year_College_3" disabled="disabled" />
              4 
              <INPUT tabIndex="77" type="radio" value="4" name="radLast_Year_College_3" disabled="disabled" />
              </xsl:if>
              
							<xsl:if test="LongApplication/radLast_Year_College_3 = '2'" >
							1 
              <INPUT tabIndex="74" type="radio" value="1" name="radLast_Year_College_3" disabled="disabled" />
              2 
              <INPUT tabIndex="75" type="radio" value="2" name="radLast_Year_College_3" disabled="disabled" checked="checked" />
              3 
              <INPUT tabIndex="76" type="radio" value="3" name="radLast_Year_College_3" disabled="disabled" />
              4 
              <INPUT tabIndex="77" type="radio" value="4" name="radLast_Year_College_3" disabled="disabled" />
              </xsl:if>
              
							<xsl:if test="LongApplication/radLast_Year_College_3 = '3'" >
							1 
              <INPUT tabIndex="74" type="radio" value="1" name="radLast_Year_College_3" disabled="disabled" />
              2 
              <INPUT tabIndex="75" type="radio" value="2" name="radLast_Year_College_3" disabled="disabled" />
              3 
              <INPUT tabIndex="76" type="radio" value="3" name="radLast_Year_College_3" disabled="disabled" checked="checked" />
              4 
              <INPUT tabIndex="77" type="radio" value="4" name="radLast_Year_College_3" disabled="disabled" />
              </xsl:if>
              
							<xsl:if test="LongApplication/radLast_Year_College_3 = '4'" >
							1 
              <INPUT tabIndex="74" type="radio" value="1" name="radLast_Year_College_3" disabled="disabled" />
              2 
              <INPUT tabIndex="75" type="radio" value="2" name="radLast_Year_College_3" disabled="disabled" />
              3 
              <INPUT tabIndex="76" type="radio" value="3" name="radLast_Year_College_3" disabled="disabled" />
              4 
              <INPUT tabIndex="77" type="radio" value="4" name="radLast_Year_College_3" disabled="disabled" checked="checked" />
              </xsl:if>
              </P>
            <P class="smalltext">Graduated?<BR/>
							<xsl:if test="LongApplication/radGraduated_College_3 = 'Yes'" >
              <INPUT tabIndex="78" type="radio" value="Yes" name="radGraduated_College_3" disabled="disabled" checked="checked" />
              Yes 
              <INPUT tabIndex="79" type="radio" value="No" name="radGraduated_College_3" disabled="disabled" />
              No
              </xsl:if>
              
							<xsl:if test="LongApplication/radGraduated_College_3 = 'No'" >
              <INPUT tabIndex="78" type="radio" value="Yes" name="radGraduated_College_3" disabled="disabled" />
              Yes 
              <INPUT tabIndex="79" type="radio" value="No" name="radGraduated_College_3" disabled="disabled" checked="checked" />
              No
              </xsl:if>
              </P></TD>
          <TD class="TCell" vAlign="center" align="middle" width="32%" bgColor="#eeeeee" rowSpan="2"> <P class="smalltext"> 
              <INPUT type="text" class="inputclass" tabIndex="80" size="35" name="txtCollege_3_Degree_or_Certificate" value="{LongApplication/txtCollege_3_Degree_or_Certificate}" />
            </P></TD>
        </TR>


        <TR> 
          <TD width="28%" height="14%" align="middle" bgColor="#eeeeee" class="TCell"> 
            <P class="smalltext"> 
                <INPUT type="text" class="inputclass" tabIndex="73" size="30" name="txtCollege_3_City_State" value="{LongApplication/txtCollege_3_City_State}" />
            </P>
          </TD>
        </TR>
				</TBODY>
			</TABLE>
			
      <TABLE width="100%" height="199" cellPadding="1" cellSpacing="1" bgColor="black">
        <TBODY>
          <TR> 
            <TD height="11%" colspan="5" align="middle" bgColor="#eeeeee" class="TCell"><strong>PROFESSIONAL 
              REGISTRATION, LICENSE OR ACCREDITATION</strong>
            </TD>
          </TR>
          
          <TR> 
            <TD width="23%" height="7%" align="middle" bgcolor="#eeeeee" class="smalltextb">License</TD>
            <TD width="23%" align="middle" bgcolor="#eeeeee" class="smalltextb">Number</TD>
            <TD class="smalltextb" align="middle" width="11%" bgcolor="#eeeeee">Date 
              Issued </TD>
            <TD class="smalltextb" vAlign="center" align="middle" width="17%" bgcolor="#eeeeee">Date 
              Expired </TD>
            <TD class="smalltextb" vAlign="center" align="middle" width="26%" bgcolor="#eeeeee">Issued 
              By </TD>
          </TR>

          <TR> 
            <TD width="23%" height="13%" align="middle" bgcolor="#eeeeee" class="TCell"> 
              <input type="text" name="txtLicenseName_1" value="{LongApplication/txtLicenseName_1}" />
            </TD>
            <TD width="23%" align="middle" bgcolor="#eeeeee" class="TCell"> 
              <input type="text" name="txtLicenseNumber_1" value="{LongApplication/txtLicenseNumber_1}" />
            </TD>
            <TD class="TCell" align="middle" width="11%" bgcolor="#eeeeee"> 
              <input name="txtLicenseIssueDate_1" type="text" size="8" value="{LongApplication/txtLicenseIssueDate_1}" />
            </TD>
            <TD class="TCell" vAlign="center" align="middle" width="17%" bgcolor="#eeeeee"> 
              <input name="txtLicenseExpireDate_1" type="text" size="8" value="{LongApplication/txtLicenseExpireDate_1}" />
            </TD>
            <TD class="TCell" vAlign="center" align="middle" width="26%" bgcolor="#eeeeee"> 
              <input type="txtLicenseIssuedBy_1" name="txtLicenseIssuedBy_1" value="{LongApplication/txtLicenseIssuedBy_1}" />
            </TD>
          </TR>

          <TR> 
            <TD width="23%" height="13%" align="middle" bgcolor="#eeeeee" class="TCell"> 
              <input type="text" name="txtLicenseName_2" value="{LongApplication/txtLicenseName_2}" />
            </TD>
            <TD width="23%" align="middle" bgcolor="#eeeeee" class="TCell"> 
              <input type="text" name="txtLicenseNumber_2" value="{LongApplication/txtLicenseNumber_2}" />
            </TD>
            <TD class="TCell" align="middle" width="11%" bgcolor="#eeeeee"> 
              <input name="txtLicenseIssueDate_2" type="text" size="8" value="{LongApplication/txtLicenseIssueDate_2}" />
            </TD>
            <TD class="TCell" vAlign="center" align="middle" width="17%" bgcolor="#eeeeee"> 
              <input name="txtLicenseExpireDate_2" type="text" size="8" value="{LongApplication/txtLicenseExpireDate_2}" />
            </TD>
            <TD class="TCell" vAlign="center" align="middle" width="26%" bgcolor="#eeeeee"> 
              <input type="text" name="txtLicenseIssuedBy_2" value="{LongApplication/txtLicenseIssuedBy_2}" />
            </TD>
          </TR>
          
          <TR> 
            <TD height="13%" align="middle" bgcolor="#eeeeee" class="TCell"> 
              <input type="text" name="txtLicenseName_3" value="{LongApplication/txtLicenseName_3}" /></TD>
            <TD align="middle" bgcolor="#eeeeee" class="TCell">
            <input type="text" name="txtLicenseNumber_3" value="{LongApplication/txtLicenseNumber_3}" /></TD>
            <TD class="TCell" align="middle" bgcolor="#eeeeee">
            <input name="txtLicenseIssueDate_3" type="text" size="8" value="{LongApplication/txtLicenseIssueDate_3}" /></TD>
            <TD class="TCell" vAlign="center" align="middle" bgcolor="#eeeeee">
            <input name="txtLicenseExpireDate_3" type="text" size="8" value="{LongApplication/txtLicenseExpireDate_3}" /></TD>
            <TD class="TCell" vAlign="center" align="middle" bgcolor="#eeeeee">
            <input type="text" name="txtLicenseIssuedBy_3" value="{LongApplication/txtLicenseIssuedBy_3}" /></TD>
          </TR>
          
          <TR> 
            <TD height="43%" colspan="5" align="middle" bgcolor="#eeeeee" class="smalltext"> 
              <div align="left">Is your license 
                currently or has it ever been under 
                restriction? 
                <xsl:if test="LongApplication/radNoValidLicense = 'Yes'" >
                <input type="radio" name="radNoValidLicense" value="Yes" disabled="disabled" checked="checked" />
                Yes 
                <input type="radio" name="radNoValidLicense" value="No" disabled="disabled" />
                No
                </xsl:if>
                
                <xsl:if test="LongApplication/radNoValidLicense = 'No'" >
                <input type="radio" name="radNoValidLicense" value="Yes" disabled="disabled" />
                Yes 
                <input type="radio" name="radNoValidLicense" value="No" disabled="disabled" checked="checked" />
                No
                </xsl:if>                
                <br/>
                If yes, please explain: 
                <textarea name="txtNoValidLicense" cols="85"><xsl:value-of select="LongApplication/txtNoValidLicense" /></textarea>
              </div>
            </TD>
          </TR>
				</TBODY>
			</TABLE>
		</td>
	</tr>
</table>

<table width="98%" height="3" border="0" cellpadding="1" cellspacing="1">
  <tr bgcolor="#003399"> 
    <td height="20%" colspan="4"><p><font color="#FFFFFF" face="Verdana, Arial, Helvetica, sans-serif">
			<P CLASS="breakhere"></P>
			<strong>REFERENCES<br/>
      </strong></font>
      <font color="#FFFFFF" size="-2"> 
        List three individuals who are 
        in a position to evaluate your training, 
        experience and attributes. Please omit 
        relatives.
       </font> 
      </p>
    </td>
  </tr>
  
  <tr> 
    <td width="23%" height="12%"> <p class="smalltext"><strong><font color="#0000FF">1)
        Name</font></strong></p></td>
    <td width="23%"><p class="smalltext">Position</p></td>
    <td width="32%"><p class="smalltext">Company</p></td>
    <td width="22%"><p class="smalltext">Phone</p></td>
  </tr>
  <tr> 
    <td height="24%"><font size="-2"> 
      <input type="text" name="txtRefName_1" value="{LongApplication/txtRefName_1}" />
      </font></td>
    <td><font size="-2"> 
      <input type="text" name="txtRefPos_1" value="{LongApplication/txtRefPos_1}" />
      </font></td>
    <td><font size="-2"> 
      <input type="text" name="txtRefCo_1" value="{LongApplication/txtRefCo_1}" />
      </font></td>
    <td><font size="-2"> 
      <input name="txtRefPhone_1" type="text" size="10" value="{LongApplication/txtRefPhone_1}" />
      </font></td>
  </tr>
</table>

<table width="98%" height="2" border="0" cellpadding="1" cellspacing="1">
  <tr> 
    <td width="23%" height="16%"> <p class="smalltext"><strong><font color="#0000FF">2)
        Name</font></strong></p></td>
    <td width="23%"><p class="smalltext">Position</p></td>
    <td width="32%"><p class="smalltext">Company</p></td>
    <td width="22%"><p class="smalltext">Phone</p></td>
  </tr>
  <tr> 
    <td height="33%"><font size="-2"> 
      <input type="text" name="txtRefName_2" value="{LongApplication/txtRefName_2}" />
      </font></td>
    <td><font size="-2"> 
      <input type="text" name="txtRefPos_2" value="{LongApplication/txtRefPos_2}" />
      </font></td>
    <td><font size="-2"> 
      <input type="text" name="txtRefCo_2" value="{LongApplication/txtRefCo_2}" />
      </font></td>
    <td><font size="-2">
      <input name="txtRefPhone_2" type="text" size="10" value="{LongApplication/txtRefPhone_2}" />
      </font></td>
  </tr>
</table>

<table width="98%" height="2" border="0" cellpadding="1" cellspacing="1">
  <tr> 
    <td width="23%" height="16%"> <p class="smalltext"><strong><font color="#0000FF">3) 
        Name</font></strong></p></td>
    <td width="23%"><p class="smalltext">Position</p></td>
    <td width="32%"><p class="smalltext">Company</p></td>
    <td width="22%"><p class="smalltext">Phone</p></td>
  </tr>
  <tr> 
    <td height="33%"><font size="-2"> 
      <input type="text" name="txtRefName_3" value="{LongApplication/txtRefName_3}" />
      </font></td>
    <td><font size="-2"> 
      <input type="text" name="txtRefPos_3" value="{LongApplication/txtRefPos_3}" />
      </font></td>
    <td><font size="-2"> 
      <input type="text" name="txtRefCo_3" value="{LongApplication/txtRefCo_3}" />
      </font></td>
    <td><font size="-2"> 
      <input name="txtRefPhone_3" type="text" size="10" value="{LongApplication/txtRefPhone_3}" />
      </font></td>
  </tr>
</table>

<table width="98%" height="32" border="0" cellpadding="3" cellspacing="3">
  <tr> 
    <td width="100%" height="2%"></td>
  </tr>
  <tr> 
    <td height="6%" valign="top">
      <p class="smalltext">Have you at any time 
        during the preceding year, been employed 
        in a managerial, accounting, auditing or 
        similar capacity role by (1) Baptist Health&#8217;s 
        current Medical Fiscal intermediary (First 
        Coast Options), or (2) any other agency 
        or organization which served during such 
        time as a Medical Fiscal intermediary for 
        Baptist Health?</p>
      <p class="smalltext"> 
				<xsl:if test="LongApplication/radBaptistMngr = 'Yes'" >
        <input type="radio" name="radBaptistMngr" disabled="disabled" checked="checked" />
        Yes 
        <input type="radio" name="radBaptistMngr" disabled="disabled" />
        No
        </xsl:if>
        
				<xsl:if test="LongApplication/radBaptistMngr = 'No'" >
        <input type="radio" name="radBaptistMngr" disabled="disabled" />
        Yes 
        <input type="radio" name="radBaptistMngr" disabled="disabled" checked="checked" />
        No
        </xsl:if>
      </p></td>
  </tr>
  <tr> 
    <td height="5%" valign="top">
      <p class="smalltext">If hired, can you furnish 
        proof that you are eligible to work in the 
        United States?</p>
      <p class="smalltext"> 
				<xsl:if test="LongApplication/radUSAllowed = 'Yes'" >
        <input type="radio" name="radUSAllowed" disabled="disabled" checked="checked" />
        Yes 
        <input type="radio" name="radUSAllowed" disabled="disabled" />
        No
        </xsl:if>
        
				<xsl:if test="LongApplication/radUSAllowed = 'No'" >
        <input type="radio" name="radUSAllowed" disabled="disabled" />
        Yes 
        <input type="radio" name="radUSAllowed" disabled="disabled" checked="checked" />
        No
        </xsl:if>
        </p></td>
  </tr>
  
  <tr> 
    <td height="49%"> <p class="smalltext">I further 
          certify that I have not been found by 
          an administrative body or civil court 
          to have violated any of the statues, rules 
          or regulations pertaining to the Health 
          Care Financial Act, Medicare, Medicaid 
          or any other federal programs. </p>
        <p class="smalltext">
					<xsl:if test="LongApplication/radNoFraud = 'Yes'" >
          <input type="radio" name="radNoFraud" disabled="disabled" checked="checked" />
          Yes 
          <input type="radio" name="radNoFraud" disabled="disabled" />
          No
          </xsl:if>
          
					<xsl:if test="LongApplication/radNoFraud = 'No'" >
          <input type="radio" name="radNoFraud" disabled="disabled" />
          Yes 
          <input type="radio" name="radNoFraud" disabled="disabled" checked="checked" />
          No
          </xsl:if>
        </p>
        <p class="smalltext">Have you even been 
          convicted of, or pled guilty, no contest 
          or nolo contendere to a crime? This includes 
          DUI or DWI, a criminal conviction, debarment, 
          sanction, or exclusion related to Medicare 
          Medicaid, or any other federal or state-funded 
          health care program(s), or ineligibility 
          for participation in a federally or state-funded 
          health care program.</p>
        <p class="smalltext"> 
					<xsl:if test="LongApplication/radConviction = 'Yes'" >
          <input type="radio" name="radConviction" value="Yes" disabled="disabled" checked="checked" />
          Yes 
          <input type="radio" name="radConviction" value="No" disabled="disabled" />
          No
          </xsl:if>
          
					<xsl:if test="LongApplication/radConviction = 'No'" >
          <input type="radio" name="radConviction" value="Yes" disabled="disabled" />
          Yes 
          <input type="radio" name="radConviction" value="No" disabled="disabled" checked="checked" />
          No
          </xsl:if>
          <br/>
          <br/>
          If yes, give details (date, place, offense(s), 
          disposition, etc.)<br/>
          <textarea name="txtConvictionList" cols="85"><xsl:value-of select="LongApplication/txtConvictionList" /></textarea></p>
        <p class="smalltext">Have you ever been charged 
        with a crime and either been placed on a 
        court ordered probation, had adjudication 
        withheld, entered a pre-trial intervention 
        program, or have any criminal charges now 
        pending?
        <xsl:if test="LongApplication/radCrime = 'Yes'" > 
        <input type="radio" name="radCrime" value="Yes" disabled="disabled" checked="checked" />
        Yes 
        <input type="radio" name="radCrime" value="No" />
        No
        </xsl:if>
        
        <xsl:if test="LongApplication/radCrime = 'No'" > 
        <input type="radio" name="radCrime" value="Yes" disabled="disabled" />
        Yes 
        <input type="radio" name="radCrime" value="No" disabled="disabled" checked="checked" />
        No
        </xsl:if>        
        </p>
      <p class="smalltext">If yes, give details:<br/>
        <textarea name="txtCrime" cols="85"><xsl:value-of select="LongApplication/txtCrime" /></textarea>
        <br/>
      </p>
      
					<p class="smalltextb">Baptist Health reserves the right to refuse to 
					consider any application not filled out in full.<br/></p>

					<p class="smalltext">Please read carefully and sign below.</p>
					<p class="smalltext">
					<input type="checkbox" name="chkCertify_1" disabled="disabled" checked="checked" value="Agree_1" />
					I hereby certify that all of the facts and information listed on this 
					employment application are true and complete. I understand that any 
					false, incomplete or misleading given by me on this application is 
					sufficient cause for rejection of this application. I also understand 
					and agree that any such false, incomplete, or misleading information 
					discovered on this application at any time after I am employed may 
					result in my dismissal.</p>
					<p class="smalltext">
          <input type="checkbox" name="chkCertify_2" disabled="disabled" checked="checked" value="Agree_2" />
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
          furnishing such information to Baptist Health, including, but not limited to, 
          any liability for defamation or invasion 
          of privacy. </p>
        <p class="smalltext">
          <input type="checkbox" name="chkCertify_3" disabled="disabled" checked="checked" value="Agree_3" />
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
          make any agreement contrary to the foregoing. </p>
        <p class="smalltext">
          <input type="checkbox" name="chkCertify_4" disabled="disabled" checked="checked" value="Agree_4" />
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
          may result in my immediate dismissal. </p>
      </td>
  </tr>

	<tr> 
	<td height="38%"><P CLASS="breakhere"></P>
	<p class="smalltextb">FAIR CREDIT REPORTING ACT<br/>
	DISCLOSURE TO APPLICANTS AND EMPLOYEES<br/></p>
	<p class="smalltext">Pursuant to the Fair Credit Reporting Act, 15 U.S.C. 1681-1681u, Baptist 
	Health is providing this notice that Baptist Health may obtain a consumer 
	report, (including, but not limited to, a credit report) concerning 
	you for employment purposes and in conjunction with either your application 
	for employment and/or decisions concerning your employment status 
	with Baptist Health. </p>
					<p class="smalltextb"> 
					<input type="checkbox" name="chkCertify_5" disabled="disabled" checked="checked" value="Agree_5" />
					&quot;I certify that I have read, understand 
					and agree with the above.&quot;</p>
				<p class="smalltextb"><br/>
					FAIR CREDIT REPORTING ACT<br/>
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
					my employment status with Baptist Health.</p>
				<p class="smalltextb"> 
					<input type="checkbox" name="chkCertify_6" disabled="disabled" checked="checked" value="Agree_6" />
					&quot;I certify that I have read, understand 
					and agree with the above.&quot; </p>
					<P CLASS="breakhere"></P>
				<p class="smalltextb">PRE-EMPLOYMENT 
					BACKGROUND INVESTIGATION<br/></p>
					<p class="smalltext">To be considered for employment with Baptist 
					Health or affiliates, applicants are subject 
					to a background investigation with Florida 
					Department of Law Enforcement and other 
					state, out of state and local agencies. 
					<br/>
					Applicants for employment are evaluated 
					on the merits of their qualifications 
					for positions available regardless of 
					the individual's race, sex, color, national 
					origin, age, handicap, religion, marital 
					status, or status as a veteran. Conviction 
					of a crime will not necessarily preclude 
					an applicant from consideration for employment 
					with Baptist Health. </p>
					<!--
				<p class="smalltextb"><br/>
					The following information is required 
					to perform the background investigation: 
					</p>
					
					<table width="100%" border="0" cellspacing="1" cellpadding="1">
						<tr> 
							<td colspan="3" valign="top"><p class="smalltextb">Date of 
								Birth:</p></td>
						</tr>
						
						<tr> 
							<td width="14%" valign="top"><p class="smalltextb"> 
									Month 
									<input type="text" name="selBDateMonth" value="{LongApplication/selBDateMonth}" />
								</p>
							</td>
							<td width="9%" valign="top"><p class="smalltextb">Day<br/> 
								<input type="text" name="selBDateDay" value="{LongApplication/selBDateDay}" />
								</p>
							</td>

							<td width="77%" valign="top"><p class="smalltextb">Year<br/> 
								<input type="text" name="selBDateYear" value="{LongApplication/selBDateYear}" /> </p>
							</td>
						</tr>
						<tr> 
							<td valign="top"><p class="smalltextb"> Sex<br/> 
								<input type="text" name="selGender" value="{LongApplication/selGender}" /></p>
							</td>
							<td valign="top"><p class="smalltextb">Race<br/> 
								<input type="text" name="selEthnicity" value="{LongApplication/selEthnicity}" /></p>
							</td>
							<td>
							</td>
						</tr>
					</table>
					-->
          <p class="smalltextb"> 
            <input type="checkbox" name="chkFinalAgree" disabled="disabled" checked="checked" value="I agree" />
            &quot;I certify that I have read, understand 
            and agree with the above.&quot; 
					</p>

          <p class="smalltext"><br/>
            Acknowledgment:</p> 
          <p class="smalltext">Your Full Name (which 
            will represent your electronic signature, 
            and which you agree Baptist can rely upon 
            to the same extent as your handwritten 
            signature) 
					</p>
					
          <p class="smalltext"> 
            <input type="text" name="txtSignature" value="{LongApplication/txtSignature}" />
          </p>
          <p> Date of birth:<br/>
          Month<input type="text" name="selBDateMonth" size="1" value="{LongApplication/selBDateMonth}" />
          Day<input type="text" name="selBDateDay" size="1" value="{LongApplication/selBDateDay}" />
          </p>          
<!--
					<p>          
                  Last Six (6) Digits of Your Driver's 
                  License Number or State I.D. Number</p>
                <p class="smalltextb">Driver License 
                  Number 
                  <input name="txtDriverLicenseNumber" type="text" size="6" value="{LongApplication/txtDriverLicenseNumber}" />
                  State I.D. Number 
                  <input type="text" name="txtDriverLicenseIDNumber" value="{LongApplication/txtDriverLicenseIDNumber}" />
                  State of Issue 
                  <input type="text" name="selDriverLicenseState" value="{LongApplication/selDriverLicenseState}" /></p>
          -->
          <!--
          <p class="smalltext"> 
          <input type="submit" name="subSubmit" value="Submit" />
					</p>
					-->
				</td>
			</tr>
</table>
<!--End Employ Hist-->
											</td>
										</tr>
									</table>
								</td>
							</tr>
						</table>
						
					</td>
				</tr>
			</table>
		</td>
	</tr>
</table>


</body>
</html>
</xsl:template>
</xsl:stylesheet>
 

