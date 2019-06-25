package com.guet.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.alibaba.fastjson.JSON;
import com.guet.entity.UvaData;
import com.guet.service.UvaDataService;

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
		System.out.println("uva。。。。");
		System.out.println(uvaDataList.size());
		return "sensor_uva";
	}
}
