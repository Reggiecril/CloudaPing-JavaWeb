<!DOCTYPE html>
<html lang="en">
<head>
    <#include "../common/head.ftl">
    <link rel="stylesheet" type="text/css" href="${path}/css/home.css">
    <link rel="stylesheet" type="text/css" href="${path}/css/product.css">

</head>
<#include "../common/header.ftl">

<body>
<#include "../common/search.ftl">
<#include "../common/product-nav.ftl">
<#assign urlPath="/product/all">
<div class="product-category-title" style="width:1280px;margin: 0 auto">
    <div class="product-category-title-content">
        <div class="product-category-title-first"><a href="/product/all">All</a></div>
        <#if RequestParameters["type"]??>
            <#assign urlPath=urlPath+"?type="+RequestParameters["type"]>

            <div class="product-category-title-sign">
                <i class="fa fa-chevron-right" aria-hidden="true"></i>
            </div>

            <div class="product-category-title-first">
                <a href="${urlPath}">${RequestParameters["type"]}</a>
            </div>
            <#if productPath??>
                <#list productPath?keys as key>
                    <#assign urlPath=urlPath+"&"+key+"="+productPath[key]>

                    <div class="product-category-title-sign">
                        <i class="fa fa-chevron-right" aria-hidden="true"></i>
                    </div>
                    <div class="product-category-title-last">
                        <a href="${urlPath}">${productPath[key]}</a>
                    </div>
                </#list>
            </#if>
        </#if>
    </div>
</div>
<div class="product-content">
    <div class="product-right">
        <div class="product-rank-title">Popular Goods</div>
        <#list popularProduct as p>
            <div class="product-rank-image">
                <img src="${path}/productImages/${p.productImage}" alt="log" width="250" height="250">
                <div class="product-rank-image-description">
                    <a href="">${p.productName}</a>
                    <div style="color:#D52341;position:absolute;right:0;bottom:0;">GBP:${p.productNowPrice}</div>
                </div>
            </div>
        </#list>

    </div>
    <div class="product-left">
        <div class="product-category">
            <#if !RequestParameters["type"]??>
                <dl>
                    <dt>
                        <div class="product-category-column1">Category:</div>
                    </dt>
                    <dd>
                        <div class="product-category-column2">
                            <a href="/product/all?type=laptop">Laptop</a>
                            <a href="/product/all?type=mobile">Mobile</a>
                            <a href="/product/all?type=audiovideo">Audio&Video</a>
                            <a href="/product/all?type=computer">Computer</a>
                            <a href="/product/all?type=camera">Camera</a>
                            <a href="/product/all?type=other">Other</a>

                        </div>
                    </dd>
                </dl>
            <#else>
                <#if RequestParameters["type"]=="laptop">
                    <dl>
                        <dt><a href="#">品牌:<i> &gt;</i></a></dt>
                        <dd>
                            <#list laptop["laptopBrand"] as l>

                                <a href="${urlPath?replace('(^|\\\\?|&)laptopBrand=([^&]*)','','r')+"&laptopBrand="+l}">${l}</a>
                            </#list>
                        </dd>

                    </dl>
                    <dl>
                        <dt><a href="#">显卡:<i> &gt;</i></a></dt>
                        <dd>
                            <#list laptop["laptopGraphicsCard"] as l>

                                <a href="${urlPath?replace('(^|\\\\?|&)laptopGraphicsCard=([^&]*)','','r')+"&laptopGraphicsCard="+l}">${l}</a>
                            </#list>
                        </dd>

                    </dl>
                    <dl>
                        <dt><a href="#">CPU:<i> &gt;</i></a></dt>
                        <dd>
                            <#list laptop["laptopCpu"] as l>

                                <a href="${urlPath?replace('(^|\\\\?|&)laptopCpu=([^&]*)','','r')+"&laptopCpu="+l}">${l}</a>
                            </#list>
                        </dd>

                    </dl>
                    <dl>
                        <dt><a href="#">尺寸:<i> &gt;</i></a></dt>
                        <dd>
                            <#list laptop["laptopSize"] as l>
                                <a href="${urlPath?replace('(^|\\\\?|&)laptopSize=([^&]*)','','r')+"&laptopSize="+l}">${l}</a>
                            </#list>
                        </dd>

                    </dl>
                </#if>
                <#if RequestParameters["type"]=="mobile">
                    <dl>
                        <dt><a href="#">品牌<i> &gt;</i></a></dt>
                        <dd>
                            <#list mobile["mobileBrand"] as l>
                                <a href="${urlPath?replace('(^|\\\\?|&)mobileBrand=([^&]*)','','r')+"&mobileBrand="+l}">${l}</a>
                            </#list>
                        </dd>

                    </dl>
                    <dl>
                        <dt><a href="#">尺寸<i> &gt;</i></a></dt>
                        <dd>
                            <#list mobile["mobileSize"] as l>
                                <a href="${urlPath?replace('(^|\\\\?|&)mobileSize=([^&]*)','','r')+"&mobileSize="+l}">${l}</a>
                            </#list>
                        </dd>

                    </dl>
                    <dl>
                        <dt><a href="#">系统<i> &gt;</i></a></dt>
                        <dd>
                            <#list mobile["mobileSystem"] as l>
                                <a href="${urlPath?replace('(^|\\\\?|&)mobileSystem=([^&]*)','','r')+"&mobileSystem="+l}">${l}</a>
                            </#list>
                        </dd>

                    </dl>
                    <dl>
                        <dt><a href="#">像素<i> &gt;</i></a></dt>
                        <dd>
                            <#list mobile["mobilePixel"] as l>
                                <a href="${urlPath?replace('(^|\\\\?|&)mobilePixel=([^&]*)','','r')+"&mobilePixel="+l}">${l}</a>
                            </#list>
                        </dd>

                    </dl>
                </#if>

                <#if RequestParameters["type"]=="audiovideo">
                    <dl>
                        <dt><a href="#">品牌:<i> &gt;</i></a></dt>
                        <dd>
                            <#list audiovideo["audioVideoBrand"] as l>
                                <a href="${urlPath?replace('(^|\\\\?|&)audioVideoBrand=([^&]*)','','r')+"&audioVideoBrand="+l}">${l}</a>
                            </#list>
                        </dd>

                    </dl>
                    <dl>
                        <dt><a href="#">分类:<i> &gt;</i></a></dt>
                        <dd>
                            <#list audiovideo["audioVideoType"] as l>
                                <a href="${urlPath?replace('(^|\\\\?|&)audioVideoType=([^&]*)','','r')+"&audioVideoType="+l}">${l}</a>
                            </#list>
                        </dd>

                    </dl>
                </#if>
                <#if RequestParameters["type"]=="computer">
                    <dl>
                        <dt><a href="#">品牌:<i> &gt;</i></a></dt>
                        <dd>
                            <#list computer["computerBrand"] as l>
                                <a href="${urlPath?replace('(^|\\\\?|&)computerBrand=([^&]*)','','r')+"&computerBrand="+l}">${l}</a>
                            </#list>
                        </dd>

                    </dl>
                    <dl>
                        <dt><a href="#">外设:<i> &gt;</i></a></dt>
                        <dd>
                            <#list computer["computerCase"] as l>

                                <a href="${urlPath?replace('(^|\\\\?|&)computerCase=([^&]*)','','r')+"&computerCase="+l}">${l}</a>
                            </#list>
                        </dd>

                    </dl>
                    <dl>
                        <dt><a href="#">屏幕:<i> &gt;</i></a></dt>
                        <dd>
                            <#list computer["computerScreen"] as l>
                                <a href="${urlPath?replace('(^|\\\\?|&)computerScreen=([^&]*)','','r')+"&computerScreen="+l}">${l}</a>
                            </#list>
                        </dd>

                    </dl>
                    <dl>
                        <dt><a href="#">CPU:<i> &gt;</i></a></dt>
                        <dd>
                            <#list computer["computerCpu"] as l>
                                <a href="${urlPath?replace('(^|\\\\?|&)computerCpu=([^&]*)','','r')+"&computerCpu="+l}">${l}</a>
                            </#list>
                        </dd>

                    </dl>
                    <dl>
                        <dt><a href="#">显卡:<i> &gt;</i></a></dt>
                        <dd>
                            <#list computer["computerGraphicsCard"] as l>
                                <a href="${urlPath?replace('(^|\\\\?|&)computerGraphicsCard=([^&]*)','','r')+"&computerGraphicsCard="+l}">${l}</a>
                            </#list>
                        </dd>

                    </dl>
                </#if>
                <#if RequestParameters["type"]=="camera">
                    <dl>
                        <dt><a href="#">品牌:<i> &gt;</i></a></dt>
                        <dd>
                            <#list camera["cameraBrand"] as l>
                                <a href="${urlPath?replace('(^|\\\\?|&)cameraBrand=([^&]*)','','r')+"&cameraBrand="+l}">${l}</a>
                            </#list>
                        </dd>

                    </dl>
                    <dl>
                        <dt><a href="#">分类:<i> &gt;</i></a></dt>
                        <dd>
                            <#list camera["cameraType"] as l>
                                <a href="${urlPath?replace('(^|\\\\?|&)cameraType=([^&]*)','','r')+"&cameraType="+l}">${l}</a>
                            </#list>
                        </dd>

                    </dl>
                    <dl>
                        <dt><a href="#">像素:<i> &gt;</i></a></dt>
                        <dd>
                            <#list camera["cameraPixel"] as l>
                                <a href="${urlPath?replace('(^|\\\\?|&)cameraPixel=([^&]*)','','r')+"&cameraPixel="+l}">${l}</a>
                            </#list>
                        </dd>

                    </dl>
                </#if>


            </#if>
        </div>
        <div class="product-filter">
            <li><a href="${urlPath?replace('(^|\\\\?|&)order=([^&]*)','','r')+"&order=product_sale"}">Sell</a></li>
            <li><a href="/">Reviews</a></li>
            <li><a href="${urlPath?replace('(^|\\\\?|&)order=([^&]*)','','r')+"&order=update_time"}">Update Date</a></li>
            <li><a href="${urlPath?replace('(^|\\\\?|&)order=([^&]*)','','r')+"&order=product_now_price"}">Price</a></li>
        </div>
        <div class="product-goods">
            <#list productList as p>
                <div class="product-goods-item">
                    <a href="/item?id=${p.productId}"><img src="${path}/productImages/${p.productImage}" alt="log" width="220" height="220"></a>
                    <div class="product-goods-price">
                        <p>£${p.productNowPrice}</p>
                    </div>
                    <div class="product-goods-sell">
                        <p>${p.productSale}</p>
                    </div>
                    <div class="product-goods-name">
                        <a href="/item?id=${p.productId}">${p.productName}</a>
                    </div>
                    <div class="product-goods-trader">
                        <a href="#"><i class="fa fa-user-circle-o" aria-hidden="true"></i>${p.traderId}</a>
                    </div>
                </div>
            </#list>
        </div>

    </div>

</div>
</body>
</html>