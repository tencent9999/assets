package com.ssm.controler;

import com.ssm.pojo.about;
import com.ssm.service.aboutService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("about")

public class aboutControler {
    @Autowired
    aboutService aboutService;

    @RequestMapping("add")
    public ModelAndView add(about about) {
        ModelAndView mv = new ModelAndView();
        int n = aboutService.insertassers(about);
        if (n != 0) {
            mv.setViewName("pages/about/ok");
        } else {
            mv.setViewName("pages/about/500");
        }
        return mv;
    }
}
