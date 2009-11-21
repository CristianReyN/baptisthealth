			<!--BEGIN QUESTIONNAIRE-->
			<%if intJobQuestionnaireID <> 0 then%>
			<%'if not isempty(arrJobQuestionnaires) then%>
				<tr>
					<td colspan=3 bgcolor="#ffffff">
						<div class="headerwithbackground">
										2. Questionnaire
								</div>
					</td>
				</tr>
								
				<%
				redim arrJobQuestionnaires(0)
				arrJobQuestionnaires(0) = intJobQuestionnaireID
				
				Response.write DisplayJobQuestionnaire(APP_SERVER, arrJobQuestionnaires)
				%>
				
				<input type="hidden" name="one_qa" value="yes">
							
				<tr><td>&nbsp;</td></tr>
									
				<%intDisplayNumber = 3
			
			elseif intNumberOfSelectedJobs > 1 then%>
			
				<input type="hidden" name="apply_1a" value="yes">	
				
			<%end if%>
			
			<!--END QUESTIONNAIRE-->
