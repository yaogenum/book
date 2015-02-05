//初始化所有页面数据
var tuijian = new Array();
	$.ajax( {//负责佳书推荐，最新上传
		type : "GET",
		data : "flag=" +"p",
		url : "servlet/Shouye",
		dataType : "json",
		success : function(data, status) {
				var a=0;
				for(var i=0;i<70;i=i+10){
						document.getElementById(a).innerHTML="【书名】"+data[0+i];
						var author1="author"+i;
						var time1="time"+i;
						document.getElementById(author1).innerHTML="【作者】"+data[2+i];
						document.getElementById(time1).innerHTML="【时间】"+data[4+i];
			//	document.getElementById(a).href="book/read.jsp?books_path="+data[5+i]+"&nowcount="+1+"&books_name="+data[0+i];
						
				document.getElementById(a).href="book/read.jsp";
				a++; 	
				}
				
				var b=7;
				var e=0;
				for(var i=70;i<140;i=i+10){
				
				var c=b*100;
				tuijian[e]=data[0+i];
				document.getElementById(c).src=data[7+i];
				document.getElementById(b).href="book/read.jsp";
				b++;
				e++;
				}
				
				
				
		},
		error : function(XMLHttpRequest, textStatus, errorThrown) {
			alert(XMLHttpRequest.status);
			alert(XMLHttpRequest.readyState);
			alert(textStatus);
		}
	});
	
	
		$.ajax( {//资料分类
		type : "POST",
		data : "flag=" +"ok",
		url : "servlet/Shouye",
		dataType : "json",
		success : function(data, status) {
				var a=100;
				for(var i=0;i<350;i=i+10){
				document.getElementById(a).innerHTML=data[0+i];		
				document.getElementById(a).href="book/read.jsp";
				
				a++;
				}
				
		},
		error : function(XMLHttpRequest, textStatus, errorThrown) {
			alert(XMLHttpRequest.status);
			alert(XMLHttpRequest.readyState);
			alert(textStatus);
		}
	});
	
	
		$.ajax( {//top
		type : "GET",
		data : "flag=" +"no",
		url : "servlet/Shouye_top",
		dataType : "json",
		success : function(datas, status) {
			
			var a=14;
				for(var i=0;i<6;i++){
				document.getElementById(a).innerHTML="<div style='float:left;width:160px;'>姓名:"+datas[i]+"</div><div style='margin-left:10px;float:left'>积分:"+datas[i+6];		
				a++;
				
				}
			
		},
		error : function(XMLHttpRequest, textStatus, errorThrown) {
			alert(XMLHttpRequest.status);
			alert(XMLHttpRequest.readyState);
			alert(textStatus);
		}
	});
	
	
		$.ajax( {//top
		type : "POST",
		data : "flag=" +"no",
		url : "servlet/Shouye_top",
		dataType : "json",
		success : function(datas, status) {
			var amount=datas.length/2;
			var a=20;
				for(var i=0;i<amount;i++){
				
				document.getElementById(a).innerHTML="<div style='float:left;width:160px;'>姓名:"+datas[i]+"</div><div style='margin-left:10px;float:left'>时间:</div>"+datas[i+amount]+"分钟";		
				a++;
				
				}
			
		},
		error : function(XMLHttpRequest, textStatus, errorThrown) {
			alert(XMLHttpRequest.status);
			alert(XMLHttpRequest.readyState);
			alert(textStatus);
		}
	});
	
	
	$.ajax( {//top
		type : "POST",
		data : "flag=" +"no",
		url : "servlet/dongtai",
		dataType : "json",
		success : function(datas, status) {
			
			var a=151;
				for(var i=0;i<12;i=i+4){
				document.getElementById(a).innerHTML="【帖子】"+datas[i+1];
				document.getElementById(a).href="jsp/forum.jsp?pid="+datas[i]+"&&users_name="+"111111";
				a++;
				
				}
			
		},
		error : function(XMLHttpRequest, textStatus, errorThrown) {
			alert(XMLHttpRequest.status);
			alert(XMLHttpRequest.readyState);
			alert(textStatus);
		}
	});
	
	function tuichu(name){
		
		$.ajax( {//top
		type : "GET",
		data : "users_name=" +name,
		url : "servlet/LoginForm",
		dataType : "Text",
		success : function(datas, status) {
			alert("已退出!");
			window.location.href='shouye.jsp';
			
		},
		error : function(XMLHttpRequest, textStatus, errorThrown) {
			alert(XMLHttpRequest.status);
			alert(XMLHttpRequest.readyState);
			alert(textStatus);
		}
		});
	
	}
//	var count=1;
function read_read(de,interest){

var dizhis=de.href;
var id=de.id;

var Request = new Object();
Request = GetRequest(dizhis);

var books_path = Request['books_path'];
var books_name = Request['books_name'];
var nowcount = Request['nowcount'];

var name_book=de.innerHTML;
	
	
	$.ajax( {//top
		type : "GET",
		data : "books_name=" +name_book+"&interest="+interest,
		url : "servlet/Top_ready",
		dataType : "Text",
		success : function(datas, status) {
				
		},
		error : function(XMLHttpRequest, textStatus, errorThrown) {
			alert(XMLHttpRequest.status);
			alert(XMLHttpRequest.readyState);
			alert(textStatus);
		}
	});
	document.getElementById(id).href="book/read.jsp";
	
	
}

function GetRequest(dizhi) {
	var url = dizhi;
	
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



function read_reads(de,interest){

	$.ajax( {//top
		type : "GET",
		data : "books_name=" +tuijian[de]+"&interest="+interest,
		url : "servlet/Top_ready",
		dataType : "Text",
		success : function(datas, status) {
				
		},
		error : function(XMLHttpRequest, textStatus, errorThrown) {
			alert(XMLHttpRequest.status);
			alert(XMLHttpRequest.readyState);
			alert(textStatus);
		}
	});
	document.getElementById(id).href="book/read.jsp";
	
	
}

	
	
	