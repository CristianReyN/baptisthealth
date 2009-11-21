<!--#includes file="includes/local_subs.asp"-->
<%'===================================================================================================
'function XMLCheck
'Called from writexml.asp
function XMLCheck(StringToModify, ModificationType)
	StringToModify = Replace(StringToModify, "&#65533;" ," ")

	select case ModificationType
		case "ReplaceIllegal"
			StringToModify = Replace(StringToModify,"&","&amp;")
			StringToModify = Replace(StringToModify,"<","&lt;")
			StringToModify = Replace(StringToModify,">","&gt;")
			StringToModify = Replace(StringToModify,"'","&apos;")
			StringToModify = Replace(StringToModify,"""","&quot;")
			StringToModify = Replace(StringToModify,"’", "&apos;")
			StringToModify = Replace(StringToModify,"•", "* ")
			StringToModify = Replace(StringToModify,chr(146),chr(39))
			StringToModify = Replace(StringToModify,chr(183),chr(42))
			StringToModify = Replace(StringToModify,chr(132),chr(34))
			StringToModify = Replace(StringToModify,chr(133),"...")
			StringToModify = Replace(StringToModify,chr(145),chr(39))
			StringToModify = Replace(StringToModify,chr(147),chr(34))
			StringToModify = Replace(StringToModify,chr(148),chr(34))
			StringToModify = Replace(StringToModify,chr(149),chr(42))
			StringToModify = Replace(StringToModify,chr(150),chr(45))
			StringToModify = Replace(StringToModify,chr(151),chr(45)) 
		case "AddCDATA"
			StringToModify = "<![CDATA[" & StringToModify & "]]>"
	end select

	XMLCheck = StringToModify
end function
'===================================================================================================

'===================================================================================================
Function CreateXML(objForm)
	Dim objFormField
	Dim strXmlData
	Dim strFieldVal
	Dim strFieldKey

	'One root tag
	strXmlData = "<LongApplication>" & VbCrLf

	'Loop through all the fields in the request.form object
	For Each objFormField In objForm
		If Left(objFormField, 3) <> "hid" Then
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
	
	arrApplicantIDs = Split(Request.Form("hidAppID").Item, ",")

	set objFSO = Server.CreateObject("Scripting.FileSystemObject")

	for i=0 to UBound(arrApplicantIDs)
		objFSO.CreateTextFile(DOC_SERVER_PATH & HIRING_ORG_ID & "\XML_Applications\" & trim(arrApplicantIDs(i)) & ".xml" )
		
		set objFile = objFSO.OpenTextFile(DOC_SERVER_PATH & HIRING_ORG_ID & "\XML_Applications\" & trim(arrApplicantIDs(i)) & ".xml" ,2)
		
		objFile.WriteLine("<?xml version=""1.0"" encoding=""utf-8""?>" & VbCrLf & strXmlText)
		
		objFile.Close()
	next

	set objFile = Nothing
	set objFSO = Nothing
	
	If Err.number <> 0 Then
		Response.Redirect("error.asp")
	Else
		Response.Redirect("confirmation.asp?message=Thank you for expressing interest and applying with Baptist Health System.  Your application and/or resume will be reviewed.  If your application is selected for further review during the process, you will be contacted within 14 business days. Again, thank you.")
	End If
End Sub
'===================================================================================================
%>
