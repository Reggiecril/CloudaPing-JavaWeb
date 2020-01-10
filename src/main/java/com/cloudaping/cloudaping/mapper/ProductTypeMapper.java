package com.cloudaping.cloudaping.mapper;

import com.cloudaping.cloudaping.entity.Product;
import com.cloudaping.cloudaping.entity.productType.*;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface ProductTypeMapper {
    List<ProductType> selectLaptop();
    List<ProductType> selectComputer();
    List<ProductType> selectCamera();
    List<ProductType> selectMobile();
    List<ProductType> selectAudioVideo();
    List<ProductType> selectOther();


}
