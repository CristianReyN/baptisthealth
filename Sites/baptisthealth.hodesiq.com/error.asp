<!--#include file="includes/local_subs.asp"-->

<HTML>
<!--#include file="includes/head.asp"-->
	
	<!--<body topmargin="10" bottommargin="10" leftmargin="10" rightmargin="10" marginwidth="10" marginheight="10" bgcolor="#ffffff" onload="doInit();">//-->
	
		<!--#include file="includes/header.asp"-->
		
		<br clear='all'>
		
			
				<table width="500">
				<tr><td>
					
						<div class="headerwithbackground">
							Error
						</div>
						<FONT class="plainText">
						<%if trim(request("err")) = "" then%>
							We are unable to process your request at this time.
							<br clear="all">Please try again later.
						<%else
							Response.Write trim(request("err"))
							
						end if%>
						</font>
					</td>
				</table>
				</td>
		</tr>
		</table>
		
		<!--#include file="includes/footer.asp"-->
		
		<br clear='all'>
	
	</body>

</HTML>
