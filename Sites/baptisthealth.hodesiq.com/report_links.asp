<!--#include file="includes/local_subs.asp"-->

<%
'List_Baptist_Health_Locations
	Dim AdoRs
	Dim strHTML
	Dim strLoc
	Dim strSimpleURL
	Dim strFullURL
	Const SIMPLE_REPORT = "Simple_Report_By_Location.asp"
	Const FULL_REPORT		= "Full_Report_By_Location.asp"
	
	
	Set AdoRs = server.CreateObject("ADODB.Recordset")
	
	Set AdoRs = ExecuteBaptistHealthReport("List_Baptist_Health_Locations")
	
	If Not AdoRs.EOF Then
		Do While Not AdoRs.Eof
			strLoc = AdoRs.Fields("req_answer").Value
			strSimpleURL = SIMPLE_REPORT & "?Location=" & strLoc
			strFullURL = Full_REPORT & "?Location=" & strLoc
			
			strHTML = strHTML & "<tr><td><a href='" & strSimpleURL & "'>" & strLoc & "- Simple Report</a></td></tr><tr><td><a href='" & strFullURL & "'>" & strLoc & "- Full Report</a></td></tr><tr><td height='5'></td></tr>"
			
			AdoRs.MoveNext
		Loop
	Else
	End If

	strHTML = "<table>" & strHTML & "</table>"
	
	function ExecuteBaptistHealthReport(strSPName)
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
			
			'.Parameters.Append .CreateParameter("@ReportType", adInteger, adParamInput, 1, 0)
			
			Set AdoRecordset = .Execute 
		End With
			
		set ExecuteBaptistHealthReport = AdoRecordset
		
		Set AdoRecordset = Nothing
		Set adoCommand=Nothing
	end function
%>
<HTML>
<HEAD>
	<b>Please select a report from below</b>
	<br><br>
</HEAD>
<BODY>
	<%=strHTML%>
</BODY>
</HTML>
