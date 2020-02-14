package com.cloudaping.cloudaping.service.impl;

import com.cloudaping.cloudaping.dao.ProductRepository;
import com.cloudaping.cloudaping.dto.CartDTO;
import com.cloudaping.cloudaping.entity.Product;
import com.cloudaping.cloudaping.entity.productType.ProductType;
import com.cloudaping.cloudaping.enums.ProductCategoryEnum;
import com.cloudaping.cloudaping.enums.ResultEnum;
import com.cloudaping.cloudaping.exception.SellException;
import com.cloudaping.cloudaping.mapper.ProductTypeMapper;
import com.cloudaping.cloudaping.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Map;

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

    @Override
    public List<Product> findPopularProduct(Integer quantity) {
        return productTypeMapper.selectByCategoryWithLimit(ProductCategoryEnum.popular.getCategoryCode(),5);
    }

    @Override
    public List<Product> findAll() {
        return productRepository.findAll();
    }

    @Override
    public List<Product> findAllByProductTypeParameters(Map<String, Object> map) {
        return productTypeMapper.selectByTypeParams(map);
    }
    @Override
    @Transactional
    public void decreaseStock(List<CartDTO> cartDTOList) {
        for (CartDTO cartDTO:cartDTOList
        ) {
            Product productInfo=productRepository.findByProductId(cartDTO.getProductId());
            if (productInfo==null)
                throw new SellException(ResultEnum.product_not_exist);
            Integer result=productInfo.getProductStock()-cartDTO.getProductQuantity();
            if(result<0)
                throw new SellException(ResultEnum.product_stock_not_enough);
            productInfo.setProductStock(result);
            productRepository.save(productInfo);
        }
    }

    @Override
    @Transactional
    public void increaseStock(List<CartDTO> cartDTOList) {
        for (CartDTO cartDTO:cartDTOList
        ) {
            Product productInfo=productRepository.findByProductId(cartDTO.getProductId());
            if (productInfo==null)
                throw new SellException(ResultEnum.product_not_exist);
            Integer result=productInfo.getProductStock()+cartDTO.getProductQuantity();
            if(result<0)
                throw new SellException(ResultEnum.product_stock_not_enough);
            productInfo.setProductStock(result);
            productRepository.save(productInfo);
        }
    }
}
