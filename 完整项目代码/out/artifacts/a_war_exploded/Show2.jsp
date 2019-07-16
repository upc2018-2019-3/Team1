<%@ page language="java" contentType="text/html; charset=utf-8"
  pageEncoding="utf-8"%>
<html>
<head><title>欢迎使用</title></head>
<body>
<script type="text/javascript">
    var errori ='<%=request.getParameter("error")%>';
    if(errori=='yes'){
        alert("两次输入密码不一致！");
        window.location.href="regist.jsp"
    }
    else if (errori=='yes1'){
        alert("用户名已存在！");
        window.location.href="regist.jsp"
    }
    else{
        alert("注册成功!");
        window.location.href="indexs.jsp"
    }
</script>
</body>
</html>