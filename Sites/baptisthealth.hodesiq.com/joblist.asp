<!--#include file="includes/local_subs.asp"-->

<%
on error resume next

dim intPage
dim strNoResultsMessage


strSortColumn = request("sort_column").item

intTotalResults = 0

strNoResultsMessage = "<tr><td colspan='2'><font class='plainText'>" & _
							 "Sorry, we did not find a match. Please broaden your " & _
							 "search criteria and try again.</font></td></tr>"

'-------------------------------------------------
'PAGING
'-------------------------------------------------
intPage = trim(request("page"))
if intPage = "" then
	intPage = 1
else
	
	intPage = clng(intPage)
	select case trim(request("move_indicator"))
	
		case "previous"
			intPage = intPage - 1
		
		case "next"
			intPage = intPage + 1
	
	end select
	
end if
'-------------------------------------------------

if trim(request("agent")) <> "" then

	dim objAgentJobsRS
	
	set objAgentJobsRS = GetAgentRequisitonsRS(request("agent"),request("user_id"),HIRING_ORG_ID)

	strResults = GetAgentJobSearchResults(objAgentJobsRS, true, strNoResultsMessage, "", PAGE_SIZE, intPage)

else

	dim strCategory
	dim strTitle
	dim intLocation
	dim strKeywords
	dim intCountry
	intCountry = -1
	
	strCategory = trim(Request("category"))
	strTitle = trim(Request("title"))
	intLocation = -1
	strKeywords = trim(Request("keywords"))
	
	GetCustomFieldsDataArray ""
	arrCustomData = GetCustomFieldSearchData()
	
	set objJobsRS = GetSearchResults_CustomFields(strCategory, strTitle, intLocation, strKeywords, intCountry, arrCustomData)
	objJobsRS.sort = strSortColumn
	strResults = GetPagedSortableSearchResults_CustomReq(objJobsRS, PAGE_SIZE, intPage, strNoResultsMessage, true)								 	
	
end if
%>

<html>

	<!--#include file="includes/head.asp"-->

	<!--y topmargin="10" bottommargin="10" leftmargin="10" rightmargin="10" marginwidth="10" marginheight="10" bgcolor="#ffffff" onload="doInit();">//-->
		
		
		
		<!--#include file="includes/header.asp"-->
		
			
					
						<form name="frm" action="joblist.asp" method="post">
						<%if intTotalResults <> 0 then%>
							<P>
								<FONT class="plainText">
								A total of <b><%=intTotalResults%></b> jobs were found
								</FONT>
							</P>
						<%end if%>
						
						<table cellpadding="0" cellspacing="0" width="100%">
						
							<%=strResults%>
							
							<tr><td colspan="3">&nbsp;</td></tr>
							
						</table>
						
						<input type="hidden" name="move_indicator" value="">
						<input type="hidden" name="page" value="<%=intPage%>">
		
						<input type="hidden" name="category" value="<%=strCategory%>">
						<input type="hidden" name="title" value="<%=strTitle%>">
						<input type="hidden" name="location" value="<%=intLocation%>">
						<input type="hidden" name="keywords" value="<%=strKeywords%>">
						<input type="hidden" name="sort_column" value="<%=strSortColumn%>">
						<input type="hidden" name="HasCustomFields" value="1">
	
						<%
							dim strCFL_Hidden
							dim arrCFL_Search
							dim intFieldCount

							strCFL_Hidden = ""
							arrCFL_Search = split(sCFL_Search, ",")

							for intFieldCount = 0 to ubound(arrCFL_Search)

								strCFL_Hidden = strCFL_Hidden & "<input type='hidden' name='CustomField_"
								strCFL_Hidden = strCFL_Hidden & arrCFL_Search(intFieldCount) & "' value="""
								strCFL_Hidden = strCFL_Hidden & request("CustomField_" & arrCFL_Search(intFieldCount))
								strCFL_Hidden = strCFL_Hidden & """>" & vbcrlf

							next
							
							response.write strCFL_Hidden
						%>
						</form>	
						
					
		
		<!--#include file="includes/footer.asp"-->
		
		<%
		if err.number <> 0 then
			Response.Redirect ("error.asp?user_id=" & Request("user_id"))
		end if
		%>
		
		
		
	</body>

</html>

<script language="javascript">
<!--

	function Move(strIndicator)
	{
		document.frm.move_indicator.value = strIndicator;
		document.frm.submit();
	}
	
	function Sort(strSortColumn)
	{
		document.frm.sort_column.value = strSortColumn;
		document.frm.submit();
	}
	
//-->
</script>