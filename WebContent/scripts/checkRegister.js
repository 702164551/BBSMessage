
function check(){
		var username = document.getElementById("username");
		var password = document.getElementById("password");
		var affirm = document.getElementById("affirm");
		var email = document.getElementById("email");
		if(username.value == ""){
			alert("用户名不能为空！");
			return false;
		}else if(password.value == ""){
			alert("密码不能为空！");
			return false;
		}else if(password.value != affirm.value){
			alert("两次密码不同！");
			return false;
		}else if(email.value == ""){
			alert("邮箱不能为空！");
			return false;
		}
		return true;
	}