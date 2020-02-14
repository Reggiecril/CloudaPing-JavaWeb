package com.cloudaping.cloudaping;

import com.cloudaping.cloudaping.dao.ProductRepository;
import com.cloudaping.cloudaping.entity.Product;
import com.cloudaping.cloudaping.entity.productType.Laptop;
import com.cloudaping.cloudaping.entity.productType.ProductType;
import com.cloudaping.cloudaping.mapper.ProductTypeMapper;
import com.cloudaping.cloudaping.utils.KeyUtil;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

@SpringBootTest
public class ProductRepositoryTest {
    @Autowired
    private ProductRepository productRepository;
    @Autowired
    private ProductTypeMapper productTypeMapper;
    @Test
    public void select(){
//        List<ProductType> list2=productTypeMapper.selectLaptop();
//        System.out.println(productTypeMapper.selectAudioVideo());
//        List<ProductType> list3=productTypeMapper.selectCamera();
//        System.out.println(productTypeMapper.selectCamera());
//        System.out.println(productTypeMapper.selectComputer());
//        List<ProductType> list1=productTypeMapper.selectMobile();
//        System.out.println(productTypeMapper.selectMobile());
        Map<String,Object> map=new LinkedHashMap<>();
        map.put("type","laptop");
        map.put("laptopBrand","dell");
        List<Product> list=productTypeMapper.selectByTypeParams(map);
        System.out.println(list.toString());
        System.out.println(list.size());

    }
    @Test
    public void user(){
        System.out.println(KeyUtil.getOrderKey());
    }

}
