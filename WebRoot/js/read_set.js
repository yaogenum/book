var x = "ok";
/*
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
var leibie = Request['leibie'];
*/
function changeColor(){  
var title = document.getElementById("content").value;  
var select = document.getElementById("selector").value; 
	switch(select){
		case "red":document.getElementById("content").style.color="red";break;
		case "green":document.getElementById("content").style.color="green"; break;  
		case "blue":document.getElementById("content").style.color="blue"; break;  
		case "yellow":document.getElementById("content").style.color="yellow"; break;  
		case "black":document.getElementById("content").style.color="black"; break;  
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
			var oDiv = document.getElementById("content");
			var beijing=document.getElementById("beijing").value;
			//document.body.style.backgroundColor="#CCFFFF";
			switch(beijing){
				case "heise":oDiv.style.backgroundImage="url(background/katong.jpg)";break;
				case "lanse":oDiv.style.backgroundImage="url(background/shujia.jpg)";break;
				case "qingse":oDiv.style.backgroundImage="url(background/chuyang.jpg)";break;
				case "chengse":oDiv.style.backgroundImage="url(background/fanggehei.jpg)";break;
				case "hong":oDiv.style.backgroundImage="url(background/qianlan.jpg)";break;
				case "mohua":oDiv.style.backgroundImage="url(background/mohua.jpg)";break;
			}
			//document.getElementById("b").style.backgroundColor="red";
			//document.body.style.backgroundImage="background/shujia.jpg";
	}

	
		
	function continue_read(users_names){
	
		
		if(users_names==""||users_names=="000000"||users_names=="undefined"){
			alert("游客不能加入书签！--！");
		}
		else{
		createXMLHttp();
		xmlHttp.open("POST", "servlet/Add_tag");
				//?books_path=" + books_path+ "&nowcount=" +nowcount + "&books_name=" + books_name+"&users_name="+users_name
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
	
	
	function play_musics(shuliang){
		
	nowcount=shuliang;
	
	createXMLHttp();
	xmlHttp.open("POST", "servlet/Save_records");
	xmlHttp.onreadystatechange = save_recordsCallback;
	xmlHttp.send(null);
	
	read_next();
	
	
	/*	if(adds!=0){
			document.getElementById("errors").innerHTML="已搜索音乐！";

		}	
		else{
			document.getElementById("errors").innerHTML="亲，暂无歌曲信息";
			if(users_name==null||users_name==""||users_name=="undefined"){
			alert("你当前是游客,我们将不会保存你的背景音乐设置记录！");
		}
		else{	}
		}   */
		
	//alert("欢迎宁使用，我们将会自动保存您的播放记录！");
	
		
	$("#bod").scrollTop(10);
		$("#bod").scrollTop(10);
	}
	
	
	function save_recordsCallback() {
	if (xmlHttp.readyState == 4) {
		if (xmlHttp.status == 200) {
			//var text=xmlHttp.responseText;
		//	alert(text);
		}
	}
}
	
	function createXMLHttp(){
	if (window.XMLHttpRequest) {
		xmlHttp = new XMLHttpRequest();
	} else {
		xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
}
	
	
	
	
	
	
	


	
	
	
	
	
