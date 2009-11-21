&lt;% 'Response.Redirect &quot;http://smartpost.hodes.com/baptisthealth/job_start.asp&quot; %&gt;



&lt;%on error resume next%&gt;








	
	
	<table border="0" cellspacing="0" cellpadding="0">
	<tr>
		<td width="5%">&nbsp;</td>
		<td valign="top" width="160">
			
			&lt;%=GetTopX(5, 160, &quot;#093980&quot;, &quot;#FFFFFF&quot;,&quot;#D9D1C3&quot; ,&quot;#000000&quot;, &quot;Hot Openings!&quot;)%&gt;
			
			<br>
			&lt;%CreateUL%&gt;
		</td>
		<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
		<td valign="top">
				
			
			<form name="frm" action="joblist.asp?User_ID=<%=Request("          >&quot; method=&quot;post&quot; onsubmit=&quot;SetFieldValues()&quot;&gt;
			
			<table cellpadding="0" cellspacing="0" width="400">
			&lt;%if trim(request(&quot;message&quot;)) &lt;&gt; &quot;&quot; then%&gt;
				<tr>
					<td>
						<font face=Arial size=4>&lt;%=trim(request(&quot;message&quot;))%&gt;</font>
					</td>
				</tr>
				<tr><td>&nbsp;</td></tr>
			&lt;%end if%&gt;
					
			<tr>
				<td>
					<font face="Arial" size="1">CATEGORY</font>
				</td>
			</tr>
			<tr>
				<td>
					<select name="categorySelect">
						<option value>ALL CATEGORIES</option>
						&lt;%=GetJobCategories(&quot;Dropdown&quot;)%&gt;
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
					<input type="button" value="View All Jobs"                      id="button1" name="button1">
				</td>
			</tr>
			</table>
					
			</form>
			
		</td>
				
	</tr>
	</table>

	
	
	&lt;%
	if err.number &lt;&gt; 0 then
		Response.Redirect (&quot;error.asp?user_id=&quot; &amp; Request(&quot;user_id&quot;))
	end if
	%&gt;

</body>

</html>
