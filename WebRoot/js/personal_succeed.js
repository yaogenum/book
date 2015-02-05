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
var users_name=Request['users_name'];
function ziliao(){
	
}

function indicate(users_name) {
	if (users_name != null) {
	} else {
		alert("欢迎游客来访 ,请先登录或者注册,否则某些功能将拒绝提供使用");
	}
}


$.ajax( {//top
		type : "GET",
		data : "users_name=" +users_name,
		url : "servlet/dongtai",
		dataType : "json",
		success : function(datas, status) {
			
				var a=100;
				for(var i=0;i<12;i=i+4){
				document.getElementById(a).innerHTML="theme:"+datas[i+1];
			
				document.getElementById(a).href="jsp/forum.jsp?pid="+datas[i]+"&&users_name="+users_name;
				a++;
				
				}
			
		},
		error : function(XMLHttpRequest, textStatus, errorThrown) {
			alert(XMLHttpRequest.status);
			alert(XMLHttpRequest.readyState);
			alert(textStatus);
		}
	});
	
	
function read_read(books_name,books_path,shuzi){
var interest="it";
	if(shuzi==2){
		interest="math";
	}
	if(shuzi==3){
		interest="economy";
	}
	if(shuzi==4){
		interest="fiction";
	}
	if(shuzi==5){
		interest="literature";
	}
	if(shuzi==6){
		interest="scientist";
	}
	if(shuzi==7){
		interest="tool";
	}
	var nowcount=1;
	$.ajax( {//top
		type : "POST",
		data : "books_name=" +books_name+"&books_path="+books_path+"&nowcount="+nowcount+"&interest"+interest,
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
