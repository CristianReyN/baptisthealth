<!--#include file="includes/local_subs.asp"-->
<!--#include virtual="../cc/JS_jobCart.asp"-->


<%
on error resume next

dim blnJobIsInCart	

blnJobIsInCart = false

If Request("fromjobIdPage")="y" Then
	intJobID = JobCodeToJobID(Request("JobID"))
else
	intJobID = trim(Request("JobID"))
end if

if intJobID <> "" then intJobID = clng(intJobID)

set objJobInfoRS = GetJobDetailsRS(intJobID)

if objJobInfoRS.bof and objJobInfoRS.eof then
	Response.Redirect("job_id_search.asp?flag=notfound&user_id=" & request("user_id"))
end if

for each job in Request.Cookies

	if instr(1, job, JOB_CART_JOB_NAME, 0) <> 0 and trim(Request.Cookies(job)) <> "" then
			
		if intJobID = clng(trim(Request.Cookies(job))) then
			
			blnJobIsInCart = true
			
		end if
			
	end if
			
next

blnIncrementJobView = true
ViewedJobCounter intJobID
%>

<!--#include file="includes/header.asp"-->
	
				<table width="100%" align="center">
				<tr>
					<td align=left width=142>
						<a href="tell_a_friend_1.asp?JobID=<%=intJobID%>&User_ID=<%=Request("user_id")%>"><span class="link">Tell A Friend</span></a>
					</td>
					<td align=center width=141>
					
						<%if not blnJobIsInCart then%>
							<a href="Javascript: SetJobCartCookie(<%=intJobID%>, '<%=JOB_CART_JOB_NAME%>')"><span class="link">Add To Job Cart</span></a>
						<%else%>
							<FONT class="plainText"><b>Saved In Cart</b></font>
						<%end if%>
				
					</td>
					<td align=right width=142>
						<a href="<%=SECURED_ADDRESS%>apply_online_1.asp?JobID=<%=intJobID%>&User_ID=<%=Request("user_id")%>"><span class="link">Apply Online</span></a>
					</td>
				</tr>
			
				<tr><td>&nbsp;</td></tr>
			
				<tr>
					<td colspan="3">
						<FONT SIZE="3" FACE="ARIAL" color="#093980"><b>
							<%=objJobInfoRS.fields("title").value%>
						</font>
					</td>
				</tr>
				<tr>
					<td align="left" colspan="3">
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td width="50%">
								<font face="ARIAL,HELVETICA" size="2"><font color="#093980"><b>Job Code:</b></font>
								<%=objJobInfoRS.fields("requisition_code").value%>
								&nbsp &nbsp</font>
							</td>
							<td width="50%">
								<font face="ARIAL,HELVETICA" size="2"><font color="#093980"><b>Location:</b></font>
								<%=objJobInfoRS.fields("city_name").value & ", " & objJobInfoRS.fields("state_code").value%>
								</font>
							</td>
						</tr>
						</table>
					</td>
				</tr>	
					
				<tr><td>&nbsp;</td></tr>
			
				<tr>
					<td colspan="3">
						<FONT class="plainText">
						<%
						dim strHead
													dim strDuty
													dim strRequire
													dim strFoot
																										
													strHead = FixBreaks(objJobInfoRS.fields("header").value)
													strDuty = FixBreaks(objJobInfoRS.fields("duties").value)
													strRequire = FixBreaks(objJobInfoRS.fields("requirements").value)
													strFoot = FixBreaks(objJobInfoRS.fields("footer").value)

													if trim(objJobInfoRS.fields("header").value) <> "" then Response.write strHead & "<br clear='all'><br clear='all'>"
													if trim(objJobInfoRS.fields("requirements").value) <> "" then Response.write strRequire & "<br clear='all'><br clear='all'>"
													if trim(objJobInfoRS.fields("duties").value) <> "" then Response.write strDuty & "<br clear='all'><br clear='all'>"
													if trim(objJobInfoRS.fields("footer").value) <> "" then Response.write strFoot & "<br clear='all'>"
						%>
						</font>
					</td>
				</tr>
			
				<tr><td>&nbsp;</td></tr>
				
				<tr>
					<td align=left width=142>
						<a href="tell_a_friend_1.asp?JobID=<%=intJobID%>&User_ID=<%=Request("user_id")%>"><span class="link">Tell A Friend</span></a>
					</td>
					<td align=center width=141>
					
						<%if not blnJobIsInCart then%>
							<a href="Javascript: SetJobCartCookie(<%=intJobID%>, '<%=JOB_CART_JOB_NAME%>')"><span class="link">Add To Job Cart</span></a>
						<%else%>
							<FONT class="plainText"><b>Saved In Cart</b></font>
						<%end if%>
						
					</td>
					<td align=right width=142>
						<a href="<%=SECURED_ADDRESS%>apply_online_1.asp?JobID=<%=intJobID%>&User_ID=<%=Request("user_id")%>"><span class="link">Apply Online</span></a>
					</td>
				</tr>
			
				<tr><td>&nbsp;</td></tr>
				
				</table>
	
		<form name="frm" action="job_detail.asp" method="post">
			<input type="hidden" name="JobID" value="<%=objJobInfoRS.fields("requisition_id").value%>">
			<input type="hidden" name="user_id" value="<%=Request("user_id")%>">
		</form>
		
		<!--#include file="includes/footer.asp"-->
		
		
		
		
<script language="javascript">
<!--

		function SetJobCartCookie(intJobID, strJobCookieName)
		{
			var strCurrentCookie;
			strCurrentCookie = document.cookie
				
			if (!IsJobInCart(intJobID, strCurrentCookie))
			{
			
				var intNumJobs;
				var dteExpires = new Date();
				var strCookie;
				var strJobCookie;
					
				dteExpires.setTime(dteExpires.getTime() + (60 * 1000) * 60 * 24 * 30);
										
				intJobNumber = 1;
				strJobCookie = strJobCookieName + intJobNumber.toString();
										
				while(DoesCookieExist(strJobCookie, strCurrentCookie))
				{
					intJobNumber++;
					strJobCookie = strJobCookieName + intJobNumber.toString();
				}
					
				strCookie = strJobCookie + "=" + intJobID.toString()
				strCookie += ";expires=" + dteExpires.toGMTString()
					
				document.cookie = strCookie
			}
			
			document.frm.submit();
			
		}
		
//-->
</script>