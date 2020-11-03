package com.ssm.service;

import com.ssm.mapper.aboutMapper;
import com.ssm.mapper.assetsAddMapper;
import com.ssm.pojo.AssetsAdd;
import com.ssm.pojo.about;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class aboutServiceImp implements aboutService {
    @Autowired
    aboutMapper aboutMapper;

    @Override
    public int insertassers(about about) {
        int n = aboutMapper.insertassers(about);
        return n;
    }
}


