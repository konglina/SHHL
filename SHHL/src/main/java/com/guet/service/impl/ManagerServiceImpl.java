package com.guet.service.impl;
import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.guet.dao.ManagerDao;
import com.guet.service.MangerService;
/**
 * 管理员Service实现类
 * @author guet
 *
 */
@Service("managerService")
public class ManagerServiceImpl implements MangerService{
	@Resource
	private ManagerDao managerDao;
}
