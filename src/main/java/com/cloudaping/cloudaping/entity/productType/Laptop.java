package com.cloudaping.cloudaping.entity.productType;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Laptop extends ProductType{
    @Id
    private Integer laptopId;
    private String laptopBrand;
    private String laptopGraphicsCard;
    private String laptopCpu;
    private String laptopSize;
    private Integer productId;

    public Laptop() {
    }

    public Integer getLaptopId() {
        return laptopId;
    }

    public void setLaptopId(Integer laptopId) {
        this.laptopId = laptopId;
    }

    public String getLaptopBrand() {
        return laptopBrand;
    }

    public void setLaptopBrand(String laptopBrand) {
        this.laptopBrand = laptopBrand;
    }

    public String getLaptopGraphicsCard() {
        return laptopGraphicsCard;
    }

    public void setLaptopGraphicsCard(String laptopGraphicsCard) {
        this.laptopGraphicsCard = laptopGraphicsCard;
    }

    public String getLaptopCpu() {
        return laptopCpu;
    }

    public void setLaptopCpu(String laptopCpu) {
        this.laptopCpu = laptopCpu;
    }

    public String getLaptopSize() {
        return laptopSize;
    }

    public void setLaptopSize(String laptopSize) {
        this.laptopSize = laptopSize;
    }

    public Integer getProductId() {
        return productId;
    }

    public void setProductId(Integer productId) {
        this.productId = productId;
    }

    @Override
    public String toString() {
        return "Laptop{" +
                "laptopId=" + laptopId +
                ", laptopBrand='" + laptopBrand + '\'' +
                ", laptopGraphicsCard='" + laptopGraphicsCard + '\'' +
                ", laptopCpu='" + laptopCpu + '\'' +
                ", laptopSize='" + laptopSize + '\'' +
                '}';
    }
}
