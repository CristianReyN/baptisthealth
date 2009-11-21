<!--#include file="includes/local_subs.asp"-->

<%
on error resume next

Dim strReportLocation

strReportLocation = Request.QueryString("Location").Item
%>

<html>
	<head>
		<title><%=strReportLocation%> Job Openings Report</title>
		<hr><b><%=strReportLocation%> Job Openings Report</b></hr>
	</head>
	<body>	

<%
Server.ScriptTimeout=200

dim objJobsRS
dim strReportHTML
dim strCategoryHold
Dim strHeader

Dim strVP
Dim strUsr
Dim strFT
Dim strPT
Dim strPRN
Dim strTitle
Dim strDept
Dim strShift
Dim strHours
Dim strPay
Dim strMinMid
Dim strComments
Dim strDuties
Dim strReqs
Dim strJobDesc

'strHeader="<tr><td align='center'><font size='4'>Children's Hospital & Regional Medical Center/Opportunities in Health Care<br>" & Date() & "</font><br><a href='www.seattlechildrens.org/jobs'>www.seattlechildrens.org/jobs</a><br><br></tr></td>"

set objJobsRS = ExecuteBaptistHealthReport("sp_Career_Sites_report_BaptistHealth", strReportLocation)

if err.number <> 0 then
	Response.Write err.Description
end if

with objJobsRS

if .eof and .bof then
	Response.Write "No Records Found"
else
	strReportHTML = "<table border='1' width='1000'>"

	strReportHTML = strReportHTML & strHeader

	.movefirst

	strReportHTML = strReportHTML & ReportHeader(.fields("category_name").value, .fields("Loc_Description263_1").value, True)

	do until .eof
		'strVP				= .fields("VP_CustomField251_1").value & ""
		'strUsr			= .fields("user_mgt_name").value & ""
		'strFT				= .fields("FT_CustomField260_1").value & ""
		'strPT				= .fields("PT_CustomField261_1").value & ""
		'strPRN			= .fields("PRN_CustomField262_1").value & ""
		strTitle		= .fields("title").value & ""
		strDept			= .fields("Dept_CustomField252_1").value & ""
		strShift		= .fields("Shift_CustomField264_1").value & ""
		strHours		= .fields("Hours_CustomField255_1").value & ""
		strPay			= .fields("Pay_CustomField257_1").value & ""
		'strMinMid		= .fields("MinMid_CustomField258_1").value & ""
		'strComments = .fields("Comments_CustomField259_1").value & ""
		'strHeader		= .fields("header").value & ""
		'strDuties		= Replace(.fields("Duties").value, VbCrLf, "<br>") & ""
		'strReqs			= Replace(.fields("Requirements").value, VbCrLf, "<br>") & ""
		strJobDesc  = .fields("Job_Description267_1").value & ""		'strFooter		= Replace(.fields("footer").value, VbCrLf, "<br>") & ""
					
		strReportHTML = strReportHTML & "<tr>"
		'strReportHTML = strReportHTML & "<td><font size='2'>" & IIF(strVP="","N/A",strVP) & "</font></td>"
		'strReportHTML = strReportHTML & "<td><font size='2'>" & IIF(strUsr="","N/A",strUsr) & "</font></td>"
		'strReportHTML = strReportHTML & "<td><font size='2'>" & IIF(strFT="","N/A",strFT) & "</font></td>"
		'strReportHTML = strReportHTML & "<td><font size='2'>" & IIF(strPT="","N/A",strPT) & "</font></td>"
		'strReportHTML = strReportHTML & "<td><font size='2'>" & IIF(strPRN="","N/A",strPRN) & "</font></td>"
		strReportHTML = strReportHTML & "<td><font size='2'>" & IIF(strTitle="","N/A",strTitle) & "</font></td>"
		strReportHTML = strReportHTML & "<td><font size='2'>" & IIF(strDept="","N/A",strDept) & "</font></td>"
		strReportHTML = strReportHTML & "<td><font size='2'>" & IIF(strShift="","N/A",strShift) & "</font></td>"
		strReportHTML = strReportHTML & "<td><font size='2'>" & IIF(strHours="","N/A",strHours) & "</font></td>"
		strReportHTML = strReportHTML & "<td><font size='2'>" & IIF(strPay="","N/A",strPay) & "</font></td>"
		'strReportHTML = strReportHTML & "<td><font size='2'>" & IIF(strMinMid="","N/A",strMinMid) & "</font></td>"
		'strReportHTML = strReportHTML & "<td><font size='2'>" & IIF(strComments="","N/A",strComments) & "</font></td>"
		strReportHTML = strReportHTML & "<td><font size='2'>" & IIF(strJobDesc="","N/A",strJobDesc) & "</font></td>"
		'strReportHTML = strReportHTML & "<td><font size='2'>" & strHeader & IIF(strHeader = "", "", "<br><br>") & strReqs & IIF(strReqs = "", "", "<br><br>") & strDuties & IIF(strDuties = "", "", "<br><br>") & strFooter & "</font></td>"
		
		Response.Write strReportHTML
		
		strReportHTML = ""
		
		.movenext
		
		if strCategoryHold <> .fields("category_name").value then
			strReportHTML = ReportHeader(.fields("category_name").value, .fields("Loc_Description263_1").value, False)
		end if
	loop

	strReportHTML = strReportHTML & "</table>"
end if

end with

set objJobsRS = nothing

Response.Write strReportHTML

function ReportHeader(strCat, strFacility, blnFirst)
	Dim strHeaderHTM
	
	strCategoryHold = strCat
	
	If Not blnFirst Then
		strHeaderHTM = "<tr><td height='15'></td><tr>"
	End If
	
	strHeaderHTM = strHeaderHTM & "<tr><td colspan='13'><font size='5'><b>"
	strHeaderHTM = strHeaderHTM & strCategoryHold
	strHeaderHTM = strHeaderHTM & "</b></font></td></tr>"
	'strHeaderHTM = strHeaderHTM & "<tr><td align='center'><font size='2'><b>Vice President</b></font></td>"
	'strHeaderHTM = strHeaderHTM & "<td align='center'><font size='2'><b>Recruiter</b></font></td>"
	'strHeaderHTM = strHeaderHTM & "<td align='center'><font size='2'><b>FT</b></font></td>"
	'strHeaderHTM = strHeaderHTM & "<td align='center'><font size='2'><b>PT</b></font></td>"
	'strHeaderHTM = strHeaderHTM & "<td align='center'><font size='2'><b>PRN</b></font></td>"
	strHeaderHTM = strHeaderHTM & "<td align='center'><font size='2'><b>Job Title</b></font></td>"
	strHeaderHTM = strHeaderHTM & "<td align='center'><font size='2'><b>Dept</b></font></td>"
	strHeaderHTM = strHeaderHTM & "<td align='center'><font size='2'><b>Shift Details</b></font></td>"
	strHeaderHTM = strHeaderHTM & "<td align='center'><font size='2'><b>Hours</b></font></td>"
	strHeaderHTM = strHeaderHTM & "<td align='center'><font size='2'><b>Pay Grade</b></font></td>"
	'strHeaderHTM = strHeaderHTM & "<td align='center'><font size='2'><b>Min - Mid</b></font></td>"
	'strHeaderHTM = strHeaderHTM & "<td align='center'><font size='2'><b>Comments</b></font></td>"
	strHeaderHTM = strHeaderHTM & "<td align='center'><font size='2'><b>Description</b></font></td>"
	'strHeaderHTM = strHeaderHTM & "<td align='center'><font size='2'><b>Facility</b></font></td></tr>"
		
	ReportHeader = strHeaderHTM
End Function

function ExecuteBaptistHealthReport(strSPName, strReportFacility)
	dim rsResult
	Dim AdoCommand
	Dim AdoRecordset
	
	Set AdoCommand = Server.CreateObject("ADODB.Command")
	Set AdoRecordset = Server.CreateObject("ADODB.Recordset")
		
	With AdoCommand
		.ActiveConnection=GetDynamicConnection("IQ-SQL-IQ2")
		.CommandType=adCmdStoredProc
		.CommandText=strSPName
		.CommandTimeout=240
		
		.Parameters.Append .CreateParameter("@ReportType", adInteger, adParamInput, 1, 0)
		.Parameters.Append .CreateParameter("@ReportType", adVarChar, adParamInput, 50, strReportFacility)
		
		Set AdoRecordset = .Execute 
	End With
		
	set ExecuteBaptistHealthReport = AdoRecordset
	
	Set AdoRecordset = Nothing
	Set adoCommand=Nothing
end function

%>
</body>
</html>