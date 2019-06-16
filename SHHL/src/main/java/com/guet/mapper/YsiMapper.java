package com.guet.mapper;

import com.guet.entity.Ysi;
import com.guet.entity.YsiExample;
import java.util.List;

public interface YsiMapper {
    int insert(Ysi record);

    int insertSelective(Ysi record);

    List<Ysi> selectByExample(YsiExample example);
}