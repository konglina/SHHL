<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/bootstrap/css/bootstrap.min.css">
<script src="${pageContext.request.contextPath}/static/bootstrap/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/static/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
<div style="padding:0px; margin:0px;">
	<ul class="breadcrumb" style="padding:0px; margin:0px; padding-left:20px">
    	<li><a>接驳盒</a></li>
        <li>实时数据</li>
    </ul>
</div>
<div class="row alert alert-info" style="margin:0px; padding:6px">
<!--  
	<div class="col-sm-2" style="padding-top:9px">查询条件</div>
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
-->
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
    </table>
</div>
</body>
</html>