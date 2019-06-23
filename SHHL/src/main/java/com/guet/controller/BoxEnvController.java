package com.guet.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.guet.entity.AjaxResult;
import com.guet.entity.BbesData;
import com.guet.entity.BoxEnv;
import com.guet.entity.Page;
import com.guet.service.BoxEnvService;
import com.guet.util.DateUtil;

@Controller
@RequestMapping("/boxenv")
public class BoxEnvController {
	@Resource
	private BoxEnvService boxEnvService;
	@RequestMapping("/list")
	public String getList(BoxEnv boxEnv){
		System.out.println("开始执行....了");
		Map<String, Object> map = new HashMap<String, Object>();
		List<BoxEnv> boxEnvList = boxEnvService.getList(map);
		for(BoxEnv boxEnv2 : boxEnvList){
			System.out.println(boxEnv2);
		}
		return null;
	}
	
	
	@RequestMapping("/pageQuery")
	@ResponseBody
	public Object pageQuery(Integer pageno, Integer pagesize ,String startTime, String endTime) throws Exception{
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
         List<BoxEnv> boxEnvs = boxEnvService.queryPageData(paramMap);
         for(BoxEnv bbesData : boxEnvs){
        	 System.out.println(bbesData);
         }
         //3.计算总页码数
         int totalsize = boxEnvService.queryPageCount(paramMap);//总记录数
         int totalno = 0; 
         if(totalsize % pagesize == 0) {
             totalno = totalsize / pagesize;
	     }else {
	         totalno = totalsize / pagesize + 1;
	     }
        Page<BoxEnv, Object> page = new Page<BoxEnv, Object>();
        page.setDatas(boxEnvs);
        page.setTotalsize(totalsize);
        page.setTotalno(totalno);
        page.setPageno(pageno);
        page.setPagesize(pagesize);
        
       /* System.out.println(bbesDatas);*/
    	result.setSuccess(true);
    	result.setData(page);
        
		return result;
	}
	
}
