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
		CAREER_SITE_EMEDIA_ID = 11279
		
		sDomain = "http://careers.iqdev.beta.hodes.com/baptisthealth/"
		sBaptistDomain = sDomain
		
		LOCATION_ID = 263
		SHIFT_ID = 264
		ERP_ID = 262
		
	case "DEMO", "STG"
		HIRING_ORG_ID = 632
		CAREER_SITE_EMEDIA_ID = 98653
		
		sDomain = "http://careers.iqstg.beta.hodes.com/baptisthealth/"
		sBaptistDomain = sDomain
		
		LOCATION_ID = 263
		SHIFT_ID = 264		
		ERP_ID = 288
		
	case "PRODUCTION"
		HIRING_ORG_ID = 632
		CAREER_SITE_EMEDIA_ID = 98653 
		
		sDomain = "http://careers.hodes.com/baptisthealth/"
		sBaptistDomain = "http://employees.e-baptisthealth.com/tools/jobs/baptisthealth/"
		
		
		LOCATION_ID = 263
		SHIFT_ID = 264
		ERP_ID = 288
		
	case else
		HIRING_ORG_ID = 632
		CAREER_SITE_EMEDIA_ID = 6931
		
		sDomain = "http://careers.hodes.com/baptisthealthinternal/"
		sBaptistDomain = "http://employees.e-baptisthealth.com/tools/jobs/baptisthealthinternal/"
		
		
		LOCATION_ID = 263
		SHIFT_ID = 264
		ERP_ID = 288
		
end select


sCFL_Search = LOCATION_ID & "," & SHIFT_ID
sCFL_Results = LOCATION_ID & "," & SHIFT_ID



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
		dim arrInputParams(2)
		
		arrInputParams(0) = HIRING_ORG_ID
		arrInputParams(1) = CAREER_SITE_EMEDIA_ID
		arrInputParams(2) = intNumToGet
		
		set objTopXRS = ExecuteDynamicStoredProcedure("sp_Career_Sites_select_top_x_expiration", arrInputParams)
		
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



</script>