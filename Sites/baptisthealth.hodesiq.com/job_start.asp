<% 'Response.Redirect "http://smartpost.hodes.com/baptisthealth/job_start.asp" %>

<!--#include file="includes/local_subs.asp"-->

<%on error resume next%>

<html>

<!--#include file="includes/head.asp"-->

<script language="JavaScript">
<!--
		
	function SetFieldValues()
	{
		//document.frm.title.value=document.frm.titleSelect[document.frm.titleSelect.selectedIndex].value
		//document.frm.location.value=document.frm.locationSelect[document.frm.locationSelect.selectedIndex].value
		document.frm.category.value=document.frm.categorySelect[document.frm.categorySelect.selectedIndex].value
	}
		
	function ViewAll()
	{
		//document.frm.title.value = "";
		//document.frm.location.value = "-1";
		document.frm.category.value = "";
		document.frm.keywords.value = "";
		document.frm.submit();
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
					
			</form>
			<!--END FORM SECTION-->
		

	<!--#include file="includes/footer.asp"-->
	
	<%
	if err.number <> 0 then
		Response.Redirect ("error.asp?user_id=" & Request("user_id"))
	end if
	%>

</body>

</html>
