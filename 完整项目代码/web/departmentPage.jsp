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
    <%@ include file="./commom/head.jsp"%>


    <!-- 中间部分（左侧栏+表格内容） -->
    <div class="hrms_dept_body">
        <!-- 左侧栏 -->
        <%@ include file="./commom/leftsidebar.jsp"%>

        <!-- 部门表格内容 -->
        <div class="dept_info col-sm-10">
            <div class="panel panel-success">
                <!-- 路径导航 -->
                <div class="panel-heading">
                    <ol class="breadcrumb">
                        <!-- <li><a href="#">部门管理</a></li> -->
                        <li class="active">部门管理</li>
                        <li class="active">部门信息</li>
                      <li role="presentation" style="position:absolute;right:50px"><a href="#" class="dept_add_btn" data-toggle="modal" data-target=".dept-add-modal">部门新增</a></li>  
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
                                <td>
                                    <a href="departmentUpdateServlet?aptId=${dept.aptId}" role="button" class="btn btn-primary dept_edit_btn" data-toggle="modal" data-target=".dept-update-modal">编辑</a>
                                    <a href="departmentDeleteServlet?aptId=${dept.aptId}" role="button" class="btn btn-danger dept_delete_btn">删除</a> 
                                </td>
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
    <%@ include file="./commom/foot.jsp"%>

</div><!-- /.hrms_dept_container -->
</body>
</html>
