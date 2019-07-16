<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%-- <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> --%>
<html>
<head>
    <title>离职员工新增页面</title>
</head>
<body>
 <form action="turnover_employeeUpdateServlet" method="post" class="form-horizontal update_emp_form"> 

<div class="modal fade quit-update-modal" tabindex="-1" role="dialog" aria-labelledby="quit-update-modal">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">离职员工新增</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal update_quit_form">
                    <div class="form-group">
                        <label for="update_quitNumber" class="col-sm-2 control-label">员工编号</label>
                        <div class="col-sm-8">
                            <input type="text" name="quitNumber" class="form-control" id="update_quitNumber" placeholder="如：001">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="update_quitReason" class="col-sm-2 control-label">离职原因</label>
                        <div class="col-sm-8">
                            <input type="text" name="quitName" class="form-control" id="update_quitName" placeholder="mike">
                        </div>
                    </div>
                    
                   
                     <div class="form-group">
                        <label for="update_quitDate" class="col-sm-2 control-label">离职日期</label>
                        <div class="col-sm-8">
                            <input type="text" name="quitDate" class="form-control" id="update_quitDate" placeholder="如：2018-7-12">
                        </div>

                </form>
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
