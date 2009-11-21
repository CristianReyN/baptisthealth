/* define variables for "if n4 (Netscape 4), if IE (IE 4.x), 
and if n6 (if Netscape 6/W3C-DOM compliant)" */

var n4, ie, n6;

/* detecting browser support for certain key objects/methods and 
assembling a custom document object */
 var agt = navigator.userAgent.toLowerCase();
var isespial = agt.indexOf('escape');

var doc,doc2,doc3,sty;

if (document.layers) {
  doc = "document.";
  doc2 = ".document.";
  doc3 = "";
  sty = "";
  n4 = true;
  }
else if (document.all) {
  doc = "document.all.";
  doc2 = "";
  doc3 = "";
  sty = ".style";
  ie = true;
}

else if (document.getElementById) {
  doc = "document.getElementById('";
  doc2 ="')";
  doc3 ="')";
  sty = "').style";
  n6 = "true";
 } 
 
 

// the variables for the window dimensions
var win_width,win_height;
var centerhor, centerver;


//Get dimensions of the window
function dimensions() {
if(n4 || n6){
 win_width=window.Width;
 win_height=window.Height;
}

else if(ie) {
  win_width=document.body.Width;
  win_height=document.body.Height;
     }

centerhor = win_width/2;
centerver = win_height/2;
}


//position the element on the page.

function placeIt(elem,leftPos,topPos) {
docObj = eval(doc + elem + sty);
if (n4 || n6) {
docObj.left = leftPos;
docObj.top= topPos;
 }
if (ie) {
docObj.pixelLeft = leftPos;
docObj.pixelTop = topPos;
 }
}

// preload navigation images

var loaded = 0;
var navdir = "http://www.e-baptisthealth.com/images/gwn/header/";

function preload() {
top_MedicalServices_off = new Image;
top_MedicalServices_off.src = navdir + "MedicalServices-off.gif";
top_MedicalServices_on = new Image;
top_MedicalServices_on.src = navdir + "MedicalServices-on.gif";

top_HealthInformation_off = new Image;
top_HealthInformation_off.src = navdir + "HealthInformation-off.gif";
top_HealthInformation_on = new Image;
top_HealthInformation_on.src = navdir + "HealthInformation-on.gif";

top_Downtown_off = new Image;
top_Downtown_off.src = navdir + "Downtown-off.gif";
top_Downtown_on = new Image;
top_Downtown_on.src = navdir + "Downtown-on.gif";

top_Beaches_off = new Image;
top_Beaches_off.src = navdir + "Beaches-off.gif";
top_Beaches_on = new Image;
top_Beaches_on.src = navdir + "Beaches-on.gif";

top_Nassau_off = new Image;
top_Nassau_off.src = navdir + "Nassau-off.gif";
top_Nassau_on = new Image;
top_Nassau_on.src = navdir + "Nassau-on.gif";

top_South_off = new Image;
top_South_off.src = navdir + "South-off.gif";
top_South_on = new Image;
top_South_on.src = navdir + "South-on.gif";

top_Wolfson_off = new Image;
top_Wolfson_off.src = navdir + "Wolfson-off.gif";
top_Wolfson_on = new Image;
top_Wolfson_on.src = navdir + "Wolfson-on.gif";


loaded = 1;
}

// img src swap function
function onoff (elemparent,elem,state) {
if (loaded) {
newstate = eval(elem+"_"+state);
if (n4) {
menuObj = eval (doc + elemparent + doc2 + elem);
 }
else if (ie || n6) {
menuObj = eval (doc + elem + doc2);
 }
menuObj.src = newstate.src;
 }
}


// mouse over (on) and mouseoff(off) color values
var oncolor = "#09357a";
var offcolor = "#8BC0E8";

function changecolor(divname,colorname) {
stopall();
if (!n4) {
menuObj = eval(doc + divname + sty);
menuObj.backgroundColor = colorname;

  } 
}

// show or hide DIV element
function showhide(divname,state) {
if (n4) {
divObj = eval (doc + divname);
 } 
//else if (divname == 'Downtown' && divname == 'HealthInformation') {
//divObj = eval (doc + 'HealthInformation' + sty);
//}
else {
divObj = eval (doc + divname + sty);
}
divObj.visibility = state;
}


// variables that hold the value of the currently active (open) menu
var active_submenu1 = null;
var active_submenu2 = null;
var active_menuelem = null;
var active_topelem = null;

// function closes all active menus and turns back to 'off' state
function closeallmenus() {
if(active_submenu1 != null) {
  showhide(active_submenu1,'hidden');
  }
if(active_submenu2 != null) {
  showhide(active_submenu2,'hidden');
  }
if(active_menuelem != null) {
  changecolor(active_menuelem,offcolor);
  }
if(active_topelem != null) {
  onoff('mainmenu',active_topelem,'off');
  }
}

// the menu close timeout variable
var menu_close_timeout = 0;

// delay in miliseconds until the open menus are closed
var delay = 500;

// function calls the closeallmenus() function after a delay
function closeall() {
menu_close_timeout = setTimeout('closeallmenus()',delay);
}

// stop all timeout functions (stops menus from closing)
function stopall() {
clearTimeout(menu_close_timeout);
}

// function controls submenus 
function controlsubmenu(submenu1,submenu2,menuelem,topelem) {
stopall();
closeallmenus();
if (submenu1 != null) {
  showhide(submenu1,'visible');
  active_submenu1 = submenu1;
  }
if (submenu2 != null) {
 showhide(submenu2,'visible');
 active_submenu2 = submenu2;
  }
if (menuelem != null) {
 changecolor(menuelem,oncolor);
 active_menuelem = menuelem;
 }
if (topelem != null){
 onoff('mainmenu',topelem,'on');
 active_topelem = topelem;
 }

}


function initialize() {
preload();
closeallmenus();
stopall();
dimensions();
if (win_width < 800) {
mainmenuleft = 123;
mainmenu2left = 123;
 }
else {
mainmenuleft = 123;
mainmenu2left = 123;
     }
offset1 = 5;
offset2 = 125;
placeIt('mainmenu',mainmenuleft,0);
placeIt('MedicalServices',mainmenuleft + offset1,21);
placeIt('HealthInformation',mainmenuleft +offset1+offset2,21);

//126 to 84 moves dropdowns to accomodate size difference between bmc.gif and baptisthealth.gif
offset3 = 84;
offset4 = 62;
offset5 = 52;
offset6 = 45;
offset7 = 40;

placeIt('mainmenu2',mainmenu2left,65);
placeIt('Downtown',mainmenu2left + offset3,84);
placeIt('Beaches',mainmenu2left +offset3+offset4,84);
placeIt('Nassau',mainmenu2left +offset3+offset4+offset5,84);
placeIt('South',mainmenu2left +offset3+offset4+offset5+offset6,84);
placeIt('Wolfson',mainmenu2left +offset3+offset4+offset5+offset6+offset7,84);

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

	if (getElementByTag('body','0') != null)
		{
		strBody = getElementByTag('body','0').innerHTML;
		}

	w = window.open("pf.html","Print","height=600,width=764,left=80,top=80,scrollbars=1,menubar=1,resizable=1,toolbar=1");
	w.document.write("<html><head><title>Print Window</title>");
	w.document.write("<link rel='stylesheet' href='http://www.e-baptisthealth.com/components/gwn/css/print.css' type='text/css'>");
	w.document.write("<link rel='stylesheet' href='http://www.e-baptisthealth.com/components/gwn/css/onmedia.css' type='text/css' media='print'></head>");
	w.document.write("<body><br><br><img src='http://www.e-baptisthealth.com/images/logo/bhlogo.gif'><br><br>");
	w.document.write(strBody);
	w.document.write("</body></html>");
	w.document.close;

	return false;
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