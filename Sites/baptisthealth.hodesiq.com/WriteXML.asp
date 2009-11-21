<!--#includes file="XMLFunctions_Subs.asp"-->
<%
	'Very simple
	'This function is defined in XMLFunctions_Subs.asp
	'WriteXMLFile gets the xml text from CreateXML()
	Call WriteXMLFile(CreateXML(Request.Form))
%>