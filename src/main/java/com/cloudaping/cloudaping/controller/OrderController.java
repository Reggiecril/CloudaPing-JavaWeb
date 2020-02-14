package com.cloudaping.cloudaping.controller;

import com.cloudaping.cloudaping.dto.OrderDTO;
import com.cloudaping.cloudaping.entity.User;
import com.cloudaping.cloudaping.enums.ResultEnum;
import com.cloudaping.cloudaping.exception.SellException;
import com.cloudaping.cloudaping.service.OrderService;
import com.cloudaping.cloudaping.service.UserService;
import com.cloudaping.cloudaping.utils.KeyUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Controller;
import org.springframework.util.CollectionUtils;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.util.Map;

@Controller
@RequestMapping(value = "/user/order")
public class OrderController {
    @Autowired
    private OrderService orderService;

    @Autowired
    private UserService userService;

    //创建订单
    @GetMapping("/create")
    public String create(HttpSession session,
                         Map<String,Object> map){
        User user= (User) session.getAttribute("user");
        OrderDTO orderDTO=new OrderDTO();
        orderDTO.setOrderId(KeyUtil.getOrderKey());
        orderDTO.setBuyerName(user.getEmail());

        if (CollectionUtils.isEmpty(orderDTO.getOrderDetailList()))
            throw new SellException(ResultEnum.cart_empty);
        OrderDTO createResult= orderService.create(orderDTO);
        map.put("orderId",createResult.getOrderId());
        return "order/list";
    }
    //订单列表
    @GetMapping("/list")
    public String list(@RequestParam String openid,
                                               @RequestParam(value = "page",defaultValue = "0") Integer page,
                                               @RequestParam(value = "size",defaultValue = "10") Integer size){
        if (StringUtils.isEmpty(openid))
            throw new SellException(ResultEnum.openid_empty);
        PageRequest pageRequest= PageRequest.of(page,size);
        Page<OrderDTO> orderDTOList=orderService.findList(openid,pageRequest);
        return "order/list";
    }
    //订单详情
    @GetMapping("/detail")
    public String detail(@RequestParam("openid") String openid,
                                           @RequestParam("orderid") String orderid){
        return "order/deatil";

    }
    //取消订单
    @PostMapping("/cancel")
    public String cancel(@RequestParam("openid") String openid,
                                           @RequestParam("orderid") String orderid){
        return "order/list";
    }
}
