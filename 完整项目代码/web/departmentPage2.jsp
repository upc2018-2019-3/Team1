<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="com.dao.*" %>
<%@page import="com.entity.*" %>
<%@page import="java.util.*" %>
<html>
<head>
    <title>部门管理页面</title>
</head>
<body>
<div class="hrms_dept_container">
    <!-- 导航栏-->
    <%@ include file="./commom/head2.jsp"%>


    <!-- 中间部分（左侧栏+表格内容） -->
    <div class="hrms_dept_body">
        <!-- 左侧栏 -->
        <%@ include file="./commom/leftsidebar2.jsp"%>

        <!-- 部门表格内容 -->
        <div class="dept_info col-sm-10">
            <div class="panel panel-success">
                <!-- 路径导航 -->
                <div class="panel-heading">
                    <ol class="breadcrumb">
                        <!-- <li><a href="#">部门管理</a></li> -->
                        <li class="active">部门管理</li>
                        <li class="active">部门信息</li>
                    </ol>
                </div>
                <!-- Table -->
                <table class="table table-bordered table-hover" id="dept_table">
                    <thead>
                        <th>部门编号</th>
                        <th>部门名称</th>
                        <th>部门负责人</th>
                        <th>上级部门</th>
                        <th>下级部门</th>
                    </thead>
                    <tbody>
                    <%department_formDao ud = new department_formDaoImpl();
		                List<department_form> userAll = ud.getdptAll();
		                request.setAttribute("userAll", userAll);
		                %>
                        <c:forEach items="${userAll}" var="dept">
                            <tr>
                                <td>${dept.aptId}</td>
                                <td>${dept.aptName}</td>
                                <td>${dept.dduty}</td>
                                <td>${dept.upaptId}</td>
                                <td>${dept.downaptId}</td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div><!-- /.panel panel-success -->
        </div><!-- /.dept_info -->
    </div><!-- /.hrms_dept_body -->

    <%@ include file="departmentAdd.jsp"%>
    <%@ include file="departmentUpdate.jsp"%>

    <!-- 尾部-->
    <%--<%@ include file="./commom/foot.jsp"%>--%>
    <div class="hrms_footer" style="text-align: center;">
        <address>
            <strong>Copyright&copy;A公司.Inc</strong><br>
            中国石油大学(华东)<br>
            <abbr title="Phone">TEL:</abbr> (00)6666-66s
        </address>
    </div>
</div><!-- /.hrms_dept_container -->
</body>
</html>
