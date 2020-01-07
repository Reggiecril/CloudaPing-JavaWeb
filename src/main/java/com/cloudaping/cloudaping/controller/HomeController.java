package com.cloudaping.cloudaping.controller;

import com.cloudaping.cloudaping.entity.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.Map;

@Controller
public class HomeController {
    @RequestMapping({"/index","/"})
    public String index(Map<String,Object> map, HttpSession session){
        User user = (User) session.getAttribute("user");
        if (user!=null){
            map.put("user",user);
        }

        return "index";
    }
}
