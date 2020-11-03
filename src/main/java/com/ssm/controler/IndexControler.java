package com.ssm.controler;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * @author guanyang
 */
@Controller
@RequestMapping("/index")
public class IndexControler {

    @RequestMapping("/about")
    public ModelAndView about() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("/pages/first_about");
        return mv;

    }
}
