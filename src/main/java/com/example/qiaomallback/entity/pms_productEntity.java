package com.example.qiaomallback.entity;

import java.math.BigDecimal;
import java.util.Date;

public class pms_productEntity {
    private Long id;

    private Long brandId;

    private Long productCategoryId;

    private Long feightTemplateId;

    private Long productAttributeCategoryId;

    private String name;

    private String pic;

    private String productSn;

    private Integer deleteStatus;

    private Integer publishStatus;

    private Integer newStatus;

    private Integer recommandStatus;

    private Integer verifyStatus;

    private Integer sort;

    private Integer sale;

    private BigDecimal price;

    private BigDecimal promotionPrice;

    private Integer giftGrowth;

    private Integer giftPoint;

    private Integer usePointLimit;

    private String subTitle;

    private BigDecimal originalPrice;

    private Integer stock;

    private Integer lowStock;

    private String unit;

    private BigDecimal weight;

    private Integer previewStatus;

    private String serviceIds;

    private String keywords;

    private String note;

    private String albumPics;

    private String detailTitle;

    private Date promotionStartTime;

    private Date promotionEndTime;

    private Integer promotionPerLimit;

    private Integer promotionType;

    private String brandName;

    private String productCategoryName;

    private String description;

    private String detailDesc;

    private String detailHtml;

    private String detailMobileHtml;

    public pms_productEntity(Long id, Long brandId, Long productCategoryId, Long feightTemplateId, Long productAttributeCategoryId, String name, String pic, String productSn, Integer deleteStatus, Integer publishStatus, Integer newStatus, Integer recommandStatus, Integer verifyStatus, Integer sort, Integer sale, BigDecimal price, BigDecimal promotionPrice, Integer giftGrowth, Integer giftPoint, Integer usePointLimit, String subTitle, BigDecimal originalPrice, Integer stock, Integer lowStock, String unit, BigDecimal weight, Integer previewStatus, String serviceIds, String keywords, String note, String albumPics, String detailTitle, Date promotionStartTime, Date promotionEndTime, Integer promotionPerLimit, Integer promotionType, String brandName, String productCategoryName, String description, String detailDesc, String detailHtml, String detailMobileHtml) {
        this.id = id;
        this.brandId = brandId;
        this.productCategoryId = productCategoryId;
        this.feightTemplateId = feightTemplateId;
        this.productAttributeCategoryId = productAttributeCategoryId;
        this.name = name;
        this.pic = pic;
        this.productSn = productSn;
        this.deleteStatus = deleteStatus;
        this.publishStatus = publishStatus;
        this.newStatus = newStatus;
        this.recommandStatus = recommandStatus;
        this.verifyStatus = verifyStatus;
        this.sort = sort;
        this.sale = sale;
        this.price = price;
        this.promotionPrice = promotionPrice;
        this.giftGrowth = giftGrowth;
        this.giftPoint = giftPoint;
        this.usePointLimit = usePointLimit;
        this.subTitle = subTitle;
        this.originalPrice = originalPrice;
        this.stock = stock;
        this.lowStock = lowStock;
        this.unit = unit;
        this.weight = weight;
        this.previewStatus = previewStatus;
        this.serviceIds = serviceIds;
        this.keywords = keywords;
        this.note = note;
        this.albumPics = albumPics;
        this.detailTitle = detailTitle;
        this.promotionStartTime = promotionStartTime;
        this.promotionEndTime = promotionEndTime;
        this.promotionPerLimit = promotionPerLimit;
        this.promotionType = promotionType;
        this.brandName = brandName;
        this.productCategoryName = productCategoryName;
        this.description = description;
        this.detailDesc = detailDesc;
        this.detailHtml = detailHtml;
        this.detailMobileHtml = detailMobileHtml;
    }

    public pms_productEntity() {
        super();
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getBrandId() {
        return brandId;
    }

    public void setBrandId(Long brandId) {
        this.brandId = brandId;
    }

    public Long getProductCategoryId() {
        return productCategoryId;
    }

    public void setProductCategoryId(Long productCategoryId) {
        this.productCategoryId = productCategoryId;
    }

    public Long getFeightTemplateId() {
        return feightTemplateId;
    }

    public void setFeightTemplateId(Long feightTemplateId) {
        this.feightTemplateId = feightTemplateId;
    }

    public Long getProductAttributeCategoryId() {
        return productAttributeCategoryId;
    }

    public void setProductAttributeCategoryId(Long productAttributeCategoryId) {
        this.productAttributeCategoryId = productAttributeCategoryId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getPic() {
        return pic;
    }

    public void setPic(String pic) {
        this.pic = pic == null ? null : pic.trim();
    }

    public String getProductSn() {
        return productSn;
    }

    public void setProductSn(String productSn) {
        this.productSn = productSn == null ? null : productSn.trim();
    }

    public Integer getDeleteStatus() {
        return deleteStatus;
    }

    public void setDeleteStatus(Integer deleteStatus) {
        this.deleteStatus = deleteStatus;
    }

    public Integer getPublishStatus() {
        return publishStatus;
    }

    public void setPublishStatus(Integer publishStatus) {
        this.publishStatus = publishStatus;
    }

    public Integer getNewStatus() {
        return newStatus;
    }

    public void setNewStatus(Integer newStatus) {
        this.newStatus = newStatus;
    }

    public Integer getRecommandStatus() {
        return recommandStatus;
    }

    public void setRecommandStatus(Integer recommandStatus) {
        this.recommandStatus = recommandStatus;
    }

    public Integer getVerifyStatus() {
        return verifyStatus;
    }

    public void setVerifyStatus(Integer verifyStatus) {
        this.verifyStatus = verifyStatus;
    }

    public Integer getSort() {
        return sort;
    }

    public void setSort(Integer sort) {
        this.sort = sort;
    }

    public Integer getSale() {
        return sale;
    }

    public void setSale(Integer sale) {
        this.sale = sale;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    public BigDecimal getPromotionPrice() {
        return promotionPrice;
    }

    public void setPromotionPrice(BigDecimal promotionPrice) {
        this.promotionPrice = promotionPrice;
    }

    public Integer getGiftGrowth() {
        return giftGrowth;
    }

    public void setGiftGrowth(Integer giftGrowth) {
        this.giftGrowth = giftGrowth;
    }

    public Integer getGiftPoint() {
        return giftPoint;
    }

    public void setGiftPoint(Integer giftPoint) {
        this.giftPoint = giftPoint;
    }

    public Integer getUsePointLimit() {
        return usePointLimit;
    }

    public void setUsePointLimit(Integer usePointLimit) {
        this.usePointLimit = usePointLimit;
    }

    public String getSubTitle() {
        return subTitle;
    }

    public void setSubTitle(String subTitle) {
        this.subTitle = subTitle == null ? null : subTitle.trim();
    }

    public BigDecimal getOriginalPrice() {
        return originalPrice;
    }

    public void setOriginalPrice(BigDecimal originalPrice) {
        this.originalPrice = originalPrice;
    }

    public Integer getStock() {
        return stock;
    }

    public void setStock(Integer stock) {
        this.stock = stock;
    }

    public Integer getLowStock() {
        return lowStock;
    }

    public void setLowStock(Integer lowStock) {
        this.lowStock = lowStock;
    }

    public String getUnit() {
        return unit;
    }

    public void setUnit(String unit) {
        this.unit = unit == null ? null : unit.trim();
    }

    public BigDecimal getWeight() {
        return weight;
    }

    public void setWeight(BigDecimal weight) {
        this.weight = weight;
    }

    public Integer getPreviewStatus() {
        return previewStatus;
    }

    public void setPreviewStatus(Integer previewStatus) {
        this.previewStatus = previewStatus;
    }

    public String getServiceIds() {
        return serviceIds;
    }

    public void setServiceIds(String serviceIds) {
        this.serviceIds = serviceIds == null ? null : serviceIds.trim();
    }

    public String getKeywords() {
        return keywords;
    }

    public void setKeywords(String keywords) {
        this.keywords = keywords == null ? null : keywords.trim();
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note == null ? null : note.trim();
    }

    public String getAlbumPics() {
        return albumPics;
    }

    public void setAlbumPics(String albumPics) {
        this.albumPics = albumPics == null ? null : albumPics.trim();
    }

    public String getDetailTitle() {
        return detailTitle;
    }

    public void setDetailTitle(String detailTitle) {
        this.detailTitle = detailTitle == null ? null : detailTitle.trim();
    }

    public Date getPromotionStartTime() {
        return promotionStartTime;
    }

    public void setPromotionStartTime(Date promotionStartTime) {
        this.promotionStartTime = promotionStartTime;
    }

    public Date getPromotionEndTime() {
        return promotionEndTime;
    }

    public void setPromotionEndTime(Date promotionEndTime) {
        this.promotionEndTime = promotionEndTime;
    }

    public Integer getPromotionPerLimit() {
        return promotionPerLimit;
    }

    public void setPromotionPerLimit(Integer promotionPerLimit) {
        this.promotionPerLimit = promotionPerLimit;
    }

    public Integer getPromotionType() {
        return promotionType;
    }

    public void setPromotionType(Integer promotionType) {
        this.promotionType = promotionType;
    }

    public String getBrandName() {
        return brandName;
    }

    public void setBrandName(String brandName) {
        this.brandName = brandName == null ? null : brandName.trim();
    }

    public String getProductCategoryName() {
        return productCategoryName;
    }

    public void setProductCategoryName(String productCategoryName) {
        this.productCategoryName = productCategoryName == null ? null : productCategoryName.trim();
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description == null ? null : description.trim();
    }

    public String getDetailDesc() {
        return detailDesc;
    }

    public void setDetailDesc(String detailDesc) {
        this.detailDesc = detailDesc == null ? null : detailDesc.trim();
    }

    public String getDetailHtml() {
        return detailHtml;
    }

    public void setDetailHtml(String detailHtml) {
        this.detailHtml = detailHtml == null ? null : detailHtml.trim();
    }

    public String getDetailMobileHtml() {
        return detailMobileHtml;
    }

    public void setDetailMobileHtml(String detailMobileHtml) {
        this.detailMobileHtml = detailMobileHtml == null ? null : detailMobileHtml.trim();
    }
}