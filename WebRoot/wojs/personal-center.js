
$(document).ready(function(){
	$(".level1 > a").click(function(){
		$(this).addClass("current")   
		.next().show()                
		.parent().siblings().children("a").removeClass("current")       
		.next().hide();               
		return false;
	});
});// JavaScript Document
function slide(id){
	$(document).ready(function(){
			 $("#"+id).animate({
				height:'toggle'
			});
	});
	
}

function listen(name){

	document.getElementById("c").src=name;
}
