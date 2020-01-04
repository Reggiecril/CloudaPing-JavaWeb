package com.cloudaping.cloudaping.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.Map;

@Controller
@RequestMapping(value = "/userPage/")
public class UserPageController {
    private static final String USERPAGE_PATH = "userPage";
    private static final String INFORMATION_PATH = USERPAGE_PATH + "/information";
    private static final String ORDER_PATH = USERPAGE_PATH + "/order";
    private static final String ADDRESS_PATH = USERPAGE_PATH + "/address";
    private static final String PAYMENT_PATH = USERPAGE_PATH + "/payment";
    private static final String FAVOURITE_PATH = USERPAGE_PATH + "/favourite";
    private static final String PASSWORD_CHANGE_PATH = USERPAGE_PATH + "/password_change";


    @GetMapping(path = "information")
    public String getInformation() {
        return INFORMATION_PATH;
    }

    @GetMapping(path = "order")
    public String getOrder() {
        return ORDER_PATH;
    }

    @GetMapping(path = "address")
    public String getAddress() {
        return ADDRESS_PATH;
    }

    @GetMapping(path = "payment")
    public String getPayment() {
        return PAYMENT_PATH;
    }

    @GetMapping(path = "favourite")
    public String getFavourite() {
        return FAVOURITE_PATH;
    }

    @GetMapping(path = "password_change")
    public String getPasswordChange() {
        return PASSWORD_CHANGE_PATH;
    }

    @GetMapping(path = "logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "redirect:../index";
    }

}
