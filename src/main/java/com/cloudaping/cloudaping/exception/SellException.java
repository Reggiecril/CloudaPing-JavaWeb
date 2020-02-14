package com.cloudaping.cloudaping.exception;


import com.cloudaping.cloudaping.enums.ResultEnum;

public class SellException extends RuntimeException{

    private Integer code;

    public SellException(ResultEnum resultEnum) {
        super(resultEnum.getMessage());
        this.code=resultEnum.getCode();
    }
    public SellException(int code, String message) {
        super(message);
        this.code=code;
    }

}
