<!--#include file="includes/local_subs.asp"-->
<%

'response.redirect sDomain & "job_start.asp"

%>

<% 'Response.Redirect "http://smartpost.hodes.com/baptisthealth/job_start.asp" %>



<%on error resume next

	dim strCFL_Javascript
	dim arrCFL_Search
	dim intFieldCount

	strCFL_Javascript = ""
	arrCFL_Search = split(sCFL_Search, ",")

	for intFieldCount = 0 to ubound(arrCFL_Search)

		strCFL_Javascript = strCFL_Javascript & "CustomField_"
		strCFL_Javascript = strCFL_Javascript & arrCFL_Search(intFieldCount)
		strCFL_Javascript = strCFL_Javascript & ".selectedIndex = 0;" & vbcrlf

	next

%>

<html>

<!--#include file="includes/head.asp"-->

<script language="JavaScript">
<!--
		
	function SetFieldValues()
	{
		document.frm.category.value=document.frm.categorySelect[document.frm.categorySelect.selectedIndex].value
	}
		
	function ViewAll()
	{
		with(document.frm)
		{
			category.value = "";
			keywords.value = "";
			submit();
			<%=strCFL_Javascript%>
		}
	}
	
	function ViewJobCart(strJobCookieName)
	{
		var strJobCart;
		var intIndex;
		var strCookie;
		
		strCookie = document.cookie;
		intIndex = strCookie.indexOf(strJobCookieName);
		
		if (intIndex == -1)	//"Job" not found
		{
			alert("There are currently no jobs in your cart.");
			return;
		}
		else
		{
			document.frm.action = "job_cart.asp?User_id=<%=Request("user_id")%>";
			document.frm.submit();	
		}
	}
	
	function ViewErpJobs()
	{
		with(document.frm)
		{
			var oErp;
			
			oErp=eval("CustomField_" + <%=ERP_ID%>);
			oErp.value="Yes";
			submit();
		}
	}
	
//-->
</script>

<!--y topmargin="10" bottommargin="10" leftmargin="10" rightmargin="10" marginwidth="10" marginheight="10" bgcolor="#ffffff" onload="doInit();">//-->

	<!--#include file="includes/header.asp"-->
	

				
			<!--BEGIN FORM SECTION-->
			<form name="frm" action="joblist.asp?User_ID=<%=Request("User_ID")%>" method="post" onsubmit="SetFieldValues()">
			
			<table cellpadding="0" cellspacing="0" width="100%">
			<%if trim(request("message")) <> "" then%>
				<tr>
					<td>
						<font face=Arial size=4><%=trim(request("message"))%></font>
					</td>
				</tr>
				<tr><td>&nbsp;</td></tr>
			<%end if%>
					
			<tr>
				<td>
					<font face="Arial" size="1">CATEGORY</font>
				</td>
			</tr>
			<tr>
				<td>
					<select name="categorySelect">
						<option value>ALL CATEGORIES</option>
						<%=GetJobCategories("Dropdown")%>
					</select><br clear="all">
					<input type="hidden" name="category" value>
				</td>
			</tr>
			<tr>
				<td>
					<%
						strHTML=""
						GetCustomFieldsDataArray ""
						strHTML =  replace(GetCustomFieldsSearchHTML_style("","categorySelect"), "LOCATION","Location")
						strHTML =  replace(strHTML, "SHIFT","Shift")
						strHTML =  replace(strHTML, "<select name='CustomField_" & SHIFT_ID & "' class='categorySelect' ><option value="""">Search All","<select name='CustomField_" & SHIFT_ID & "' class='categorySelect' ><option value="""">All Shifts")
						strHTML =  replace(strHTML, "<select name='CustomField_" & Location_ID & "' class='categorySelect' ><option value="""">Search All","<select name='CustomField_" & Location_ID & "' class='categorySelect' ><option value="""">All Locations")
						Response.Write strHTML
					%>
				</td>
			</tr>
			<tr>
				<td>
					<font face="Arial" size="1">KEYWORD</font>
				</td>
			</tr>
			<tr>
				<td>
					<input type="text" size="30" name="keywords"><br clear="all"><br>
					<input type="submit" value="Begin Search" id="submit1" name="submit1">&nbsp;&nbsp;
					<input type="button" value="View All Jobs" onClick="ViewAll();" id="button1" name="button1">
				</td>
			</tr>
			</table>
			
			<INPUT TYPE="hidden" NAME="CustomField_<%=ERP_ID%>" VALUE="">
			</form>
			<!--END FORM SECTION-->
			
			<BR><BR><font face="Arial" size="2"><b>Hot Jobs, <a href="javascript:ViewErpJobs();">click here.</a></b></font>
					

	<!--#include file="includes/footer.asp"-->
	
	<%
	if err.number <> 0 then
		Response.Redirect ("error.asp?user_id=" & Request("user_id"))
	end if
	%>

</body>

</html>
