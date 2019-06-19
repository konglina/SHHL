package com.guet.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.omg.PortableInterceptor.SUCCESSFUL;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.guet.entity.BbesData;
import com.guet.service.BbesDataService;
import com.sun.net.httpserver.Authenticator.Success;

import org.springframework.ui.Model;
@Controller
@RequestMapping("/bbesData")
public class BbesDataController {
	@Resource
	private BbesDataService bbesDataService;
	
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
	public String realtime(BbesData bbesData){
		Map<String, Object> map = new HashMap<String, Object>();
		List<BbesData> bbesDataList = bbesDataService.realtime(map);
		return JSON.toJSONString(bbesDataList);
	}
	
	@RequestMapping("/getlistBypage")
	public String  main(@RequestParam(value="currentPage",defaultValue="1",required=false)int currentPage,Model model){
		model.addAttribute("pagemsg", bbesDataService.findByPage(currentPage));//回显分页数据
		return "sensor_bbes";
	}
}
