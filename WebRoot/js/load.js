function validate(f) {
	if (!(/^\w{2,10}$/.test(f.books_name.value))) {
		alert("书名必须是2-10位");
		f.books_name.focus()
		return false;
	}
	if (!(/^\w{2,10}$/.test(f.books_tag.value))) {
		alert("书签必须是2-10位");
		f.books_tag.focus()
		return false;
	}
	var file = f.file.value;
	if (file == "") {
		alert("请选择文件");
		f.file.focus();
		return false;
	}
	var regex = /\.txt$/gi;
	var regex1 = /\.doc$/gi;
	var regex2 = /\.html$/gi;
	var regex3 = /\.java$/gi;

	if ((regex.test(f.file.value) == false)
			&& (regex1.test(f.file.value) == false)
			&& (regex2.test(f.file.value) == false)
			&& (regex3.test(f.file.value) == false)) {
		alert("文件格式不对");
		f.file.focus();
		return false;
	}
	
	var regex4=/\.jpg$/gi;
	if(regex4.test(f.books_pic.value)==false){
		alert("图片格式需要为jpg");
		f.books_pic.focus();
		return false;
	}
	
	return true;
}
var flag="no";
function get_leibie(leibie){
	document.getElementById("interest").value=leibie;
	flag=leibie;
	
	
}
function bool_leibie(f){
	
	if(flag=="no"){
		alert("请选择类别");
		return false;
	}
	else{
		return true;
	}
	
	
	
}

