package com.guet.dao;

import java.util.List;
import java.util.Map;

import com.guet.entity.UvaData;;

public interface UvaDataDao {
	/**
	 * 获取初始化数据
	 * @param map
	 * @return
	 */
	public List<UvaData> getList(Map<String, Object> map);
}
