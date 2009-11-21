<%'<!--#includes file="includes/local_subs.asp"-->%>
<%'===================================================================================================
'function XMLCheck
'Called from writexml.asp
function XMLCheck(StringToModify, ModificationType)
	XMLCheck = "<![CDATA[" & StringToModify & "]]>"
end function

'===================================================================================================

'===================================================================================================
Function CreateXML(objForm)
	Dim objFormField
	Dim strXmlData
	Dim strFieldVal
	Dim strFieldKey
	Dim strFieldComp
	Dim blnPrintField
	
	blnPrintField = False

	'One root tag
	strXmlData = "<LongApplication>" & VbCrLf

	'Loop through all the fields in the request.form object
	For Each objFormField In objForm
		strFieldComp = Left(objFormField, 3)
		
		'Filter the fields to make sure we only print to the xml file the fields we need.
		'We don't want to print to the xml file unnecessary data like questionnaires and resume.
		Select Case strFieldComp
			Case "txt", "rad", "chk", "sel", "str"
				blnPrintField = True
			Case Else
				blnPrintField = False
		End Select
		
		If (blnPrintField = True) Then
			strFieldKey = objFormField ' Get the Field name
			strFieldVal = XMLCheck(Request.Form(objFormField).Item, "ReplaceIllegal") ' Get The Field value
		
			'Write tag value pairs with values
			strXMLData = strXmlData & "<" & strFieldKey & ">" & strFieldVal & "</" & strFieldKey & ">" & VbCrLf
		End If
	Next ' objFormField

	'Return entire application form
	CreateXML = strXMLData & "</LongApplication>"
End Function
'===================================================================================================

'===================================================================================================
Sub WriteXMLFile(strXmlText)
	Dim objFSO
	
	arrApplicantIDs = Split(strCollectAppIDs, ",")

	set objFSO = Server.CreateObject("Scripting.FileSystemObject")

	for i=0 to UBound(arrApplicantIDs)
		objFSO.CreateTextFile(DOC_SERVER_PATH & HIRING_ORG_ID & "\XML_Applications\" & trim(arrApplicantIDs(i)) & ".xml" )
		
		set objFile = objFSO.OpenTextFile(DOC_SERVER_PATH & HIRING_ORG_ID & "\XML_Applications\" & trim(arrApplicantIDs(i)) & ".xml" ,2)
		
		objFile.WriteLine("<?xml version=""1.0"" encoding=""ISO-8859-1""?>" & VbCrLf & strXmlText)
		
		objFile.Close()
	next

	set objFile = Nothing
	set objFSO = Nothing
	
	'If Err.number <> 0 Then
	'	Response.Redirect("error.asp")
	'Else
	'	Response.Redirect("confirmation.asp?message=Thank you for expressing interest and applying with Baptist Health System. Your application and/or resume will be reviewed. If your application is selected for further review during the process, you will be contacted by a Baptist Health representative. Again, thank you.")
	'End If
End Sub
'===================================================================================================
%>
