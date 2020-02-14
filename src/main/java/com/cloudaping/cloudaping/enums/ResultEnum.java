package com.cloudaping.cloudaping.enums;

public enum ResultEnum {
    param_erro(1,"参数错误"),
    product_not_exist(10,"商品不存在"),
    product_stock_not_enough(11,"库存不足"),
    order_not_exist(12,"订单不存在"),
    orderdetail_is_empty(13,"订单为空"),
    order_status_not_right(14,"订单状态不允许"),
    order_update_fail(15,"订单更新失败"),
    order_detail_empty(16,"订单商品为空"),
    order_pay_status_wrong(17,"订单支付状态不正确"),
    cart_empty(18,"购物车为空"),
    openid_empty(19,"openid为空"),
    openid_error(20,"不是本人");

    private Integer code;
    private String message;

    ResultEnum(Integer code, String message) {
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
