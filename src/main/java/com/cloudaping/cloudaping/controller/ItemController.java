package com.cloudaping.cloudaping.controller;

import com.cloudaping.cloudaping.dto.CartDTO;
import com.cloudaping.cloudaping.entity.Product;
import com.cloudaping.cloudaping.enums.ProductTypeEnum;
import com.cloudaping.cloudaping.service.ProductService;
import com.cloudaping.cloudaping.utils.ConvertDuplicate;
import org.hibernate.annotations.Parameter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;

@Controller
@RequestMapping(value = "/item")
public class ItemController {
    @Autowired
    private ProductService productService;
    @GetMapping(value = {"/",""})
    public String getItem(Map<String, Object> map,
                          @RequestParam("id") Integer productId,
                          HttpSession session
                          ){
        for (ProductTypeEnum productTypeEnum : ProductTypeEnum.values()
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
        Product product=productService.findById(productId);
        map.put("productdetail",product);
        return "item/item";
    }
    @PostMapping(value = {"/",""})
    public String addCart(Map<String, Object> map,
                          HttpSession session,
                          @RequestParam("item-category-quantity") Integer quantity,
                          @RequestParam("id") Integer productId){
        Product product=productService.findById(productId);
        map.put("productdetail",product);
        CartDTO cartDTO=new CartDTO(quantity,productId,product.getProductName(),ProductTypeEnum.getValue(product.getProductType()),product.getProductNowPrice(),product.getProductImage());
        if (session.getAttribute("cart")==null)
            session.setAttribute("cart",new ArrayList<CartDTO>());
        List<CartDTO> cartDTOList= (List<CartDTO>) session.getAttribute("cart");
        cartDTOList.add(cartDTO);
        session.setAttribute("cart",cartDTOList);
        return "item/item";
    }
    @GetMapping(value = "buynow")
    public String buyNow(HttpSession session,
                         @RequestParam("item-category-quantity") Integer quantity,
                         @RequestParam("id") Integer productId){
        Product product=productService.findById(productId);
        CartDTO cartDTO=new CartDTO(quantity,productId,product.getProductName(),ProductTypeEnum.getValue(product.getProductType()),product.getProductNowPrice(),product.getProductImage());
        if (session.getAttribute("cart")==null)
            session.setAttribute("cart",new ArrayList<CartDTO>());
        List<CartDTO> cartDTOList= (List<CartDTO>) session.getAttribute("cart");
        cartDTOList.add(cartDTO);
        session.setAttribute("cart",cartDTOList);
        return "redirect:../cart/";
    }
}
