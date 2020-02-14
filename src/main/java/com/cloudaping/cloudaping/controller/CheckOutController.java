package com.cloudaping.cloudaping.controller;

import com.cloudaping.cloudaping.dto.CartDTO;
import com.cloudaping.cloudaping.entity.Address;
import com.cloudaping.cloudaping.entity.User;
import com.cloudaping.cloudaping.enums.ProductTypeEnum;
import com.cloudaping.cloudaping.service.ProductService;
import com.cloudaping.cloudaping.service.UserService;
import com.cloudaping.cloudaping.utils.ConvertDuplicate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Map;
import java.util.Set;

@Controller
@RequestMapping(value = "/checkout")
public class CheckOutController {
    @Autowired
    private ProductService productService;
    @Autowired
    private UserService userService;
    @GetMapping({"","/"})
    public String checkOut(HttpSession session,
                           Map<String,Object> map){
        //navigation
        for (ProductTypeEnum productTypeEnum: ProductTypeEnum.values()
        ) {
            Map<String, Set<Object>> productType= (Map<String, Set<Object>>) session.getAttribute(productTypeEnum.getTranslatedType());

            if (productType==null)
                session.
                        setAttribute(
                                productTypeEnum.getTranslatedType(),
                                ConvertDuplicate.getNotDuplicate
                                        (productService.findTypes
                                                (productTypeEnum.getType()),productTypeEnum.getType()));
            map.put(
                    productTypeEnum.getTranslatedType(),
                    session.getAttribute(productTypeEnum.getTranslatedType())
            );
        }
        //cart
        List<CartDTO> cartDTOList= (List<CartDTO>) session.getAttribute("cart");
        if (cartDTOList.size()==0)
            return "redirect:../product/all";

        map.put("total",getTotalPrice(cartDTOList));

        map.put("cartList",cartDTOList);
        User user= (User) session.getAttribute("user");
        if (user==null)
            return "redirect:../user/login";
        //address
        List<Address> addressList=userService.findAddressByUserId(user.getUserId());
        map.put("addressList",addressList);
        //payment


        return "cart/checkout";
    }
    public Double getTotalPrice(List<CartDTO> cartDTOS){
        if (cartDTOS==null)
            return 0.0;
        double total=0;
        for (int i = 0; i < cartDTOS.size(); i++) {
            total+=(cartDTOS.get(i).getProductNowPrice()*cartDTOS.get(i).getProductQuantity());
        }
        return total;
    }
}
