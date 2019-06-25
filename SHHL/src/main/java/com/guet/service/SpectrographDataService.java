package com.guet.service;

import java.util.List;
import java.util.Map;

import com.guet.entity.SpectrographData;

public interface SpectrographDataService {
	public List<SpectrographData> getList(Map<String, Object> map);
}
