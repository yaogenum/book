function GetRequest() {
	var url = location.search; //获取url中"?"符后的字串
	var theRequest = new Object();
	if (url.indexOf("?") != -1) {
		var str = url.substr(1);
		strs = str.split("&");
		for ( var i = 0; i < strs.length; i++) {
			theRequest[strs[i].split("=")[0]] = unescape(strs[i].split("=")[1]);
		}
	}
	return theRequest;
}

var Request = new Object();
Request = GetRequest();
var books_name;
var users_name;
function getlist() {
	books_name = Request['books_name'];
	users_name = Request['users_name'];
}

var xmlHttp;

var pingjias;
var mingzis;
function createXMLHttp() {
	if (window.XMLHttpRequest) {
		xmlHttp = new XMLHttpRequest();
	} else {
		xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
}
function p1(pingjia) {
	pingjias = pingjia;
}
function p2(mingzi) {

	//mingzis=mingzi;
	createXMLHttp();
	xmlHttp.open("GET", "servlet/Firstname_indicate?users_name=" + mingzis);
	// 设置操作的回调函数
	xmlHttp.onreadystatechange = p3Callback;
	xmlHttp.send(null);

}

function p2Callback() {

	if (xmlHttp.readyState == 4) {
		// 调用完成
		if (xmlHttp.status == 200) {

			var text = xmlHttp.responseText;
			document.getElementById("kname").innerHTML = text;
		}
	}

}

function p3() {
	if (pingjias.length < 5 || pingjias.length > 100) {
		alert("评价字数应该在5到100字之间");
	} else {
		
	//	createXMLHttp();
		//xmlHttp.open("POST", "servlet/Books_pingjia?pingjias=" + pingjias);
		//xmlHttp.onreadystatechange = p3Callback;
		//xmlHttp.send(null);
read_pingjia();
	}

}

function p3Callback() {

	if (xmlHttp.readyState == 4) {
		// 调用完成
		if (xmlHttp.status == 200) {

			var text = xmlHttp.responseText;
			alert(text);
		}
	}

}

function alls() {
	createXMLHttp();

	xmlHttp.open("Get", "servlet/Books_pingjia");
	// 设置操作的回调函数
	xmlHttp.onreadystatechange = allsCallback;
	xmlHttp.send(null);
}
function allsCallback() {

	if (xmlHttp.readyState == 4) {
		// 调用完成

		if (xmlHttp.status == 200) {

			var all_pingjia = xmlHttp.responseText;
			alert(all_pingjia);
			//document.getElementById("all_kan").innerHTML = all_pingjia;
		}
	}
}

function add_amount() {

	createXMLHttp();

	xmlHttp.open("POST", "servlet/Href_download");
	// 设置操作的回调函数books_name=" + books_name+ "&interest=" + interest
	xmlHttp.onreadystatechange = add_amountCallback;
	xmlHttp.send(null);
}
function add_amountCallback() {
	if (xmlHttp.readyState == 4) {
		// 调用完成
		if (xmlHttp.status == 200) {
		}
	}
}

function save_records() {

	createXMLHttp();
	xmlHttp.open("POST", "servlet/Save_records");
	xmlHttp.onreadystatechange = save_recordsCallback;
	xmlHttp.send(null);

}
function save_recordsCallback() {
	if (xmlHttp.readyState == 4) {
		if (xmlHttp.status == 200) {
			//var text=xmlHttp.responseText;
			//alert(text);
		}
	}
}
function add_jilu() {
	alert("评价完成");
}

$(document).ready(function() {
	$("#panel").animate( {
		left : "400px",
		height : "150px",
		opacity : "1"
	}, 1400).animate( {
		bottom : "250px",
		width : "200px"
	}, 1400);

});





function read_pingjia(){


	$.ajax( {//top
		type : "POST",
		data : "books_pingjia=" +pingjias,
		url : "servlet/Books_pingjia",
		dataType : "Text",
		success : function(datas, status) {
				alert(datas);
		},
		error : function(XMLHttpRequest, textStatus, errorThrown) {
			alert(XMLHttpRequest.status);
			alert(XMLHttpRequest.readyState);
			alert(textStatus);
		}
	});
}
