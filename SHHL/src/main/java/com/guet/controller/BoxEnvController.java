package com.guet.controller;

import java.io.IOException;
import java.sql.Connection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.guet.dao.BoxEnvDao2;
import com.guet.entity.AjaxResult;
import com.guet.entity.BoxEnv;
import com.guet.entity.Page;
import com.guet.init.getConfigInfo;
import com.guet.service.BoxEnvService;
import com.guet.util.DateUtil;
import com.guet.util.DbUtil;

@Controller
@RequestMapping("/boxenv")
public class BoxEnvController {
	private DbUtil dbUtil = new DbUtil();
	private Connection con = null;
	private BoxEnvDao2 boxEnvDao2 = new BoxEnvDao2();
	@Resource
	private BoxEnvService boxEnvService;
	@RequestMapping("/list")
	public String getList(Model model) throws Exception{
		con = dbUtil.getCon();
		BoxEnv boxEnv = boxEnvDao2.getNewest(con);
		model.addAttribute("boxEnv", boxEnv);
		model.addAttribute("boxEnvJson", JSON.toJSONString(boxEnv));
		//System.out.println("boxEnv=" + boxEnv);
		dbUtil.closeCon(con);
		return "box_realtime";
	}
	@RequestMapping("/box_realtime")
	@ResponseBody
	public Object getNewest(Model model) throws Exception{
		AjaxResult result = new AjaxResult();

		con = dbUtil.getCon();
		BoxEnv boxEnv = boxEnvDao2.getNewest(con);
		System.out.println("boxEnv=" + boxEnv);
		dbUtil.closeCon(con);
		if(boxEnv != null){
			result.setSuccess(true);
			result.setData(boxEnv);
		}else{
			result.setSuccess(false);	
		}
		return result;
	}
	
	
	@RequestMapping("/pageQuery")
	@ResponseBody
	public Object pageQuery(Integer pageno, Integer pagesize ,String startTime, String endTime) throws Exception{
		//1.准备分页参数
		Map<String, Object> paramMap = new HashMap<String, Object>();
		con = dbUtil.getCon();
		AjaxResult result = new AjaxResult();
		 paramMap.put("start", (pageno-1) * pagesize);
         paramMap.put("size", pagesize);
         if(startTime != null && endTime != null){
        	 paramMap.put("startTime", DateUtil.formatString(startTime, "yyyy-MM-dd HH:mm:ss"));
        	 paramMap.put("endTime", DateUtil.formatString(endTime, "yyyy-MM-dd HH:mm:ss"));
         }
        //2.分页查询数据
         List<BoxEnv> boxEnvs = boxEnvDao2.queryPageData(con, paramMap);
         //List<BoxEnv> boxEnvs = boxEnvService.queryPageData(paramMap);
        /* for(BoxEnv bbesData : boxEnvs){
        	 System.out.println(bbesData);
         }*/
         //3.计算总页码数
         if(con == null){
        	 con = dbUtil.getCon();
         }
         int totalsize = boxEnvDao2.queryPageCount(con, paramMap);
         //int totalsize = boxEnvService.queryPageCount(paramMap);//总记录数
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
	@RequestMapping("realtime_stream")
	public String realtime(Model model){
		
		try {
			String ip = getConfigInfo.getInfo("device.ip");
			String username = getConfigInfo.getInfo("device.username");
			String password = getConfigInfo.getInfo("device.password");
			model.addAttribute("ip", ip);
			model.addAttribute("username", username);
			model.addAttribute("password", password);
			/*System.out.println(ip + "," + username + "," + password);*/
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "realtime_stream";
	}
	
}
