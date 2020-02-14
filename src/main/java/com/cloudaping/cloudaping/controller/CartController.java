package com.cloudaping.cloudaping.controller;

import com.cloudaping.cloudaping.dto.CartDTO;
import com.cloudaping.cloudaping.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping(value = "cart")
public class CartController {
    @Autowired
    private ProductService productService;
    @GetMapping(value = {"","/"})
    public String getCart(HttpSession session,
                          Map<String,Object> map){
        List<CartDTO> cartDTOList= (List<CartDTO>) session.getAttribute("cart");
        if (cartDTOList!=null) {
            map.put("cartList", cartDTOList);
            map.put("total",getTotalPrice(cartDTOList));
        }

        return "cart/cart";
    }
    @GetMapping(value = "remove")
    public String remove(HttpSession session,
                         @RequestParam("id") Integer productId,
                         Map<String,Object> map){
        List<CartDTO> cartDTOList= (List<CartDTO>) session.getAttribute("cart");
        removeProduct(session,cartDTOList,productId);
        map.put("total",getTotalPrice(cartDTOList));

        return "redirect:../cart/";
    }
    public CartDTO removeProduct(HttpSession session,List<CartDTO> cartDTOList,Integer productId){
        if (cartDTOList==null)
            return null;
        CartDTO product=null;
        for (int i = 0; i < cartDTOList.size(); i++) {
            if (cartDTOList.get(i).getProductId().equals(productId)){
                product=cartDTOList.get(i);
                cartDTOList.remove(product);

            }
        }
        session.setAttribute("cart",cartDTOList);
        return product;
    }
    public Double getTotalPrice(List<CartDTO> cartDTOS){
        if (cartDTOS==null)
            return 0.0;
        double total=0;
        for (int i = 0; i < cartDTOS.size(); i++) {
            double price=productService.findById(cartDTOS.get(i).getProductId()).getProductNowPrice();
            total+=(price*cartDTOS.get(i).getProductQuantity());
        }
        return total;
    }
}
