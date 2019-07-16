<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%-- <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> --%>
<html>
<head>
    <title>部门信息变动页面</title>
</head>
<body>
 <form action="departmentUpdateServlet" method="post" class="form-horizontal update_emp_form"> 
<div class="modal fade dept-update-modal" tabindex="-1" role="dialog" aria-labelledby="dept-update-modal">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">部门信息变动</h4>
            </div>
            <div class="modal-body">
                <!-- <form class="form-horizontal update_dept_form"> -->
                <div class="form-group">
                        <label for="update_deptNumber" class="col-sm-2 control-label">部门编号</label>
                        <div class="col-sm-8">
                            <input type="text" name="deptNumber" class="form-control" id="update_deptNumber" placeholder="如：007">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="update_deptName" class="col-sm-2 control-label">部门名称</label>
                        <div class="col-sm-8">
                            <input type="text" name="deptName" class="form-control" id="update_deptName" placeholder="如：人事部">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="update_deptLeader" class="col-sm-2 control-label">负责人</label>
                        <div class="col-sm-8">
                            <input type="text" name="deptLeader" class="form-control" id="update_deptLeader" placeholder="如：李四">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="update_deptUdep" class="col-sm-2 control-label">上级部门编号</label>
                        <div class="col-sm-8">
                            <input type="text" name="deptUdep" class="form-control" id="update_deptUdep" placeholder="如：001">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="update_deptDdep" class="col-sm-2 control-label">下级部门编号</label>
                        <div class="col-sm-8">
                            <input type="text" name="deptDdep" class="form-control" id="update_deptDdep" placeholder="如：003">
                        </div>
                    </div>                   
                <!-- </form> -->
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="submit" class="btn btn-primary dept_save_btn">保存</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
</form>
</body>
</html>
