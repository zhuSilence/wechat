package com.coocaa.po;

public class GoodsDetails {
    private Integer goodsDetailsId;

    private Integer goodsId;

    private String bigUrl;

    private String milUrl;

    private String smallUrl;

    public Integer getGoodsDetailsId() {
        return goodsDetailsId;
    }

    public void setGoodsDetailsId(Integer goodsDetailsId) {
        this.goodsDetailsId = goodsDetailsId;
    }

    public Integer getGoodsId() {
        return goodsId;
    }

    public void setGoodsId(Integer goodsId) {
        this.goodsId = goodsId;
    }

    public String getBigUrl() {
        return bigUrl;
    }

    public void setBigUrl(String bigUrl) {
        this.bigUrl = bigUrl == null ? null : bigUrl.trim();
    }

    public String getMilUrl() {
        return milUrl;
    }

    public void setMilUrl(String milUrl) {
        this.milUrl = milUrl == null ? null : milUrl.trim();
    }

    public String getSmallUrl() {
        return smallUrl;
    }

    public void setSmallUrl(String smallUrl) {
        this.smallUrl = smallUrl == null ? null : smallUrl.trim();
    }
}