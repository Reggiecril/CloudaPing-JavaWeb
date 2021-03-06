package com.cloudaping.cloudaping.service;

import com.cloudaping.cloudaping.dto.CartDTO;
import com.cloudaping.cloudaping.entity.Product;
import com.cloudaping.cloudaping.entity.productType.ProductType;

import java.util.List;
import java.util.Map;

public interface ProductService {
    Product save(Product product);
    List<Product> findAllByProductType(Integer productType);
    List<Product> findAllByProductCategory(Integer productCategory);
    Product findById(Integer ProductId);
    void delete(Product product);
    List<ProductType> findTypes(Integer productType);
    List<Product> findPopularProduct(Integer quantity);
    List<Product> findAll();
    List<Product> findAllByProductTypeParameters(Map<String,Object> map);
    void decreaseStock(List<CartDTO> cartDTO);
    void increaseStock(List<CartDTO> cartDTO);
}
