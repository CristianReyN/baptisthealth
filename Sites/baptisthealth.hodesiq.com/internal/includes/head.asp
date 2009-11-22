<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />

		<title>
			
				
						Baptist Health of Northeast Florida
					
			
		</title>
	


	<!-- SwishCommand index -->
<meta name="keywords" content="baptist hospital baptist health baptist health system baptist medical, baptist medical center wolfson hospital wolfson childrens hospital wolfson childrens center wolfsons fl duval clay nassau bmc jacksonville st. johns"><!-- SwishCommand noindex -->



	
		<link rel="stylesheet" href="http://www.e-baptisthealth.com/components/gwn/css/greystone.css" type="text/css">
		<link rel="stylesheet" href="http://www.e-baptisthealth.com/components/gwn/css/bmc.css" type="text/css">


<script type="text/javascript" language="JavaScript">
<!--

	if (screen.width < 800)
		{
			document.write('<link rel="Stylesheet" rev="Stylesheet" href="http://www.e-baptisthealth.com/components/gwn/css/dropdown_menus.css">');
			document.write('<link rel="Stylesheet" rev="Stylesheet" href="http://www.e-baptisthealth.com/components/gwn/css/narrowWidth.css">');
			document.write('<scr' + 'ipt src="includes/dropdown_menus.js" type="text/javascript">' + '</sc' + 'ript>');
		}

	else
		{
			document.write('<link rel="Stylesheet" rev="Stylesheet" href="http://www.e-baptisthealth.com/components/gwn/css/dropdown2_menus.css">');
			document.write('<link rel="Stylesheet" rev="Stylesheet" href="http://www.e-baptisthealth.com/components/gwn/css/wideWidth.css">');
			document.write('<scr' + 'ipt src="includes/dropdown2_menus.js" type="text/javascript">' + '</sc' + 'ript>');
			
		}
	
-->
</script>

	
	<%=ValidateLogin%>
	
	<script LANGUAGE="javascript">
<!--

function Validate()
	
	{
		if (document.criteria.expertise.value == "")
		{
			alert("Please choose at least one area of expertise");
			document.criteria.expertise.focus();
			return false
		}
		
		if (document.criteria.education.value == "")
		{
			alert("Please enter your education level");
			document.criteria.education.focus();
			return false
		}
		
		if (document.criteria.jobtype.value == "")
		{
			alert("Please select at least one job type preference.");
			document.criteria.jobtype.focus();
			return false
		}


		if (document.criteria.location.value == "")
		{
			alert("Please select at least one location where you would like to work.");
			document.criteria.location.focus();
			return false
		}

		if (document.criteria.compensationf.value == "")
		{
			alert("Please select the low compensation range.");
			document.criteria.compensationf.focus();
			return false
		}

		if (document.criteria.compensationt.value == "")
		{
			alert("Please select the high compensation range.");
			document.criteria.compensationt.focus();
			return false
		}


		var fromValue = document.criteria.compensationf.selectedIndex;
		var toValue = document.criteria.compensationt.selectedIndex;
	
		if(fromValue > toValue)
		{
		alert("Your low compensation cannot be greater than your high compensation");
		//currentForm.compensationt.selectedIndex = 0;
		document.criteria.compensationt.focus();
		return false
		}
		


		if (document.criteria.joblevel.value == "")
		{
			alert("Please select a job level.");
			document.criteria.joblevel.focus();
			return false
		}
		
	
		
		if (document.criteria.percenttravel.value == "")
		{
			alert("Please select the percentage of time you are willing to travel.");
			document.criteria.percenttravel.focus();
			return false
		}


		if (document.criteria.startdate.value == "")
		{
			alert("Please let us know when you will be able to accept a position.");
			document.criteria.startdate.focus();
			return false
		}

		if (document.criteria.refSource.value == "")
		{
			alert("Please let us know where you heard about our career site.");
			document.criteria.refSource.focus();
			return false
		}
		
		if (document.criteria.profilename.value == "")
		{
			alert("Please give this agent a name.");
			document.criteria.profilename.focus();
			return false
		}



		return true
	}
	
 
function selectall()
{
	if (document.criteria.alllocations.checked)
	{
	// Loop through the select box to see how many are selected;
		for (i=0; i<document.criteria.location.length; i++)
		{
			document.criteria.location.options[i].selected = true
			
		}
	}	
	else
	{
		for (i=0; i<document.criteria.location.length; i++)
		{
			document.criteria.location.options[i].selected = false
			
		}
	
	}
}	
	
//-->
</script>

</head>

