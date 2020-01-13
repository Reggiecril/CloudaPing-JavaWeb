package com.cloudaping.cloudaping.mapper;

import com.cloudaping.cloudaping.entity.Product;
import com.cloudaping.cloudaping.entity.productType.*;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public interface ProductTypeMapper {
    List<ProductType> selectLaptop();
    List<ProductType> selectComputer();
    List<ProductType> selectCamera();
    List<ProductType> selectMobile();
    List<ProductType> selectAudioVideo();
    List<ProductType> selectOther();
    List<Product> selectByCategoryWithLimit(@Param("productCategory")Integer productCategory, @Param("limit") Integer limit);
    List<Product> selectByTypeParams(@Param("productType")Map<String,Object> productType);

}
