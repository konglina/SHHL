package com.guet.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.alibaba.fastjson.JSON;
import com.guet.entity.SpectrographData;
import com.guet.service.SpectrographDataService;

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
		System.out.println("spectrograph。。。。");
		System.out.println(spectrographDataList.size());
		return "sensor_spectrograph";
	}
}
