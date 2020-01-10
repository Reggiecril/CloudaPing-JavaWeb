package com.cloudaping.cloudaping.entity.productType;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Camera extends ProductType{
    @Id
    private Integer cameraId;
    private String cameraBrand;
    private String cameraType;
    private String cameraPixel;
    private Integer productId;
    public Camera() {
    }

    public Integer getCameraId() {
        return cameraId;
    }

    public void setCameraId(Integer cameraId) {
        this.cameraId = cameraId;
    }

    public String getCameraBrand() {
        return cameraBrand;
    }

    public void setCameraBrand(String cameraBrand) {
        this.cameraBrand = cameraBrand;
    }

    public String getCameraType() {
        return cameraType;
    }

    public void setCameraType(String cameraType) {
        this.cameraType = cameraType;
    }

    public String getCameraPixel() {
        return cameraPixel;
    }

    public void setCameraPixel(String cameraPixel) {
        this.cameraPixel = cameraPixel;
    }

    public Integer getProductId() {
        return productId;
    }

    public void setProductId(Integer productId) {
        this.productId = productId;
    }
}
