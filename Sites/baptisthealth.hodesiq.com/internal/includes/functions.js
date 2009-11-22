//___________________________________________________________________
//Enumeration

var agt=navigator.userAgent.toLowerCase();

var is_mac    = (agt.indexOf("mac")!=-1);
var is_major  = parseInt(navigator.appVersion);

var msie_vers_start = agt.indexOf("msie")+5;
var msie_real_vers = parseFloat(agt.substring(msie_vers_start, msie_vers_start+3));

var is_linux  = (agt.indexOf("inux")!=-1);

var is_nav    = ((agt.indexOf('mozilla')!=-1) && (agt.indexOf('spoofer')==-1) && (agt.indexOf('compatible') == -1) && (agt.indexOf('opera')==-1) && (agt.indexOf('webtv')==-1));
var is_nav6   = (is_nav && (agt.indexOf('netscape6') != -1));
var is_nav4up = (is_nav && (is_major >= 4));

var is_ie     = (agt.indexOf("msie") != -1);
var is_ie3    = (is_ie && (is_major < 4));
var is_ie4    = (is_ie && (is_major == 4) && (msie_real_vers < 5));
var is_ie4up  = (is_ie  && (is_major >= 4));
var is_ie5up  = (is_ie  && !is_ie3 && !is_ie4);

var is_aol    = (agt.indexOf("aol") != -1);
var is_aol4   = (is_aol && is_ie3);



<!-- Begin
if ((navigator.appName.indexOf('Microsoft')+1))
	{
	document.write('<style type="text/css"> .opacityOut {filter:alpha(opacity=100)} .opacityOver {filter:alpha(opacity=85)} </style>');
	}

if ((navigator.appName.indexOf('Netscape')+1))
	{
	document.write('<style type="text/css"> .opacityOut {-moz-opacity:1} .opacityOver {-moz-opacity:.75} </style>');
	}
else
	{
	document.write('');
	}
//  End -->



//___________________________________________________________________
//___________________________________________________________________
function initialize()
	{
	PreloadImages(http://community.e-baptisthealth.com/images/header/medicalservicesOver.gif',http://community.e-baptisthealth.com/images/header/healthinformationOver.gif',http://community.e-baptisthealth.com/images/header/searchBtnOver.gif',http://community.e-baptisthealth.com/images/header/hospitals/downtownOver.gif',http://community.e-baptisthealth.com/images/header/hospitals/beachesOver.gif',http://community.e-baptisthealth.com/images/header/hospitals/nassauOver.gif',http://community.e-baptisthealth.com/images/header/hospitals/southOver.gif',http://community.e-baptisthealth.com/images/header/hospitals/wolfsonOver.gif');
	}


//___________________________________________________________________
//___________________________________________________________________
function flipMenu(fnOpenClose,fnDivName)
	{
	if(fnOpenClose)
	{
		show(fnDivName);
		show('ddLogo');
		show('ddHeader');
      	}

   else
   	{
		hide(fnDivName);
      }

	return true;
	}



//___________________________________________________________________
//___________________________________________________________________
function flipHdowntown(fnOpenClose)
	{
	if(fnOpenClose)
		{
		show('ddDowntown');
		imgDowntown.src=http://community.e-baptisthealth.com/images/header/hospitals/downtownOver.gif';
		//bmcLogo.src=http://community.e-baptisthealth.com/images/logo/downtown.jpg';
		}
	else
		{
		hide('ddDowntown');
		imgDowntown.src=http://community.e-baptisthealth.com/images/header/hospitals/downtown.gif';
		//bmcLogo.src=http://community.e-baptisthealth.com/images/logo/bhLogo.gif';
		}
	}

function flipHbeaches(fnOpenClose)
	{
	if(fnOpenClose)
		{
		show('ddBeaches');
		imgBeaches.src=http://community.e-baptisthealth.com/images/header/hospitals/beachesOver.gif';
		//bmcLogo.src=http://community.e-baptisthealth.com/images/logo/beaches.jpg';
		}
	else
		{
		hide('ddBeaches');
		imgBeaches.src=http://community.e-baptisthealth.com/images/header/hospitals/beaches.gif';
		//bmcLogo.src=http://community.e-baptisthealth.com/images/logo/bhLogo.gif';
		}
	}

function flipHnassau(fnOpenClose)
	{
	if(fnOpenClose)
		{
		show('ddNassau');
		imgNassau.src=http://community.e-baptisthealth.com/images/header/hospitals/nassauOver.gif';
		//bmcLogo.src=http://community.e-baptisthealth.com/images/logo/nassau.jpg';
		}
	else
		{
		hide('ddNassau');
		imgNassau.src=http://community.e-baptisthealth.com/images/header/hospitals/nassau.gif';
		//bmcLogo.src=http://community.e-baptisthealth.com/images/logo/bhLogo.gif';
		}
	}

function flipHsouth(fnOpenClose)
	{
	if(fnOpenClose)
		{
		show('ddSouth');
		imgSouth.src=http://community.e-baptisthealth.com/images/header/hospitals/southOver.gif';
		//bmcLogo.src=http://community.e-baptisthealth.com/images/logo/south.jpg';
		}
	else
		{
		hide('ddSouth');
		imgSouth.src=http://community.e-baptisthealth.com/images/header/hospitals/south.gif';
		//bmcLogo.src=http://community.e-baptisthealth.com/images/logo/bhLogo.gif';
		}
	}

function flipHwolfson(fnOpenClose)
	{
	if(fnOpenClose)
		{
		show('ddWolfson');
		imgWolfson.src=http://community.e-baptisthealth.com/images/header/hospitals/wolfsonOver.gif';
		//bmcLogo.src=http://community.e-baptisthealth.com/images/logo/wolfson.jpg';
		}
	else
		{
		hide('ddWolfson');
		imgWolfson.src='http://community.e-baptisthealth.com/images/header/hospitals/wolfson.gif';
		//bmcLogo.src=http://community.e-baptisthealth.com/images/logo/bhLogo.gif';
		}
	}

function flipHmedicalservices(fnOpenClose)
	{
	if(fnOpenClose)
		{
		show('ddMedicalservices');
		imgMedicalservices.src=http://community.e-baptisthealth.com/images/header/medicalservicesOver.gif';
		//bmcLogo.src=http://community.e-baptisthealth.com/images/logo/downtown.jpg';
		}
	else
		{
		hide('ddDowntown');
		imgMedicalservices.src=http://community.e-baptisthealth.com/images/header/medicalservices.gif';
		//bmcLogo.src=http://community.e-baptisthealth.com/images/logo/bhLogo.gif';
		}
	}

function flipHbeaches(fnOpenClose)
	{
	if(fnOpenClose)
		{
		show('ddHealthinformation');
		imgHealthinformation.src=http://community.e-baptisthealth.com/images/header/healthinformationOver.gif';
		//bmcLogo.src=http://community.e-baptisthealth.com/images/logo/beaches.jpg';
		}
	else
		{
		hide('ddBeaches');
		imgHealthinformation.src=http://community.e-baptisthealth.com/images/header/healthinformation.gif';
		//bmcLogo.src=http://community.e-baptisthealth.com/images/logo/bhLogo.gif';
		}
	}

//___________________________________________________________________
//___________________________________________________________________
function show(id)
	{
	if (document.all)
		document.all[id].style.visibility='visible';
	else if (document.layers)
		document.layers[id].visibility='show';
	else
		document.getElementById(id).style.visibility='visible';
	}

function hide(id)
	{
	if (document.all)
		document.all[id].style.visibility='hidden';
	else if (document.layers)
		document.layers[id].visibility='hide';
	else
		document.getElementById(id).style.visibility='hidden';
	}


//___________________________________________________________________
//___________________________________________________________________
function getElementById(name)
	{
	if (document.layers){
		pre = 'document.layers["';
		post = '"]';
	}
	if (document.getElementById){
		pre = 'document.getElementById("';
		post = '")';
	}
	if (document.all){
		pre = 'document.all["';
		post = '"]';
	}

		return eval( pre + name + post);
	}


//___________________________________________________________________
//___________________________________________________________________
function getElementByTag(tag,i)
	{
	if (document.getElementsByTagName){
		pre = 'document.getElementsByTagName("';
		post = '")[' + i + ']';
		return eval( pre + tag + post);
	}
	else
	{
		return null;
	}

	}


//___________________________________________________________________
//___________________________________________________________________
function showPrinterFriendly()
	{
	var strContent = "No Content Found";
	var strTitle = "Print Window";

	if (getElementById('divContent') != null)
		{
		strContent = getElementById('divContent').innerHTML;
		}

	if (getElementByTag('title','0') != null)
		{
		strTitle = getElementByTag('title','0').innerHTML;
		}

	w = window.open("","Print","height=600,width=764,left=80,top=80,scrollbars=1,menubar=1,resizable=1,toolbar=0");
	w.document.write("<html><head><title>Print Window</title>");
	w.document.write("<link rel='stylesheet' href='http://community.e-baptisthealth.com/components/bmc.css' type='text/css'></head>");
	w.document.write("<body bgcolor='white'>");
	w.document.write("<table><tr><td>");
	w.document.write("<img src=http://community.e-baptisthealth.com/images/logo.gif'>");
	w.document.write("</td><td width='20'></td><td valign='top'>");
	w.document.write("<div id='titleDiv' class='title'><b>" + strTitle + "</b></div>");
	w.document.write("</td></tr></table>");
	w.document.write("<div id='contentDiv'>"+ strContent +"</div>");
	w.document.write("</body></html>");

	print();
	}



//___________________________________________________________________
//___________________________________________________________________
function PreloadImages(fImage)
	{
	if (document.images)
		{
		if (typeof(document.PageImages)=='undefined')
			{
			document.PageImages=new Object();
			}

		document.PageImages.Loaded=new Array();

		var fImageLen = PreloadImages.arguments.length;

		for(fArguments=0;fArguments<fImageLen;fArguments++)
			{
			document.PageImages.Loaded[fArguments]=new Image();
			document.PageImages.Loaded[fArguments].src = PreloadImages.arguments[fArguments];
			}
		}
	}


//___________________________________________________________________
//___________________________________________________________________
function go(where)
	{
	window.location.href=where;
	}