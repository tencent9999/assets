package com.ssm.service;

import com.ssm.pojo.AssetsClass;


import java.util.List;

public interface assetsClassService {
    public int insertClass(AssetsClass assetsClass);

    public List asseteClassList();

    public int delasseteClass(int id);

    public AssetsClass selectByid(int id);
}
