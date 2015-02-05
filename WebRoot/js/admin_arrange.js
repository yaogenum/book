var xmlHttp;
	function createXMLHttp(){
	if (window.XMLHttpRequest) {
		xmlHttp = new XMLHttpRequest();
	} else {
		xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
}
function delete_users(users_name){
createXMLHttp();
	xmlHttp.open("get", "servlet/Users_arrange?users_name=" + users_name);
	xmlHttp.onreadystatechange = deleteCallback;
	xmlHttp.send(null);
}

function delete_books(books_name,books_path,leibie){
	createXMLHttp();
	xmlHttp.open("get","servlet/Books_arrange?books_name="+books_name+"&books_path="+books_path+"&leibie="+leibie);
	xmlHttp.onreadystatechange=deleteCallback;
	xmlHttp.send(null);
}

function delete_music(music_name,users_name){
	createXMLHttp();
	xmlHttp.open("post","servlet/Music_arrange?music_name="+music_name+"&users_name="+users_name);
	xmlHttp.onreadystatechange=deleteCallback;
	xmlHttp.send(null);
}


function select_peopel(){
	createXMLHttp();
	var flag="ok";
	xmlHttp.open("get","servlet/Music_arrange?flag="+flag);
	xmlHttp.onreadystatechange=selectCallback;
	xmlHttp.send(null);
}

function select_music(){
	createXMLHttp();
	var flag="no";
	xmlHttp.open("get","servlet/Music_arrange?flag="+flag);
	xmlHttp.onreadystatechange=selectCallback;
	xmlHttp.send(null);
}

function selectCallback(){

if (xmlHttp.readyState == 4) {
		if (xmlHttp.status == 200) {
			var text=xmlHttp.responseText;
			document.getElementById("content").innerHTML=text;
			
		}
	}
}

function deleteCallback(){
if (xmlHttp.readyState == 4) {
		if (xmlHttp.status == 200) {
			var text=xmlHttp.responseText;
			alert(text);
		}
	}
}