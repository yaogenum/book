function createXMLHttp(){
	if (window.XMLHttpRequest) {
		xmlHttp = new XMLHttpRequest();
	} else {
		xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
}
	
	
	
function getpic1(){
	createXMLHttp();
	xmlHttp.open("POST", "servlet/Pic_book");
	xmlHttp.onreadystatechange = getpic1Callback;
	xmlHttp.send(null);
}

function getpic2(){
	createXMLHttp();
	xmlHttp.open("get", "servlet/Pic_book");
	xmlHttp.onreadystatechange = getpic2Callback;
	xmlHttp.send(null);
}

function getpic3(){
	createXMLHttp();
	xmlHttp.open("POST", "servlet/Infor");
	xmlHttp.onreadystatechange = getpic3Callback;
	xmlHttp.send(null);
}

function getpic4(){
	createXMLHttp();
	xmlHttp.open("get", "servlet/Infor");
	xmlHttp.onreadystatechange = getpic4Callback;
	xmlHttp.send(null);
}

function getpic1Callback() {
	if (xmlHttp.readyState == 4) {
		if (xmlHttp.status == 200) {
			var text=xmlHttp.responseText;
			var ok=document.getElementById("img1");
			ok.src=text;
		}
	}
}
function getpic2Callback() {
	if (xmlHttp.readyState == 4) {
		if (xmlHttp.status == 200) {
			var text=xmlHttp.responseText;
			var ok=document.getElementById("img2");
			ok.src=text;
		}
	}
}
function getpic3Callback() {
	if (xmlHttp.readyState == 4) {
		if (xmlHttp.status == 200) {
			var text=xmlHttp.responseText;
			var ok=document.getElementById("img3");
			ok.src=text;
		}
	}
}
function getpic4Callback() {
	if (xmlHttp.readyState == 4) {
		if (xmlHttp.status == 200) {
			var text=xmlHttp.responseText;
			var ok=document.getElementById("img4");
			ok.src=text;
		}
	}
}