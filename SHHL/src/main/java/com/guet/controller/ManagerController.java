package com.guet.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.guet.service.MangerService;

/**
 * 管理员Controller层
 * @author guet
 *
 */
@Controller
@RequestMapping("/manager2")
public class ManagerController {
	@Resource
	private MangerService mangerService;
}
