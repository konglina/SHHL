package com.guet.service.impl;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.guet.dao.BbesData2Dao;
import com.guet.dao.BbesDataDao;
import com.guet.dao.BoxEnvDao;
import com.guet.entity.BbesData;
import com.guet.entity.BbesData2;
import com.guet.entity.PageBean;
import com.guet.service.BbesData2Service;
import com.guet.service.BbesDataService;
/**
 * @author Micah Yin
 */
@Service("bbesData2Service")
public class BbesData2ServiceImpl implements BbesData2Service{
	@Resource
	private BbesData2Dao bbesData2Dao;

	public List<BbesData2> queryData(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return bbesData2Dao.queryData(map);
	}	
}
