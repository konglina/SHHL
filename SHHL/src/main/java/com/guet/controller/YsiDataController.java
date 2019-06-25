package com.guet.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.guet.entity.AjaxResult;
import com.guet.entity.BbesData;
import com.guet.entity.BbesData2;
import com.guet.entity.Page;
import com.guet.entity.PageBean;
import com.guet.entity.YsiData;
import com.guet.service.YsiDataService;
import com.guet.util.DateUtil;

@Controller
@RequestMapping("/ysiData")
public class YsiDataController {
	@Resource
	private YsiDataService ysiDataService;
	@RequestMapping("/getlist")
	public String getList(YsiData ysiData,Model model){
		Map<String, Object> map = new HashMap<String, Object>();
		List<YsiData> ysiDataList = ysiDataService.getList(map);
		model.addAttribute("ysiDataList",JSON.toJSONString(ysiDataList));
		model.addAttribute("newysi",ysiDataList.get(0));
		return "sensor_ysi";
	}
	@RequestMapping("/realtime")
	@ResponseBody
	public String realtime(YsiData ysiData){
		Map<String, Object> map = new HashMap<String, Object>();
		List<YsiData> ysiDataList = ysiDataService.realtime(map);
		return JSON.toJSONString(ysiDataList);
	}
	
	@RequestMapping("/pageQuery")
	@ResponseBody
	public Object pageQuery(Integer pageno, Integer pagesize ,String startTime, String endTime, boolean update, HttpServletRequest request) throws Exception{
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
         List<YsiData> ysiDatas = ysiDataService.queryPageData(paramMap);
         
         //3.计算总页码数
         int totalsize = ysiDataService.queryPageCount(paramMap);//总记录数
         int totalno = 0; 
         if(totalsize % pagesize == 0) {
             totalno = totalsize / pagesize;
	     }else {
	         totalno = totalsize / pagesize + 1;
	     }
        PageBean<YsiData> page = new PageBean<YsiData>();
        page.setDatas(ysiDatas);
        page.setTotalCount(totalsize);
        page.setTotalPage(totalno);
        page.setCurrPage(pageno);
        page.setPageSize(pagesize);
    	result.setSuccess(true);
    	result.setData(page);
		return result;
	}
}
