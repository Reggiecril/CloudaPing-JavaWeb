package com.cloudaping.cloudaping.controller;

import com.cloudaping.cloudaping.entity.Product;
import com.cloudaping.cloudaping.enums.ProductCategoryEnum;
import com.cloudaping.cloudaping.enums.ProductTypeEnum;
import com.cloudaping.cloudaping.service.ProductService;
import com.cloudaping.cloudaping.utils.ConvertDuplicate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.util.*;

@Controller
@RequestMapping(value = "/product")
public class ProductController {

    @Autowired
    private ProductService productService;

    @GetMapping(value = {"/", "/all"})
    public String getAll(Map<String, Object> map,
                         @RequestParam(required = false) Map<String, Object> params,
                         HttpSession session) {

        //导航栏
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
        //用户查询路径: ALL>laptop>...
        //+
        //分类

        String type= (String) params.remove("type");
        List<Product> productList=new ArrayList<>();
        if (type!=null) {
            //All>Laptop
            map.put("productPath",params);
            //获得分类商品
            Integer productType=ProductTypeEnum.valueOf(type.toLowerCase().replace("&","")).getType();
            //!!!
            productList=productService.findAllByProductType(productType);
            //分类
            map.put("productType",(Map<String, Set<Object>>)session.getAttribute(ProductTypeEnum.valueOf(type.toLowerCase().replace("&","")).getTranslatedType()));
        }else {
            //所有商品
            productList=productService.findAll();
        }
        map.put("productList",productList);
        //最热
        List<Product> popularProduct=productService.findPopularProduct(5);
        map.put("popularProduct",popularProduct);

        return "product/all";
    }
}
