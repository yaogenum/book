function musics_set(music_names, users_names) {

	$(document).ready(function() {

		$("#set").click(function() {
			$.post("servlet/Set_music", {
				users_name : "yaoge22",
				music_name : "123"
			}, function(data, status) {
				alert("Êý¾Ý" + data + "\n×´Ì¬" + status);
			});

		});
			
	});

}

var xmlHttp;
	function createXMLHttp(){
	if (window.XMLHttpRequest) {
		xmlHttp = new XMLHttpRequest();
	} else {
		xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
}

function music_set(music_names){
	createXMLHttp();
	xmlHttp.open("POST","servlet/Set_music?music_name="+music_names);
	xmlHttp.onreadystatechange=music_set_Callback;
	xmlHttp.send(null);
}
function music_set_Callback(){
	if (xmlHttp.readyState == 4) {
		if (xmlHttp.status == 200) {
			var text=xmlHttp.responseText;
			alert(text);
		}
	}
}
