package com.guet.dao;
import java.util.List;
import java.util.Map;
import com.guet.entity.BbesData;
import com.guet.entity.BbesData2;;
public interface BbesData2Dao {
	/**
	 * 查询历史数据
	 * @param map
	 * @return
	 */
	public List<BbesData2> queryData(Map<String , Object> map);
}
