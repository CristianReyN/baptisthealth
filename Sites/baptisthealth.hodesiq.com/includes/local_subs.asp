<%
'=============================================================
'CODE FOR DYNAMICALLY ASSIGNING THE APP_SERVER VALUES
'=============================================================
dim HIRING_ORG_ID
dim CAREER_SITE_EMEDIA_ID
DIM FACILITY_ID
DIM SHIFT_ID
DIM LOCATION_ID
dim sBaptistDomain
dim ERP_ID

select case GetAppServer()
	
	case "DEV"
		HIRING_ORG_ID = 632
		CAREER_SITE_EMEDIA_ID = 6931
		
		sDomain = "http://careers.iqdev.beta.hodes.com/baptisthealth/"
		sBaptistDomain = sDomain
		
		LOCATION_ID = 263
		SHIFT_ID = 264
		ERP_ID = 262
		
	case "DEMO", "STG"
		HIRING_ORG_ID = 632
		CAREER_SITE_EMEDIA_ID = 6931
		
		sDomain = "http://careers.iqstg.beta.hodes.com/baptisthealth/"
		sBaptistDomain = sDomain
		
		LOCATION_ID = 263
		SHIFT_ID = 264		
		ERP_ID = 288
		
	case "PRODUCTION"
		HIRING_ORG_ID = 632
		CAREER_SITE_EMEDIA_ID = 6931
		
		'sDomain = "http://careers.hodes.com/baptisthealth/"
		sDomain = "http://baptisthealthjaxjobs.com/"
		sBaptistDomain = "http://community.e-baptisthealth.com/tools/jobs/baptisthealth/"
		
		
		LOCATION_ID = 263
		SHIFT_ID = 264
		ERP_ID = 288
		
	case else
		HIRING_ORG_ID = 632
		CAREER_SITE_EMEDIA_ID = 6931
		
		'sDomain = "http://careers.hodes.com/baptisthealth/"
		sDomain = "http://baptisthealthjaxjobs.com/"
		sBaptistDomain = "http://community.e-baptisthealth.com/tools/jobs/baptisthealth/"
		
		
		LOCATION_ID = 263
		SHIFT_ID = 264
		ERP_ID = 288
		
end select


sCFL_Search = LOCATION_ID & "," & SHIFT_ID
sCFL_Results = LOCATION_ID & "," & SHIFT_ID
DAYS_TO_DELAY = 5



if trim(request("debug")) = "yes" then
	Response.Write "APP_SERVER: " & APP_SERVER & "<br>"
	Response.Write "HIRING_ORG_ID: " & HIRING_ORG_ID & "<br>"
	Response.Write "CAREER_SITE_EMEDIA_ID: " & CAREER_SITE_EMEDIA_ID & "<br>"
	Response.Write "REPLICATION_SERVER: " & REPLICATION_SERVER
end if
'=============================================================

'=============================================================
'CODE FOR DETERMINING THE CURRENT PAGE OF THE APPLICATION
'=============================================================
dim strCurrentPage

strCurrentPage = Request.ServerVariables("URL")
'=============================================================
%>

<!--#include virtual="../cc/data_subs.asp"-->
<!--#include virtual="../cc/general_subs.asp"-->
<!--#include virtual="../cc/questionnaire_subs.asp"-->
<!--#include virtual="../cc/agent_subs.asp"-->
<!--#include virtual="../cc/IQ_2_0_subs.asp"-->
<!--#include virtual="../cc/custom_data_subs.asp"-->
<script language="vbscript" runat="server">

	'------------------------------------------------------------------------------
	'FUNCTION LIST FOR local_subs.asp
	'------------------------------------------------------------------------------
	'SendApplyNotificationEmail(objJobInfoRS)
	'------------------------------------------------------------------------------
	
	const JOB_CART_JOB_NAME = "BaptistHealthJob"
	const PAGE_SIZE = 12

	'Declare global variables
	dim objJobInfoRS
	dim intJobID
	
	'------------------------------------------------------------------------------
	'Name:			SendApplyNotificationEmail
	'Programmer:	Jeff Sherian
	'Purpose:		Sends an email notificaion to recruiter
	'Inputs:			objJobInfoRS, strQA
	'Outputs:		None
	'------------------------------------------------------------------------------
	sub SendApplyNotificationEmail(objJobInfoRS, strQA, strEmailBody, strResume, strFromEmail)
		
		dim strHTML
		
		strHTML = ""
		strHTML = strHTML & "Job ID--" & objJobInfoRS.fields.item("requisition_code").value & vbcrlf & vbcrlf
		strHTML = strHTML & strQA & vbcrlf & vbcrlf
		
		strHTML = strHTML & strEmailBody
		
		strHTML = strHTML & "Resume Text--" & vbcrlf & vbcrlf & strResume & vbcrlf & vbcrlf
		
		set objCDOMail = server.CreateObject("CDONTS.NewMail")
		with objCDOMail
			
			.from = strFromEmail
			.to = objJobInfoRS.fields.item("email_address").value
			'.cc = "jfour001@bmcjax.com"
			.bcc = "hodesiq-track@hodesiq.com"
			.subject = "Online Application Response for Baptist Health \" & objJobInfoRS.fields.item("requisition_code").value
			.body = strHTML 
			.send
				
		end with
		set objCDOMail = nothing
	
	end sub
	
	'------------------------------------------------------------------------------
	'Name:			GetJobSearchResultsRS
	'Purpose:		Returns a recordset of job search results
	'Inputs:			strCategory, strTitle, strLocation, strKeywords, strSortColumn
	'Outputs:		objResultsRS
	'------------------------------------------------------------------------------
	function GetJobSearchResultsRS(strCategory, strTitle, intLocation, strKeywords, _
											 strSortColumn)
	
		dim objResultsRS
		dim strHTML
		dim arrInputParams(5)
		
		arrInputParams(0) = HIRING_ORG_ID
		arrInputParams(1) = CAREER_SITE_EMEDIA_ID
		arrInputParams(2) = strCategory
		arrInputParams(3) = strTitle
		arrInputParams(4) = intLocation
		arrInputParams(5) = strKeywords
		
		set objResultsRS = ExecuteDynamicStoredProcedure("sp_Career_Sites_select_search_results_expiration", arrInputParams)
		
		set GetJobSearchResultsRS = objResultsRS
		
		set objResultsRS = nothing
	
	end function
	
	'------------------------------------------------------------------------------
	'Name:			GetTopXRS
	'Purpose:		Returns a recordset containing the "Hot Openings" list for a site
	'Inputs:			intNumToGet
	'Outputs:		objTopXRS
	'------------------------------------------------------------------------------
	function GetTopXRS(intNumToGet)
	
		dim objTopXRS
		dim arrInputParams(3)
		
		arrInputParams(0) = HIRING_ORG_ID
		arrInputParams(1) = CAREER_SITE_EMEDIA_ID
		arrInputParams(2) = intNumToGet
		arrInputParams(3) = DAYS_TO_DELAY
		
		set objTopXRS = ExecuteDynamicStoredProcedure("sp_Career_Sites_select_top_x_expiration_with_delay", arrInputParams)
		
		set GetTopXRS = objTopXRS
		
		set objTopXRS = nothing

	end function
	
		'------------------------------------------------------------------------------
'Name:			AddJobSeeker_JobCart_EmailQA
'Inputs:			
'Outputs:		intReturnArray
'------------------------------------------------------------------------------
function AddJobSeeker_JobCart_EmailQA_Baptist(strAppServer, arrJobIDs, strFirstName, strLastname, strMiddleName, strSSN, _
  									  strEmail, strJSPassword, strAddress, strCity, intState, intCountry, strZip, _
									  strHomePhone, strWorkPhone, strResume, strMediaCode, intJobSeekerID, _
									  intApplicantSource, blnAddQA)
	
on error resume next
		
	ArchiveApplicantData HIRING_ORG_ID
		
	dim intIndicator
	dim objJobSeeker 
	dim intReturnArray
	dim intCount
	dim intJobID
	dim intQuestionnaireID
	dim intAlreadyAppliedCount
	dim intTotalJobs
	dim strQA
							
	intAlreadyAppliedCount = 0
	intTotalJobs = ubound(arrJobIDs) + 1
	
	strMediaCode = cstr(strMediaCode)
	if len(strMediaCode) < 4 then strMediaCode = right("0000" & strMediaCode, 4)
	
	set objJobSeeker = server.CreateObject("ccc.jobseeker")	
	
	for intCount = 0 to ubound(arrJobIDs)
			
		strQA = ""
			
		intJobId = clng(arrJobIDs(intCount))
		set objJobInfoRS = GetJobDetailsRS(intJobId)
			
		strUserMgtID = objJobInfoRS.fields.item("created_user_mgt_id").value
		intHiringOrgID = objJobInfoRS.fields.item("hiring_orgID").value
				
		intReturnArray = objJobSeeker.AddJobSeeker(strAppServer, strFirstName, strLastName, strMiddleName, _
												   strSSN, strEmail, strJSPassword, intHiringOrgID, 0, 0, 0, 0, _
												   strAddress, "", strCity, intState, intCountry, _
												   strZip, strHomePhone, strWorkPhone, "", strResume, "", "", _
												   intJobSeekerID, strUserMgtID, 12782, intJobId, 5, strMediaCode, _
												   "", "", "", "", false)
			
		if err.number = 0 then
			
			'ENTER HERE IF ONLY ONE JOB APPLIED TO 
			'HAS A QUESTIONNAIRE
			if blnAddQA then
				
				intQuestionnaireID = GetJobQuestionnaireID(intJobId)
				
				if intQuestionnaireID <> 0 then
					InsertQuestionnaireResults intJobId, intReturnArray(2), intQuestionnaireID
					strQA = GetQuestionnaireResults(intReturnArray(2))
				end if
				
				SendApplyNotificationEmail objJobInfoRS, strQA, strEmailBody, strResume, strEmail
					
			ELSE
				'IF THERE WAS ONLY ONE JOB, THEN IT MUST NOT HAVE A QUESTIONNAIRE
				'IF YOU GET HERE BECAUSE blnADDQA would = true
				IF ubound(arrJobIDs) = 0 THEN
					SendApplyNotificationEmail objJobInfoRS, strQA, strEmailBody, strResume, strEmail
				ELSE
					'get here if more than one job applied to
					'and more than one job has questionnaire
					'we dont send recruiter email until after questionnaires are complete
					'if no questionnaire on job then send out confirmation
					intQuestionnaireID = GetJobQuestionnaireID(intJobId)
					
					if intQuestionnaireID = 0 then
						SendApplyNotificationEmail objJobInfoRS, strQA, strEmailBody, strResume, strEmail
					end if
										
				END IF
				
			END IF	
			strJobSeekerIDs = strJobSeekerIDs & cstr(intReturnArray(2)) & ","
			strResumeID = cstr(intReturnArray(0))
				
			if err.number <> 0 then err.clear
			
		elseif err.number = -2147217873 then
			intAlreadyAppliedCount = intAlreadyAppliedCount + 1
			strJobSeekerIDs = strJobSeekerIDs & "0,"
			err.clear
		else
			
			'improved error handling (added 2/19/2002)
			strJobSeekerIDs = strJobSeekerIDs & "0,"
			EmailApplicantInfoToSupport intJobId
			err.clear
			'=========================================
				
			'AddJobSeeker_JobCart = 0
			'exit function
				
		end if
		
		set objJobInfoRS = nothing
		
	next
		
	if len(strJobSeekerIDs) > 1 then strJobSeekerIDs = left(strJobSeekerIDs, len(strJobSeekerIDs) - 1)
		
	if intAlreadyAppliedCount = intTotalJobs then
		intIndicator = -1
	else
		intIndicator = 1
	end if
		
	AddJobSeeker_JobCart_EmailQA_Baptist = intIndicator
		
	set objJobSeeker = nothing
			
end function

	function GetPagedSortableSearchResults_CustomReq_delay(objResultsRS, intPagesize, intCurrentPage, _
													 strNoResultsMessage, blnIncludeShortDescription)
		
		dim strHTML,strCustomHTML, strCustomFieldName
		dim intStartRecord
		dim intEndRecord
		dim intNumResults
		dim blnShowPrevious
		dim blnShowNext
		dim blnCustomLocation
		Dim iColumnCount
		Dim CFD
				
		iColumnCount = 0
		
		If objResultsRS.bof And objResultsRS.eof Then
			
			GetPagedSortableSearchResults_CustomReq = strNoResultsMessage
			
		else
			
			objResultsRS.PageSize = intPageSize
			intMaxPage = objResultsRS.PageCount
			
			blnShowPrevious = true
			blnShowNext = true
				
			if intCurrentPage = intMaxPage and intCurrentPage = 1 then
				blnShowPrevious = false
				blnShowNext = false
			elseif intCurrentPage >= intMaxPage then
				intCurrentPage = intMaxPage
				blnShowNext = false
			elseif intCurrentPage <= 1 then
				intCurrentPage = 1
				blnShowPrevious = false
			end if

			objResultsRS.AbsolutePage = intCurrentPage
				
			intPagedCounter = (intPageSize * (intCurrentPage - 1))
			
			intStartRecord = intPagedCounter + 1
			intEndRecord = intPagedCounter + intPagesize
			intTotalResults = objResultsRS.recordcount
			
			if intEndRecord > objResultsRS.recordcount then
				intEndRecord = intTotalResults
			end if
			
			with objResultsRS
				
				For each CFD in arrCustomFieldsData
					If CFD(CF_FIELD_RESULTS) Then
						iColumnCount = iColumnCount + 1
						if Instr(1, CFD(CF_FIELD_NAME), "LOCATION", vbTextCompare) then blnCustomLocation = True
						strCustomHTML = strCustomHTML & "<td><a href=""Javascript: Sort('CustomField" & CFD(CF_FIELD_ID) & "_1')"">"
						strCustomHTML = strCustomHTML & "<span class='resultsTitle'>" & CFD(CF_FIELD_NAME) & "</span>"
						strCustomHTML = strCustomHTML & "</a></td>"
					End If
				Next
				strHTML = strHTML & "<table border='0' cellpadding='2' cellspacing='0' width='100%'>"
				strHTML = strHTML & "<tr>"
				strHTML = strHTML & "<td width='70'><a href=""Javascript: Sort('careerpost_datetime desc')""><span class='resultsTitle'>DATE</span></a></td>"
				strHTML = strHTML & "<td><a href=""Javascript: Sort('title')""><span class='resultsTitle'>JOB TITLE</span></a></td>"
				if not blnCustomLocation then
					strHTML = strHTML & "<td width='110'><a href=""Javascript: Sort('city_name')""><span class='resultsTitle'>LOCATION</span></a></td>"
				end if
				strHTML = strHTML & strCustomHTML
				strHTML = strHTML & "</tr>"
				strHTML = strHTML & "<tr><td COLSPAN='" & iColumnCount + 3 & "'><hr></td></tr>"

				Do Until .AbsolutePage <> intCurrentPage
					
					if DateDiff("d", .fields.item("careerpost_datetime").value ,Now())>120 then
					
					intPagedCounter = intPagedCounter + 1
						
					strHTML = strHTML & "<tr>"
					strHTML = strHTML & "<td width='70' class='resultsBody' valign='top'>" & getDateInMMDDYYFormat(.fields.item("careerpost_datetime").value) & "</td>"
					strHTML = strHTML & "<td class='resultsBody' valign='top'>"
					strHTML = strHTML & "<a href='job_detail.asp?JobID=" & trim(.fields.item("requisition_id").value) & "&user_id=" & Request("user_id") & "'>"
					strHTML = strHTML & trim(.fields.item("title").value) & "</a></td>"
					
					if not blnCustomLocation then
						strHTML = strHTML & "<td class='resultsBody' valign='top'width='110'>"
						strHTML = strHTML & getjoblocationfordisplay(objResultsRS)
						strHTML = strHTML & "</td>"
					end if
											
					Dim iPrevQ, sValue, sCustomFieldLine
					iPrevQ = 0
					
					For each CFD in arrCustomFieldsData
						
						sCustomFieldLine = ""
						
						If CFD(CF_FIELD_RESULTS) Then
							
							Select Case CFD(CF_FIELD_TYPE)
								Case CFT_MULTIPLE_SELECT, CFT_CHECKBOX
									For iAnswers = 0 To UBound(CFD(CF_FIELD_ANSWERS))

										sValue = .Fields("CustomField" & CFD(CF_FIELD_ID) & "_" & (iAnswers + 1)) & ""
										If sValue <> "" Then
											sCustomFieldLine = sCustomFieldLine & sValue & ", "
										End If

									Next
						
									If sCustomFieldLine <> "" Then
										sCustomFieldLine = Left(sCustomFieldLine, Len(sCustomFieldLine) - 2)
									End If
										
								Case Else
									sValue = .Fields("CustomField" & CFD(CF_FIELD_ID) & "_1") & ""
									If sValue <> "" Then
										sCustomFieldLine = sCustomFieldLine & sValue
									End If

							End Select
							
							if Len(sCustomFieldLine) > 25 then sCustomFieldLine = Replace(sCustomFieldLine, " (", "<br>(")
							strHTML = strHTML & "<td class='resultsBody' valign=top>" & sCustomFieldLine & "</td>"
								
						End If
							
					Next

					strHTML = strHTML & "</tr>"
					
					if blnIncludeShortDescription then
						
						dim strRequirements
							
						strRequirements = StripHTML(trim(.fields.item("requirements").value))
						if len(strRequirements) > 75 then strRequirements = left(strRequirements, 75) & "..."
							
						strHTML = strHTML & "<tr><td class='resultsBody'>&nbsp;</td><td class='resultsBody' colspan=" & iColumnCount + 2 & ">" & strRequirements & "</td></tr>"
						
					end if
					strHTML = strHTML & "<tr><td COLSPAN='" & iColumnCount + 3 & "'><hr></td></tr>"

					SearchCounter .fields.item("requisition_id").value
						
					.movenext
				end if
					
				loop		
					
				.close
					
			end with
			
			'strHTML = strHTML & "<tr><td colspan='3'><hr></td></tr>"
				
			strHTML = strHTML & "<tr><td COLSPAN='" & iColumnCount + 3 & "'>"
				strHTML = strHTML & "<table width=100% cellspacing=0 cellpadding=0 border=0><tr>"
					strHTML = strHTML & "<td class='resultsBody'>Displaying records <b>" & intStartRecord & "</b> through <b>" & intEndRecord & "</b></td>"
					strHTML = strHTML & "<td class='resultsBody' align='right'>"
			
					if blnShowPrevious then strHTML = strHTML & "<a href=""Javascript: Move('previous')"">Previous</a>"
					if blnShowPrevious and blnShowNext then strHTML = strHTML & "&nbsp;&nbsp;&nbsp;&nbsp;"
					if blnShowNext then strHTML = strHTML & "<a href=""Javascript: Move('next')"">Next</a></td>"
				strHTML = strHTML & "</tr></table>"
			strHTML = strHTML & "</td></tr>"
			strHTML = strHTML & "<tr><td COLSPAN='" & iColumnCount + 3 & "'>&nbsp;</td></tr>"
			strHTML = strHTML & "<tr><td COLSPAN='" & iColumnCount + 3 & "' class='resultsBody' align=center>"
				
			strHTML = strHTML & "(Click on the column headers to re-sort the results)</td></tr></table>"
							
			GetPagedSortableSearchResults_CustomReq_delay = strHTML
				
		End If
			
	End Function

	'------------------------------------------------------------------------------
	'Name:			GetSearchResults_CustomFields
	'Inputs:		strCategory, strTitle, intLocation, strKeywords, intCountry, arrCustom
	'Outputs:		objResultsRS
	'------------------------------------------------------------------------------
	Function GetSearchResults_CustomFields_Delay(strCategory, strTitle, intLocation, strKeywords, _
										   intCountry, arrCustom, intDaysToDelay)
		
		Dim objConn, objResultsRS, sSQL
		
		sSQL = BuildSearchSQL_Delay(strTitle, strCategory, intLocation, strKeywords, intCountry, arrCustom, intDaysToDelay)

		Set objConn = GetDynamicConnection(REPLICATION_SERVER)
		Set objResultsRS = objConn.execute(sSQL)
		
		Set GetSearchResults_CustomFields_Delay = objResultsRS

		Set objResultsRS.ActiveConnection = Nothing
		Set objResultsRS = Nothing
		objConn.Close
		
	End Function
	
	'------------------------------------------------------------------------------
	'Name:			BuildSearchSQL
	'Inputs:		sTitle, sCategory, iLocation, sKeywords, iCountry, arrCustom 
	'Outputs:		objResultsRS
	'------------------------------------------------------------------------------
	Function BuildSearchSQL_Delay(sTitle, sCategory, iLocation, sKeywords, iCountry, arrCustom, iDaysToDelay)

		On Error Goto 0

		dim bExclusiveSearchKeywords     : bExclusiveSearchKeywords     = CBool(Request("ExclusiveSearchKeywords"))
		dim bExclusiveSearchCustomFields : bExclusiveSearchCustomFields = CBool(Request("ExclusiveSearchCustomFields"))

		Dim strSQL, sSelectSQL, sJoinSQL, CFD, iCount, iAnswerCount
		Dim sFieldAlias, sTableAlias, sFieldAliasPrefix, sTableAliasPrefix
		Dim sCustomFieldsSQL, strTempSQL
		iPrevQ = 0
		
		'loop thru search fields
		For each CFD in arrCustomFieldsData
			
			sFieldAliasPrefix = "CustomField" & CFD(CF_FIELD_ID) & "_"
			sTableAliasPrefix = "q" & CFD(CF_FIELD_ID) & "_"
				
			Select Case CFD(CF_FIELD_TYPE)
			
				Case CFT_SINGLE_DROPDOWN, CFT_RADIO_BUTTON, CFT_TEXTBOX, CFT_TEXTAREA
					sTableAlias = sTableAliasPrefix & "1"
					sFieldAlias = sFieldAliasPrefix & "1"
					sSelectSQL = sSelectSQL & ", " & sTableAlias & ".req_answer AS " & sFieldAlias & vbCrLf

					if bExclusiveSearchCustomFields and IsArray(arrCustom) Then
						sCustomFieldsSQL = ""
						For each Custom in arrCustom
							If Custom(0) = CFD(CF_FIELD_ID) then
								If CStr(Custom(1)) <> "" Then
									sCustomFieldsSQL = " AND " & sTableAlias & ".req_answer = '" & Replace(Custom(1), "'", "''") & "'"
								End If
								Exit For
							End If
						Next
					End If

					if sCustomFieldsSQL = "" then
						sJoinSQL = sJoinSQL & "LEFT OUTER "
					else
						sJoinSQL = sJoinSQL & "INNER "
					end if
					
					sJoinSQL = sJoinSQL & "JOIN tbl_req_custom_data AS " & sTableAlias & " "
					sJoinSQL = sJoinSQL & "ON r.requisition_id = " & sTableAlias & ".requisition_id AND " & sTableAlias & ".req_questionID = " & CFD(CF_FIELD_ID) & sCustomFieldsSQL & vbCrLf
					
				Case CFT_MULTIPLE_SELECT, CFT_CHECKBOX
					For iCount = 0 To UBound(CFD(CF_FIELD_ANSWERS))
						sTableAlias = sTableAliasPrefix & (iCount + 1)
						sFieldAlias = sFieldAliasPrefix & (iCount + 1)
						sSelectSQL = sSelectSQL & ", " & sTableAlias & ".req_answer AS " & sFieldAlias & vbCrLf
						sJoinSQL = sJoinSQL & "LEFT JOIN tbl_req_custom_data " & sTableAlias & " "
						sJoinSQL = sJoinSQL & "ON r.requisition_id = " & sTableAlias & ".requisition_id AND " & sTableAlias & ".req_questionID = " & CFD(CF_FIELD_ID) & " AND " & sTableAlias & ".req_answer = '" & CFD(CF_FIELD_ANSWERS)(iCount) & "'" & vbCrLf
					Next
	
			End Select

		Next
			
		strSQL = "SELECT DISTINCT r.requisition_code, r.requisition_id, r.title, r.careerpost_datetime, ctg.category_name,"
		strSQL = strSQL & " c.city_name, c.city_id, s.state_code, tbl_CountryISO.Country, rai.requirements, rpp.listing,"
		strSQL = strSQL & " r.city_name as req_city_name, r.state_name as req_state_name"
		strSQL = strSQL & sSelectSQL & " "	'custom fields
		
		strSQL = strSQL & "FROM requisition r LEFT OUTER JOIN category ctg ON r.category_id = ctg.category_id " & vbCrLf
		
'		strSQL = strSQL & "JOIN requisition_project_profile_additional_info rppai ON r.requisition_id = rppai.requisition_id " & vbCrLf
		strSQL = strSQL & "JOIN requisition_additional_info rai ON rai.requisition_id = r.requisition_id " & vbCrLf
		strSQL = strSQL & "JOIN requisition_project_profile rpp ON rpp.requisition_id = r.requisition_id " & vbCrLf
		strSQL = strSQL & "JOIN requisition_emedia re ON re.requisition_id = r.requisition_id " & vbCrLf
		strSQL = strSQL & "JOIN city c ON r.city_id = c.city_id " & vbCrLf
		strSQL = strSQL & "JOIN state s ON s.state_id = c.state_id " & vbCrLf
		strSQL = strSQL & "JOIN tbl_CountryISO ON r.countryID = tbl_CountryISO.CountryID " & vbCrLf
		
		if not bExclusiveSearchCustomFields then
			strSQL = strSQL & "LEFT OUTER JOIN tbl_Req_Custom_Data cd ON r.requisition_id = cd.requisition_id " & vbCrLf
		end if
		
		strSQL = strSQL & sJoinSQL
			
		strSQL = strSQL & "WHERE r.Hiring_OrgID = " & HIRING_ORG_ID & " AND " & vbCrLf
		strSQL = strSQL & "re.emedia_id = " & CAREER_SITE_EMEDIA_ID & " AND " & vbCrLf
			
		'if sCategory <> "" then
		'	strSQL = strSQL & "ctg.category_name = '" & sCategory & "' AND " & vbCrLf
		'end if
		
		if sCategory <> "" then
			strSQL = strSQL & "r.category_id = " & sCategory & " AND " & vbCrLf
		end if
		
		if sTitle <> "" then
			strSQL = strSQL & "r.title = '" & sTitle & "' AND " & vbCrLf
		end if
			
		if iLocation <> "-1" then
			strSQL = strSQL & "((s.state_id = " & iLocation & ") OR (c.city_id = " & iLocation & ")) AND " & vbCrLf
		end if
			
		if sKeywords <> "" then
		
			dim sSQLkeywords
			dim oParser
			dim sSearch
			
			if blnUseFreeText then
				set oParser = server.createobject("ccc.ContainsParser")
				sSearch = oParser.ParseKeywords(cstr(sKeywords))
				set oParser = Nothing
				
				sSQLkeywords = sSQLkeywords & _
					"CONTAINS(rai.duties, '"       & sSearch & "') OR " & _
					"CONTAINS(rai.requirements, '" & sSearch & "') OR " & _
					"CONTAINS(r.title, '"          & sSearch & "')"
			else
				dim sConjunction
				if bExclusiveSearchKeywords then
					sConjunction = "OR"
				else
					sConjunction = "AND"
				end if
				
				set oParser = server.createobject("ccc.LikeParser")
				sSearch = oParser.ParseKeywords(cstr(sKeywords))
				set oParser = Nothing

				for each sSearch in Split(sSearch, "%")
					if not IsEmpty(sSQLkeywords) then sSQLkeywords = sSQLkeywords & " " & sConjunction & vbCrLf
					sSQLkeywords = sSQLkeywords &         "(r.title LIKE '%" & sSearch & "%' OR "
				'	sSQLkeywords = sSQLkeywords &     "rppai.header LIKE '%" & sSearch & "%' OR "
				'	sSQLkeywords = sSQLkeywords &     "rppai.fooder LIKE '%" & sSearch & "%' OR "
					sSQLkeywords = sSQLkeywords & "rai.requirements LIKE '%" & sSearch & "%' OR "
					sSQLkeywords = sSQLkeywords &       "rai.duties LIKE '%" & sSearch & "%')"
				next
			end if
			        
			strSQL = strSQL & "(" & sSQLkeywords & ") AND " & vbCrLf
			
		end if
			
		if iCountry <> "-1" And iCountry & "" <> "" then
			strSQL = strSQL & "r.countryid = " & iCountry & " AND " & vbCrLf
		end if
			
		'if strIndustry <> "" then
		'	strSQL = strSQL & "((r.requisition_id IN (SELECT requisition_id FROM requisition_project_profile_smartpost_industry WHERE smartpost_industry_fullcode = @industry)) OR @industry = '') AND "
		'end if
			
		'if strListing <> "" then
		'	strSQL = strSQL & "(rpp.listing = '" & sListing & "') AND "
		'end if
			
		If not bExclusiveSearchCustomFields and IsArray(arrCustom) Then
			
			sCustomFieldsSQL = ""
						
			For each Custom in arrCustom
				
				strTempSQL = ""
				
				If IsArray(Custom(1)) Then
				
					'strTempSQL = strTempSQL & "q" & Custom(0) & "_1.req_answer IN ("
					
					For iCount = 0 To UBound(Custom(1))
						If Custom(1)(iCount) & "" <> "" Then
							strTempSQL = strTempSQL & "'" & Replace(Custom(1)(iCount), "'", "''") & "'"
							If iCount <> UBound(Custom(1)) Then
								strTempSQL = strTempSQL & ", "
							End If
						End If
					Next
					
				Else
					If Custom(1) & "" <> "" Then
						strTempSQL = strTempSQL & "'" & Replace(Custom(1), "'", "''") & "'" & vbCrLf
					End If
					
				End If
				
				If strTempSQL <> "" Then
					sCustomFieldsSQL = sCustomFieldsSQL & "(cd.req_questionid = " & Custom(0) & " AND " 
					sCustomFieldsSQL = sCustomFieldsSQL & "cd.req_answer IN ("
					sCustomFieldsSQL = sCustomFieldsSQL & strTempSQL
					sCustomFieldsSQL = sCustomFieldsSQL & ")) OR "
				End If
				
			Next
			
			If sCustomFieldsSQL <> "" Then	
				sCustomFieldsSQL = Mid(sCustomFieldsSQL, 1, Len(sCustomFieldsSQL) - 4)
				strSQL = strSQL & "(" & sCustomFieldsSQL & ") AND " & vbCrLf
			End If
			
		End If
			
		strSQL = strSQL & "DATEDIFF(day,re.postdate, GETDATE()) > " &  iDaysToDelay & " AND " & vbCrLf
		strSQL = strSQL & "r.temporary_status = 0 AND r.operation_status <> 3 AND " & vbCrLf
		strSQL = strSQL & "r.launch_status = 0 AND r.requisition_statusID = 2 AND " & vbCrLf
		strSQL = strSQL & "r.hide_unhide = 0 " & vbCrLf
			
		strSQL = strSQL & "ORDER BY r.careerpost_datetime ASC"
		'Response.Write strSQL
		'Response.end
		BuildSearchSQL_Delay = strSQL

	End Function


</script>