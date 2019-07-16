<%@ page language="java" contentType="text/html; charset=utf-8"
  pageEncoding="utf-8"%>
<html>
<head><title>欢迎使用</title></head>
<body>
<script type="text/javascript">
     var errori ='<%=request.getParameter("error")%>';
     //var select ='<%=request.getParameter("select")%>';
     var isMan ='<%=request.getParameter("isMan")%>';
     if(errori=='yes'){
     alert("登录失败!请检查账号密码是否输入错误");
     window.location.href="indexs.jsp"
     //response.sendRedirect("index.jsp");
     }
     //用户名为1开头的有管理权限
     else if (isMan=="true") {
    	 alert("登录成功!");
    	 window.location.href="main.jsp"
     }
     //用户名为2开头的无管理权限
     else if(isMan=="false"){
         alert("登录成功!");
         window.location.href="main2.jsp"
     }
</script>
</body>
</html>