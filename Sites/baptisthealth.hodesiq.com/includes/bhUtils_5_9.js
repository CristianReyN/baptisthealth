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

function BH_preloadImages() {
  if (document.images) {
    if (typeof(document.BH) == 'undefined'){
      document.BH = new Object();
    }
    document.BH.loadedImages = new Array();
    var argLength = BH_preloadImages.arguments.length;
    for(arg=0;arg<argLength;arg++) {
     	document.BH.loadedImages[arg] = new Image();
        document.BH.loadedImages[arg].src = BH_preloadImages.arguments[arg];
    }
  }
}

function BH_swapImage(elImage, elSrc){
//rollover image swap
//resolves all image links from the images directory 
  var obj;
  // Check to make sure that images are supported in the DOM.
  if(document.images){
    // Check to see whether you are using a name, number, or object
    if (typeof(elImage) == 'string') {
      obj.src = ('images/' + elSrc);
	  	} else if ((typeof(elImage) == 'object') && elImage && elImage.src) {
      	elImage.src = ('images/' + elSrc);
	  }
  }
}

function popWrite(id,txt)
//writes to a div
{
if (document.all)
	{
	eval("document.all." + id + ".innerHTML = '" + txt + "'");
	}
else if (document.layers)
	{
	eval("document." + id + ".document.write('" + txt + "');");
	eval("document." + id + ".document.close();");
	}
else
	{
	//alert("getElbyId");
	eval("document.getElementById(" + id + ").innerHTML = '" + txt + "'");
	}
}

function show(id) {
	if (document.all)
		document.all[id].style.visibility='visible';
	else if (document.layers)
		document.layers[id].visibility='show';
	else 			
		document.getElementById(id).style.visibility='visible';
}

function hide(id) {
	if (document.all)
		document.all[id].style.visibility='hidden';
	else if (document.layers)
		document.layers[id].visibility='hide';
	else 			
		document.getElementById(id).style.visibility='hidden';
}
//another image swapping function -- this one seems to be more stable for the div-img interaction

function flipOn(imgName){eval("document."+imgName).src = "images/"+imgName+"_on.gif";}
function flipOff(imgName){eval("document."+imgName).src = "images/"+imgName+"_off.gif";}

function doMenu(state,imgName){
        divName = imgName.substr(3);
		if(state){
 				show(divName);
				flipOn(imgName);
			   
        }
        else{
 				hide(divName);
				flipOff(imgName);
        }
        return true;
}


//begin non-generic functions
function doInit(){
//this captures the onmouse events for these specific divs and routes them to the doMenu function in Netscape
        if(document.layers){
                document.community.onmouseover=new Function("doMenu(1,'gn_community')");
                document.community.onmouseout =new Function("doMenu(0,'gn_community')");
				
                document.patients.onmouseover=new Function("doMenu(1,'gn_patients')");
                document.patients.onmouseout =new Function("doMenu(0,'gn_patients')");
				
                document.physicians.onmouseover=new Function("doMenu(1,'gn_physicians')");
                document.physicians.onmouseout =new Function("doMenu(0,'gn_physicians')");
				
                document.employees.onmouseover=new Function("doMenu(1,'gn_employees')");
                document.employees.onmouseout =new Function("doMenu(0,'gn_employees')");
				
        }
}

//images to preload
//this is done here for now b/c these images are the same across the templates
BH_preloadImages('images/gn_community_on.gif','images/gn_employees_on.gif','images/gn_patients_on.gif','images/gn_physicians_on.gif','images/gt_aboutbaptisthealth_on.gif','images/gt_careers_on.gif','images/gt_facilities_on.gif','images/gt_findphysician_on.gif','images/gt_healthwellnessinfo_on.gif','images/gt_home_on.gif','images/gt_search_on.gif','images/gt_waystogive_on.gif');

	