<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="com.dao.*" %>
<%@page import="com.entity.*" %>
<%@page import="java.util.*" %>
<%@page import="com.dao.EmployeeDao" %>
<html>
<head>
    <title>员工管理页面</title>
</head>
<body>
<div class="hrms_container">
    <!-- 导航条 -->
    <%@ include file="./commom/head.jsp"%>

    <!-- 中间部分（包括左边栏和员工/部门表单显示部分） -->
    <div class="hrms_body" style="position:relative; top:-15px;">

        <!-- 左侧栏 -->
        <%@ include file="./commom/leftsidebar.jsp"%>

        <!-- 中间员工表格信息展示内容 -->
        <div class="emp_info col-sm-10">

            <div class="panel panel-success">
                <!-- 路径导航 -->
                <div class="panel-heading">
                    <ol class="breadcrumb">
                        <li><a href="#">员工管理</a></li>
                        <li class="active">员工信息</li>
                    </ol>
                </div>
                <!-- Table -->
                <table class="table table-bordered table-hover" id="emp_table">
                    <thead>
                    <tr>
                    <th>员工编号</th>
                    <th>员工姓名</th>
                    <th>性别</th>
                    <th>民族</th>
                    <th>年龄</th>
                    <th>学历</th>
                    <th>专业</th>
                    <th>院校</th>
                    <th>外语能力</th>
                    <th>入职日期</th>
                    <th>部门号</th>
                    <th>岗位号</th>
                    <th>状态</th>
                    </tr>
                    </thead>
                    <tbody>
                        <%EmployeeDao ud = new EmployeeDaoImpl();
		                List<Employee> userAll = ud.getEmployeeAll();
		                request.setAttribute("userAll", userAll);
		                %>
		                
                        <c:forEach items="${userAll}" var="l">
                            <tr>
                                <td>${l.eid}</td>
                                <td>${l.ename}</td>
                                <td>${l.esex=="F"?"女":"男"}</td>
                                <td>${l.enation}</td>
                                <td>${l.eage}</td>
                                <td>${l.eedu}</td>
                                <td>${l.eprofessional}</td>
                                <td>${l.eschool}</td>
                                <td>${l.elanguage}</td>
                                <td>${l.eworkerdate}</td>
                                <td>${l.did}</td>
                                <td>${l.sid}</td>
                                <td>${l.state}</td>
                                <td>
                                   <a role="button" class="btn btn-primary emp_edit_btn" data-toggle="modal" data-target=".emp-update-modal">编辑</a>
                                   <a href="DeleteServlet?eid=${l.eid}" role="button" class="btn btn-danger emp_delete_btn">删除</a> 
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div><!-- /.panel panel-success -->
        </div><!-- /.emp_info -->

        <!-- 尾部 -->
        <%@ include file="./commom/foot.jsp"%>
    </div><!-- /.hrms_body -->
</div><!-- /.container -->

<%@ include file="employeeAdd.jsp"%>
<%@ include file="employeeUpdate.jsp"%>
</body>
</html>
