<!--#include file="includes/local_subs.asp"-->

<%
on error resume next

dim intPage
dim strNoResultsMessage

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

	strCategory = trim(Request("category"))
	strTitle = trim(Request("title"))
	intLocation = -1
	strKeywords = trim(Request("keywords"))
		
	strResults = GetJobSearchResults(strCategory, strTitle, intLocation, strKeywords, true, strNoResultsMessage, "", PAGE_SIZE, intPage)
	
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
						
						<table cellpadding="0" cellspacing="0" width="400">
						
							<%=strResults%>
							
							<tr><td colspan="3">&nbsp;</td></tr>
							
						</table>
						
						<input type="hidden" name="move_indicator" value="">
						<input type="hidden" name="page" value="<%=intPage%>">
		
						<input type="hidden" name="category" value="<%=strCategory%>">
						<input type="hidden" name="title" value="<%=strTitle%>">
						<input type="hidden" name="location" value="<%=intLocation%>">
						<input type="hidden" name="keywords" value="<%=strKeywords%>">
							
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

//-->
</script>