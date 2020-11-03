package com.ssm.controler;

import com.ssm.pojo.User;
import com.ssm.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

/**
 * @author guanyang
 */
@Controller
@RequestMapping("/user")
public class UserControler {
    @Autowired
    UserService userservice;

    @RequestMapping("/login")
    public String login(User user1, Model model, HttpSession session) {
        User user = userservice.selectfindUser(user1);
        if (user != null) {
            session.setAttribute("USER_SESSION", user);
            return ("pages/index");

        } else {
            model.addAttribute("msg", "请输入正确的账号和密码");
            System.out.println("登录失败");
            return ("login");
        }

    }

    @RequestMapping("/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return ("login");
    }
}
