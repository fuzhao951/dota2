var n1,n2,n3,n4,n5,n6;
var regphone=new RegExp(/^1[3-8]\d{9}$/g);
var regemail=new RegExp(/^([0-9A-Za-z\-_\.]+)@([0-9a-z]+\.[a-z]{2,3}(\.[a-z]{2})?)$/g);
function void1(){
	var phonereg=document.getElementById("phonereg");
	var emailreg=document.getElementById("emailreg");
	var phoneform=document.getElementById("phoneform");
	var emailform=document.getElementById("emailform");
	phonereg.style.backgroundColor="#4c5F71";
	emailreg.style.backgroundColor="#2f3a45";
	phonereg.classList.add("didi");
	emailreg.classList.remove("didi");
	phoneform.style.display="block";
	emailform.style.display="none";
}
function void2(){
	var phonereg=document.getElementById("phonereg");
	var emailreg=document.getElementById("emailreg");
	var phoneform=document.getElementById("phoneform");
	var emailform=document.getElementById("emailform");
	phonereg.style.backgroundColor="#2f3a45";
	emailreg.style.backgroundColor="#4c5F71";
	phonereg.classList.remove("didi");
	emailreg.classList.add("didi");
	phoneform.style.display="none";
	emailform.style.display="block";
}
function phone1yz(){
	var phone1=document.getElementById("phone1");
	var phone1pd=document.getElementById("phone1pd");

	if (!phone1.value)
	{
		phone1pd.innerHTML="<i></i>不能为空";
		n1=0;
	}
	else {
		if (regphone.test(phone1.value)){
			regphone.lastIndex = 0;
			var xhr=new XMLHttpRequest();
			xhr.onreadystatechange=function(){
				if (xhr.readyState==4&&xhr.status==200)
				{
				var result=xhr.responseText;
				console.log(result);
				if (result=="1")
				{
					phone1pd.innerHTML="<i></i>已存在";
					n1=0;
				}
				else{
					phone1pd.innerHTML="";
					n1=1;
				}
			}
		}
		xhr.open("get","http://localhost:8080/user/regname?phone="+phone1.value,true);
		xhr.send();
	}
	else if(!regphone.test(phone1.value))
	{
		phone1pd.innerHTML="<i></i>格式不正确";
		n1=0;
	}
}
}
function phonepwdyz(){
	var phonepwd=document.getElementById("phonepwd");
	var phonepwdpd=document.getElementById("phonepwdpd");
	if (!phonepwd.value)
	{
		phonepwdpd.innerHTML="<i></i>不能为空";
		n2=0;
	}
	else if (phonepwd.value.length<15&&phonepwd.value.length>8)
	{
		phonepwdpd.innerHTML="";
		n2=1;
	}
	else{
		phonepwdpd.innerHTML="<i></i>密码长度不正确";
		n2=0;
	}
}
function phonepwd1yz(){
	var phonepwd=document.getElementById("phonepwd");
	var phonepwd1=document.getElementById("phonepwd1");
	var phonepwdpd1=document.getElementById("phonepwdpd1");
	if (!phonepwd1.value)
	{
		phonepwdpd1.innerHTML="<i></i>不能为空";
		n3=0;
	}
	else if (phonepwd.value==phonepwd1.value)
	{
		phonepwdpd1.innerHTML="";
		n3=1;
	}
	else{
		phonepwdpd1.innerHTML="<i></i>两次密码不一致";
		n3=0;
	}
}
function phonenameyz(){
	var phonename=document.getElementById("phonename");
	var phonenamepd=document.getElementById("phonenamepd")
	if (!phonename.value)
	{
		phonenamepd.innerHTML="<i></i>不能为空";
		n4=0;
	}
	else if (phonename.value.length>10)
	{
		phonenamepd.innerHTML="<i></i>名字格式不正确";
		n4=0;
	}
	else{
		phonenamepd.innerHTML="";
		n4=1;
	}
}
function phoneIDyz(){
	var phoneID=document.getElementById("phoneID");
	var phoneIDpd=document.getElementById("phoneIDpd");
	if (!phoneID.value)
	{
		phoneIDpd.innerHTML="<i></i>不能为空";
	}
	else if (phoneID.value.length==18)
	{
		if (!isNaN(Number(phoneID.value.slice(0,17))))
		{
			phoneIDpd.innerHTML="";
			n5=1;
		}
		else{
			phoneIDpd.innerHTML="<i></i>格式不正确";
			n5=0;
		}
	}
	else{
		phoneIDpd.innerHTML="<i></i>格式不正确";
		n5=0
	}
}
function phonereg(){
	var phone1=document.getElementById("phone1");
	var phonepwd=document.getElementById("phonepwd");
	var phonename=document.getElementById("phonename");
	var phoneID=document.getElementById("phoneID");
	console.log(n1);
	if (n1==1&&n2==1&&n3==1&&n4==1&&n5==1)
	{
		console.log(1231);
		var xhr=new XMLHttpRequest();
		xhr.onreadystatechange=function(){
			if (xhr.readyState==4&xhr.status==200)
			{
				var result=xhr.responseText;
				console.log(1);
				if (result==1)
				{
					alert("注册成功");
					location.href="http://127.0.0.1:5501/public/index.html";
				}
			}
		}
		xhr.open("post","http://localhost:8080/user/reg",true);
		xhr.setRequestHeader("Content-type","application/x-www-form-urlencoded");
		var formdata="phone="+phone1.value+"&password="+phonepwd.value+"&true_name="+phonename.value+"&id_card="+phoneID.value;
		xhr.send(formdata);
	}
	else{
		alert("请输入正确信息");
	}
}
/*邮箱注册*/
function emailyz(){
	var email=document.getElementById("email");
	var emailpd=document.getElementById("emailpd");
	if (!email.value)
	{
		emailpd.innerHTML="<i></i>不能为空";
	}
	else{
		if (regemail.test(email.value))
		{
			console.log(regemail)
			regemail.lastIndex=0;
			var xhr=new XMLHttpRequest();
			xhr.onreadystatechange=function(){
				if (xhr.readyState==4&&xhr.status==200)
				{
					var result=xhr.responseText;
					if (result==1)
					{
						emailpd.innerHTML="<i></i>已存在";
						n1=0;
					}
					else if (result==0)
					{
						emailpd.innerHTML="";
						n1=1;
					}
				}
			}
			xhr.open("get","http://localhost:8080/user/emailyz?email="+email.value,true);
			xhr.send();
		}
		else if(!regemail.test(email.value)){
			emailpd.innerHTML="<i></i>格式错误";
			n1=0;
		}
	}
}
function emailpwdyz(){
	var phonepwd=document.getElementById("emailpwd");
	var phonepwdpd=document.getElementById("emailpwdpd");
	if (!phonepwd.value)
	{
		phonepwdpd.innerHTML="<i></i>不能为空";
		n2=0;
	}
	else if (phonepwd.value.length<15&&phonepwd.value.length>8)
	{
		phonepwdpd.innerHTML="";
		n2=1;
	}
	else{
		phonepwdpd.innerHTML="<i></i>密码长度不正确";
		n2=0;
	}
}
function emailpwd1yz(){
	var phonepwd=document.getElementById("emailpwd");
	var phonepwd1=document.getElementById("emailpwd1");
	var phonepwdpd1=document.getElementById("emailpwdpd1");
	if (!phonepwd1.value)
	{
		phonepwdpd1.innerHTML="<i></i>不能为空";
		n3=0;
	}
	else if (phonepwd.value==phonepwd1.value)
	{
		phonepwdpd1.innerHTML="";
		n3=1;
	}
	else{
		phonepwdpd1.innerHTML="<i></i>两次密码不一致";
		n3=0;
	}
}
function emailnameyz(){
	var phonename=document.getElementById("emailname");
	var phonenamepd=document.getElementById("emailnamepd")
	if (!phonename.value)
	{
		phonenamepd.innerHTML="<i></i>不能为空";
		n4=0;
	}
	else if (phonename.value.length>10)
	{
		phonenamepd.innerHTML="<i></i>名字格式不正确";
		n4=0;
	}
	else{
		phonenamepd.innerHTML="";
		n4=1;
	}
}
function emailIDyz(){
	var phoneID=document.getElementById("emailID");
	var phoneIDpd=document.getElementById("emailIDpd");
	if (!phoneID.value)
	{
		phoneIDpd.innerHTML="<i></i>不能为空";
	}
	else if (phoneID.value.length==18)
	{
		if (!isNaN(Number(phoneID.value.slice(0,17))))
		{
			phoneIDpd.innerHTML="";
			n5=1;
		}
		else{
			phoneIDpd.innerHTML="<i></i>格式不正确";
			n5=0;
		}
	}
	else{
		phoneIDpd.innerHTML="<i></i>格式不正确";
		n5=0
	}
}
function phone2yz(){
	var phone2=document.getElementById("phone2");
	var phone2pd=document.getElementById("phone2pd");
	if (!phone2.value)
	{
		phone2pd.innerHTML="<i></i>不能为空";
		n1=0;
	}
	else {
		if (regphone.test(phone2.value)){
			regphone.lastIndex = 0;
		var xhr=new XMLHttpRequest();
		xhr.onreadystatechange=function(){
			if (xhr.readyState==4&&xhr.status==200)
			{
				var result=xhr.responseText;
				if (result=="1")
				{
					phone2pd.innerHTML="<i></i>已存在";
					n1=0;
				}
				else{
					phone2pd.innerHTML="";
					n1=1;
				}
			}
		}
		xhr.open("get","http://localhost:8080/user/regname?phone="+phone1.value,true);
		xhr.send();
	}
	else if(!regphone.test(phone2.value))
	{
		phone2pd.innerHTML="<i></i>格式不正确";
		n1=0;
	}
}
}
function emailreg(){
	var phone1=document.getElementById("phone2");
	var phonepwd=document.getElementById("emailpwd");
	var phonename=document.getElementById("emailname");
	var phoneID=document.getElementById("emailID");
	var email=document.getElementById("email");
	console.log(phone1.value);
	if (n1==1&&n2==1&&n3==1&&n4==1&&n5==1)
	{
		var xhr=new XMLHttpRequest();
		xhr.onreadystatechange=function(){
			if (xhr.readyState==4&xhr.status==200)
			{
				var result=xhr.responseText;
				console.log(1);
				if (result==1)
				{
					alert("注册成功");
					location.href="index.html";
				}
			}
		}
		xhr.open("post","http://localhost:8080/user/reg",true);
		xhr.setRequestHeader("Content-type","application/x-www-form-urlencoded");
		var formdata="phone="+phone1.value+"&password="+phonepwd.value+"&true_name="+phonename.value+"&id_card="+phoneID.value+"&email="+email.value;
		xhr.send(formdata);
	}
	else{
		alert("请填入正确信息");
	}
}