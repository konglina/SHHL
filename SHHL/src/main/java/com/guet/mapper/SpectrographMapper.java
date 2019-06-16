package com.guet.mapper;

import com.guet.entity.Spectrograph;
import com.guet.entity.SpectrographExample;
import java.util.List;

public interface SpectrographMapper {
    int insert(Spectrograph record);

    int insertSelective(Spectrograph record);

    List<Spectrograph> selectByExample(SpectrographExample example);
}