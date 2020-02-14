package com.cloudaping.cloudaping.utils;

import com.cloudaping.cloudaping.dto.OrderDTO;
import com.cloudaping.cloudaping.entity.OrderDetail;
import com.cloudaping.cloudaping.form.OrderForm;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;

import java.util.List;

public class OrderFromToOrderDTOConverter {
    public static OrderDTO convert(OrderForm orderForm){
        Gson gson=new Gson();
        OrderDTO orderDTO=new OrderDTO();
        orderDTO.setBuyerName(orderForm.getName());
        orderDTO.setBuyerPhone(orderForm.getPhone());
        orderDTO.setBuyerAddress(orderForm.getAddress());
        orderDTO.setBuyerOpenid(orderForm.getOpenid());

        orderDTO.setOrderDetailList( gson.fromJson(orderForm.getItems(),new TypeToken<List<OrderDetail>>(){}.getType()));
        return orderDTO;
    }
}
