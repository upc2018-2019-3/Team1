<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>部门新增页面</title>
</head>
<body>
<form action="departmentaddServlet" method="post" class="form-horizontal add_emp_form"> 
<div class="modal fade dept-add-modal" tabindex="-1" role="dialog" aria-labelledby="dept-add-modal">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">部门新增</h4>
            </div>
            <div class="modal-body">
               <!--  <form class="form-horizontal add_dept_form"> -->
                <div class="form-group">
                        <label for="add_deptNumber" class="col-sm-2 control-label">部门编号</label>
                        <div class="col-sm-8">
                            <input type="text" name="deptNumber" class="form-control" id="add_deptNumber" placeholder="如：002">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="add_deptName" class="col-sm-2 control-label">部门名称</label>
                        <div class="col-sm-8">
                            <input type="text" name="deptName" class="form-control" id="add_deptName" placeholder="如：人事部">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="add_deptLeader" class="col-sm-2 control-label">部门负责人</label>
                        <div class="col-sm-8">
                            <input type="text" name="deptLeader" class="form-control" id="add_deptLeader" placeholder="如：cook">
                        </div>
                    </div>
                     <div class="form-group">
                        <label for="add_deptUdep" class="col-sm-2 control-label">上级部门编号</label>
                        <div class="col-sm-8">
                            <input type="text" name="deptUdep" class="form-control" id="add_deptUdep" placeholder="如：001">
                        </div>
                    </div>
                     <div class="form-group">
                        <label for="add_deptDdep" class="col-sm-2 control-label">下级部门编号</label>
                        <div class="col-sm-8">
                            <input type="text" name="deptDdep" class="form-control" id="add_deptDdep" placeholder="如：003">
                        </div>
                    </div>
                    
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <input type="submit" class="btn btn-primary emp_save_btn" value="保存">
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
</form>
</body>
</html>
