package com.cloudaping.cloudaping.utils;

import com.cloudaping.cloudaping.dto.OrderDTO;
import com.cloudaping.cloudaping.entity.OrderMaster;
import org.springframework.beans.BeanUtils;

import java.util.List;
import java.util.stream.Collectors;

public class OrderMasterTOOrderDTOConverter {
    public static OrderDTO singalConverter(OrderMaster orderMaster){
        OrderDTO orderDTO=new OrderDTO();
        BeanUtils.copyProperties(orderMaster,orderDTO);
        return orderDTO;
    }
    public static List<OrderDTO> listConverter(List<OrderMaster> orderMasterList){
        return orderMasterList.stream().map(e->singalConverter(e)).collect(Collectors.toList());
    }
}
