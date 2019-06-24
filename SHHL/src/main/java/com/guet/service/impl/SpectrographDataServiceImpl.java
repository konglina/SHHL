package com.guet.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.guet.dao.SpectrographDataDao;
import com.guet.entity.SpectrographData;
import com.guet.service.SpectrographDataService;

@Service("spectrographDataService")
public class SpectrographDataServiceImpl implements SpectrographDataService{
	@Resource
	private SpectrographDataDao spectrographDataDao;
	public List<SpectrographData> getList(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return spectrographDataDao.getList(map);
	}

}
