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
				<a href="#">接驳盒</a>
			</li>
			<li class="active">历史数据</li>
		</ul><!-- .breadcrumb -->					
</div>
<form method="POST" action="${pageContext.request.contextPath}/boxenv/pageQuery.do">
	<!-- <h5 class="page-header alert alert-info" style="padding:10px; margin:0; margin-bottom:5px;">查询历史数据</h5> -->
	<div class="row alert alert-info" style="margin:0px; padding:3px">
			<div class="col-sm-1" style="padding-top:9px;padding-left:3px;">历史数据查询</div>
			<div class="col-sm-2" style="padding-top:5px">
		    	<div class="input-group input-group-sm">
		    		<!-- <span class="input-group-addon">
						开始时间&nbsp;
					</span> -->
					<input type="text" id="startTime" name="startTime" autocomplete="off" placeholder="开始时间" class="layer-date form-control">
					<span class="input-group-addon">
						<i class="icon-calendar"></i>
					</span>
				</div>
		   </div> 
		   
		   <div class="col-sm-2" style="padding-top:5px;padding-bottom:2px;">
		    	<div class="input-group input-group-sm">
		    		<!-- <span class="input-group-addon">
						结束时间&nbsp;
					</span> -->
					<input type="text" id="endTime" name="endTime" autocomplete="off" placeholder="结束时间" class="form-control">
					<span class="input-group-addon">
						<i class="icon-calendar"></i>
					</span>
				</div>
		   </div>
		     
		   <div class="col-sm-1" style="padding-top:4px;padding-bottom:2px;">
			   	<input type="button" id="queryBtn" class="btn btn-danger" value="查询"/>
		   </div>
		   <div class="col-sm-6" style="padding-top:5px;padding-bottom:2px;">
		    	
		   </div>
		  
	</div>
</form>
<div  style="padding:2px; margin:0px;"  >
<div class="row" style="padding:15px; padding-top:0px;" >
			<table class="table table-condensed table-striped table-bordered table-hover">
		<thead id="dataHead">

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
</div>

</div>

<script type="text/javascript">
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
	function pageQuery(pageno) {
        var jsonData = {"pageno":pageno, "pagesize":15};
        if(likeflag == true){
        	jsonData.startTime = $("#startTime").val();
        	jsonData.endTime = $("#endTime").val();
        	
        }
		
			$.ajax({
                type:"POST",
                url :"${pageContext.request.contextPath}/boxenv/pageQuery.do",
                data: jsonData,
                success:function(result){ 
                     if(result.success){ //把后台返回的是一个result对象,query智能解析为json对象
                          var pageObj = result.data; //拿到json对象中的data
                       
                          var datas = pageObj.datas; //拿到data中的datas（集合）
                        
                          var headContent = "";
                          	headContent += '<tr >'
	        				headContent += '<th>编号</th>     ';
	        	        	headContent += '<th>时间</th>     ';
	        	            headContent += '<th>输入电压</th>  ';
	        	            headContent += '<th>输入电流</th>  ';
	        	            headContent += '<th>湿度</th>  ';
	        	            headContent += '<th>漏水</th>  ';
	        	          	headContent += '<th>温度1</th>  ';
	        	            headContent += '<th>温度2</th>  ';
	        	            headContent += '<th>温度3</th>  ';
	        	            headContent += '<th>温度4</th>  ';
	        	            headContent += '<th>输出电压1</th>  ';
	        	            headContent += '<th>输出电压2</th> ';
	        	            headContent += '<th>输出电压3</th>  ';
	        	            headContent += '<th>输出电压4</th> ';
	        	            headContent += '<th>输出电压5</th>  ';
	        	            headContent += '<th>输出电压6</th> ';
	        	            headContent += '<th>输出电压7</th>  ';
	        	            headContent += '<th>输出电压8</th> ';
	        	            headContent += '<th>输出电流1</th> ';
	        	            headContent += '<th>输出电流2</th> ';
	        	            headContent += '<th>输出电流3</th> ';
	        	            headContent += '<th>输出电流4</th> ';
	        	            headContent += '<th>输出电流5</th> ';
	        	            headContent += '<th>输出电流6</th> ';
	        	            headContent += '<th>输出电流7</th> ';
	        	            headContent += '<th>输出电流8</th> ';
             			 	headContent += '</tr>';
             			 	$("#dataHead").html(headContent);
                          var content = "";//拼接表格
                  		
                          for(var i = 0;i < datas.length; i++){
                              var bbesData = datas[i];//取到每一条数据
                             
                              var date = new Date(bbesData.time);
                              var Y = date.getFullYear() + '-'
                              var M = (date.getMonth() + 1 < 10 ? '0' + (date.getMonth() + 1) : date.getMonth() + 1) + '-'
                              var D = (date.getDate() < 10 ? '0' + date.getDate() : date.getDate()) + ' '
                              var h = (date.getHours() < 10 ? '0' + date.getHours() : date.getHours()) + ':'
                              var m = (date.getMinutes() < 10 ? '0' + date.getMinutes() : date.getMinutes()) + ':'
                              var s = (date.getSeconds() < 10 ? '0' + date.getSeconds() : date.getSeconds())
                              time = Y + M + D + h + m + s;
                              //alert(time); 
                              
                              content += '<tr>';
                            content += '<td>'+(i+1)+'</td>';
                            content += '<td>'+ time +'</td>';  
                            content += '<td>'+ bbesData.inVoltage.toFixed(2); +'</td>'; 
                            content += '<td>'+ bbesData.inCurrent.toFixed(2) +'</td>'; 
                            content += '<td>'+ bbesData.humidity.toFixed(2) +'</td>';
                            content += '<td>'+ bbesData.leakage.toFixed(2) +'</td>';
                            content += '<td>'+ bbesData.temperature1.toFixed(2) +'</td>';
                            content += '<td>'+ bbesData.temperature2.toFixed(2) +'</td>';
                            content += '<td>'+ bbesData.temperature3.toFixed(2) +'</td>';
                            content += '<td>'+ bbesData.temperature4.toFixed(2) +'</td>';
                            content += '<td>'+ bbesData.outVoltage1.toFixed(2) +'</td>';
                            content += '<td>'+ bbesData.outVoltage2.toFixed(2) +'</td>';
                            content += '<td>'+ bbesData.outVoltage3.toFixed(2) +'</td>';
                            content += '<td>'+ bbesData.outVoltage4.toFixed(2) +'</td>';
                            content += '<td>'+ bbesData.outVoltage5.toFixed(2) +'</td>';
                            content += '<td>'+ bbesData.outVoltage6.toFixed(2) +'</td>';
                            content += '<td>'+ bbesData.outVoltage7.toFixed(2) +'</td>';
                            content += '<td>'+ bbesData.outVoltage8.toFixed(2) +'</td>';
                            content += '<td>'+ bbesData.outCurrent1.toFixed(2) +'</td>';
                            content += '<td>'+ bbesData.outCurrent2.toFixed(2) +'</td>';
                            content += '<td>'+ bbesData.outCurrent3.toFixed(2) +'</td>';
                            content += '<td>'+ bbesData.outCurrent4.toFixed(2) +'</td>';
                            content += '<td>'+ bbesData.outCurrent5.toFixed(2) +'</td>';
                            content += '<td>'+ bbesData.outCurrent6.toFixed(2) +'</td>';
                            content += '<td>'+ bbesData.outCurrent7.toFixed(2) +'</td>';
                            content += '<td>'+ bbesData.outCurrent8.toFixed(2) +'</td>';
                            content += '</tr>';
                          
                          }
                          $("#dataBody").html(content);
                          
                          var totalno = pageObj.totalno;
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
                          pageContent += '<li><a>共' + pageObj.totalno + '页</a></li>';
                          $(".pagination").html(pageContent);
                     }else{
                    	alert("分页查询失败!!!");
                     }
                     
                }
           });
		}
		
           
      
</script>
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
</script>
</body>
</html>