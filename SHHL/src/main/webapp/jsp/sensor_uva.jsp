<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/assets/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/assets/css/font-awesome.min.css" />
<script src="${pageContext.request.contextPath}/static/bootstrap/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/static/bootstrap/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/static/My97DatePicker/WdatePicker.js"></script>
<style type="text/css">
	.page-header1{
		padding-bottom:0px;
		padding-top:0px;
		margin-top:0px;
		margin-left:20px;
	}
</style>
</head>
<body>
<div class="breadcrumbs" id="breadcrumbs">
		<script type="text/javascript">
			try{ace.settings.check('breadcrumbs' , 'fixed')}catch(e){}
		</script>

		<ul class="breadcrumb" style="margin-bottom:0px;">
			<li>
				<i class="icon-home home-icon"></i>
				<a href="#">Home</a>
			</li>

			<li>
				<a href="#">传感器</a>
			</li>
			<li class="active">UVA</li>
		</ul><!-- .breadcrumb -->					
</div>


<form action="${pageContext.request.contextPath}/system/add.do" method="post" class="form-horizontal">
	
    <h5 class="page-header alert alert-info" style="padding:10px; margin:0; margin-bottom:5px;">实时数据</h5>
	<div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">编号</label>
                <div class="col-sm-5">
                	<input type="text" readonly="readonly" name="staffId" class="form-control input-sm" placeholder="自动生成编号"/>
                </div>
            </div>
        </div>
        <div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">姓名</label>
                <div class="col-sm-9">
                	<input type="text" name="staffName" class="form-control input-sm" placeholder="请输入姓名"/>
                </div>
            </div>
        </div>
    </div>
    <!--开始2-->
    <div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">年龄</label>
                <div class="col-sm-3">
                	<input type="text" name="staffAge" class="form-control input-sm" placeholder="请输入年龄"/>
                </div>
            </div>
        </div>
        <div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">性别</label>
                <div class="col-sm-5">
                	<select name="staffSex">
                    	<option>保密</option>
                        <option>男</option>
                        <option>女</option>
                    </select>
                </div>
            </div>
        </div>
    </div>
    <!--结束2-->
     <!--开始3-->
    <div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">籍贯</label>
                <div class="col-sm-9">
                	<input type="text" name="staffNativePlace" class="form-control input-sm" placeholder="请输入籍贯"/>
                </div>
            </div>
        </div>
        <div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">身份证号码</label>
                <div class="col-sm-9">
                	<input type="text" name="staffIdcard" class="form-control input-sm" placeholder="请输入籍贯"/>
                </div>
            </div>
        </div>
    </div>
    <!--结束3-->
      <!--开始4-->
    <div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">出生日期</label>
                <div class="col-sm-5">
                	<input type="text" readonly="readonly" name="staffBirthday" class="form-control input-sm" onclick="WdatePicker()" placeholder="请输入出生日期"/>
                </div>
            </div>
        </div>
        <div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">办公电话</label>
                <div class="col-sm-9">
                	<input type="text" name="staffOfficePhone" class="form-control input-sm" placeholder="请输入办公电话"/>
                </div>
            </div>
        </div>
    </div>
    <!--结束4-->
      <!--开始5-->
    <div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">电子邮件</label>
                <div class="col-sm-9">
                	<input type="text" name="staffEmail" class="form-control input-sm" placeholder="请输入电子邮件"/>
                </div>
            </div>
        </div>
        <div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">移动电话</label>
                <div class="col-sm-9">
                	<input type="text" name="staffMobilePhone" class="form-control input-sm" placeholder="请输入移动电话"/>
                </div>
            </div>
        </div>
    </div>
    <!--结束5-->
      <!--开63-->
    <div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">家庭住址</label>
                <div class="col-sm-9">
                	<input type="text" name="staffAddr" class="form-control input-sm" placeholder="请输入家庭住址"/>
                </div>
            </div>
        </div>
        <div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">QQ</label>
                <div class="col-sm-9">
                	<input type="text" name="staffQq" class="form-control input-sm" placeholder="请输入QQ"/>
                </div>
            </div>
        </div>
    </div>
    <!--结束6-->
      <!--开76-->
    <div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">入职时间</label>
                <div class="col-sm-5">
                	<input type="text" readonly="readonly" name="staffEntryTime" class="form-control input-sm " onclick="WdatePicker()" placeholder="请输入入职时间"/>
                </div>
            </div>
        </div>
        <div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">教育水平</label>
                <div class="col-sm-9">
                	<select class="form-control" name="staffEduLevel">
                    	<option>保密</option>
                        <option>博士</option>
                        <option>硕士</option>
                        <option>本科</option>
                    </select>
                </div>
            </div>
        </div>
    </div>
    <!--结束7-->
    <!-- <h5 class="page-header alert alert-info" style="padding:10px; margin:0px; margin-bottom:5px">历史数据查询</h5> -->
      <!--备注-->
    <div class="row alert alert-info" style="margin:0px; padding:3px">
		<div class="col-sm-2" style="padding-top:9px;padding-left:3px;">历史数据查询</div>
	    <div class="col-sm-2">
	    	<select class="form-control">
	        	<option>姓名</option>
	            <option>姓名</option>
	        </select>
	    </div>
	    <div class="col-sm-3">
	    	<input type="text" class="form-control"/>
	    </div>
	    <input type="button" class="btn btn-danger" value="查询"/>
	    <input type="button" class="btn btn-success" value="添加" onclick="javascript:window.location='${pageContext.request.contextPath}/view/system/staff_info/staffinfo_add.jsp'"/>
	</div>
<div align="center">
	<div class="alert alert-warning" style="margin: 0px; padding: 5px; width: 80%;display: ${empty info?'none':'block'}" >
		<button type="button" class="close" data-dismiss="alert">
			<span aria-hidden="true">&times;</span>
			
		</button>
		<p align="center" style="color: red;">员工信息-${info }</p>
	</div>	
</div>
<div class="row" style="padding:15px; padding-top:0px;" >
	<table class="table table-condensed table-striped">
    	<tr>
        	<th>员工编号</th>
            <th>员工姓名</th>
            <th>员工性别</th>
            <th>员工年龄</th>
            <th>员工号码</th>
            <th>QQ</th>
            <th>入职时间</th> 
             <th>操作</th> 
        </tr>
        <tr>
        	<td><a href="${pageContext.request.contextPath}/view/system/staff_info/staffinfo_show.jsp">1001号</a></td>
            <td>张三</td>
            <td>男</td>
            <td>25</td>
            <td>18839967120</td>
            <td>2363330581</td>
            <td>2018-02-08</td> 
            <td>
               <a class="btn btn-primary btn-sm">修改</a>
               <a class="btn btn-danger btn-sm">删除</a>
            </td>
        </tr>
         <tr>
        	<td>1001号</td>
            <td>张三</td>
            <td>男</td>
            <td>25</td>
            <td>18839967120</td>
            <td>2363330581</td>
            <td>2018-02-08</td> 
            <td>
               <a class="btn btn-primary btn-sm">修改</a>
               <a class="btn btn-danger btn-sm">删除</a>
            </td>
        </tr>
         <tr>
        	<td>1001号</td>
            <td>张三</td>
            <td>男</td>
            <td>25</td>
            <td>18839967120</td>
            <td>2363330581</td>
            <td>2018-02-08</td> 
            <td>
               <a class="btn btn-primary btn-sm">修改</a>
               <a class="btn btn-danger btn-sm">删除</a>
            </td>
        </tr>
         <tr>
        	<td>1001号</td>
            <td>张三</td>
            <td>男</td>
            <td>25</td>
            <td>18839967120</td>
            <td>2363330581</td>
            <td>2018-02-08</td> 
            <td>
               <a class="btn btn-primary btn-sm">修改</a>
               <a class="btn btn-danger btn-sm">删除</a>
            </td>
        </tr>
        <tr>
        	<td>1001号</td>
            <td>张三</td>
            <td>男</td>
            <td>25</td>
            <td>18839967120</td>
            <td>2363330581</td>
            <td>2018-02-08</td> 
            <td>
               <a class="btn btn-primary btn-sm">修改</a>
               <a class="btn btn-danger btn-sm">删除</a>
            </td>
        </tr>
        <tr>
        	<td>1001号</td>
            <td>张三</td>
            <td>男</td>
            <td>25</td>
            <td>18839967120</td>
            <td>2363330581</td>
            <td>2018-02-08</td> 
            <td>
               <a class="btn btn-primary btn-sm">修改</a>
               <a class="btn btn-danger btn-sm">删除</a>
            </td>
        </tr>
        <tr>
        	<td>1001号</td>
            <td>张三</td>
            <td>男</td>
            <td>25</td>
            <td>18839967120</td>
            <td>2363330581</td>
            <td>2018-02-08</td> 
            <td>
               <a class="btn btn-primary btn-sm">修改</a>
               <a class="btn btn-danger btn-sm">删除</a>
            </td>
        </tr>
        <tr>
        	<td>1001号</td>
            <td>张三</td>
            <td>男</td>
            <td>25</td>
            <td>18839967120</td>
            <td>2363330581</td>
            <td>2018-02-08</td> 
            <td>
               <a class="btn btn-primary btn-sm">修改</a>
               <a class="btn btn-danger btn-sm">删除</a>
            </td>
        </tr>
    </table>
</div>
    <!--账号信息-->
     <h5 class="page-header alert alert-info" style="padding:10px; margin:0px; margin-bottom:5px">数据自动保存</h5>
     <div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">用户名</label>
                <div class="col-sm-9">
                	<input type="text" name="staffUsername" class="form-control input-sm" placeholder="请输入用户名"/>
                </div>
            </div>
        </div>
        <div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">密码</label>
                <div class="col-sm-9">
                	<input type="text" name="staffPassword" class="form-control input-sm" placeholder="请输入密码"/>
                </div>
            </div>
        </div>
    </div>
  
</form>

</body>
</html>