

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

function xiazai(limit,users_name,vip) {

	if (vip == "ok") {
		alert("尊敬的会员，您可以直接下载");
		
	} else {
	
		createXMLHttp(); 
		var books_limit = limit;
		xmlHttp.open("POST", "servlet/Vip_arrange?users_name=" + users_name
				+ "&books_limit=" + books_limit);
		
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
				alert("可以下载，目前积分"+b);
				
			}
			if (a == 2) {
				alert("不可下载，目前积分"+b);//
			//	return false;
			}
			if (a == 3) {
				alert("系统错误");
			
			}
			
		}
	}

}

function get_images(img_id,dizhi){
document.getElementById(img_id).src=dizhi;
/*	
,b,c,d,e,f,g,h
if(a!=""){
		document.getElementById("1").src=a;
	}
	if(b!=""){
		document.getElementById("2").src=b;
	}
	if(c!=""){
		document.getElementById("3").src=c;
	}
	if(d!=""){
		document.getElementById("4").src=d;
	}
	if(e!=""){
		document.getElementById("5").src=e;
	}
	if(f!=""){
		document.getElementById("6").src=f;
	}
	if(g!=""){
		document.getElementById("7").src=g;
	}
	if(h!=""){
		document.getElementById("8").src=h;
	}*/
}

function read_read(books_name,books_path){

var nowcount=1;
	$.ajax( {//top
		type : "POST",
		data : "books_name=" +books_name+"&books_path="+books_path+"&nowcount="+nowcount,
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
//alert(books_name+books_path+books_limit);

	$.ajax( {//top
		type : "POST",
		data : "books_name=" +books_name+"&books_path="+books_path+"&books_limit="+books_limit,
		url : "servlet/Ready_download",
		dataType : "Text",
		success : function(datas, status) {
				//alert(datas);
		},
		error : function(XMLHttpRequest, textStatus, errorThrown) {
			alert(XMLHttpRequest.status);
			alert(XMLHttpRequest.readyState);
			alert(textStatus);
		}
	});
}
