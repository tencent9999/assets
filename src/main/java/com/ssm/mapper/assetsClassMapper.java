package com.ssm.mapper;

import com.ssm.pojo.AssetsClass;


import java.util.ArrayList;


public interface assetsClassMapper {
    public int insertClass(AssetsClass assetsClass);

    public ArrayList<AssetsClass> selectClass();

    public int delasseteClass(int id);

    public AssetsClass selectByid(int id);
}
