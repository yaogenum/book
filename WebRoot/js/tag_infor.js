



var xmlHttp;
function createXMLHttp() {
	if (window.XMLHttpRequest) {
		xmlHttp = new XMLHttpRequest();
	} else {
		xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
}

function tag_information(users_name,books_name) {

	createXMLHttp();
	xmlHttp.open("post", "servlet/Delete_tag?users_name=" + users_name
			+"&books_name=" + books_name);
	xmlHttp.onreadystatechange = tag_informationCallback;
	xmlHttp.send(null);

}
function tag_informationCallback() {
	if (xmlHttp.readyState == 4) {
		
		if (xmlHttp.status == 200) {
			var text=xmlHttp.responseText;
			alert(text);
		}
	}
}
function read_read(books_name,books_path,nowcount){

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