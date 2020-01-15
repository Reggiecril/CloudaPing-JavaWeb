package com.cloudaping.cloudaping.controller;

import com.cloudaping.cloudaping.entity.Product;
import com.cloudaping.cloudaping.enums.ProductTypeEnum;
import com.cloudaping.cloudaping.service.ProductService;
import com.cloudaping.cloudaping.utils.ConvertDuplicate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.util.Map;
import java.util.Set;

@Controller
@RequestMapping(value = "/item")
public class ItemController {
    @Autowired
    private ProductService productService;
    @GetMapping(value = {"/",""})
    public String getItem(Map<String, Object> map,
                          @RequestParam(required = false) Map<String, Object> params,
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
        map.put("productPath",params);
        Product product=productService.findById((Integer) params.get("id"));
        map.put("productdetail",product);
        return "item/item";
    }
}
