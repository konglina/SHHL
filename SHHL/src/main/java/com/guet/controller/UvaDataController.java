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
import com.guet.entity.PageBean;
import com.guet.entity.UvaData;
import com.guet.service.UvaDataService;
import com.guet.util.DateUtil;

@Controller
@RequestMapping("/uvaData")
public class UvaDataController {
	@Resource
	private UvaDataService uvaDataService;
	@RequestMapping("/getlist")
	public String getList(UvaData uvaData,Model model){
		Map<String, Object> map = new HashMap<String, Object>();
		List<UvaData> uvaDataList = uvaDataService.getList(map);
		model.addAttribute("uvaDataList",JSON.toJSONString(uvaDataList));
		if(uvaDataList.size()>0){
			model.addAttribute("newuva",uvaDataList.get(0));
		}
		return "sensor_uva";
	}
	
	@RequestMapping("/realtime")
	@ResponseBody
	public String realtime(UvaData uvaData,Model model){
		Map<String, Object> map = new HashMap<String, Object>();
		List<UvaData> uvaDataList = uvaDataService.realtime(map);
		return JSON.toJSONString(uvaDataList);
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
         List<UvaData> ysiDatas = uvaDataService.queryPageData(paramMap);
         
         //3.计算总页码数
         int totalsize = uvaDataService.queryPageCount(paramMap);//总记录数
         int totalno = 0; 
         if(totalsize % pagesize == 0) {
             totalno = totalsize / pagesize;
	     }else {
	         totalno = totalsize / pagesize + 1;
	     }
        PageBean<UvaData> page = new PageBean<UvaData>();
        page.setDatas(ysiDatas);
        page.setTotalCount(totalsize);
        page.setTotalPage(totalno);
        page.setCurrPage(pageno);
        page.setPageSize(pagesize);
        if(update){
        	List<UvaData> uvaData2s = uvaDataService.queryData(paramMap);
        	page.setDatas2(uvaData2s);
        }
    	result.setSuccess(true);
    	result.setData(page);
		return result;
	}
}
