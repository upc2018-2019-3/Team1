<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="com.dao.*" %>
<%@page import="com.entity.*" %>
<%@page import="java.util.*" %>
<html>
<head>
    <title>岗位管理页面</title>
</head>
<body>
<div class="hrms_sta_container">
    <!-- 导航栏-->
    <%@ include file="./commom/head2.jsp"%>


    <!-- 中间部分（左侧栏+表格内容） -->
    <div class="hrms_sta_body">
        <!-- 左侧栏 -->
        <%@ include file="./commom/leftsidebar2.jsp"%>
        <!-- 部门表格内容 -->
        <div class="sta_info col-sm-10">
            <div class="panel panel-success">
                <!-- 路径导航 -->
                <div class="panel-heading">
                    <ol class="breadcrumb">
                        <!-- <li><a href="#">岗位管理</a></li> -->
                        <li class="active">岗位管理</li>     
                        <li class="active">岗位信息</li>
                    </ol>
                </div>
                <!-- Table -->
                <table class="table table-bordered table-hover" id="sta_table">
                    <thead>
                        <th>岗位编号</th>
                        <th>岗位名称</th>
                        <th>建立日期</th>
                        <th>岗位职责</th>
                        <th>岗位工资</th>
                        <th>部门号</th>
                    </thead>
                    <tbody>
                    <%stationDao ud = new stationDaoImpl();
		                List<station> userAll = ud.getdptAll();
		                request.setAttribute("userAll", userAll);
		                %>
                        <c:forEach items="${userAll}" var="sta">
                            <tr>
                                <td>${sta.sid}</td>
                                <td>${sta.sname}</td>
                                <td>${sta.sdate}</td>
                                <td>${sta.sfunction}</td>
                                <td>${sta.swages}</td>
                                <td>${sta.did}</td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>             
            </div><!-- /.panel panel-success -->
        </div><!-- /.dept_info -->
    </div><!-- /.hrms_dept_body -->

    <%@ include file="stationAdd.jsp"%>
    <%@ include file="stationUpdate.jsp"%>
    <!-- 尾部-->
    <%@ include file="./commom/foot.jsp"%>
</div><!-- /.hrms_dept_container -->
</body>
</html>
