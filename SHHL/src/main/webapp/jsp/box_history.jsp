<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/assets/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/assets/css/font-awesome.min.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/assets/css/jquery-ui-1.10.3.full.min.css" />
<script src="${pageContext.request.contextPath}/static/assets/js/ace-extra.min.js"></script>
<%-- <link rel="stylesheet" href="${pageContext.request.contextPath}/static/assets/css/ace.min.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/assets/css/ace-rtl.min.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/assets/css/ace-skins.min.css" /> --%>
<script src="${pageContext.request.contextPath}/static/bootstrap/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/static/bootstrap/js/bootstrap.min.js"></script>
 <script src="${pageContext.request.contextPath}/static/laydate/laydate.js"></script>
 
<script type="text/javascript" src="${pageContext.request.contextPath}/static/date-time/bootstrap-datetimepicker.min-2.js"></script>
<link rel="stylesheet" type="text/css" media="screen" href="${pageContext.request.contextPath}/static/date-time/bootstrap-datetimepicker.min.css">
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
				<a href="#">接驳盒</a>
			</li>
			<li class="active">历史数据查询</li>
		</ul><!-- .breadcrumb -->					
</div>
<div class="page-content">
<div class="row alert alert-info" style="margin:0px; padding:3px">
	<div class="col-sm-1" style="padding-top:9px">选择时间范围</div>
    <div class="col-sm-2" style="padding-top:4px;">
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
   
   <div class="col-sm-2" style="padding-top:4px;">
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
   <div class="col-sm-1" style="padding-top:4px;">
   	<input type="button" class="btn btn-danger" value="查询"/>
   </div>
   
</div>
</div>
<div class="row" style="padding:15px; padding-top:0px;margin-top:2px;" >
	<table class="table table-condensed table-striped table-bordered table-hover">
    	<tr >
        	<th>时间</th>
            <th>输入电流</th>
            <th>输入电压</th>
            <th>湿度</th>
            <th>温度1</th>
            <th>温度2</th>
            <th>温度3</th> 
            <th>温度4</th>
            <th>输出电压1</th>
            <th>输出电压2</th>
            <th>输出电压3</th>
            <th>输出电压4</th>
            <th>输出电压5</th>
            <th>输出电压6</th>
            <th>输出电压7</th>
            <th>输出电压8</th>
             <th>输出电压1</th>
            <th>输出电压2</th>
            <th>输出电压3</th>
            <th>输出电压4</th>
            <th>输出电压5</th>
            <th>输出电压6</th>
            <th>输出电压7</th>
            <th>输出电压8</th>
         
        </tr>
        <tr>
        	<td><a href="${pageContext.request.contextPath}/view/system/staff_info/staffinfo_show.jsp">2019-04-12 14:57:48</a></td>
            <td>26</td>
            <td>13</td>
            <td>34</td>
            <td>54</td>
            <td>56</td>
            <td>67</td> 
            <td>67</td> 
            <td>54</td>
            <td>56</td>
            <td>67</td> 
            <td>67</td> 
            <td>54</td>
            <td>56</td>
            <td>67</td> 
            <td>67</td> 
            <td>54</td>
            <td>56</td>
            <td>67</td> 
            <td>67</td> 
            <td>54</td>
            <td>56</td>
            <td>67</td> 
            <td>67</td> 
        </tr>
		<tr>
        	<td><a href="${pageContext.request.contextPath}/view/system/staff_info/staffinfo_show.jsp">2019-04-12 14:57:48</a></td>
            <td>25</td>
            <td>14</td>
            <td>35</td>
            <td>53</td>
            <td>55</td>
            <td>66</td> 
            <td>65</td> 
            <td>55</td>
            <td>55</td>
            <td>68</td> 
            <td>66</td> 
            <td>55</td>
            <td>50</td>
            <td>63</td> 
            <td>64</td> 
            <td>55</td>
            <td>52</td>
            <td>63</td> 
            <td>60</td> 
            <td>50</td>
            <td>51</td>
            <td>60</td> 
            <td>69</td> 
        </tr>
        <tr>
        	<td><a href="${pageContext.request.contextPath}/view/system/staff_info/staffinfo_show.jsp">2019-04-12 14:57:48</a></td>
            <td>23</td>
            <td>14</td>
            <td>30</td>
            <td>50</td>
            <td>55</td>
            <td>65</td> 
            <td>60</td> 
            <td>44</td>
            <td>45</td>
            <td>46</td> 
            <td>67</td> 
            <td>22</td>
            <td>35</td>
            <td>25</td> 
            <td>36</td> 
            <td>25</td>
            <td>36</td>
            <td>25</td> 
            <td>36</td> 
            <td>22</td>
            <td>26</td>
            <td>23</td> 
            <td>24</td> 
        </tr>
        <tr>
        	<td><a href="${pageContext.request.contextPath}/view/system/staff_info/staffinfo_show.jsp">2019-04-12 14:57:48</a></td>
            <td>23</td>
            <td>23</td>
            <td>44</td>
            <td>64</td>
            <td>36</td>
            <td>27</td> 
            <td>37</td> 
            <td>34</td>
            <td>46</td>
            <td>57</td> 
            <td>27</td> 
            <td>34</td>
            <td>46</td>
            <td>57</td> 
            <td>17</td> 
            <td>24</td>
            <td>36</td>
            <td>57</td> 
            <td>44</td>
            <td>36</td>
            <td>27</td> 
            <td>37</td> 
        </tr>
        <tr>
        	<td><a href="${pageContext.request.contextPath}/view/system/staff_info/staffinfo_show.jsp">2019-04-12 14:57:48</a></td>
            <td>36</td>
            <td>23</td>
            <td>64</td>
            <td>54</td>
            <td>46</td>
            <td>37</td> 
            <td>27</td> 
            <td>14</td>
            <td>66</td>
            <td>47</td> 
            <td>27</td> 
            <td>34</td>
            <td>46</td>
            <td>57</td> 
            <td>67</td> 
            <td>74</td>
            <td>76</td>
            <td>67</td> 
            <td>57</td> 
            <td>44</td>
            <td>36</td>
            <td>27</td> 
            <td>17</td> 
        </tr>
        <tr>
        	<td><a href="${pageContext.request.contextPath}/view/system/staff_info/staffinfo_show.jsp">2019-04-12 14:57:48</a></td>
            <td>22</td>
            <td>23</td>
            <td>24</td>
            <td>53</td>
            <td>52</td>
            <td>65</td> 
            <td>65</td> 
            <td>34</td>
            <td>36</td>
            <td>44</td> 
            <td>45</td> 
            <td>27</td>
            <td>26</td>
            <td>17</td> 
            <td>27</td> 
            <td>34</td>
            <td>26</td>
            <td>22</td> 
            <td>26</td> 
            <td>27</td>
            <td>29</td>
            <td>17</td> 
            <td>18</td> 
        </tr>
        <tr>
        	<td><a href="${pageContext.request.contextPath}/view/system/staff_info/staffinfo_show.jsp">2019-04-12 14:57:48</a></td>
            <td>25</td>
            <td>14</td>
            <td>35</td>
            <td>53</td>
            <td>55</td>
            <td>66</td> 
            <td>65</td> 
            <td>55</td>
            <td>55</td>
            <td>68</td> 
            <td>66</td> 
            <td>55</td>
            <td>50</td>
            <td>63</td> 
            <td>64</td> 
            <td>55</td>
            <td>52</td>
            <td>63</td> 
            <td>60</td> 
            <td>50</td>
            <td>51</td>
            <td>60</td> 
            <td>69</td> 
        </tr>
        <tr>
        	<td><a href="${pageContext.request.contextPath}/view/system/staff_info/staffinfo_show.jsp">2019-04-12 14:57:48</a></td>
            <td>26</td>
            <td>13</td>
            <td>34</td>
            <td>54</td>
            <td>56</td>
            <td>67</td> 
            <td>67</td> 
            <td>54</td>
            <td>56</td>
            <td>67</td> 
            <td>67</td> 
            <td>54</td>
            <td>56</td>
            <td>67</td> 
            <td>67</td> 
            <td>54</td>
            <td>56</td>
            <td>67</td> 
            <td>67</td> 
            <td>54</td>
            <td>56</td>
            <td>67</td> 
            <td>67</td> 
        </tr>
         <tr>
        	<td><a href="${pageContext.request.contextPath}/view/system/staff_info/staffinfo_show.jsp">2019-04-12 14:57:48</a></td>
            <td>25</td>
            <td>14</td>
            <td>35</td>
            <td>53</td>
            <td>55</td>
            <td>66</td> 
            <td>65</td> 
            <td>55</td>
            <td>55</td>
            <td>68</td> 
            <td>66</td> 
            <td>55</td>
            <td>50</td>
            <td>63</td> 
            <td>64</td> 
            <td>55</td>
            <td>52</td>
            <td>63</td> 
            <td>60</td> 
            <td>50</td>
            <td>51</td>
            <td>60</td> 
            <td>69</td> 
        </tr>
         <tr>
        	<td><a href="${pageContext.request.contextPath}/view/system/staff_info/staffinfo_show.jsp">2019-04-12 14:57:48</a></td>
           <td>26</td>
            <td>13</td>
            <td>34</td>
            <td>54</td>
            <td>56</td>
            <td>67</td> 
            <td>67</td> 
            <td>54</td>
            <td>56</td>
            <td>67</td> 
            <td>67</td> 
            <td>54</td>
            <td>56</td>
            <td>67</td> 
            <td>67</td> 
            <td>54</td>
            <td>56</td>
            <td>67</td> 
            <td>67</td> 
            <td>54</td>
            <td>56</td>
            <td>67</td> 
            <td>67</td> 
        </tr>
         <tr>
        	<td><a href="${pageContext.request.contextPath}/view/system/staff_info/staffinfo_show.jsp">2019-04-12 14:57:48</a></td>
             <td>25</td>
            <td>14</td>
            <td>35</td>
            <td>53</td>
            <td>55</td>
            <td>66</td> 
            <td>65</td> 
            <td>55</td>
            <td>55</td>
            <td>68</td> 
            <td>66</td> 
            <td>55</td>
            <td>50</td>
            <td>63</td> 
            <td>64</td> 
            <td>55</td>
            <td>52</td>
            <td>63</td> 
            <td>60</td> 
            <td>50</td>
            <td>51</td>
            <td>60</td> 
            <td>69</td> 
        </tr>
         <tr>
        	<td><a href="${pageContext.request.contextPath}/view/system/staff_info/staffinfo_show.jsp">2019-04-12 14:57:48</a></td>
            <td>26</td>
            <td>13</td>
            <td>34</td>
            <td>54</td>
            <td>56</td>
            <td>67</td> 
            <td>67</td> 
            <td>54</td>
            <td>56</td>
            <td>67</td> 
            <td>67</td> 
            <td>54</td>
            <td>56</td>
            <td>67</td> 
            <td>67</td> 
            <td>54</td>
            <td>56</td>
            <td>67</td> 
            <td>67</td> 
            <td>54</td>
            <td>56</td>
            <td>67</td> 
            <td>67</td> 
        </tr>
         <tr>
        	<td><a href="${pageContext.request.contextPath}/view/system/staff_info/staffinfo_show.jsp">2019-04-12 14:57:48</a></td>
            <td>25</td>
            <td>14</td>
            <td>35</td>
            <td>53</td>
            <td>55</td>
            <td>66</td> 
            <td>65</td> 
            <td>55</td>
            <td>55</td>
            <td>68</td> 
            <td>66</td> 
            <td>55</td>
            <td>50</td>
            <td>63</td> 
            <td>64</td> 
            <td>55</td>
            <td>52</td>
            <td>63</td> 
            <td>60</td> 
            <td>50</td>
            <td>51</td>
            <td>60</td> 
            <td>69</td> 
        </tr>
         <tr>
        	<td><a href="${pageContext.request.contextPath}/view/system/staff_info/staffinfo_show.jsp">2019-04-12 14:57:48</a></td>
            <td>26</td>
            <td>13</td>
            <td>34</td>
            <td>54</td>
            <td>56</td>
            <td>67</td> 
            <td>67</td> 
            <td>54</td>
            <td>56</td>
            <td>67</td> 
            <td>67</td> 
            <td>54</td>
            <td>56</td>
            <td>67</td> 
            <td>67</td> 
            <td>54</td>
            <td>56</td>
            <td>67</td> 
            <td>67</td> 
            <td>54</td>
            <td>56</td>
            <td>67</td> 
            <td>67</td> 
        </tr>
         <tr>
        	<td><a href="${pageContext.request.contextPath}/view/system/staff_info/staffinfo_show.jsp">2019-04-12 14:57:48</a></td>
            <td>25</td>
            <td>14</td>
            <td>35</td>
            <td>53</td>
            <td>55</td>
            <td>66</td> 
            <td>65</td> 
            <td>55</td>
            <td>55</td>
            <td>68</td> 
            <td>66</td> 
            <td>55</td>
            <td>50</td>
            <td>63</td> 
            <td>64</td> 
            <td>55</td>
            <td>52</td>
            <td>63</td> 
            <td>60</td> 
            <td>50</td>
            <td>51</td>
            <td>60</td> 
            <td>69</td> 
        </tr>
         <tr>
        	<td><a href="${pageContext.request.contextPath}/view/system/staff_info/staffinfo_show.jsp">2019-04-12 14:57:48</a></td>
            <td>26</td>
            <td>13</td>
            <td>34</td>
            <td>54</td>
            <td>56</td>
            <td>67</td> 
            <td>67</td> 
            <td>54</td>
            <td>56</td>
            <td>67</td> 
            <td>67</td> 
            <td>54</td>
            <td>56</td>
            <td>67</td> 
            <td>67</td> 
            <td>54</td>
            <td>56</td>
            <td>67</td> 
            <td>67</td> 
            <td>54</td>
            <td>56</td>
            <td>67</td> 
            <td>67</td> 
        </tr>
         <tr>
        	<td><a href="${pageContext.request.contextPath}/view/system/staff_info/staffinfo_show.jsp">2019-04-12 14:57:48</a></td>
           <td>25</td>
            <td>14</td>
            <td>35</td>
            <td>53</td>
            <td>55</td>
            <td>66</td> 
            <td>65</td> 
            <td>55</td>
            <td>55</td>
            <td>68</td> 
            <td>66</td> 
            <td>55</td>
            <td>50</td>
            <td>63</td> 
            <td>64</td> 
            <td>55</td>
            <td>52</td>
            <td>63</td> 
            <td>60</td> 
            <td>50</td>
            <td>51</td>
            <td>60</td> 
            <td>69</td> 
        </tr>
         <tr>
        	<td><a href="${pageContext.request.contextPath}/view/system/staff_info/staffinfo_show.jsp">2019-04-12 14:57:48</a></td>
            <td>26</td>
            <td>13</td>
            <td>34</td>
            <td>54</td>
            <td>56</td>
            <td>67</td> 
            <td>67</td> 
            <td>54</td>
            <td>56</td>
            <td>67</td> 
            <td>67</td> 
            <td>54</td>
            <td>56</td>
            <td>67</td> 
            <td>67</td> 
            <td>54</td>
            <td>56</td>
            <td>67</td> 
            <td>67</td> 
            <td>54</td>
            <td>56</td>
            <td>67</td> 
            <td>67</td> 
        </tr>
        <tfoot>
        	<tr>
        		<td colspan="100%" align="center">
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
        	</tr>
        </tfoot>
    </table>
    	
</div>

<script src="${pageContext.request.contextPath}/static/assets/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/static/assets/js/typeahead-bs2.min.js"></script>

<!-- page specific plugin scripts -->

<script src="${pageContext.request.contextPath}/static/assets/js/jquery-ui-1.10.3.full.min.js"></script>
<script src="${pageContext.request.contextPath}/static/assets/js/jquery.ui.touch-punch.min.js"></script>

<!-- ace scripts -->

<script src="${pageContext.request.contextPath}/static/assets/js/ace-elements.min.js"></script>
<script src="${pageContext.request.contextPath}/static/assets/js/ace.min.js"></script>
<script type="text/javascript">
	jQuery(function($){
		$("#datepicker").datepicker({
			showOtherMonths: true,
			selectOtherMonths: false,
		});
	});
</script>
<script>
//执行一个laydate实例
laydate.render({
  elem: '#test1' //指定元素
});
laydate.render({
	  elem: '#test2' //指定元素
	});
</script>
</body>
</html>