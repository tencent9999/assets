package com.ssm.service;

import com.ssm.mapper.UserMapper;
import com.ssm.pojo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service("userservice")
@Transactional
public class UserServiceImp implements UserService {
    @Autowired
    UserMapper userMapper;

    @Override
    public User selectfindUser(User user1) {
        User user = this.userMapper.selectfindUser(user1);
        return user;
    }
}
