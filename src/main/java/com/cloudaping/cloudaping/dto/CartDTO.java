package com.cloudaping.cloudaping.dto;

import java.io.Serializable;

public class CartDTO implements Serializable {
    private Integer productQuantity;
    private Integer productId;
    private String productName;
    private String productCategory;
    private Double productNowPrice;
    private String productImage;
    public CartDTO() {
    }

    public CartDTO(Integer productQuantity, Integer productId) {
        this.productQuantity = productQuantity;
        this.productId = productId;
    }

    public CartDTO(Integer productQuantity, Integer productId, String productName, String productCategory, Double productNowPrice, String productImage) {
        this.productQuantity = productQuantity;
        this.productId = productId;
        this.productName = productName;
        this.productCategory = productCategory;
        this.productNowPrice = productNowPrice;
        this.productImage = productImage;
    }

    public Integer getProductQuantity() {
        return productQuantity;
    }

    public void setProductQuantity(Integer productQuantity) {
        this.productQuantity = productQuantity;
    }

    public Integer getProductId() {
        return productId;
    }

    public void setProductId(Integer productId) {
        this.productId = productId;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getProductCategory() {
        return productCategory;
    }

    public void setProductCategory(String productCategory) {
        this.productCategory = productCategory;
    }

    public Double getProductNowPrice() {
        return productNowPrice;
    }

    public void setProductNowPrice(Double productNowPrice) {
        this.productNowPrice = productNowPrice;
    }

    public String getProductImage() {
        return productImage;
    }

    public void setProductImage(String productImage) {
        this.productImage = productImage;
    }
}