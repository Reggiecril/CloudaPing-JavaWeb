<!DOCTYPE html>
<html lang="en">
<head>
    <#include "common/head.ftl">
    <link rel="stylesheet" type="text/css" href="${path}/css/home.css">

</head>
<#include "common/header.ftl">

<body>
<#--header search bar-->
<div class='header-search'>
    <div class="container-fluid">
        <div class='row' style="border-bottom: 1.5px solid #D52341">
            <div class="col-md-11 " style="margin: 0 auto;">
                <div class="col-md-3" style="display: inline-block;">
                    <a href=''><img src='${path}/images/log.png' width="250px" height="60px" alt='log'></a>
                </div>
                <div class="col-md-8" style="display: inline-block;margin-top: 10px ">
                    <form action='index.php?content=sections/search' method='post'>
                        <input type='text' name='searchText' height='40'>
                        <select name='searchSelect'>
                            <option selected='selected' value='All'>All</option>
                            <option value='laptop'>Laptop</option>
                            <option value='mobile'>Mobile</option>
                            <option value='computer'>Computer</option>
                            <option value='camera'>Camera</option>
                            <option value='audio&video'>Audio&Video</option>
                            <option value='others'>Others(X-BOX,Headset and ...)</option>
                            <option value='shop'>Shop</option>
                        </select>
                        <input type='submit' name='searchSubmit' value='Search'>
                        <div class='header-popular'>
                            <p>Popular search:</p>
                            <a href='index.php?content=mainPages/product&product=laptop'>Laptop</a>
                            <a href='index.php?content=mainPages/product&product=mobile'>Mobile</a>
                            <a href='index.php?content=mainPages/product&product=computer'>Computer</a>
                            <a href='index.php?content=mainPages/product&product=camera'>Camera</a>
                            <a href='index.php?content=mainPages/product&product=X-Box'>X-Box</a>
                            <a href='index.php?content=mainPages/product&product=headset'>Headset</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
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
        <!--手机-->
        <div class="inner-box ">
            <div class="sub-inner-box">
                <div class="tittle">手机、配件</div>
                <div class="sub-row">
                    <span class="bold mr10">手机通讯：</span>
                    <a href="#">手机</a>
                    <span class="ml10 mr10">/</span>
                    <a href="#">手机</a>
                    <span class="ml10 mr10">/</span>
                    <a href="#">手机</a>
                    <span class="ml10 mr10">/</span>
                    <a href="#">手机</a>
                </div>
                <div class="sub-row">

                    <span class="bold mr10" style="display: inline-block">手机通讯：</span>
                    <div style="width: 500px;display: inline-block">
                        <a href="#">手机</a>
                        <span class="ml10 mr10">/</span>
                        <a href="#">手机</a>
                        <span class="ml10 mr10">/</span>
                        <a href="#">手机</a>
                        <span class="ml10 mr10">/</span>
                        <a href="#">手机</a>
                        <span class="ml10 mr10">/</span>
                        <a href="#">手机</a>
                        <span class="ml10 mr10">/</span>
                        <a href="#">手机</a>
                        <span class="ml10 mr10">/</span>
                        <a href="#">手机</a>
                        <span class="ml10 mr10">/</span>
                        <a href="#">手机</a>
                    </div>
                </div>
                <div class="sub-row">
                    <span class="bold mr10">手机通讯：</span>
                    <a href="#">手机</a>
                    <span class="ml10 mr10">/</span>
                    <a href="#">手机</a>
                    <span class="ml10 mr10">/</span>
                    <a href="#">手机</a>
                    <span class="ml10 mr10">/</span>
                    <a href="#">手机</a>
                </div>

            </div>

        </div>
        <!--电脑-->
        <div class="inner-box">
            <div class="sub-inner-box">
                <div class="tittle">电脑</div>
                <div class="sub-row">
                    <span class="bold mr10">手机通讯：</span>
                    <a href="#">手机</a>
                    <span class="ml10 mr10">/</span>
                    <a href="#">手机</a>
                    <span class="ml10 mr10">/</span>
                    <a href="#">手机</a>
                    <span class="ml10 mr10">/</span>
                    <a href="#">手机</a>
                </div>
                <div class="sub-row">
                    <span class="bold mr10">手机通讯：</span>
                    <a href="#">手机</a>
                    <span class="ml10 mr10">/</span>
                    <a href="#">手机</a>
                    <span class="ml10 mr10">/</span>
                    <a href="#">手机</a>
                    <span class="ml10 mr10">/</span>
                    <a href="#">手机</a>
                </div>
                <div class="sub-row">
                    <span class="bold mr10">手机通讯：</span>
                    <a href="#">手机</a>
                    <span class="ml10 mr10">/</span>
                    <a href="#">手机</a>
                    <span class="ml10 mr10">/</span>
                    <a href="#">手机</a>
                    <span class="ml10 mr10">/</span>
                    <a href="#">手机</a>
                </div>

            </div>

        </div>
        <!--电器-->
        <div class="inner-box">
            <div class="sub-inner-box">
                <div class="tittle">电器</div>
                <div class="sub-row">
                    <span class="bold mr10">手机通讯：</span>
                    <a href="#">手机</a>
                    <span class="ml10 mr10">/</span>
                    <a href="#">手机</a>
                    <span class="ml10 mr10">/</span>
                    <a href="#">手机</a>
                    <span class="ml10 mr10">/</span>
                    <a href="#">手机</a>
                </div>
                <div class="sub-row">
                    <span class="bold mr10">手机通讯：</span>
                    <a href="#">手机</a>
                    <span class="ml10 mr10">/</span>
                    <a href="#">手机</a>
                    <span class="ml10 mr10">/</span>
                    <a href="#">手机</a>
                    <span class="ml10 mr10">/</span>
                    <a href="#">手机</a>
                </div>
                <div class="sub-row">
                    <span class="bold mr10">手机通讯：</span>
                    <a href="#">手机</a>
                    <span class="ml10 mr10">/</span>
                    <a href="#">手机</a>
                    <span class="ml10 mr10">/</span>
                    <a href="#">手机</a>
                    <span class="ml10 mr10">/</span>
                    <a href="#">手机</a>
                </div>

            </div>

        </div>
        <!--家具-->
        <div class="inner-box">
            <div class="sub-inner-box">
                <div class="tittle">家具</div>
                <div class="sub-row">
                    <span class="bold mr10">手机通讯：</span>
                    <a href="#">手机</a>
                    <span class="ml10 mr10">/</span>
                    <a href="#">手机</a>
                    <span class="ml10 mr10">/</span>
                    <a href="#">手机</a>
                    <span class="ml10 mr10">/</span>
                    <a href="#">手机</a>
                </div>
                <div class="sub-row">
                    <span class="bold mr10">手机通讯：</span>
                    <a href="#">手机</a>
                    <span class="ml10 mr10">/</span>
                    <a href="#">手机</a>
                    <span class="ml10 mr10">/</span>
                    <a href="#">手机</a>
                    <span class="ml10 mr10">/</span>
                    <a href="#">手机</a>
                </div>
                <div class="sub-row">
                    <span class="bold mr10">手机通讯：</span>
                    <a href="#">手机</a>
                    <span class="ml10 mr10">/</span>
                    <a href="#">手机</a>
                    <span class="ml10 mr10">/</span>
                    <a href="#">手机</a>
                    <span class="ml10 mr10">/</span>
                    <a href="#">手机</a>
                </div>

            </div>

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
<div class="home-rank">
    <div style="width:1200px; margin: 0 auto">

        <div class="home-rank-title">
            <p>Popular</p>
        </div>
    </div>
    <div class="home-rank-content container-fluid">
        <div style="width:1200px; margin: 0 auto">
            <div class="home-rank-item">
                <a href="">
                    <div class="home-rank-item-image">
                        <img src="${path}/images/banner-1.jpg" width="95%" height="95%">
                    </div>
                    <div class="home-rank-item-product">
                        name
                    </div>
                    <div class="home-rank-item-price">
                        price
                    </div>
                </a>
            </div>
        </div>
    </div>
</div>
<#--Page Javascript-->
<script src="${path}/js/slider.js"></script>
</body>
</html>