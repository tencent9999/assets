package com.ssm.mapper;

import com.ssm.pojo.User;
import org.apache.ibatis.annotations.Param;

public interface UserMapper {
    public User selectfindUser(User user);
}
