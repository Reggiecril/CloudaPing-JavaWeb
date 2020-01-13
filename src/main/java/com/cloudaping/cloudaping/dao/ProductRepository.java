package com.cloudaping.cloudaping.dao;

import com.cloudaping.cloudaping.entity.Product;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface ProductRepository extends JpaRepository<Product, String> {
    List<Product> findAllByProductCategory(Integer productCategory);
    List<Product> findAllByProductType(Integer productType);
    Product findByProductId(Integer productId);

}
