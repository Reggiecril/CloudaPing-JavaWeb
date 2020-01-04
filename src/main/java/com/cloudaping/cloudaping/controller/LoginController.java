package com.cloudaping.cloudaping.controller;

import com.cloudaping.cloudaping.entity.User;
import com.cloudaping.cloudaping.enums.LoginEnum;
import com.cloudaping.cloudaping.service.LoginService;
import com.cloudaping.cloudaping.utils.KeyUtil;
import com.cloudaping.cloudaping.utils.Verification;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.Enumeration;
import java.util.Map;

@Controller
@RequestMapping(value = "/user/")
public class LoginController {
    @Autowired
    private LoginService loginService;

    private static final String PATH_LOGIN="login/login";
    private static final String PATH_SIGNUP="login/signup";
    private static final String PATH_USER="../userPage/information";


    @GetMapping(path = "login")
    public String getLogin(HttpSession session){


        if (session.getAttributeNames().hasMoreElements()){

            return "redirect:"+PATH_USER;
        }
        return PATH_LOGIN;
    }
    @PostMapping(path = "login")
    public String login(@RequestParam("email") String email,
                        @RequestParam("password") String password,
                        Map<String, Object> map,
                        HttpServletRequest request){

        //邮箱或密码为空
        if (StringUtils.isEmpty(email)||StringUtils.isEmpty(password)){
            map.put("errMsg", LoginEnum.fields_empty.getMessage());
            return PATH_LOGIN;
        }
        //邮箱拼写不对
        if (!Verification.isEmail(email)){
            map.put("errMsg",LoginEnum.email_wrong_type.getMessage());
            return PATH_LOGIN;
        }
        User user=loginService.findByEmail(email);
        //邮箱为空
        if (user==null||user.getEmail()==null){
            map.put("errMsg", LoginEnum.email_not_found.getMessage());
            return PATH_LOGIN;
        }
        //密码不正确
        if (!user.getPassword().equals(password))
        {
            map.put("errMsg", LoginEnum.password_error.getMessage());
            return PATH_LOGIN;
        }
        HttpSession session = request.getSession();
        session.setAttribute("userId", user.getUserId());

        return "redirect:"+PATH_USER;
    }
    @GetMapping("signup")
    public String goSignup(HttpSession session){
        if (session.getAttributeNames().hasMoreElements()){

            return "redirect:"+PATH_USER;
        }
        return PATH_SIGNUP;
    }
    @PostMapping("signup")
    @Transactional
    public String signup(@RequestParam("email") String email,
                         @RequestParam("password") String password,
                         @RequestParam("confirmPassword") String confirmPassword,
                         Map<String, Object> map,HttpServletResponse response, HttpServletRequest request){

        //含有空字段
        if (!Verification.isEmpty(email,password,confirmPassword)){
            map.put("errMsg",LoginEnum.fields_empty.getMessage());
            return PATH_SIGNUP;
        }
        //邮箱拼写不对
        if (!Verification.isEmail(email)){
            map.put("errMsg",LoginEnum.email_wrong_type.getMessage());
            return PATH_SIGNUP;

        }

        //两个密码不一致
        if (!Verification.isEqual(password,confirmPassword)){
            map.put("errMsg",LoginEnum.password_not_equal_confirmPassword.getMessage());
            return PATH_SIGNUP;

        }
       User existsUser=loginService.findByEmail(email);
        if (existsUser!=null)
        {
            map.put("errMsg",LoginEnum.exists_user.getMessage());
            return PATH_SIGNUP;
        }
        User user=new User(KeyUtil.getUniqueKey(),email,"",password);
        User afterUser=loginService.save(user);
        if (afterUser==null){
            map.put("errMsg",LoginEnum.fail_create_user.getMessage());
            return PATH_SIGNUP;
        }
        HttpSession session = request.getSession();
        session.setAttribute("userId", user.getUserId());

        return "redirect:"+PATH_USER;
    }
}