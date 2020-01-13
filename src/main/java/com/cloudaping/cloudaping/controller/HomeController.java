package com.cloudaping.cloudaping.controller;

import com.cloudaping.cloudaping.entity.Product;
import com.cloudaping.cloudaping.entity.User;
import com.cloudaping.cloudaping.enums.ProductCategoryEnum;
import com.cloudaping.cloudaping.enums.ProductTypeEnum;
import com.cloudaping.cloudaping.service.ProductService;
import com.cloudaping.cloudaping.utils.ConvertDuplicate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

@Controller
public class HomeController{
    @Autowired
    private ProductService productService;
    @RequestMapping({"/index","/"})
    public String index(Map<String,Object> map, HttpSession session){
        User user = (User) session.getAttribute("user");
        if (user!=null){
            map.put("user",user);
        }

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

        Map<String,List<Product>> categoryMap=new HashMap<>();
        for (ProductCategoryEnum productCategoryEnum: ProductCategoryEnum.values()){
            List<Product> categoryProducts=productService.findAllByProductCategory(productCategoryEnum.getCategoryCode());
            categoryMap.put(productCategoryEnum.getCategoryString(),categoryProducts);
        }
        map.put("categoryMap",categoryMap);


        return "index";
    }
}
