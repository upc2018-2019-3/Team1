<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>离职员工新增页面</title>
</head>
<body>
<form action="turnover_employeeAddServlet" method="post" class="form-horizontal add_emp_form"> 
<div class="modal fade quit-add-modal" tabindex="-1" role="dialog" aria-labelledby="quit-add-modal">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">离职员工新增</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal add_quit_form">
                    <div class="form-group">
                        <label for="add_quitNumber" class="col-sm-2 control-label">离职员工编号</label>
                        <div class="col-sm-8">
                            <input type="text" name="quitNumber" class="form-control" id="add_quitNumber" placeholder="如：001">
                        </div>
                    </div>
                    
                     <div class="form-group">
                        <label for="add_quitStaion" class="col-sm-2 control-label">离职原因</label>
                        <div class="col-sm-8">
                            <input type="text" name="quitStaion" class="form-control" id="add_quitStaion" placeholder="如：经理">
                        </div>
                    </div>
                      <div class="form-group">
                        <label for="add_quitDate" class="col-sm-2 control-label">离职日期</label>
                        <div class="col-sm-8">
                            <input type="text" name="quitDate" class="form-control" id="add_quitDate" placeholder="如：2018-7-12">
                        </div>
                    </div>
                       
                    
                </form>
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
