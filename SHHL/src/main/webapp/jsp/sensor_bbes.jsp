<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/assets/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/assets/css/font-awesome.min.css" />
<%-- <link rel="stylesheet" href="${pageContext.request.contextPath}/static/assets/css/ace.min.css" /> --%>
<%-- <link rel="stylesheet" href="${pageContext.request.contextPath}/static/assets/css/ace-rtl.min.css" /> --%>
<%-- <link rel="stylesheet" href="${pageContext.request.contextPath}/static/assets/css/ace-skins.min.css" /> --%>
<script src="${pageContext.request.contextPath}/static/bootstrap/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/static/bootstrap/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/static/My97DatePicker/WdatePicker.js"></script>
<script src="${pageContext.request.contextPath}/static/assets/js/echarts.min.js"></script>
<script src="${pageContext.request.contextPath}/static/laydate/laydate.js"></script>
<style type="text/css">
	.page-header1{
		padding-bottom:0px;
		padding-top:0px;
		margin-top:0px;
		margin-left:20px;
	}
	.table tbody tr td{
            vertical-align: middle;
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
			<li class="active">BBES</li>
		</ul><!-- .breadcrumb -->					
</div>


<form action="${pageContext.request.contextPath}/system/add.do" method="post" class="form-horizontal">
	<!-- BBES_shishi_start -->
	<div>
		 <h5 class="page-header alert alert-info" style="padding:10px; margin:0; margin-bottom:5px;">实时数据</h5>
		 
	</div>
	<!-- BBES_shishi_end -->
  <!--   <h5 class="page-header alert alert-info" style="padding:10px; margin:0; margin-bottom:5px;">实时数据</h5>
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
    开始2
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
    结束2
     开始3
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
    结束3
      开始4
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
    结束4
      开始5
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
    结束5
      开63
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
    结束6
      开76
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
    </div> -->
    <!--结束7-->
    <!-- <h5 class="page-header alert alert-info" style="padding:10px; margin:0px; margin-bottom:5px">历史数据查询</h5> -->
      <!--备注-->
    <div class="row alert alert-info" style="margin:0px; padding:3px">
		<div class="col-sm-1" style="padding-top:9px;padding-left:3px;">历史数据查询</div>
		 <div class="col-sm-2" style="padding-top:5px">
	    	<div class="input-group input-group-sm">
	    		<span class="input-group-addon">
					开始&nbsp;
				</span>
				<input type="text" id="test1" class="form-control">
				<span class="input-group-addon">
					<i class="icon-calendar"></i>
				</span>
			</div>
	   </div> 
	   
	   <div class="col-sm-2" style="padding-top:5px;padding-bottom:2px;">
	    	<div class="input-group input-group-sm">
	    		<span class="input-group-addon">
					结束&nbsp;
				</span>
				<input type="text" id="test2" class="form-control">
				<span class="input-group-addon">
					<i class="icon-calendar"></i>
				</span>
			</div>
	   </div>
	  
	     <div class="col-sm-1" style="padding-top:4px;padding-bottom:2px;">
		   	<input type="button" class="btn btn-danger" value="查询"/>
		 </div>
	</div>
</form>
<div  style="padding:2px; margin:0px;"  >
<div class="row" style="margin-top:15px;">
	<div class="col-sm-4" style="">
		 <div class="panel panel-default" >
          <div class="panel-heading" style=" padding:3px;height:30px;"  >
            <span class="glyphicon glyphicon-refresh"></span>电压
          </div>
              <div class="panel-body">
             		<div id="container1" class="col-sm-12" style="height: 300px;"></div>
              </div>
        </div>
	</div>
	<div class="col-sm-4" style="">
		 <div class="panel panel-default" >
          <div class="panel-heading" style=" padding:3px;height:30px;"  >
            <span class="glyphicon glyphicon-refresh"></span>电压
          </div>
              <div class="panel-body">
             		<div id="container2" class="col-sm-12" style="height: 300px;"></div>
              </div>
        </div>
	</div>
	<div class="col-sm-4" style="height: 400px;">
		 <div class="panel panel-default" >
          <div class="panel-heading" style=" padding:3px;height:30px;"  >
            <span class="glyphicon glyphicon-refresh"></span>温度
          </div>
              <div class="panel-body">
             		<div id="container3" class="col-sm-12" style="height: 300px;"></div>
              </div>
        </div>
	</div>
</div>
<div class="row" style="">
	<div class="col-sm-4" style="">
		 <div class="panel panel-default" >
          <div class="panel-heading" style=" padding:3px;height:30px;"  >
            <span class="glyphicon glyphicon-refresh"></span>电导率
          </div>
              <div class="panel-body">
             		<div id="container4"  style="height: 300px;"></div>
              </div>
        </div>
	</div>
	<div class="col-sm-4" style="">
		 <div class="panel panel-default" >
          <div class="panel-heading" style=" padding:3px;height:30px;"  >
            <span class="glyphicon glyphicon-refresh"></span>压力
          </div>
              <div class="panel-body">
             		<div id="container5"  style="height: 300px;"></div>
              </div>
        </div>
	</div>
	<div class="col-sm-4" style="height: 400px;">
		 <div class="panel panel-default" >
          <div class="panel-heading" style=" padding:3px;height:30px;"  >
            <span class="glyphicon glyphicon-refresh"></span>盐度
          </div>
              <div class="panel-body">
             		<div id="container6"  style="height: 300px;"></div>
              </div>
        </div>
	</div>
</div>

<div class="row alert alert-info" style="margin:0px; padding:3px">
		<div class="col-sm-1" style="padding-top:9px;padding-left:3px;">历史数据查询</div>
		 <div class="col-sm-2" style="padding-top:5px">
	    	<div class="input-group input-group-sm">
	    		<span class="input-group-addon">
					开始&nbsp;
				</span>
				<input type="text" id="test3" class="form-control">
				<span class="input-group-addon">
					<i class="icon-calendar"></i>
				</span>
			</div>
	   </div> 
	   
	   <div class="col-sm-2" style="padding-top:5px;padding-bottom:2px;">
	    	<div class="input-group input-group-sm">
	    		<span class="input-group-addon">
					结束&nbsp;
				</span>
				<input type="text" id="test4" class="form-control">
				<span class="input-group-addon">
					<i class="icon-calendar"></i>
				</span>
			</div>
	   </div>
	   <div class="col-sm-2" style="padding-top:5px;padding-bottom:2px;">
	    	<div class="input-group input-group-sm">
	    		<span class="input-group-addon">
					指标&nbsp;
				</span>
	    	<select class="form-control">
	        	<option>培养袋状态</option>
	            <option>泵状态</option>
	            <option>阀状态</option> 
	        </select>
	    	</div>
	    </div>
	     <div class="col-sm-1" style="padding-top:4px;padding-bottom:2px;">
		   	<input type="button" class="btn btn-danger" value="查询"/>
		 </div>
</div>
</div>
<script type="text/javascript">
	//container1
	var dom1 = document.getElementById("container1");
	var myChart = echarts.init(dom1);
	var app = {};
	option = null;
	function randomData() {
	    now = new Date(+now + oneDay);
	    value = value + Math.random() * 21 - 10;
	    return {
	        name: now.toString(),
	        value: [
	            [now.getFullYear(), now.getMonth() + 1, now.getDate()].join('/'),
	            Math.round(value)
	        ]
	    }
	}
	
	var data = [];
	var now = +new Date(1997, 9, 3);
	var oneDay = 24 * 3600 * 1000;
	var value = Math.random() * 1000;
	for (var i = 0; i < 1000; i++) {
	    data.push(randomData());
	}
	
	option = {
	    title: {
	        text: '动态数据 + 时间坐标轴'
	    },
	    tooltip: {
	        trigger: 'axis',
	        formatter: function (params) {
	            params = params[0];
	            var date = new Date(params.name);
	            return date.getDate() + '/' + (date.getMonth() + 1) + '/' + date.getFullYear() + ' : ' + params.value[1];
	        },
	        axisPointer: {
	            animation: false
	        }
	    },
	    xAxis: {
	        type: 'time',
	        splitLine: {
	            show: false
	        }
	    },
	    yAxis: {
	        type: 'value',
	        boundaryGap: [0, '100%'],
	        splitLine: {
	            show: false
	        }
	    },
	    series: [{
	        name: '模拟数据',
	        type: 'line',
	        showSymbol: false,
	        hoverAnimation: false,
	        data: data
	    }]
	};
	
	setInterval(function () {
	
	    for (var i = 0; i < 5; i++) {
	        data.shift();
	        data.push(randomData());
	    }
	
	    myChart.setOption({
	        series: [{
	            data: data
	        }]
	    });
	}, 1000);;
	if (option && typeof option === "object") {
	    myChart.setOption(option, true);
	}
	
	//container2
	var dom2 = document.getElementById("container2");
	var myChart2 = echarts.init(dom2);
	if (option && typeof option === "object") {
	    myChart2.setOption(option, true);
	}
	//container3
	var dom3 = document.getElementById("container3");
	var myChart3 = echarts.init(dom3);
	if (option && typeof option === "object") {
	    myChart3.setOption(option, true);
	}
	//container4
	var dom4 = document.getElementById("container4");
	var myChart4 = echarts.init(dom4);
	if (option && typeof option === "object") {
	    myChart4.setOption(option, true);
	}
	//container5
	var dom5 = document.getElementById("container5");
	var myChart5 = echarts.init(dom5);
	if (option && typeof option === "object") {
	    myChart5.setOption(option, true);
	}
	//container6
	var dom6 = document.getElementById("container6");
	var myChart6 = echarts.init(dom6);
	if (option && typeof option === "object") {
	    myChart6.setOption(option, true);
	}
 </script>
<div class="row" style="padding:15px; padding-top:0px;" >
	<table class="table table-condensed table-striped table-bordered table-hover">
    	<tr >
        	<th>时间</th>
            <th>培养袋1</th>
            <th>培养袋2</th>
            <th>培养袋3</th>
            <th>培养袋4</th>
          	<th>培养袋5</th>
            <th>培养袋6</th>
            <th>培养袋7</th>
            <th>培养袋8</th>
            <th>培养袋9</th>
            <th>培养袋10</th>
            <th>培养袋11</th>
            <th>培养袋12</th>
        </tr>
        <tr>
        	<td><a href="${pageContext.request.contextPath}/view/system/staff_info/staffinfo_show.jsp">2019-04-12 14:57:48</a></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-warning">培养中</span></td> 
            <td><span class="label label-sm label-warning">培养中</span></td> 
            <td><span class="label label-sm label-warning">培养中</span></td>
            <td><span class="label label-sm label-warning">培养中</span></td>
            <td><span class="label label-sm label-info arrowed arrowed-righ">等待</span></td> 
            <td><span class="label label-sm label-info arrowed arrowed-righ">等待</span></td> 
            <td><span class="label label-sm label-info arrowed arrowed-righ">等待</span></td>    
        </tr>
		<tr>
        	<td><a href="${pageContext.request.contextPath}/view/system/staff_info/staffinfo_show.jsp">2019-04-12 14:57:48</a></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-warning">培养中</span></td> 
            <td><span class="label label-sm label-warning">培养中</span></td> 
            <td><span class="label label-sm label-warning">培养中</span></td>
            <td><span class="label label-sm label-warning">培养中</span></td>
            <td><span class="label label-sm label-info arrowed arrowed-righ">等待</span></td> 
            <td><span class="label label-sm label-info arrowed arrowed-righ">等待</span></td> 
            <td><span class="label label-sm label-info arrowed arrowed-righ">等待</span></td>   
         
        
        </tr>
        <tr>
        <td><a href="${pageContext.request.contextPath}/view/system/staff_info/staffinfo_show.jsp">2019-04-12 14:57:48</a></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-warning">培养中</span></td> 
            <td><span class="label label-sm label-warning">培养中</span></td> 
            <td><span class="label label-sm label-warning">培养中</span></td>
            <td><span class="label label-sm label-warning">培养中</span></td>
            <td><span class="label label-sm label-info arrowed arrowed-righ">等待</span></td> 
            <td><span class="label label-sm label-info arrowed arrowed-righ">等待</span></td> 
            <td><span class="label label-sm label-info arrowed arrowed-righ">等待</span></td>   
        </tr>
        <tr>
        	<td><a href="${pageContext.request.contextPath}/view/system/staff_info/staffinfo_show.jsp">2019-04-12 14:57:48</a></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-warning">培养中</span></td> 
            <td><span class="label label-sm label-warning">培养中</span></td> 
            <td><span class="label label-sm label-warning">培养中</span></td>
            <td><span class="label label-sm label-warning">培养中</span></td>
            <td><span class="label label-sm label-info arrowed arrowed-righ">等待</span></td> 
            <td><span class="label label-sm label-info arrowed arrowed-righ">等待</span></td> 
            <td><span class="label label-sm label-info arrowed arrowed-righ">等待</span></td>   
        
        </tr>
        <tr>
        	<td><a href="${pageContext.request.contextPath}/view/system/staff_info/staffinfo_show.jsp">2019-04-12 14:57:48</a></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-warning">培养中</span></td> 
            <td><span class="label label-sm label-warning">培养中</span></td> 
            <td><span class="label label-sm label-warning">培养中</span></td>
            <td><span class="label label-sm label-warning">培养中</span></td>
            <td><span class="label label-sm label-info arrowed arrowed-righ">等待</span></td> 
            <td><span class="label label-sm label-info arrowed arrowed-righ">等待</span></td> 
            <td><span class="label label-sm label-info arrowed arrowed-righ">等待</span></td>   
       
        </tr>
        <tr>
        	<td><a href="${pageContext.request.contextPath}/view/system/staff_info/staffinfo_show.jsp">2019-04-12 14:57:48</a></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-warning">培养中</span></td> 
            <td><span class="label label-sm label-warning">培养中</span></td> 
            <td><span class="label label-sm label-warning">培养中</span></td>
            <td><span class="label label-sm label-warning">培养中</span></td>
            <td><span class="label label-sm label-info arrowed arrowed-righ">等待</span></td> 
            <td><span class="label label-sm label-info arrowed arrowed-righ">等待</span></td> 
            <td><span class="label label-sm label-info arrowed arrowed-righ">等待</span></td>   
     
        </tr>
        <tr>
        	<td><a href="${pageContext.request.contextPath}/view/system/staff_info/staffinfo_show.jsp">2019-04-12 14:57:48</a></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-warning">培养中</span></td> 
            <td><span class="label label-sm label-warning">培养中</span></td> 
            <td><span class="label label-sm label-warning">培养中</span></td>
            <td><span class="label label-sm label-warning">培养中</span></td>
            <td><span class="label label-sm label-info arrowed arrowed-righ">等待</span></td> 
            <td><span class="label label-sm label-info arrowed arrowed-righ">等待</span></td> 
            <td><span class="label label-sm label-info arrowed arrowed-righ">等待</span></td>   
      
        </tr>
        <tr>
        	<td><a href="${pageContext.request.contextPath}/view/system/staff_info/staffinfo_show.jsp">2019-04-12 14:57:48</a></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-warning">培养中</span></td> 
            <td><span class="label label-sm label-warning">培养中</span></td> 
            <td><span class="label label-sm label-warning">培养中</span></td>
            <td><span class="label label-sm label-warning">培养中</span></td>
            <td><span class="label label-sm label-info arrowed arrowed-righ">等待</span></td> 
            <td><span class="label label-sm label-info arrowed arrowed-righ">等待</span></td> 
            <td><span class="label label-sm label-info arrowed arrowed-righ">等待</span></td>   
     
        </tr>
         <tr>
        	<td><a href="${pageContext.request.contextPath}/view/system/staff_info/staffinfo_show.jsp">2019-04-12 14:57:48</a></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-warning">培养中</span></td> 
            <td><span class="label label-sm label-warning">培养中</span></td> 
            <td><span class="label label-sm label-warning">培养中</span></td>
            <td><span class="label label-sm label-warning">培养中</span></td>
            <td><span class="label label-sm label-info arrowed arrowed-righ">等待</span></td> 
            <td><span class="label label-sm label-info arrowed arrowed-righ">等待</span></td> 
            <td><span class="label label-sm label-info arrowed arrowed-righ">等待</span></td>   
       
        </tr>
         <tr>
        	<td><a href="${pageContext.request.contextPath}/view/system/staff_info/staffinfo_show.jsp">2019-04-12 14:57:48</a></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-warning">培养中</span></td> 
            <td><span class="label label-sm label-warning">培养中</span></td> 
            <td><span class="label label-sm label-warning">培养中</span></td>
            <td><span class="label label-sm label-warning">培养中</span></td>
            <td><span class="label label-sm label-info arrowed arrowed-righ">等待</span></td> 
            <td><span class="label label-sm label-info arrowed arrowed-righ">等待</span></td> 
            <td><span class="label label-sm label-info arrowed arrowed-righ">等待</span></td>   
        </tr>
         <tr>
        <td><a href="${pageContext.request.contextPath}/view/system/staff_info/staffinfo_show.jsp">2019-04-12 14:57:48</a></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-warning">培养中</span></td> 
            <td><span class="label label-sm label-warning">培养中</span></td> 
            <td><span class="label label-sm label-warning">培养中</span></td>
            <td><span class="label label-sm label-warning">培养中</span></td>
            <td><span class="label label-sm label-info arrowed arrowed-righ">等待</span></td> 
            <td><span class="label label-sm label-info arrowed arrowed-righ">等待</span></td> 
            <td><span class="label label-sm label-info arrowed arrowed-righ">等待</span></td>   
      
        </tr>
         <tr>
        	<td><a href="${pageContext.request.contextPath}/view/system/staff_info/staffinfo_show.jsp">2019-04-12 14:57:48</a></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-warning">培养中</span></td> 
            <td><span class="label label-sm label-warning">培养中</span></td> 
            <td><span class="label label-sm label-warning">培养中</span></td>
            <td><span class="label label-sm label-warning">培养中</span></td>
            <td><span class="label label-sm label-info arrowed arrowed-righ">等待</span></td> 
            <td><span class="label label-sm label-info arrowed arrowed-righ">等待</span></td> 
            <td><span class="label label-sm label-info arrowed arrowed-righ">等待</span></td>   
        
        </tr>
         <tr>
        	<td><a href="${pageContext.request.contextPath}/view/system/staff_info/staffinfo_show.jsp">2019-04-12 14:57:48</a></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-warning">培养中</span></td> 
            <td><span class="label label-sm label-warning">培养中</span></td> 
            <td><span class="label label-sm label-warning">培养中</span></td>
            <td><span class="label label-sm label-warning">培养中</span></td>
            <td><span class="label label-sm label-info arrowed arrowed-righ">等待</span></td> 
            <td><span class="label label-sm label-info arrowed arrowed-righ">等待</span></td> 
            <td><span class="label label-sm label-info arrowed arrowed-righ">等待</span></td>   
    
        </tr>
         <tr>
        	<td><a href="${pageContext.request.contextPath}/view/system/staff_info/staffinfo_show.jsp">2019-04-12 14:57:48</a></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-warning">培养中</span></td> 
            <td><span class="label label-sm label-warning">培养中</span></td> 
            <td><span class="label label-sm label-warning">培养中</span></td>
            <td><span class="label label-sm label-warning">培养中</span></td>
            <td><span class="label label-sm label-info arrowed arrowed-righ">等待</span></td> 
            <td><span class="label label-sm label-info arrowed arrowed-righ">等待</span></td> 
            <td><span class="label label-sm label-info arrowed arrowed-righ">等待</span></td>   
 
        </tr>
         <tr>
        	<td><a href="${pageContext.request.contextPath}/view/system/staff_info/staffinfo_show.jsp">2019-04-12 14:57:48</a></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-warning">培养中</span></td> 
            <td><span class="label label-sm label-warning">培养中</span></td> 
            <td><span class="label label-sm label-warning">培养中</span></td>
            <td><span class="label label-sm label-warning">培养中</span></td>
            <td><span class="label label-sm label-info arrowed arrowed-righ">等待</span></td> 
            <td><span class="label label-sm label-info arrowed arrowed-righ">等待</span></td> 
            <td><span class="label label-sm label-info arrowed arrowed-righ">等待</span></td>   
    
        </tr>
         <tr>
        	<td><a href="${pageContext.request.contextPath}/view/system/staff_info/staffinfo_show.jsp">2019-04-12 14:57:48</a></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-warning">培养中</span></td> 
            <td><span class="label label-sm label-warning">培养中</span></td> 
            <td><span class="label label-sm label-warning">培养中</span></td>
            <td><span class="label label-sm label-warning">培养中</span></td>
            <td><span class="label label-sm label-info arrowed arrowed-righ">等待</span></td> 
            <td><span class="label label-sm label-info arrowed arrowed-righ">等待</span></td> 
            <td><span class="label label-sm label-info arrowed arrowed-righ">等待</span></td>   
        
        </tr>
         <tr>
        	<td><a href="${pageContext.request.contextPath}/view/system/staff_info/staffinfo_show.jsp">2019-04-12 14:57:48</a></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-warning">培养中</span></td> 
            <td><span class="label label-sm label-warning">培养中</span></td> 
            <td><span class="label label-sm label-warning">培养中</span></td>
            <td><span class="label label-sm label-warning">培养中</span></td>
            <td><span class="label label-sm label-info arrowed arrowed-righ">等待</span></td> 
            <td><span class="label label-sm label-info arrowed arrowed-righ">等待</span></td> 
            <td><span class="label label-sm label-info arrowed arrowed-righ">等待</span></td>   
      
        </tr>
         <tr>
        	<td><a href="${pageContext.request.contextPath}/view/system/staff_info/staffinfo_show.jsp">2019-04-12 14:57:48</a></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-success">培养完成</span></td>
            <td><span class="label label-sm label-warning">培养中</span></td> 
            <td><span class="label label-sm label-warning">培养中</span></td> 
            <td><span class="label label-sm label-warning">培养中</span></td>
            <td><span class="label label-sm label-warning">培养中</span></td>
            <td><span class="label label-sm label-info arrowed arrowed-righ">等待</span></td> 
            <td><span class="label label-sm label-info arrowed arrowed-righ">等待</span></td> 
            <td><span class="label label-sm label-info arrowed arrowed-righ">等待</span></td>   
    
        </tr>
        <tfoot>
        	<td colspan="6" align="right">
        		 <ul class="pagination">
				    <li>
				      <a href="#" aria-label="Previous">
				        <span aria-hidden="true">&laquo;</span>
				      </a>
				    </li>
				    <li><a href="#">1</a></li>
				    <li><a href="#">2</a></li>
				    <li><a href="#">3</a></li>
				    <li><a href="#">4</a></li>
				    <li><a href="#">5</a></li>
				    <li>
				      <a href="#" aria-label="Next">
				        <span aria-hidden="true">&raquo;</span>
				      </a>
				    </li>
				  </ul>
        	</td>
        </tfoot>
    </table>
    	
</div>
 <script>
//执行一个laydate实例
laydate.render({
  elem: '#test1' //指定元素
});
laydate.render({
	  elem: '#test2' //指定元素
	});
laydate.render({
	  elem: '#test3' //指定元素
});
laydate.render({
	  elem: '#test4' //指定元素
	});
</script>
</body>
</html>