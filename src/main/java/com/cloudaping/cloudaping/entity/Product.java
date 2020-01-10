package com.cloudaping.cloudaping.entity;

import com.cloudaping.cloudaping.enums.ProductTypeEnum;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Product {
    @Id
    private Integer productId;
    private String productName;
    private Integer productType;
    private Double productOriginPrice;
    private Double productNowPrice;
    private Integer productQuantity;
    private Integer productCategory;
    private String productImage;
    private String traderId;
    private Integer productSale;

    public Product() {
    }

    public Product(Integer productId, String productName, Integer productType, Double productOriginPrice, Double productNowPrice, Integer productQuantity, Integer productCategory, String productImage, String traderId, Integer productSale) {
        this.productId = productId;
        this.productName = productName;
        this.productType = productType;
        this.productOriginPrice = productOriginPrice;
        this.productNowPrice = productNowPrice;
        this.productQuantity = productQuantity;
        this.productCategory = productCategory;
        this.productImage = productImage;
        this.traderId = traderId;
        this.productSale = productSale;
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

    public Integer getProductType() {
        return productType;
    }

    public void setProductType(Integer productType) {
        this.productType = productType;
    }

    public Double getProductOriginPrice() {
        return productOriginPrice;
    }

    public void setProductOriginPrice(Double productOriginPrice) {
        this.productOriginPrice = productOriginPrice;
    }

    public Double getProductNowPrice() {
        return productNowPrice;
    }

    public void setProductNowPrice(Double productNowPrice) {
        this.productNowPrice = productNowPrice;
    }

    public Integer getProductQuantity() {
        return productQuantity;
    }

    public void setProductQuantity(Integer productQuantity) {
        this.productQuantity = productQuantity;
    }

    public Integer getProductCategory() {
        return productCategory;
    }

    public void setProductCategory(Integer productCategory) {
        this.productCategory = productCategory;
    }

    public String getProductImage() {
        return productImage;
    }

    public void setProductImage(String productImage) {
        this.productImage = productImage;
    }

    public String getTraderId() {
        return traderId;
    }

    public void setTraderId(String traderId) {
        this.traderId = traderId;
    }

    public Integer getProductSale() {
        return productSale;
    }

    public void setProductSale(Integer productSale) {
        this.productSale = productSale;
    }

    @Override
    public String toString() {
        return "Product{" +
                "productId=" + productId +
                ", productName='" + productName + '\'' +
                ", productType=" + productType +
                ", productOriginPrice=" + productOriginPrice +
                ", productNowPrice=" + productNowPrice +
                ", productQuantity=" + productQuantity +
                ", productCategory=" + productCategory +
                ", productImage='" + productImage + '\'' +
                ", traderId='" + traderId + '\'' +
                ", productSale=" + productSale +
                '}';
    }
}
