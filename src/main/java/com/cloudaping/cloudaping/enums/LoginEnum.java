package com.cloudaping.cloudaping.enums;

public enum  LoginEnum {
    fields_empty(1,"含有空字段，请填写空字段!"),
    email_not_found(2,"邮箱地址不存在，请检查拼写!"),
    password_error(3,"密码错误，请重新输入!"),
    email_wrong_type(4,"邮箱不合法，请检查拼写!"),
    password_not_equal_confirmPassword(5,"密码与确认密码不一致，请重新输入!"),
    fail_create_user(6,"注册失败，请重试！"),
    exists_user(7,"该邮箱已被注册，请登录！")
    ;

    private Integer code;
    private String message;

    LoginEnum() {
    }

    LoginEnum(Integer code, String message) {
        this.code = code;
        this.message = message;
    }

    public Integer getCode() {
        return code;
    }

    public void setCode(Integer code) {
        this.code = code;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
}
