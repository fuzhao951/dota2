var enter=document.getElementById("enter");
function loginindex(){
	var loginindex=document.getElementById("loginindex");
	if (loginindex.style.display=="block")
	{
		loginindex.style.display="none";
	}
	else{
		loginindex.style.display="block";
	}
}
function ggsmd(){
	var onf=document.getElementById("onf");
	var remember=document.getElementById("remember");
	if (onf.style.display=="block")
	{
		onf.style.display="none";
		remember.checked=false;
	}
	else{
		onf.style.display="block";
		remember.checked=true;
	}
}
function islogin(){
	if (localStorage.num==1)
	{
		enter.innerHTML=`<p>欢迎用户登录
							<a href="javascript:exitindex()" class="exit">退出</a>
						 </p>`
	}
	else{
		enter.innerHTML=`<p>您好,&nbsp;&nbsp;请&nbsp; 
						<a href="javascript:loginindex()">登录</a> 
						</p> 
						<span class="tt">登录后进入您的个人空间</span>`
	}
}
islogin();

function exitindex(){
	localStorage.num=0;
	location.reload();
}
function login(){
	var regphone=new RegExp(/^1[3-8]\d{9}$/g);
	var regemail=new RegExp(/^([0-9A-Za-z\-_\.]+)@([0-9a-z]+\.[a-z]{2,3}(\.[a-z]{2})?)$/g);
	var loginname="phone";
	if (!uname.value||!upwd.value)
	{
		alert("用户名密码不能为空")
	}
	else{
	if (regphone.test(uname.value))
	{
		loginname="phone";
		
	}
	else{
		if (regemail.test(uname.value))
		{
			loginname="email";
	
		}	
		else
		{
			alert("请输入正确的邮箱号码/手机号");
		}
	}
	var xhr=new XMLHttpRequest();
	xhr.onreadystatechange=function(){

		if (xhr.readyState==4&&xhr.status==200)
		{	
			var result=xhr.responseText;
			console.log(result);

			if (result=="1")
			{
				alert("登录成功");
				localStorage.num=1;
				location.href="/public/index.html"
			}
			else{
				alert("密码错误");
			}
		}
	}
	xhr.open("post","http://localhost:8080/user/login",true);
	xhr.setRequestHeader("Content-type","application/x-www-form-urlencoded");
	var formdata=loginname+"="+uname.value+"&upwd="+upwd.value;
	xhr.send(formdata);
	}
}