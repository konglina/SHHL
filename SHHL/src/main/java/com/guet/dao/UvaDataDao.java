package com.guet.dao;

import java.util.List;
import java.util.Map;

import com.guet.entity.BbesData;
import com.guet.entity.BbesData2;
import com.guet.entity.UvaData;

public interface UvaDataDao {
	/**
	 * 获取初始化数据
	 * @param map
	 * @return
	 */
	public List<UvaData> getList(Map<String, Object> map);
	/**
	 * 分页查询
	 * @param map
	 * @return
	 */
	public List<UvaData> queryPageData(Map<String , Object> map);
	/**
	 * 查询总记录数
	 * @param map
	 * @return
	 */
	public int queryPageCount(Map<String, Object> map);
	/**
	 * 查询历史数据
	 * @param map
	 * @return
	 */
	public List<UvaData> queryData(Map<String , Object> map);
	public List<UvaData> realtime(Map<String, Object> map);
}
