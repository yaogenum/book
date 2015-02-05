function validate(f) {
	/*if (!(/^\w{5,10}$/.test(f.users_name.value))) {
		alert("用户名必须是5-10位");
		f.users_name.focus()
		return false;
	}*/
	if (!(/^\w{5,10}$/.test(f.users_password.value))) {
		alert("密码必须是5-10位");
		f.users_password.focus()
		return false;
	}

	if (!(/^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/
			.test(f.email.value))) {
		alert('提示\n\n请输入有效的E_mail！');
		f.email.focus();
		return false;
	}
	if (bool == false) {
		alert("不允许非法操作");
		return false;
	}
	return true;
}
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
var users_name = Request['users_name'];*/

var xmlHttp;
function createXMLHttp() {
	if (window.XMLHttpRequest) {
		xmlHttp = new XMLHttpRequest();
	} else {
		xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
}

function check_password(password,users_name) {
	createXMLHttp();
	var passwords = password;
	xmlHttp.open("POST", "servlet/Indicate_password?users_name=" + users_name
			+ "&users_password=" + passwords);
	// 设置操作的回调函数
	xmlHttp.onreadystatechange = check_passwordCallback;
	xmlHttp.send(null);

}
function check_passwordCallback() {
	if (xmlHttp.readyState == 4) {
		// 调用完成
		if (xmlHttp.status == 200) {
			var mima = xmlHttp.responseText;
			var a = mima.substring(0, 1);
			//document.getElementById("message").innerHTML =mima;
			if (a == 1) {
				document.getElementById("message").innerHTML = "密码正确";
			} else {
				document.getElementById("message").innerHTML = "密码错误";
			}
		}
	}
}
/*
function name_indicate(users_name) {

	if (!(/^\w{5,10}$/.test(users_name))) {
		alert("用户名必须是5-10位");
	} else {
		createXMLHttp();
		var users = users_name;
		xmlHttp.open("POST", "servlet/Firstname_indicate?users_name=" + users);
		xmlHttp.onreadystatechange = name_indicateCallback;
		xmlHttp.send(null);
	}
}

function jiance(name_before) {

	if (name_before == users_name) {
		bool = true;
	} else {
		bool = false;
	}
	document.getElementById("infor").innerHTML = bool;
}*/

function name_indicateCallback() {

	if (xmlHttp.readyState == 4) {
		// 调用完成
		if (xmlHttp.status == 200) {
			var text = xmlHttp.responseText;
			document.getElementById("tishi").innerHTML = text;

		}
	}
}
var bool;