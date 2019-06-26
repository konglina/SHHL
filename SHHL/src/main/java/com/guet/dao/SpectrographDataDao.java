package com.guet.dao;

import java.util.List;
import java.util.Map;

import com.guet.entity.BbesData;
import com.guet.entity.SpectrographData;

public interface SpectrographDataDao {
	/**
	 * 获取初始化数据
	 * @param map
	 * @return
	 */
	public List<SpectrographData> getList(Map<String, Object> map);
	/**
	 * 获取最新的一条数据
	 * @param map
	 * @return
	 */
	public List<SpectrographData> realtime(Map<String, Object> map);
	
	/**
	 * 分页查询
	 * @param map
	 * @return
	 */
	public List<SpectrographData> queryPageData(Map<String , Object> map);
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
	public List<SpectrographData> queryData(Map<String , Object> map);
}
