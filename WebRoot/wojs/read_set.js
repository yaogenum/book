

var x = "ok";
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
var users_name = Request['users_name'];　
var books_path = Request['books_path'];
var nowcount = Request['nowcount'];
var books_name = Request['books_name'];

function changeColor()  
　　{  
		
		
　　　var title = document.getElementById("content").value;  
　　　var select = document.getElementById("selector").value; 
	switch(select){
		case "red":document.getElementById("content").style.color="red";break;
		case "green":document.getElementById("content").style.color="green"; break;  
		case "blue":document.getElementById("content").style.color="blue"; break;  
		case "yellow":document.getElementById("content").style.color="yellow"; break;  
		default:document.getElementById("content").style.color="black";
	} 
　　} 

　　function changeStyle()  
　　{  
　　var title = document.getElementById("content").value;  
　　var select = document.getElementById("selector2").value;  
	switch(select){
		case "one":document.getElementById("content").style.fontFamily="Times New Roman";break;
		case "two":document.getElementById("content").style.fontFamily="隶书";break;  
		case "three":document.getElementById("content").style.fontFamily="宋体"; break;  
		
	} 
　　
　　}  

	function changeSize(){
		var title =document.getElementById("content").value;
		var select = document.getElementById("selector3").value; 
		switch(select){
		case "one":document.getElementById("content").style.fontSize=15+"px";break;
		case "two":document.getElementById("content").style.fontSize=20+"px"; break;  
		case "three":document.getElementById("content").style.fontSize=30+"px"; break;  
		} 
	}
	
	function changeBeijing(){
			var beijing=document.getElementById("beijing").value;
			document.body.style.backgroundColor="#CCFFFF";
			switch(beijing){
				case "heise":document.body.style.backgroundImage="url(../images/read1.jpg)";break;
				case "lanse":document.body.style.backgroundImage="url(../images/3.jpg)";break;
				case "qingse":document.body.style.backgroundImage="url(../images/4.jpg)";break;
				case "chengse":document.body.style.backgroundImage="url(../images/5.jpg)";break;
				case "hong":document.body.style.backgroundImage="url(../images/8.jpg)";break;
			}
			//document.getElementById("b").style.backgroundColor="red";
			//document.body.style.backgroundImage="background/shujia.jpg";
	}

	
		
	function continue_read(){
	
	
		if(users_name==null){
			alert("游客不能加入书签！--！");
		}
		else{
		createXMLHttp();
		xmlHttp.open("POST", "servlet/Add_tag?books_path=" + books_path
				+ "&nowcount=" +nowcount + "&books_name=" + books_name+"&users_name="+users_name);
		xmlHttp.onreadystatechange = scontinue_readCallback;
		
		xmlHttp.send(null);
		}
	}
	function scontinue_readCallback(){
		
		if (xmlHttp.readyState == 4) {
		// 调用完成
		
			if (xmlHttp.status == 200){
				var increase = xmlHttp.responseText;
				alert(increase);
			}
		}
	}
	
	var song_name;
	var songer;
	
	function createXMLHttp(){
	if (window.XMLHttpRequest) {
		xmlHttp = new XMLHttpRequest();
	} else {
		xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
}
	
	function get_name(song_names){
		song_name=song_names;	
	}
	
	function get_songer(songers){
		songer=songers;
	}
	
	
	function sou_music(){
		
		createXMLHttp();
		xmlHttp.open("POST", "servlet/MusicServlet?person_name="+songer+"&music_name="+song_name);
		//	xmlHttp.open("POST", "servlet/MusicServlet?person_name=刘德华&music_name=冰雨");
		xmlHttp.onreadystatechange=sou_musicCallback;
		xmlHttp.send(null);
	} 		 
	function sou_musicCallback(){
	
		
		if (xmlHttp.readyState == 4) {
		alert(xmlHttp.status);
			if (xmlHttp.status == 200){
				
				var jie = xmlHttp.responseText;
				alert(jie);
			}
		}
	}
	
	function play_music(){
		if(users_name==null){
			alert("你当前是游客,我们将不会保存你的背景音乐设置记录！");
		}
		else{
			alert("欢迎"+users_name+"使用，我们将会自动保存您的播放记录！");
		}
	}
	
