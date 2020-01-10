package com.cloudaping.cloudaping.service.impl;

import com.cloudaping.cloudaping.dao.ProductRepository;
import com.cloudaping.cloudaping.entity.Product;
import com.cloudaping.cloudaping.entity.productType.ProductType;
import com.cloudaping.cloudaping.mapper.ProductTypeMapper;
import com.cloudaping.cloudaping.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class ProductServiceImpl implements ProductService {
    @Autowired
    private ProductRepository productRepository;
    @Autowired
    private ProductTypeMapper productTypeMapper;

    @Override
    public Product save(Product product) {
        return productRepository.save(product);
    }

    @Override
    public List<Product> findAllByProductType(Integer productType) {
        return productRepository.findAllByProductType(productType);
    }

    @Override
    public List<Product> findAllByProductCategory(Integer productCategory) {
        return productRepository.findAllByProductCategory(productCategory);
    }

    @Override
    public Product findById(Integer productId) {
        return productRepository.findByProductId(productId);
    }

    @Override
    public void delete(Product product) {
        productRepository.delete(product);
    }

    @Override
    public List<ProductType> findTypes(Integer productType) {
        List<ProductType> list=null;
        switch (productType){
            case 1:
                list=productTypeMapper.selectMobile();
                break;
            case 2:
                list=productTypeMapper.selectAudioVideo();
                break;
            case 3:
                list=productTypeMapper.selectLaptop();
                break;
            case 4:
                list=productTypeMapper.selectComputer();
                break;
            case 5:
                list=productTypeMapper.selectCamera();
                break;
            case 6:
                list=productTypeMapper.selectOther();
                break;
            default:
                list=productTypeMapper.selectMobile();
                break;
        }
        return list;
    }
}
