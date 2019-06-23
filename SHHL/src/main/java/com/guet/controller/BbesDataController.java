package com.guet.controller;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.guet.entity.AjaxResult;
import com.guet.entity.BbesData;
import com.guet.entity.BbesData2;
import com.guet.entity.Page;
import com.guet.service.BbesData2Service;
import com.guet.service.BbesDataService;
import com.guet.util.DateUtil;


import org.springframework.ui.Model;
@Controller
@RequestMapping("/bbesData")
public class BbesDataController {
	@Resource
	private BbesDataService bbesDataService;
	@Resource
	private BbesData2Service bbesData2Service;
	@RequestMapping("/getlist")
	public String getList(BbesData bbesData,Model model){
		Map<String, Object> map = new HashMap<String, Object>();
		List<BbesData> bbesDataList = bbesDataService.getList(map);
		model.addAttribute("bbesDataList",JSON.toJSONString(bbesDataList));
		bbesDataList.get(0);
		model.addAttribute("newbbes",bbesDataList.get(0));
		return "sensor_bbes";
	}
	
	@RequestMapping("/realtime")
	@ResponseBody
	public String realtime(BbesData bbesData,Model model){
		Map<String, Object> map = new HashMap<String, Object>();
		List<BbesData> bbesDataList = bbesDataService.realtime(map);
		return JSON.toJSONString(bbesDataList);
	}
	
	@RequestMapping("/getlistBypage")
	public String  main(@RequestParam(value="currentPage",defaultValue="1",required=false)int currentPage,Model model){
		model.addAttribute("pagemsg", bbesDataService.findByPage(currentPage));//回显分页数据
		return "sensor_bbes";
	}
	@RequestMapping("/pageQuery")
	@ResponseBody
	public Object pageQuery(Integer pageno, Integer pagesize ,String startTime, String endTime, boolean update, HttpServletRequest request) throws Exception{
		System.out.println("update=" + update);
		//1.准备分页参数
		Map<String, Object> paramMap = new HashMap<String, Object>();
		AjaxResult result = new AjaxResult();
		 paramMap.put("start", (pageno-1) * pagesize);
         paramMap.put("size", pagesize);
         if(startTime != null && endTime != null){
        	 paramMap.put("startTime", DateUtil.formatString(startTime, "yyyy-MM-dd HH:mm:ss"));
        	 paramMap.put("endTime", DateUtil.formatString(endTime, "yyyy-MM-dd HH:mm:ss"));
         }
        //2.分页查询数据
         List<BbesData> bbesDatas = bbesDataService.queryPageData(paramMap);
         
         //3.计算总页码数
         int totalsize = bbesDataService.queryPageCount(paramMap);//总记录数
         int totalno = 0; 
         if(totalsize % pagesize == 0) {
             totalno = totalsize / pagesize;
	     }else {
	         totalno = totalsize / pagesize + 1;
	     }
        
        Page<BbesData, BbesData2> page = new Page<BbesData, BbesData2>();
        page.setDatas(bbesDatas);
        page.setTotalsize(totalsize);
        page.setTotalno(totalno);
        page.setPageno(pageno);
        page.setPagesize(pagesize);
        
        //4.查询历史数据 : 电压、电流、温度、电导率、压力、盐度
        
        if(update){
        	List<BbesData2> bbesData2s = bbesData2Service.queryData(paramMap);
        	page.setDatas2(bbesData2s);
        }
    	result.setSuccess(true);
    	result.setData(page);
        
		return result;
	}
	@RequestMapping("/history")
	public String getBbesDataHistory(){
		return "sensor_bbes_history";
	}
}
