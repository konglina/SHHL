package com.guet.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.guet.entity.BbesData;
import com.guet.service.BbesDataService;
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
		model.addAttribute("bbesDataList",bbesDataList);
		return "sensor_bbes";
	}
}
