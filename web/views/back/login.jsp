<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>后台登录界面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	
	<script language="JavaScript" src="<%=basePath%>/resources/back/js/jquery.js"></script>
	<script src="<%=basePath%>/resources/back/js/cloud.js" type="text/javascript"></script>

	<script language="javascript">
		$(function(){
  	 	$('.loginbox').css({'position':'absolute','left':($(window).width()-692)/2});
		$(window).resize(function(){  
 	    $('.loginbox').css({'position':'absolute','left':($(window).width()-692)/2});
   		})  
	});  
	</script> 

  <link rel="stylesheet" href="<%=basePath%>/resources/back/css/style.css" type="text/css"></link></head>
  
  <body style="background-color:#1c77ac; background-image:url(<%=basePath%>/resources/back/images/light.png); background-repeat:no-repeat; background-position:center top; overflow:hidden;">

    <div id="mainBody">
      <div id="cloud1" class="cloud"></div>
      <div id="cloud2" class="cloud"></div>
    </div>  


<div class="logintop">    
    <span>欢迎登录后台管理界面平台</span>    
    <ul>
    <li><a href="#">回首页</a></li>
    <li><a href="#">帮助</a></li>
    <li><a href="#">关于</a></li>
    </ul>    
    </div>
    
    <div class="loginbody">
    
    <span style="height:100px"></span> 
       
    <div class="loginbox">
    
    <form action="${pageContext.request.contextPath}/back/BackLogin_checkLogin.action" method="post" name="form">
    <ul>
    <li><input name="userName" type="text" class="loginuser" value="admin" onclick="JavaScript:this.value=''"/></li>
    <li><input name="passWord" type="password" class="loginpwd" value="密码" onclick="JavaScript:this.value=''"/></li>
    <li><input name="" type="button" class="loginbtn" value="登录"  onclick="javascript:form.submit()"  />
    		<!-- <label><input name="" type="checkbox" value="" checked="checked" />记住密码</label>
    		<label><a href="#">忘记密码？</a></label> -->
    	<input name="" type="button" class="loginbtn" value="返回前台"  onclick="javascript:window.location='#'"  />
    </li>
    </ul>
    </form>
    
    
    </div>
    
    </div>
    
    
    
    <div class="loginbm">迅腾缘组</div>
	</body>
</html>
