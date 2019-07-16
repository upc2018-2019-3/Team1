<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Employee Add Page</title>
</head>
<body>
<form action="UpdateServlet" method="post" class="form-horizontal update_emp_form">
<div class="modal fade emp-update-modal" tabindex="-1" role="dialog" aria-labelledby="emp-update-modal">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">员工信息编辑</h4>
            </div>
            <div class="modal-body">
                <!-- <form action="ZhuceServlet" method="post" class="form-horizontal add_emp_form"> -->
                    <div class="form-group">
                        <label for="update_inputName" class="col-sm-2 control-label">员工编号</label>
                        <div class="col-sm-8">
                            <input type="text" name="eid" class="form-control" id="update_inputName" value="1">
                            <span id="helpBlock_update_inputName" class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="update_inputNumber" class="col-sm-2 control-label">员工姓名</label>
                        <div class="col-sm-8">
                            <input type="text" name="ename" class="form-control" id="update_inputNumber" value="张三">
                            <span id="helpBlock_update_inputNumber" class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">性别</label>
                        <div class="col-sm-8">
                            <label class="radio-inline">
                                <input type="radio" checked="checked" name="esex" id="update_inputGender1" value="M"> 男
                            </label>
                            <label class="radio-inline">
                                <input type="radio" name="esex" id="update_inputGender2" value="F"> 女
                            </label>
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <label for="update_inputAge" class="col-sm-2 control-label">民族</label>
                        <div class="col-sm-8">
                            <input type="text" name="enation" class="form-control" id="update_inputAge" value="汉">
                            <span id="helpBlock_update_inputAge" class="help-block"></span>
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <label for="update_inputAge" class="col-sm-2 control-label">年龄</label>
                        <div class="col-sm-8">
                            <input type="text" name="eage" class="form-control" id="update_inputAge" value="23">
                            <span id="helpBlock_update_inputAge" class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="update_inputDegree" class="col-sm-2 control-label">学历</label>
                        <div class="col-sm-8">
                            <input type="text" name="eedu" class="form-control" id="update_inputDegree" value="本科">
                            <span id="helpBlock_update_inputDegree" class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="update_inputMajor" class="col-sm-2 control-label">专业</label>
                        <div class="col-sm-8">
                            <input type="text" name="eprofessional" class="form-control" id="update_inputMajor" value="计算机科学技术">
                            <span id="helpBlock_update_inputMajor" class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="update_inputSchool" class="col-sm-2 control-label">院校</label>
                        <div class="col-sm-8">
                            <input type="text" name="eschool" class="form-control" id="update_inputSchool" value="山东大学">
                            <span id="helpBlock_update_inputSchool" class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="update_inputForeign" class="col-sm-2 control-label">外语能力</label>
                        <div class="col-sm-8">
                            <input type="text" name="elanguage" class="form-control" id="update_inputForeign" value="六级">
                            <span id="helpBlock_update_inputForeign" class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="update_inputIdate" class="col-sm-2 control-label">入职日期</label>
                        <div class="col-sm-8">
                            <input type="text" name="eworkerdate" class="form-control" id="update_inputIdate" value="2019-07-01">
                            <span id="helpBlock_update_inputIdate" class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="update_inputPnum" class="col-sm-2 control-label">部门号</label>
                        <div class="col-sm-8">
                            <input type="text" name="did" class="form-control" id="update_inputPnum" value="1">
                            <span id="helpBlock_update_inputPnum" class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="update_inputSnum" class="col-sm-2 control-label">岗位号</label>
                        <div class="col-sm-8">
                            <input type="text" name="sid" class="form-control" id="update_inputSnum" value="1">
                            <span id="helpBlock_update_inputSnum" class="help-block"></span>
                        </div>
                    </div>
<%--                    <div class="form-group">--%>
<%--                        <label for="update_inputForeign" class="col-sm-2 control-label">状态</label>--%>
<%--                        <div class="col-sm-8">--%>
<%--                            <input type="text" name="state" class="form-control" id="update_inputState" placeholder="如：实习或在职">--%>
<%--                            <span id="helpBlock_update_inputState" class="help-block"></span>--%>
<%--                        </div>--%>
<%--                    </div>--%>
                    <div class="form-group">
                        <label for="update_inputForeign" class="col-sm-2 control-label">状态</label>
                        <div class="col-sm-8">
                            <input type="radio" name="state" class="radio-inline" id="update_inputState1" value="实习" checked="checked">实习
                            <input type="radio" name="state" class="radio-inline" id="update_inputState2" value="在职">在职
                        </div>
                    </div>
                <!--    </form> -->
          
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
