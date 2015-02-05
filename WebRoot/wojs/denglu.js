 <script>
function myFunction()
{
var x=document.getElementById("password").value;
if(x.length<6)
	{
	alert("密码不得少于六位");
	}
	else if(x.length>12)
	{
	alert("密码不得多于六位");
	}
}
</script>// JavaScript Document