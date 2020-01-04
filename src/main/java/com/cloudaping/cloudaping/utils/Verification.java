package com.cloudaping.cloudaping.utils;

import org.springframework.util.StringUtils;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Verification {
    public static boolean isEmpty(String email,String password,String confirmPassword){
        if (StringUtils.isEmpty(email)||StringUtils.isEmpty(password)||StringUtils.isEmpty(confirmPassword))
            return false;
        else
            return true;
    }
    public static boolean isEmail(String string) {
        if (string == null)
            return false;
        String regEx1 = "^([a-z0-9A-Z]+[-|\\.]?)+[a-z0-9A-Z]@([a-z0-9A-Z]+(-[a-z0-9A-Z]+)?\\.)+[a-zA-Z]{2,}$";
        Pattern p;
        Matcher m;
        p = Pattern.compile(regEx1);
        m = p.matcher(string);
        if (m.matches())
            return true;
        else
            return false;
    }
    public static boolean isEqual(String password,String confirmPassword){
        if (password.equals(confirmPassword))
            return true;
        else
            return false;
    }

}
