package com.cloudaping.cloudaping.entity.productType;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class AudioVideo extends ProductType {
    @Id
    private Integer audioVideoId;
    private String audioVideoType;
    private String audioVideoBrand;
    private Integer productId;

    public AudioVideo() {
    }

    public Integer getAudioVideoId() {
        return audioVideoId;
    }

    public void setAudioVideoId(Integer audioVideoId) {
        this.audioVideoId = audioVideoId;
    }

    public String getAudioVideoType() {
        return audioVideoType;
    }

    public void setAudioVideoType(String audioVideoType) {
        this.audioVideoType = audioVideoType;
    }

    public String getAudioVideoBrand() {
        return audioVideoBrand;
    }

    public void setAudioVideoBrand(String audioVideoBrand) {
        this.audioVideoBrand = audioVideoBrand;
    }

    public Integer getProductId() {
        return productId;
    }

    public void setProductId(Integer productId) {
        this.productId = productId;
    }
}
