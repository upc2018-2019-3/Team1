<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Employee Add2 Page</title>
</head>
<body>
<form action="ZhuceServlet2" method="post" class="form-horizontal add_emp_form">
<div class="modal fade emp-add-modal" tabindex="-1" role="dialog" aria-labelledby="emp-add-modal">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">员工新增</h4>
            </div>
            <div class="modal-body">
                <!-- <form action="ZhuceServlet" method="post" class="form-horizontal add_emp_form"> -->
                    <div class="form-group">
                        <label for="add_inputName" class="col-sm-2 control-label">员工编号</label>
                        <div class="col-sm-8">
                            <input type="text" name="eid" class="form-control" id="add_inputName" placeholder="如：1">
                            <span id="helpBlock_add_inputName" class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="add_inputNumber" class="col-sm-2 control-label">员工姓名</label>
                        <div class="col-sm-8">
                            <input type="text" name="ename" class="form-control" id="add_inputNumber" placeholder="如：张三">
                            <span id="helpBlock_add_inputNumber" class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">性别</label>
                        <div class="col-sm-8">
                            <label class="radio-inline">
                                <input type="radio" checked="checked" name="esex" id="add_inputGender1" value="M"> 男
                            </label>
                            <label class="radio-inline">
                                <input type="radio" name="esex" id="add_inputGender2" value="F"> 女
                            </label>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="add_inputAge" class="col-sm-2 control-label">民族</label>
                        <div class="col-sm-8">
                            <input type="text" name="enation" class="form-control" id="add_inputAge" placeholder="如：汉">
                            <span id="helpBlock_add_inputAge" class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="add_inputAge" class="col-sm-2 control-label">年龄</label>
                        <div class="col-sm-8">
                            <input type="text" name="eage" class="form-control" id="add_inputAge" placeholder="如：32">
                            <span id="helpBlock_add_inputAge" class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="add_inputDegree" class="col-sm-2 control-label">学历</label>
                        <div class="col-sm-8">
                            <input type="text" name="eedu" class="form-control" id="add_inputDegree" placeholder="如：学士">
                            <span id="helpBlock_add_inputDegree" class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="add_inputMajor" class="col-sm-2 control-label">专业</label>
                        <div class="col-sm-8">
                            <input type="text" name="eprofessional" class="form-control" id="add_inputMajor" placeholder="如：软件工程">
                            <span id="helpBlock_add_inputMajor" class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="add_inputSchool" class="col-sm-2 control-label">院校</label>
                        <div class="col-sm-8">
                            <input type="text" name="eschool" class="form-control" id="add_inputSchool" placeholder="如：中国石油大学">
                            <span id="helpBlock_add_inputSchool" class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="add_inputForeign" class="col-sm-2 control-label">外语能力</label>
                        <div class="col-sm-8">
                            <input type="text" name="elanguage" class="form-control" id="add_inputForeign" placeholder="如：英语六级">
                            <span id="helpBlock_add_inputForeign" class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="add_inputIdate" class="col-sm-2 control-label">入职日期</label>
                        <div class="col-sm-8">
                            <input type="text" name="eworkerdate" class="form-control" id="add_inputIdate" placeholder="如：2018-7-10">
                            <span id="helpBlock_add_inputIdate" class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="add_inputPnum" class="col-sm-2 control-label">部门号</label>
                        <div class="col-sm-8">
                            <input type="text" name="did" class="form-control" id="add_inputPnum" placeholder="如：001">
                            <span id="helpBlock_add_inputPnum" class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="add_inputSnum" class="col-sm-2 control-label">岗位号</label>
                        <div class="col-sm-8">
                            <input type="text" name="sid" class="form-control" id="add_inputSnum" placeholder="如：002">
                            <span id="helpBlock_add_inputSnum" class="help-block"></span>
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
