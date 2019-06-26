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
import com.guet.entity.SpectrographData;
import com.guet.entity.YsiData;
import com.guet.service.SpectrographDataService;
import com.guet.util.DateUtil;

@Controller
@RequestMapping("/spectrographData")
public class SpectrographDataController {
	@Resource
	private SpectrographDataService spectrographDataService;
	@RequestMapping("/getlist")
	public String getList(SpectrographData spectrographData,Model model){
		Map<String, Object> map = new HashMap<String, Object>();
		List<SpectrographData> spectrographDataList = spectrographDataService.getList(map);
		model.addAttribute("spectrographDataList",JSON.toJSONString(spectrographDataList));
		if(spectrographDataList.size()>0){
			model.addAttribute("newspectrograph",spectrographDataList.get(0));
		}
		return "sensor_spectrograph";
	}
	
	@RequestMapping("/realtime")
	@ResponseBody
	public String realtime(SpectrographData bbesData,Model model){
		Map<String, Object> map = new HashMap<String, Object>();
		List<SpectrographData> spectrographDataList = spectrographDataService.realtime(map);
		return JSON.toJSONString(spectrographDataList);
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
         List<SpectrographData> ysiDatas = spectrographDataService.queryPageData(paramMap);
         
         //3.计算总页码数
         int totalsize = spectrographDataService.queryPageCount(paramMap);//总记录数
         int totalno = 0; 
         if(totalsize % pagesize == 0) {
             totalno = totalsize / pagesize;
	     }else {
	         totalno = totalsize / pagesize + 1;
	     }
        PageBean<SpectrographData> page = new PageBean<SpectrographData>();
        page.setDatas(ysiDatas);
        page.setTotalCount(totalsize);
        page.setTotalPage(totalno);
        page.setCurrPage(pageno);
        page.setPageSize(pagesize);
        if(update){
        	List<SpectrographData> spectrographData2s = spectrographDataService.queryData(paramMap);
        	page.setDatas2(spectrographData2s);
        }
    	result.setSuccess(true);
    	result.setData(page);
		return result;
	}
}
