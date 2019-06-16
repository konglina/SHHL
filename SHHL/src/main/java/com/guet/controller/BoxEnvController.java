package com.guet.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.guet.entity.BoxEnv;
import com.guet.service.BoxEnvService;

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
}
