function loadXMLDoc(filename) {

	if (window.ActiveXObject) {
		xhttp = new ActiveXObject("Msxml2.XMLHTTP");
	}
	else {
		xhttp = new XMLHttpRequest();
	}

	xhttp.open("GET", filename, false);

	try {
		xhttp.responseType = "msxml-document";
	} catch(err) {
	} // Helping IE11
	xhttp.send("");
	return xhttp.responseXML;
}

function loadXml() {
	xml = loadXMLDoc("config.xml");
	xsl = loadXMLDoc("bird.xsl");
	// code for IE
	if (window.ActiveXObject || xhttp.responseType == "msxml-document") {
			ex = xml.transformNode(xsl);
			document.getElementById("example").innerHTML = ex;
		}		// code for Chrome, Firefox, Opera, etc.
	else if (document.implementation && document.implementation.createDocument) {

			xsltProcessor = new XSLTProcessor();
			xsltProcessor.importStylesheet(xsl);
			resultDocument = xsltProcessor.transformToFragment(xml, document);
			console.log(resultDocument);
			document.getElementById("example").appendChild(resultDocument);
		}
}

function animateSight() {
  $('.sight').css({
    'left' : relMouseX,
    'top'  : relMouseY,
    'background-position' : backGroundPos
   });
}

var frameRate, timeInterval, relMouseX, relMouseY, mouseX, mouseY, backGroundPos, atimer;

$(function() {

	loadXml();
	frameRate    =  30;
  	timeInterval = Math.round( 1000 / frameRate );
  	relMouseX    = 0;
  	relMouseY    = 0;  
  	sightOffset = $('.sight').height() / 2;
	atimer = setInterval("animateSight()", timeInterval);

	$(document).mousemove(function(event) {
		mouseX = event.pageX;
		mouseY = event.pageY;		  
		relMouseX = mouseX - sightOffset;
		relMouseY = mouseY - sightOffset;		  
		backGroundPos = -relMouseX + 'px ' + -relMouseY + 'px';
			   
	});

	$("#changeBodyColor").colorpicker().on("changeColor.colorpicker", function(event) {
		var birds = Snap.select("#body");
		birds.attr({
			fill: event.color.toHex()
		});
	});

	$("#changeWingColor").colorpicker().on("changeColor.colorpicker", function(event) {
		var birds = Snap.select("#wing");
		birds.attr({
			fill: event.color.toHex()
		});
	});

	$("#changeBeakColor").colorpicker().on("changeColor.colorpicker", function(event) {
		var birds = Snap.select("#beak");
		birds.attr({
			fill: event.color.toHex()
		});
	});

	$("#increase").click(function(event) {

		var birds = Snap.select("#bird");
		var birdGroup = Snap.select("#birdGroup");
		var x = Math.floor(Math.random() * 900);
        var y = Math.floor(Math.random() * 300);

        var newbird = birds.use().attr({
        	x: x,
        	y: y
        });

        var x = Math.floor((Math.random() * 5) + 1);
        var animateMotion = $("#pathGroup > .path" + x).clone();

        birdGroup.append(newbird);
        $("#birdGroup use:last-child").append(animateMotion);

	});

	$("#decrease").click(function(event) {
		$("#birdGroup use:last-child").remove();
	});

	$("#snipper").click(function(event) {

		if($("#snipper").prop("checked") === true) {
			$(".sight, .sniperBackground").css("display", "block");
		}
		else {
			$(".sight, .sniperBackground").css("display", "none");
		}
	});

	$("#reset").click(function(event) {
		$("#example").empty();
		$("#snipper").prop("checked", false);
		$(".sight, .sniperBackground").css("display", "none");
		loadXml();
	});

	$(document).on("click", "use", function(event) {
		console.log("aa");
		var audio = $("audio")[0];
		console.log(audio);
		audio.play();
		$(this).remove();
	});
});