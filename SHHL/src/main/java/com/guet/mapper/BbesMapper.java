package com.guet.mapper;

import com.guet.entity.Bbes;
import com.guet.entity.BbesExample;
import java.util.List;

public interface BbesMapper {
    int insert(Bbes record);

    int insertSelective(Bbes record);

    List<Bbes> selectByExample(BbesExample example);
}