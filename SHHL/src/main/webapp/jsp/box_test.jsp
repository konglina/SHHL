<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" media="screen" href="${pageContext.request.contextPath}/static/date-time/bootstrap-datetimepicker.min.css">

</head>
<body>
<div class="row" style="padding:15px; padding-top:0px;">
	开始时间 : <input type="text" id="test1"> &nbsp;&nbsp;结束时间: <input type="text" id="test2">
</div>

<input id="datetimepickerBegin" name="start_time"  type="text"  placeholder="请输入起始时间"></input>
   
<script type="text/javascript">
	$('#datetimepickerBegin').datetimepicker({
        format: 'yyyy-MM-dd hh:mm:ss',
        language: 'cn',
        pickDate: true,
        pickTime: true,
        hourStep: 1,
        minuteStep: 15,
        secondStep: 30,
        inputMask: true,
        endDate:new Date()
      }); 
    </script>	

<script src="${pageContext.request.contextPath}/static/laydate/laydate.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/date-time/bootstrap-datetimepicker.min-2.js"></script>

<script>
//执行一个laydate实例
laydate.render({
  elem: '#test1', //指定元素
  elem: '#test2'
});
</script>
</body>
</html>