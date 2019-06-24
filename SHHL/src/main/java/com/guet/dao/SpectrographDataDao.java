package com.guet.dao;

import java.util.List;
import java.util.Map;
import com.guet.entity.SpectrographData;

public interface SpectrographDataDao {
	/**
	 * 获取初始化数据
	 * @param map
	 * @return
	 */
	public List<SpectrographData> getList(Map<String, Object> map);
}
