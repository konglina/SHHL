<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/assets/css/font-awesome.min.css" />
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
				<a href="${pageContext.request.contextPath}/boxenv/list.do">Home</a>
			</li>

			<li>
				<a href="#">传感器</a>
			</li>
			<li class="active">光谱仪</li>
		</ul>					
</div>
<form method="POST" action="${pageContext.request.contextPath}/bbesData/pageQuery.do">
	<div class="row alert alert-info" style="margin:0px; padding:3px">
	<div class="col-sm-1" style="padding-top:9px">历史数据查询</div>
    <div class="col-sm-2" style="padding-top:4px;">
    	<div class="input-group input-group-sm">
			<input type="text" id="startTime" autocomplete="off" placeholder="开始时间" class="form-control">
			<span class="input-group-addon">
				<i class="icon-calendar"></i>
			</span>
		</div>
   </div> 
   <div class="col-sm-2" style="padding-top:4px;">
    	<div class="input-group input-group-sm">
			<input type="text" id="endTime" autocomplete="off" placeholder="结束时间" class="form-control">
			<span class="input-group-addon">
				<i class="icon-calendar"></i>
			</span>
		</div>
   </div>
   <div class="col-sm-1" style="padding-top:4px;">
   	<input id="queryBtn" type="button" class="btn btn-danger" value="查询"/>
   </div>
    <div class="col-sm-2" style="padding-top:5px;padding-bottom:2px;">
    </div>
   <div class="col-sm-3" style="padding-top:5px;padding-bottom:2px;">
    	
   </div>
     <div class="col-sm-1" style="padding-top:4px;padding-bottom:2px;">
	   	<a href="${pageContext.request.contextPath}/spectrographData/getlist.do" class="btn btn-warning">返回上一级</a>
	 </div>
</div>
</form>
<div class="row" style="padding:15px; padding-top:0px;margin-top:3px;" >
	<table class="table table-condensed table-striped table-bordered table-hover">
	<thead>
		<tr>
        	<th class="col-sm-4">时间</th>
            <th class="col-sm-4">状态</th>
            <th class="col-sm-4">浓度</th>
        </tr>
	</thead>
	<tbody id="dataBody">
     </tbody>
        <tfoot>
        	<tr>
        		<td colspan="100%" align="center">
        		 <ul class="pagination">
        		 
				 </ul>
        	</td>
        	</tr>
        </tfoot>
    </table>
    <div class="col-sm-6" style="">
			<div class="panel panel-default" >
  				<div class="panel-heading" style=" padding:3px;height:30px;"  >
    				<span class="glyphicon glyphicon-refresh"></span>状态
  				</div>
      			<div class="panel-body">
     				<div id="zhuangtai" class="col-sm-12" style="height: 300px;"></div>
      			</div>
   			</div>
	</div>
	<div class="col-sm-6" style="">
		 			<div class="panel panel-default" >
          				<div class="panel-heading" style=" padding:3px;height:30px;"  >
            				<span class="glyphicon glyphicon-refresh"></span>浓度
          				</div>
              			<div class="panel-body">
             				<div id="nongdu" class="col-sm-12" style="height: 300px;"></div>
              			</div>
        			</div>
				</div>
</div>
 <script>
//执行一个laydate实例
	laydate.render({
	  elem: '#startTime', //指定元素
	  type:'datetime',
	  format:'yyyy-MM-dd HH:mm:ss'
	});
	var endDate = laydate.render({
		elem: '#endTime',
		type:'datetime',
		format:'yyyy-MM-dd HH:mm:ss'
	});
	//格式化时间的函数
    Date.prototype.format = function(fmt) { 
         var o = { 
            "M+" : this.getMonth()+1,                 //月份 
            "d+" : this.getDate(),                    //日 
            "h+" : this.getHours(),                   //小时 
            "m+" : this.getMinutes(),                 //分 
            "s+" : this.getSeconds(),                 //秒 
            "q+" : Math.floor((this.getMonth()+3)/3), //季度 
            "S"  : this.getMilliseconds()             //毫秒 
        }; 
        if(/(y+)/.test(fmt)) {
                fmt=fmt.replace(RegExp.$1, (this.getFullYear()+"").substr(4 - RegExp.$1.length)); 
        }
         for(var k in o) {
            if(new RegExp("("+ k +")").test(fmt)){
                 fmt = fmt.replace(RegExp.$1, (RegExp.$1.length==1) ? (o[k]) : (("00"+ o[k]).substr((""+ o[k]).length)));
             }
         }
        return fmt; 
    }
	
 // 基于准备好的dom，初始化echarts实例
	var myChart1 = echarts.init(document.getElementById('zhuangtai'));
	// 指定图表的配置项和数据
	
	// 基于准备好的dom，初始化echarts实例
	var myChart2 = echarts.init(document.getElementById('nongdu'));
	// 指定图表的配置项和数据
	var option2 = {
		title : {
			text:"近期浓度趋势"
		},
		 xAxis: {
			 type: 'category',
		        boundaryGap: false,
	            data:[]
	        },
	        yAxis: {
	        	type: 'value',
	            min:0
	        },
		    series: [{
		        data: [],
		        type: 'line',
		        areaStyle: {},
		    }]
	};
	// 使用刚指定的配置项和数据显示图表。
	myChart2.setOption(option2);
	
	
	var likeflag = false;
	$(function () {
	    pageQuery(1);//当页面加载完成查询第一页
	    $("#queryBtn").click(function(){
	    	var startTime = $("#startTime").val();
	    	var endTime = $("#endTime").val();
	    	if(startTime != "" && endTime != " "){
	    		likeflag = true;
	    	}
	    	pageQuery(1);
	    });
	});
	function pageQuery(pageno){
		var jsonData = {"pageno":pageno, "pagesize":10};
	   	var update = false;
	   	if(pageno==1){
	   		update = true;
	   		jsonData.update = update;
	   	}else{
	   		jsonData.update = update;
	   	}
	    if(likeflag == true){
	    	jsonData.startTime = $("#startTime").val();
	    	jsonData.endTime = $("#endTime").val(); 	
	    }
	    var state = $("#state").val();
	    $.ajax({
	        type:"POST",
	        url :"${pageContext.request.contextPath}/spectrographData/pageQuery.do",
	        data: jsonData,
	        success:function(result){
	        	var pageObj = result.data; //拿到json对象中的data
	        	var datas = pageObj.datas; //拿到data中的datas（集合）
                if(pageno ==1){
              	var datas2 = pageObj.datas2; //拿到data中的datas2（集合）
              	var states = [];
            	var dataTime = [];
            	var consistency = [];
              	  for(var i=0; i< datas2.length; i++){
              		dataTime.push(new Date(datas2[i].time).format("yyyy-MM-dd hh:mm:ss"));
              		states.push(datas2[i].states);
              		consistency.push(datas2[i].consistency)
              	  }
              	  
              	if(states === undefined || states.length == 0){
              		dataTime=[0,0];
              		states=[0,0];
              	}
              	var option1 = {
            			title: {
            	            text: '近期状态趋势'
            	        },
            	        tooltip: {
            	            trigger: 'axis'
            	        },
            	        xAxis: {
            	            data:dataTime
            	        },
            	        yAxis: {
            	            splitLine: {
            	                show: false
            	            },
            	        },
            	        toolbox: {
            	            left: 'center',
            	            feature: {
            	                dataZoom: {
            	                    yAxisIndex: 'none'
            	                },
            	                restore: {},
            	                saveAsImage: {}
            	            }
            	        },
            	        dataZoom: [{
            	            startValue: '2014-06-01'
            	        }, {
            	            type: 'inside'
            	        }],
            	        visualMap: {
            	            top: 10,
            	            right: 10,
            	            pieces: [{
            	                gt: 0,
            	                lte: 30,
            	                color: '#ffde33'
            	            }, {
            	                gt: 30,
            	                lte: 70,
            	                color: '#ff9933'
            	            }, {
            	                gt: 70,
            	                lte: 100,
            	                color: '#cc0033'
            	            }],
            	            outOfRange: {
            	                color: '#999'
            	            }
            	        },
            	        series: {
            	            name: 'states',
            	            type: 'line',
            	            data: states,
            	            markLine: {
            	                silent: true,
            	                data: [{
            	                    yAxis: 30
            	                }, {
            	                    yAxis: 70
            	                }, {
            	                    yAxis: 100
            	                }, {
            	                    yAxis: 150
            	                }]
            	            }
            	        }
            	};
            	// 使用刚指定的配置项和数据显示图表。
            	myChart1.setOption(option1);
              	  
              	  
              	  
              	  myChart2.setOption({
	              		xAxis: {
	                	    data: dataTime
	                	   },
                	        series: [{
                	            data: consistency
                	        }]
                	    });
                }
	        	
	        	var content = "";//拼接表格
	        	for(var i=0;i<datas.length;i++){
	        		content += '<tr>';
	        		content += '<td>'+new Date(datas[i].time).format("yyyy-MM-dd hh:mm:ss")+'</td>';
	        		content += '<td>'+datas[i].states.toFixed(2)+'</td>';
	        		content += '<td>'+datas[i].consistency.toFixed(2)+'</td>';
	        		content +='</tr>';
	        	}
	        	 $("#dataBody").html(content);
	        	 
	        	 var totalno = pageObj.totalPage;
	             var pageContent = "";
	             //首页
	             pageContent += '<li onclick="pageQuery('+1+')"><a href="#">首页</a></li>';
	             //上一页
	             if( pageno == 1){
	                 pageContent += '<li class="disabled"><a href="#">上一页</a></li>';
	             }else{
	                 pageContent += '<li onclick="pageQuery('+(pageno -1)+')"><a href="#">上一页</a></li>';
	             }
	             //中间部分
	             for( var i = pageno - 2; i< pageno + 2; i++){
	                 if(i<1||i>totalno){
	                      continue;
	                 }
	                 if( pageno == i){
	                      pageContent += '<li class="active"><a href="#">'+i+'</a></li>';
	                 }else{
	                      pageContent += '<li onclick="pageQuery('+i+')"><a href="#">'+i+'</a></li>';
	                 }
	             }
	             //下一页
	             if(pageno == totalno){
	                 pageContent += '<li class="disabled"><a href="#">下一页</a></li>';
	             }else{
	                 pageContent += '<li onclick="pageQuery('+(pageno + 1 )+')"><a href="#">下一页</a></li>';
	             }
	             //尾页
	             pageContent += '<li onclick="pageQuery('+totalno+')"><a href="#">尾页</a></li>';
	             pageContent += '<li><a>共' + pageObj.totalPage + '页</a></li>';
	             $(".pagination").html(pageContent);
	        },
	        error : function(jqXHR) {
	            alert("发生错误：" + jqXHR.status);
	        },
	    });
	}
</script>
</body>
</html>