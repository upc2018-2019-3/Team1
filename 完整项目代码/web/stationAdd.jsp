<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>岗位新增页面</title>
</head>
<body>
<form action="stationaddServlet" method="post" class="form-horizontal add_station_form">
<div class="modal fade sta-add-modal" tabindex="-1" role="dialog" aria-labelledby="sta-add-modal">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">岗位新增</h4>
            </div>
            <div class="modal-body">
               <!-- <form class="form-horizontal add_sta_form"> -->
                    <div class="form-group">
                        <label for="add_staNumber" class="col-sm-2 control-label">岗位编号</label>
                        <div class="col-sm-8">
                            <input type="text" name="sid" class="form-control" id="add_staNumber" placeholder="如：001">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="add_staName" class="col-sm-2 control-label">岗位名称</label>
                        <div class="col-sm-8">
                            <input type="text" name="sname" class="form-control" id="add_staName" placeholder="如：经理">
                        </div>
                    </div>
                     <div class="form-group">
                        <label for="add_stadate" class="col-sm-2 control-label">建立日期</label>
                        <div class="col-sm-8">
                            <input type="text" name="sdate" class="form-control" id="add_stadate" placeholder="如：2018-01-01">
                        </div>
                    </div>
         
                    <div class="form-group">
                        <label for="add_staduty" class="col-sm-2 control-label">岗位职责</label>
                        <div class="col-sm-8">
                            <input type="text" name="sfunction" class="form-control" id="add_staduty	" placeholder="如：负责管理">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="add_staOperate" class="col-sm-2 control-label">岗位工资</label>
                        <div class="col-sm-8">
                            <input type="text" name="swages" class="form-control" id="add_staOperate	" placeholder="如：2000">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="add_staOperate" class="col-sm-2 control-label">部门号</label>
                        <div class="col-sm-8">
                            <input type="text" name="did" class="form-control" id="add_staOperate	" placeholder="如：001">
                        </div>
                    </div>
                 <!-- </form>  -->
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
