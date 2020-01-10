package com.cloudaping.cloudaping;

import com.cloudaping.cloudaping.dao.ProductRepository;
import com.cloudaping.cloudaping.entity.productType.Laptop;
import com.cloudaping.cloudaping.entity.productType.ProductType;
import com.cloudaping.cloudaping.mapper.ProductTypeMapper;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

@SpringBootTest
public class ProductRepositoryTest {
    @Autowired
    private ProductRepository productRepository;
    @Autowired
    private ProductTypeMapper productTypeMapper;
    @Test
    public void select(){
        List<ProductType> list2=productTypeMapper.selectLaptop();
        System.out.println(productTypeMapper.selectAudioVideo());
        List<ProductType> list3=productTypeMapper.selectCamera();
        System.out.println(productTypeMapper.selectCamera());
        System.out.println(productTypeMapper.selectComputer());
        List<ProductType> list1=productTypeMapper.selectMobile();
        System.out.println(productTypeMapper.selectMobile());

    }
}
