
var xmlHttp;
var x="ok";
var nowcount=1;
var yeshus;

function createXMLHttp(){
	if (window.XMLHttpRequest) {
		xmlHttp = new XMLHttpRequest();
	} else {
		xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
}
function read_before(){
	
	shuzi=nowcount-1;
	//createXMLHttp(); 

	//var books_path="/save_files/zzz.txt";//传递当前页数和路
	if(nowcount<=2) {
		alert("已到首页");	
	} else {
		
$.ajax( {//top
		type : "POST",
		data : "nowcount=" +shuzi,
		url : "servlet/Href_read",
		dataType : "Text",
		success : function(data, status) {
			//var data=decodeURI(decodeURI(datas));
			var a=data.substring(0,1);
			if(a==1){
				alert("已到末页");
			}
			else{
					nowcount--;
				document.getElementById("content").innerHTML = data;
				document.getElementById("nowcount_shang").innerHTML = nowcount-1;
				document.getElementById("nowcount_xia").innerHTML = nowcount-1;
			}
			
		},
		error : function(XMLHttpRequest, textStatus, errorThrown) {
			alert(XMLHttpRequest.status);
			alert(XMLHttpRequest.readyState);
			alert(textStatus);
		}
	});
	
	
		/*
		var b=nowcount;
		xmlHttp.open("POST", "servlet/Href_read?nowcount=" + b);
		// 设置操作的回调函数books_path=" + books_path+ "&nowcount=" +b + "&books_name=" + books_name
		xmlHttp.onreadystatechange = readCallback;
		xmlHttp.send(null);*/
	}
	$("#bod").scrollTop(10);
	
}
/*
function read_next(){//两个作用：下一页，触发记录阅读记录，不给
	
	createXMLHttp();
	nowcount++;
	
	//nowcount--;
	var a=nowcount;

	xmlHttp.open("POST", "servlet/Href_read?nowcount=" + a);
	xmlHttp.onreadystatechange = readCallback;
	xmlHttp.send(null);	
		
	$("#bod").scrollTop(10);
}

*/

function tiaozhuan1(yeshu){
	if(yeshu<1||yeshu.length>8){
		alert("不存在此页");
	}
	else{
		yeshus=yeshu;
	}
	
}

function tiaozhuan2(){

	/*createXMLHttp();
	
	var c=yeshus;
	xmlHttp.open("POST", "servlet/Href_read&nowcount=" +c);
		xmlHttp.onreadystatechange = readCallback;
		xmlHttp.send(null);
		$("#bod").scrollTop(10);*/
	yeshus++;	
	
$.ajax( {//top
		type : "POST",
		data : "nowcount=" +yeshus,
		url : "servlet/Href_read",
		dataType : "Text",
		success : function(data, status) {
			//var data=decodeURI(decodeURI(datas));
			var a=data.substring(0,1);
			if(a==1){
				alert("已到末页");
			}
			else{
				nowcount=yeshus;
				
				document.getElementById("content").innerHTML = data;
				document.getElementById("nowcount_shang").innerHTML = nowcount-1;
				document.getElementById("nowcount_xia").innerHTML = nowcount-1;
			}
			
		},
		error : function(XMLHttpRequest, textStatus, errorThrown) {
			alert(XMLHttpRequest.status);
			alert(XMLHttpRequest.readyState);
			alert(textStatus);
		}
	});
	
	
	$("#bod").scrollTop(10);
		
}

function readCallback() {
	if (xmlHttp.readyState == 4) {
		// 调用完成
		if (xmlHttp.status == 200){
			var text = xmlHttp.responseText;
			var a=text.substring(0,1);
			if(a==1){
				alert("已到末页");
			}
			else{
				
				document.getElementById("content").innerHTML = text;
				document.getElementById("nowcount_shang").innerHTML = nowcount-1;
				document.getElementById("nowcount_xia").innerHTML = nowcount-1;
			}
				
		}
	}
}

var shuzi;
function read_next(){

nowcount++;
shuzi=nowcount;

nowcount--;

$.ajax( {//top
		type : "POST",
		data : "nowcount=" +shuzi,
		url : "servlet/Href_read",
		dataType : "Text",
		success : function(data, status) {
			//var data=decodeURI(decodeURI(datas));
			var a=data.substring(0,1);
			if(a==1){
				alert("已到末页");
			}
			else{
				nowcount++;
				document.getElementById("content").innerHTML = data;
				document.getElementById("nowcount_shang").innerHTML = nowcount-1;
				document.getElementById("nowcount_xia").innerHTML = nowcount-1;
			}
			
		},
		error : function(XMLHttpRequest, textStatus, errorThrown) {
			alert(XMLHttpRequest.status);
			alert(XMLHttpRequest.readyState);
			alert(textStatus);
		}
	});
	
	$("#bod").scrollTop(10);
}
