<!--#include file="includes/local_subs.asp"-->

<%on error resume next%>

<html>
	<head>
		<title>Baptist Health Job Openings Report</title>
	</head>
	<body>	

<%

dim objJobsRS
dim strReportHTML
dim strCategoryHold
Dim strHeader

'strHeader="<tr><td align='center'><font size='4'>Children's Hospital & Regional Medical Center/Opportunities in Health Care<br>" & Date() & "</font><br><a href='www.seattlechildrens.org/jobs'>www.seattlechildrens.org/jobs</a><br><br></tr></td>"

set objJobsRS = GetCustomSearchResultsRS_BaptistHealthReport("sp_Career_Sites_report_BaptistHealth", strKeywords, strFacility, strCategory)

if err.number <> 0 then
	Response.Write err.Description
end if

with objJobsRS

if .eof and .bof then
	Response.Write "No Records Found"
else

strReportHTML = "<table border='1' width='100%'>"

strReportHTML = strReportHTML & strHeader

.movefirst
		strCategoryHold = .fields("category_name")
		strReportHTML = strReportHTML & "<tr><td colspan='13'><font size='5'><b>"
		strReportHTML = strReportHTML & strCategoryHold
		strReportHTML = strReportHTML & "</b></font></td></tr>"
		'strReportHTML = strReportHTML & "<tr><td colspan='13' border='0'>"		
		'strReportHTML = strReportHTML & "<hr>"		
		'strReportHTML = strReportHTML & "</td></tr>"
		strReportHTML = strReportHTML & "<tr><td border='0'><font size='3'><b>Vice President</b></font></td>"
		strReportHTML = strReportHTML & "<td border='0'><font size='3'><b>Recruiter</b></font></td>"
		strReportHTML = strReportHTML & "<td border='0'><font size='3'><b>FT</b></font></td>"
		strReportHTML = strReportHTML & "<td border='0'><font size='3'><b>PT</b></font></td>"
		strReportHTML = strReportHTML & "<td border='0'><font size='3'><b>PRN</b></font></td>"
		strReportHTML = strReportHTML & "<td border='0'><font size='3'><b>Job Title</b></font></td>"
		strReportHTML = strReportHTML & "<td border='0'><font size='3'><b>Dept</b></font></td>"
		strReportHTML = strReportHTML & "<td border='0'><font size='3'><b>Shift</b></font></td>"
		strReportHTML = strReportHTML & "<td border='0'><font size='3'><b>Hours</b></font></td>"
		strReportHTML = strReportHTML & "<td border='0'><font size='3'><b>Pay Grade</b></font></td>"
		strReportHTML = strReportHTML & "<td border='0'><font size='3'><b>Min - Mid</b></font></td>"
		strReportHTML = strReportHTML & "<td border='0'><font size='3'><b>Comments</b></font></td>"
		strReportHTML = strReportHTML & "<td border='0'><font size='3'><b>Description</b></font></td></tr>"

do until .eof

	strVP				= .fields("VP_CustomField251_1").value & ""
	strUsr			= .fields("user_mgt_name").value & ""
	strFT				= .fields("FT_CustomField260_1").value & ""
	strPT				= .fields("PT_CustomField261_1").value & ""
	strPRN			= .fields("PRN_CustomField262_1").value & ""
	strTitle		= .fields("title").value & ""
	strDept			= .fields("Dept_CustomField252_1").value & ""
	strShift		= .fields("Shift_CustomField264_1").value & ""
	strHours		= .fields("Hours_CustomField255_1").value & ""
	strPay			= .fields("Pay_CustomField257_1").value & ""
	strMinMid		= .fields("MinMid_CustomField258_1").value & ""
	strComments = .fields("Comments_CustomField259_1").value & ""
	'strDuties		= .fields("Duties").value & ""
	'strReqs			= .fields("Requirements").value & ""
		
	strReportHTML = strReportHTML & "<tr>"
	strReportHTML = strReportHTML & "<td>" & IIF(strVP = "", "N/A", strVP) & "</td>"
	strReportHTML = strReportHTML & "<td><font size='2'>" & IIF(strUsr = "", "N/A", strUsr) & "</font></td>"
	strReportHTML = strReportHTML & "<td><font size='2'>" & IIF(strFT = "", "N/A", strFT) & "</font></td>"
	strReportHTML = strReportHTML & "<td><font size='2'>" & IIF(strPT = "", "N/A", strPT) & "</font></td>"
	strReportHTML = strReportHTML & "<td><font size='2'>" & IIF(strPRN = "", "N/A", strPRN) & "</font></td>"
	strReportHTML = strReportHTML & "<td><font size='2'>" & IIF(strDept = "", "N/A", strDept) & "</font></td>"
	strReportHTML = strReportHTML & "<td><font size='2'>" & IIF(strShift = "", "N/A", strShift) & "</font></td>"
	strReportHTML = strReportHTML & "<td><font size='2'>" & IIF(strHours = "", "N/A", strHours) & "</font></td>"
	strReportHTML = strReportHTML & "<td><font size='2'>" & IIF(strPay = "", "N/A", strPay) & "</font></td>"
	strReportHTML = strReportHTML & "<td><font size='2'>" & IIF(strMinMid = "", "N/A", strMinMid) & "</font></td>"
	strReportHTML = strReportHTML & "<td><font size='2'>" & IIF(strComments = "", "N/A", strComments) & "</font></td>"
	strReportHTML = strReportHTML & "<td><font size='2'>" & IIF(strUsr = "", "N/A", strUsr) & "</font></td>"
	strReportHTML = strReportHTML & "<td><font size='2'>" & .fields("Duties").value & " " & .fields("Requirements").value & "</font></td>"
	
	Response.Write strReportHTML
	
	strReportHTML = ""
	
	.movenext
	
	'if strCategoryHold <> .fields("category_name") then
	'	strCategoryHold = .fields("category_name")
	'	strReportHTML = strReportHTML & "<tr><td colspan='13' border='0'><font size='5'><b>"
	'	strReportHTML = strReportHTML & strCategoryHold
	'	strReportHTML = strReportHTML & "</b></font></td></tr>"
	'	strReportHTML = strReportHTML & "<tr><td colspan='13' border='0' bgcolor='#000000' height='1'>"
	'	'strReportHTML = strReportHTML & "<hr>"		
	'	strReportHTML = strReportHTML & "</td></tr>"		
	'	strReportHTML = strReportHTML & "<tr><td colspan='2'><font size='3'><b>Job Code/Job Title/Job Description</b></font></td></tr>"
	'	strReportHTML = strReportHTML & "<tr><td colspan='3'>"		
	'	strReportHTML = strReportHTML & "<hr>"		
	'	strReportHTML = strReportHTML & "</td></tr>"	
	'	Response.Write strReportHTML
	'	strReportHTML = ""
	'end if
loop

	strReportHTML = strReportHTML & "</table>"
end if

end with

set objJobsRS = nothing

Response.Write strReportHTML

	'------------------------------------------------------------------------------
	'Name:			GetCustomSearchResultsRS
	'Inputs:		strSPName, arrCustomInput, strKeywords
	'Outputs:		objResultsRS
	'------------------------------------------------------------------------------
	function GetCustomSearchResultsRS_BaptistHealthReport(strSPName, strKeywords, strFacility, strCategory)
		
		dim oServer
		dim strSearch
		
		strSearch = strKeywords
		APP_SERVER="IQ-SQL-IQ2"
		set oServer = server.CreateObject("iq_setup_includes_server.Data")
		set GetCustomSearchResultsRS_BaptistHealthReport = oServer.GetCustomSearchResults(APP_SERVER, strSPName, _
																	  strSearch, 1, strFacility, strCategory)
		
		set oServer = nothing
		
	end function


%>
</body>
</html>