package com.cloudaping.cloudaping.service.impl;

import com.cloudaping.cloudaping.dao.OrderDetailRepository;
import com.cloudaping.cloudaping.dao.OrderMasterRepository;
import com.cloudaping.cloudaping.dto.CartDTO;
import com.cloudaping.cloudaping.dto.OrderDTO;
import com.cloudaping.cloudaping.entity.OrderDetail;
import com.cloudaping.cloudaping.entity.OrderMaster;
import com.cloudaping.cloudaping.entity.Product;
import com.cloudaping.cloudaping.enums.OrderStatusEnum;
import com.cloudaping.cloudaping.enums.PayStatusEnum;
import com.cloudaping.cloudaping.enums.ResultEnum;
import com.cloudaping.cloudaping.exception.SellException;
import com.cloudaping.cloudaping.service.OrderService;
import com.cloudaping.cloudaping.service.ProductService;
import com.cloudaping.cloudaping.utils.KeyUtil;
import com.cloudaping.cloudaping.utils.OrderMasterTOOrderDTOConverter;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.CollectionUtils;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class OrderServiceImpl implements OrderService {
    @Autowired
    private OrderMasterRepository orderMasterRepository;
    @Autowired
    private OrderDetailRepository orderDetailRepository;
    @Autowired
    private ProductService productInfoService;
    @Override
    @Transactional
    public OrderDTO create(OrderDTO orderDTO) {
        List<OrderDetail> orderDetailList=orderDTO.getOrderDetailList();
        double totalPrice=0;
        String orderId= KeyUtil.getUniqueKey();
        //查询商品
        for (OrderDetail orderDetail:orderDetailList) {
            Product productInfo= productInfoService.findById(orderDetail.getProductId());
            if (productInfo==null)
                throw new SellException(ResultEnum.product_not_exist);
            //2 计算总价
            totalPrice+=productInfo.getProductNowPrice() * orderDetail.getProductQuantity();
            //3 写入数据库
            orderDetail.setOrderId(orderId);
            orderDetail.setDetailId(KeyUtil.getUniqueKey());
            BeanUtils.copyProperties(productInfo,orderDetail);
            orderDetailRepository.save(orderDetail);
        }
        OrderMaster orderMaster=new OrderMaster();
        orderDTO.setOrderId(orderId);
        BeanUtils.copyProperties(orderDTO,orderMaster);
        orderMaster.setOrderAmount(totalPrice);

        orderMaster.setOrderStatus(OrderStatusEnum.NEW.getCode());
        orderMaster.setPayStatus(PayStatusEnum.UNPAY.getCode());

        orderMasterRepository.save(orderMaster);
        //4 扣库存
        List<CartDTO>  cartDTOList=orderDetailList.stream().map(e->new CartDTO(e.getProductQuantity(),e.getProductId())).collect(Collectors.toList());
        productInfoService.decreaseStock(cartDTOList);
        return orderDTO;
    }

    @Override
    public OrderDTO findOne(String orderId) {
        OrderMaster orderMaster=orderMasterRepository.getOne(orderId);
        if (orderMaster==null)
            throw new SellException(ResultEnum.order_not_exist);
        List<OrderDetail> orderDetailList=orderDetailRepository.findByOrderId(orderId);
        if (CollectionUtils.isEmpty(orderDetailList))
            throw new SellException(ResultEnum.orderdetail_is_empty);
        OrderDTO orderDTO=new OrderDTO();
        BeanUtils.copyProperties(orderMaster,orderDTO);
        orderDTO.setOrderDetailList(orderDetailList);
        return orderDTO;
    }

    //买家的order list
    @Override
    public Page<OrderDTO> findList(String buyerOpenid, Pageable pageable) {
        Page<OrderMaster> orderDTOPage=orderMasterRepository.findByBuyerId(buyerOpenid,pageable);
        List<OrderDTO> orderDTOList= OrderMasterTOOrderDTOConverter.listConverter(orderDTOPage.getContent());
        return new PageImpl<OrderDTO>(orderDTOList,pageable,orderDTOList.size());
    }

    @Override
    @Transactional
    public OrderDTO cancel(OrderDTO orderDTO) {
        OrderMaster orderMaster=new OrderMaster();
        BeanUtils.copyProperties(orderDTO,orderMaster);
        //检查zhuangtai
        if (!orderMaster.getOrderStatus().equals(OrderStatusEnum.NEW.getCode()))
            throw new SellException(ResultEnum.order_status_not_right);
        //修改订单状态
        orderMaster.setOrderStatus(OrderStatusEnum.CANCEL.getCode());
        OrderMaster updateResult=orderMasterRepository.save(orderMaster);
        if (updateResult==null)
            throw new SellException(ResultEnum.order_update_fail);
        //返回库存
        if (CollectionUtils.isEmpty(orderDTO.getOrderDetailList())){
            throw new SellException(ResultEnum.order_detail_empty);
        }
        List<CartDTO> cartDTOList=orderDTO.getOrderDetailList().stream().map(e->new CartDTO(e.getProductQuantity(),e.getProductId())).collect(Collectors.toList());
        productInfoService.increaseStock(cartDTOList);
        //如果支付过，退款
        if (orderDTO.getPayStatus().equals(PayStatusEnum.PAIED.getCode())){
            //TODO
        }
        return orderDTO;
    }

    @Override
    public OrderDTO finish(OrderDTO orderDTO) {
        OrderMaster orderMaster=new OrderMaster();
        BeanUtils.copyProperties(orderDTO,orderMaster);
        //检查zhuangtai
        if (!orderMaster.getOrderStatus().equals(OrderStatusEnum.NEW.getCode()))
            throw new SellException(ResultEnum.order_status_not_right);
        //修改订单状态
        orderMaster.setOrderStatus(OrderStatusEnum.FINISHED.getCode());
        OrderMaster updateResult=orderMasterRepository.save(orderMaster);
        if (updateResult==null)
            throw new SellException(ResultEnum.order_update_fail);
        return orderDTO;
    }

    @Override
    public OrderDTO paid(OrderDTO orderDTO) {
        OrderMaster orderMaster=new OrderMaster();
        BeanUtils.copyProperties(orderDTO,orderMaster);
        //检查zhuangtai
        if (!orderMaster.getOrderStatus().equals(OrderStatusEnum.NEW.getCode()))
            throw new SellException(ResultEnum.order_status_not_right);
        if (!orderMaster.getPayStatus().equals(PayStatusEnum.UNPAY.getCode()))
            throw new SellException(ResultEnum.order_pay_status_wrong);

        //修改订单支付状态
        orderMaster.setPayStatus(PayStatusEnum.PAIED.getCode());
        OrderMaster updateResult=orderMasterRepository.save(orderMaster);
        if (updateResult==null)
            throw new SellException(ResultEnum.order_update_fail);
        return orderDTO;
    }
}
