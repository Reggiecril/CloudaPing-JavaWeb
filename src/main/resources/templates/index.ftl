<!DOCTYPE html>
<html lang="en">
<head>
    <#include "common/head.ftl">
    <link rel="stylesheet" type="text/css" href="${path}/css/home.css">

</head>
<#include "common/header.ftl">

<body>
<#include "common/search.ftl">

<#--banner-->
<div class="main" id="main">

    <div class="menu-box">

    </div>

    <!--主-->
    <div class="menu-contern" id="menu-contern">
        <div class="menu-item">
            <a href="">
                <span>笔记本电脑</span>
            </a>
        </div>
        <div class="menu-item">
            <a href="">
                <span>手机</span>

            </a>
        </div>
        <div class="menu-item">
            <a href="">
                <span>台式电脑</span>
            </a>
        </div>
        <div class="menu-item">
            <a href="">
                <span>照相机</span>
            </a>
        </div>
        <div class="menu-item">
            <a href="">
                <span>影音设备</span>
            </a>
        </div>
        <div class="menu-item">
            <a href="">
                <span>其他</span>
            </a>
        </div>
        <div class="menu-item">
            <a href="">
                <span>商铺</span>
            </a>
        </div>
    </div>
    <!--子-->
    <div class="sub-menu hide" id="sub-menu">
        <!--笔记本电脑-->
        <div class="inner-box ">
            <div class="sub-inner-box">
                <div class="tittle">笔记本电脑</div>
                <div class="sub gun1">
                    <dl>
                        <dt><a href="#">品牌:<i> &gt;</i></a> </dt>
                        <dd>
                            <#list laptop["laptopBrand"] as l>
                                <a href="/product/all?type=laptop&laptopBrand=${l}">${l}</a>
                            </#list>
                        </dd>

                    </dl>
                    <dl>
                        <dt><a href="#">显卡:<i> &gt;</i></a> </dt>
                        <dd>
                            <#list laptop["laptopGraphicsCard"] as l>
                                <a href="/product/all?type=laptop&laptopGraphicsCard=${l}">${l}</a>
                            </#list>
                        </dd>

                    </dl>
                    <dl>
                        <dt><a href="#">CPU:<i> &gt;</i></a> </dt>
                        <dd>
                            <#list laptop["laptopCpu"] as l>
                                <a href="/product/all?type=laptop&laptopCpu=${l}">${l}</a>
                            </#list>
                        </dd>

                    </dl>
                    <dl>
                        <dt><a href="#">尺寸:<i> &gt;</i></a> </dt>
                        <dd>
                            <#list laptop["laptopSize"] as l>
                                <a href="/product/all?type=laptop&laptopSize=${l}">${l}</a>
                            </#list>
                        </dd>

                    </dl>

                </div>
            </div>
            <div class="scroll_bar1"></div>
        </div>
        <!--手机-->
        <div class="inner-box ">
            <div class="sub-inner-box">
                <div class="tittle">手机</div>
                <div class="sub gun2">
                    <dl>
                        <dt><a href="#">品牌<i> &gt;</i></a> </dt>
                        <dd>
                            <#list mobile["mobileBrand"] as l>
                                <a href="/product/all?type=mobile&mobileBrand=${l}">${l}</a>
                            </#list>
                        </dd>

                    </dl>
                    <dl>
                        <dt><a href="#">尺寸<i> &gt;</i></a> </dt>
                        <dd>
                            <#list mobile["mobileSize"] as l>
                                <a href="/product/all?type=mobile&mobileSize=${l}">${l}</a>
                            </#list>
                        </dd>

                    </dl>
                    <dl>
                        <dt><a href="#">系统<i> &gt;</i></a> </dt>
                        <dd>
                            <#list mobile["mobileSystem"] as l>
                                <a href="/product/all?type=mobile&mobileSystem=${l}">${l}</a>
                            </#list>
                        </dd>

                    </dl>
                    <dl>
                        <dt><a href="#">像素<i> &gt;</i></a> </dt>
                        <dd>
                            <#list mobile["mobilePixel"] as l>
                                <a href="/product/all?type=mobile&mobilePixel=${l}">${l}</a>
                            </#list>
                        </dd>

                    </dl>
                </div>
            </div>
            <div class="scroll_bar2"></div>
        </div>
        <!--台式电脑-->
        <div class="inner-box ">
            <div class="sub-inner-box">
                <div class="tittle">台式电脑</div>
                <div class="sub gun3">
                    <dl>
                        <dt><a href="#">品牌:<i> &gt;</i></a> </dt>
                        <dd>
                            <#list computer["computerBrand"] as l>
                                <a href="/product/all?type=computer&computerBrand=${l}">${l}</a>
                            </#list>
                        </dd>

                    </dl>
                    <dl>
                        <dt><a href="#">外设:<i> &gt;</i></a> </dt>
                        <dd>
                            <#list computer["computerCase"] as l>
                                <a href="/product/all?type=computer&computerCase=${l}">${l}</a>
                            </#list>
                        </dd>

                    </dl>
                    <dl>
                        <dt><a href="#">屏幕:<i> &gt;</i></a> </dt>
                        <dd>
                            <#list computer["computerScreen"] as l>
                                <a href="/product/all?type=computer&computerScreen=${l}">${l}</a>
                            </#list>
                        </dd>

                    </dl>
                    <dl>
                        <dt><a href="#">CPU:<i> &gt;</i></a> </dt>
                        <dd>
                            <#list computer["computerCpu"] as l>
                                <a href="/product/all?type=computer&computerCpu=${l}">${l}</a>
                            </#list>
                        </dd>

                    </dl>
                    <dl>
                        <dt><a href="#">显卡:<i> &gt;</i></a> </dt>
                        <dd>
                            <#list computer["computerGraphicsCard"] as l>
                                <a href="/product/all?type=computer&computerGraphicsCard=${l}">${l}</a>
                            </#list>
                        </dd>

                    </dl>
                </div>
            </div>
            <div class="scroll_bar3"></div>
        </div>
        <!--照相机-->
        <div class="inner-box ">
            <div class="sub-inner-box">
                <div class="tittle">照相机</div>
                <div class="sub gun4">
                    <dl>
                        <dt><a href="#">品牌:<i> &gt;</i></a> </dt>
                        <dd>
                            <#list camera["cameraBrand"] as l>
                                <a href="/product/all?type=camera&cameraBrand=${l}">${l}</a>
                            </#list>
                        </dd>

                    </dl>
                    <dl>
                        <dt><a href="#">分类:<i> &gt;</i></a> </dt>
                        <dd>
                            <#list camera["cameraType"] as l>
                                <a href="/product/all?type=camera&cameraType=${l}">${l}</a>
                            </#list>
                        </dd>

                    </dl>
                    <dl>
                        <dt><a href="#">像素:<i> &gt;</i></a> </dt>
                        <dd>
                            <#list camera["cameraPixel"] as l>
                                <a href="/product/all?type=camera&cameraPixel=${l}">${l}</a>
                            </#list>
                        </dd>

                    </dl>

                </div>
            </div>
            <div class="scroll_bar4"></div>
        </div>
        <!--影音设备-->
        <div class="inner-box ">
            <div class="sub-inner-box">
                <div class="tittle">影音设备</div>
                <div class="sub gun5">
                    <dl>
                        <dt><a href="#">品牌:<i> &gt;</i></a> </dt>
                        <dd>
                            <#list audiovideo["audioVideoBrand"] as l>
                                <a href="/product/all?type=audiovideo&audioVideoBrand=${l}">${l}</a>
                            </#list>
                        </dd>

                    </dl>
                    <dl>
                        <dt><a href="#">分类:<i> &gt;</i></a> </dt>
                        <dd>
                            <#list audiovideo["audioVideoType"] as l>
                                <a href="/product/all?type=audiovideo&audioVideoType=${l}">${l}</a>
                            </#list>
                        </dd>

                    </dl>

                </div>
            </div>
            <div class="scroll_bar5"></div>
        </div>
        <!--其他-->
        <div class="inner-box ">
            <div class="sub-inner-box">
                <div class="tittle">其他</div>
                <div class="sub gun6">


                </div>
            </div>
            <div class="scroll_bar6"></div>
        </div>
        <!--商铺-->
        <div class="inner-box ">
            <div class="sub-inner-box">
                <div class="tittle">商铺</div>
                <div class="sub gun7">

                </div>
            </div>
            <div class="scroll_bar7"></div>
        </div>
    </div>
    <!--图片轮播-->
    <div class="banner" id="banner">
        <a href="">
            <div class="banner-slide slide_active"><img src="${path}/images/banner-1.jpg" width="956px" height="460">
            </div>
        </a>
        <a href="">
            <div class="banner-slide"><img src="${path}/images/banner-2.jpg" width="956px" height="460"></div>
        </a>
        <a href="">
            <div class="banner-slide"><img src="${path}/images/banner-3.jpg" width="956px" height="460"></div>
        </a>
        <a href="">
            <div class="banner-slide"><img src="${path}/images/banner-4.png" width="956px" height="460"></div>
        </a>
        <a href="">
            <div class="banner-slide"><img src="${path}/images/banner-5.png" width="956px" height="460"></div>
        </a>
    </div>

    <!--上下按钮-->
    <a href="javascript:void(0)" class="button prev" id="prev"></a>
    <a href="javascript:void(0)" class="button next" id="next"></a>
    <!--圆点-->
    <div class="dots" id="dots">
        <span class="active"></span>
        <span></span>
        <span></span>
        <span></span>
        <span></span>
    </div>
</div>
<#--Sections-->
<#list categoryMap?keys as categoryKey>
    <div class="home-rank">
        <div style="width:1250px; margin: 0 auto">

            <div class="home-rank-title">
                <p>
                    ${categoryKey}
                </p>
            </div>
        </div>
        <div class="home-rank-content container-fluid">
            <div style="width:1250px; margin: 0 auto">
                <#list categoryMap[categoryKey] as category>
                    <div class="home-rank-item">
                        <div class="home-rank-item-image">
                            <a href=""> <img src="${path}/productImages/${category.productImage}"/></a>
                        </div>
                        <div class="home-rank-item-product">
                            <a>${category.productName}</a>
                        </div>
                        <div class="home-rank-item-price">
                            <p>£${category.productNowPrice}</p>
                        </div>
                    </div>
                </#list>
            </div>
        </div>
    </div>
</#list>
<#--Page Javascript-->
<script src="${path}/js/slider.js"></script>
<script type="text/javascript">
    new CusScrollBar({
        contentSelector: '.gun1', //滚动内容区
        barSelector: '.scroll_bar1', //滚动条
    });
    new CusScrollBar({
        contentSelector: '.gun2', //滚动内容区
        barSelector: '.scroll_bar2', //滚动条
    });
    new CusScrollBar({
        contentSelector: '.gun3', //滚动内容区
        barSelector: '.scroll_bar3', //滚动条
    });
    new CusScrollBar({
        contentSelector: '.gun4', //滚动内容区
        barSelector: '.scroll_bar4', //滚动条
    });
    new CusScrollBar({
        contentSelector: '.gun5', //滚动内容区
        barSelector: '.scroll_bar5', //滚动条
    });

    new CusScrollBar({
        contentSelector: '.gun6', //滚动内容区
        barSelector: '.scroll_bar6', //滚动条
    });new CusScrollBar({
        contentSelector: '.gun7', //滚动内容区
        barSelector: '.scroll_bar7', //滚动条
    });
</script>
</body>
</html>