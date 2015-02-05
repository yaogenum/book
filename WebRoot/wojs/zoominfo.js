
$(document).ready(function()
{
	$('.galleryImage').hover(
		function()
		{
		
		$(this).find('img').animate({width:70,height:90, marginTop:5, marginLeft:10}, 500);
		   
		 },
		 function()
		 {
			 
			 $(this).find('img').animate({width:220,height:220, marginTop:0, marginLeft:0},300);
			 
		 });
});

                       
                   