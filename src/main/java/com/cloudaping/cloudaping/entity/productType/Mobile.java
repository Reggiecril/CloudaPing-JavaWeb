package com.cloudaping.cloudaping.entity.productType;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Mobile extends ProductType{
    @Id
    private Integer mobileId;
    private String mobileBrand;
    private String mobileSize;
    private String mobileSystem;
    private String mobilePixel;
    private Integer productId;

    public Mobile() {
    }

    public Integer getMobileId() {
        return mobileId;
    }

    public void setMobileId(Integer mobileId) {
        this.mobileId = mobileId;
    }

    public String getMobileBrand() {
        return mobileBrand;
    }

    public void setMobileBrand(String mobileBrand) {
        this.mobileBrand = mobileBrand;
    }

    public String getMobileSize() {
        return mobileSize;
    }

    public void setMobileSize(String mobileSize) {
        this.mobileSize = mobileSize;
    }

    public String getMobileSystem() {
        return mobileSystem;
    }

    public void setMobileSystem(String mobileSystem) {
        this.mobileSystem = mobileSystem;
    }

    public String getMobilePixel() {
        return mobilePixel;
    }

    public void setMobilePixel(String mobilePixel) {
        this.mobilePixel = mobilePixel;
    }

    public Integer getProductId() {
        return productId;
    }

    public void setProductId(Integer productId) {
        this.productId = productId;
    }
}
