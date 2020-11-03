package com.ssm.service;

import com.ssm.mapper.assetsClassMapper;
import com.ssm.pojo.AssetsClass;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class assetsClassServiceImp implements assetsClassService {
    @Autowired
    assetsClassMapper assetsClassMapper;

    @Override
    public int insertClass(AssetsClass assetsClass) {
        int n = assetsClassMapper.insertClass(assetsClass);
        return n;

    }

    @Override
    public List asseteClassList() {
        return assetsClassMapper.selectClass();
    }

    @Override
    public int delasseteClass(int id) {
        int n = assetsClassMapper.delasseteClass(id);
        return n;
    }

    @Override
    public AssetsClass selectByid(int id) {
        return assetsClassMapper.selectByid(id);
    }


}
