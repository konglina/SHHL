package com.guet.dao;

import java.util.List;
import java.util.Map;
import com.guet.entity.BoxEnv;

public interface BoxEnvDao {
	public List<BoxEnv> getList(Map<String, Object> map);
}
