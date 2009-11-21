<!--#include file="includes/local_subs.asp"-->
<!--#include virtual="../cc/JS_jobCart.asp"-->

<%
on error resume next

dim strJobCartCookies

strJobCartCookies = ""

for each job in Request.Cookies

	if instr(1, job, JOB_CART_JOB_NAME, 0) <> 0 and trim(Request.Cookies(job)) <> "" then
		strJobCartCookies = strJobCartCookies & Request.Cookies(job) & ","
	end if
		
next

if len(strJobCartCookies) > 0 then
	strJobCartCookies = left(strJobCartCookies, len(strJobCartCookies) - 1)
end if

dim blnHasJobsInCart
dim objJobCartJobsRS
dim strJobCart
dim strJobCartList

'strJobCart = trim(Request.Form("txtJobCartJobs"))
strJobCart = strJobCartCookies
set objJobCartJobsRS = GetJobCartJobsRS(strJobCart)
%>

	
		<!--#include file="includes/header.asp"-->
		
				
					<form name="frm" method="post" action="">
					<table width="100%" align="center">
					<tr>
					<td>
						<FONT SIZE="3" FACE="HELVETICA,ARIAL,SANS SERIF" color="#093980"><b>
						Manage Your Job Cart:</b></font>
						<br clear="all">
						<FONT SIZE="2" FACE="ARIAL">Select jobs by checking the boxes and then choose
						<br clear="all">an action by clicking on a link below</font>
					</td>
				</tr>
				<tr><td>&nbsp;</td></tr>
				<tr>
					<td>
						<%
						Response.write DisplayJobCartTable(objJobCartJobsRS, "100%", "#093980", "<font face='Arial' size='2' color='#FFFFFF'>", "#fdebbc", "<font face='Arial' size='2' color='#000000'>", "Your job cart is now empty", false, false, false, 0, 0, "Title", "Location", "Code")
						set objJobCartJobsRS = nothing
						%>
					</td>
				</tr>
				<tr><td>&nbsp;</td></tr>
		
				<%if blnHasJobsInCart then%>
					<tr>
						<td align="center" width="100%">
							<table  width="100%">
							<tr>
								<td width="33%">
									&nbsp;<!--<a href="Javascript: ApplyToJobCartJobs();"><span class="link">Apply Online</span></a>-->
									<a href="Javascript: ApplyToJobCartJobs_Baptist();"><span class="link">Apply Online</span></a>
								</td>
								<td width="33%" align="center">
									<a href="Javascript: ReferJobCartJobsToFriend();"><span class="link">Tell A friend</span></a>
								</td>
								<td width="33%" align="right">
									<a href="Javascript: DeleteJobCartJobs('<%=JOB_CART_JOB_NAME%>');"><span class="link">Remove From Cart</span></a>
								</td>
							</tr>
							</table>
						</td>
					</tr>
					<tr><td>&nbsp;</td></tr>
				<%end if%>
		
				</table>
		
				<input type="hidden" name="txtJobCartJobs" value="">
		
		<!--#include file="includes/footer.asp"-->
	
		</form>
		
		

<script language="javascript">
<!--

	function ApplyToJobCartJobs_Baptist()
	{
		if(!JobsAreChecked())
		{
			alert("You must select at least one job in order to apply.");
		}
		else
		{
			document.frm.action = "<%=SECURED_ADDRESS%>apply_online_1.asp?User_id=";
			document.frm.submit();
		}
	}

	function DeleteJobCartJobs(strCookieName)
	{
		var strJobID;
		var blnChecked;
			
		blnChecked = false;
				
		if((typeof document.frm.chkJobCartJobs.length)=="undefined")
		{
			if (document.frm.chkJobCartJobs.checked)
			{
				strJobID = document.frm.chkJobCartJobs.value;
				DeleteJobCookie(strCookieName, strJobID);
				blnChecked = true;
			}
		}
		else
		{
			for (var loopIndex = 0; loopIndex < document.frm.chkJobCartJobs.length; loopIndex++)
			{	
				if (document.frm.chkJobCartJobs[loopIndex].checked)
				{
					strJobID = document.frm.chkJobCartJobs[loopIndex].value;
					DeleteJobCookie(strCookieName, strJobID);
					blnChecked = true;
				}
			}
		}
			
		if (!blnChecked)
		{	
			alert("You must select at least one job to delete.");
		}
		else
		{
			document.frm.action = "job_cart.asp?User_id=<%=Request("user_id")%>";
			document.frm.submit();
		}
	}
	
//-->
</script>
