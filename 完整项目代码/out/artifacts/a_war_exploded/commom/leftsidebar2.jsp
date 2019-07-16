<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div class="panel-group col-sm-2" id="hrms_sidebar_left" role="tablist" aria-multiselectable="true">
    <ul class="nav nav-pills nav-stacked emp_sidebar">
        <li role="presentation" class="active">
            <a href="#" data-toggle="collapse" data-target="#collapse_emp">
                <span class="glyphicon glyphicon-user" aria-hidden="true">员工管理</span>
            </a>
            <ul class="nav nav-pills nav-stacked" id="collapse_emp">
                <li role="presentation"><a href="#" class="emp_info">员工信息</a></li>
                <li role="presentation"><a href="#" role="button" class="emp_add_btn" data-toggle="modal" data-target=".emp-add-modal">员工新增申请</a></li>
            </ul>
        </li>
    </ul>
    <ul class="nav nav-pills nav-stacked dept_sidebar">
        <li role="presentation" class="active">
            <a href="#"  data-toggle="collapse" data-target="#collapse_dept">
                <span class="glyphicon glyphicon-cloud" aria-hidden="true">部门管理</span>
            </a>
            <ul class="nav nav-pills nav-stacked" id="collapse_dept">
                <li role="presentation"><a href="#" class="dept_info">部门信息</a></li>
            </ul>
        </li>
    </ul>
     <ul class="nav nav-pills nav-stacked sta_sidebar">
        <li role="presentation" class="active">
            <a href="#"  data-toggle="collapse" data-target="#collapse_sta">
                <span class="glyphicon glyphicon-cloud" aria-hidden="true">岗位管理</span>
            </a>
            <ul class="nav nav-pills nav-stacked" id="collapse_sta">
                <li role="presentation"><a href="#" class="sta_info">岗位信息</a></li>
            </ul>
        </li>
    </ul>
</div><!-- /.panel-group，#hrms_sidebar_left -->

<script type="text/javascript">
    //跳转到员工页面
    $(".emp_info").click(function () {
        $(this).attr("href", "employeePage2.jsp");
    });
    //跳转到员工离职页面 //$(this).attr("href", "/hrms/dept/getDeptList");
    $(".quit_info").click(function () {
    	$(this).attr("href", "employeeQuit2.jsp");
    });
    //跳转到部门页面 //$(this).attr("href", "/hrms/dept/getDeptList");
    $(".dept_info").click(function () {
    	$(this).attr("href", "departmentPage2.jsp");
    });
  //跳转到岗位页面 //
    $(".sta_info").click(function () {
    	$(this).attr("href", "stationPage2.jsp");
    });
    员工新增
    $(".emp-add-modal").click(function () {
        $(this).attr("href", "employeeAdd2.jsp");
    });
</script>

</body>
</html>
