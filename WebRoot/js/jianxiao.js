

$(document).ready(function(){
	$(".level1 > a").click(function(){
		$(this).addClass("current")   
		.next().show()                
		.parent().siblings().children("a").removeClass("current")       
		.next().hide();               
		return false;
	});
});



function read_read(books_name,books_path,interest){

	var count=1;
	$.ajax( {//top
		type : "GET",
		data : "books_name=" +books_name+"&books_path="+books_path+"&nowcount="+count+"&interest="+interest,
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

