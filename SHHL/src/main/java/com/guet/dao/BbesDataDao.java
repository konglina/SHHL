package com.guet.dao;
import java.util.List;
import java.util.Map;
import com.guet.entity.BbesData;;
public interface BbesDataDao {
	public List<BbesData> getList(Map<String, Object> map);
}
