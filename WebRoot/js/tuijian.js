


var xmlHttp;
var a;
var b;
var c;
function createXMLHttp() {
	if (window.XMLHttpRequest) {
		xmlHttp = new XMLHttpRequest();
	} else {
		xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
}

function xiazai(limit,vip) {
	if (vip ="ok") {
		alert("you are vip");
	} else {
		createXMLHttp();
		var books_limit = limit;
		xmlHttp.open("POST", "servlet/Vip_arrange?&books_limit=" + books_limit);
		xmlHttp.onreadystatechange = xiazaiCallback;
		xmlHttp.send(null);
	}
}



function xiazaiCallback() {
	if (xmlHttp.readyState == 4) {
	
		if (xmlHttp.status == 200) {
			var text = xmlHttp.responseText;
			
			a = text.substring(0, 1);
			b=text.substr(2);

			if (a == 1) {
				alert("you can download,grades you have "+b);
				
			}
			if (a == 2) {
				alert("you can't download ,grades you have "+b);//
			
			}
			if (a == 3) {
				alert("System error");
			
			}
			
		}
	}

}



function get_images(a,b,c,d,e){

	document.getElementById("1").src=a;
	document.getElementById("2").src=b;
	document.getElementById("3").src=c;
	document.getElementById("4").src=d;
	document.getElementById("5").src=e;
}


function read_read(books_name,books_path){
	var count=1;
	$.ajax( {//top
		type : "POST",
		data : "books_name=" +books_name+"&books_path="+books_path+"&nowcount="+count,
		url : "servlet/Read_ready",
		dataType : "Text",
		success : function(datas, status) {
				
		},
		error : function(XMLHttpRequest, textStatus, errorThrown) {
			alert(XMLHttpRequest.status);
			alert(XMLHttpRequest.readyState);
			alert(textStatus);
		}
	});
	
}



function down_ready(books_name,books_path,books_limit){


	$.ajax( {//top
		type : "POST",
		data : "books_name=" +books_name+"&books_path="+books_path+"&books_limit="+books_limit,
		url : "servlet/Ready_download",
		dataType : "Text",
		success : function(datas, status) {
			
		},
		error : function(XMLHttpRequest, textStatus, errorThrown) {
			alert(XMLHttpRequest.status);
			alert(XMLHttpRequest.readyState);
			alert(textStatus);
		}
	});
}

