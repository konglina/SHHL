package com.guet.dao;
import java.util.List;
import java.util.Map;
import com.guet.entity.BbesData;
import com.guet.entity.BbesData2;;
public interface BbesDataDao {
	public List<BbesData> getList(Map<String, Object> map);
	public List<BbesData> realtime(Map<String, Object> map);
	/**
	 * 分页查询
	 * @param map
	 * @return
	 */
	public List<BbesData> queryPageData(Map<String , Object> map);
	/**
	 * 查询总记录数
	 * @param map
	 * @return
	 */
	public int queryPageCount(Map<String, Object> map);

}
