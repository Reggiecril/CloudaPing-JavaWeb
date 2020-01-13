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
<div class="product-content">
    <div class="product-right">
        <div class="product-rank-title">Popular Goods</div>
        <div class="product-rank-image">
            <img src="assets/images/" alt="log" width="250" height="250">
            <div class="product-rank-image-description">
                <a href=""></a>
                <div style="color:#D52341;position:absolute;right:0;bottom:0;">GBP: </div>
            </div>
        </div>

    </div>
    <div class="product-left">
        <div class="product-category">
            <dl><dt><div class="product-category-column1">Category:</div></dt><dd>
                    <div class="product-category-column2">
                        <a href="">Laptop</a>
                        <a href="">Mobile</a>
                        <a href="">Audio&Video</a>
                        <a href="">Computer</a>
                        <a href="">Camera</a>
                        <a href="">Other</a>


                    </div>
                </dd></dl>
        </div>
        <div class="product-filter">
            <li><a href="/">Sell</a></li>
            <li><a href="/">Reviews</a></li>
            <li><a href="/">Update Date</a></li>
            <li><a href="/">Price</a></li>
        </div>
        <div class="product-goods">
            <div class="product-goods-item">
                <a href=""><img src="assets/images/" alt="log" width="220" height="220"></a>
                <div class="product-goods-price">

                </div>
                <div class="product-goods-sell">
                </div>
                <div class="product-goods-name">
                    <a href=""></a>
                </div>
                <div class="product-goods-trader">
                    <a href="#"><i class="fa fa-user-circle-o" aria-hidden="true"></i></a>
                </div>
            </div>

        </div>

    </div>

</div>
</body>
</html>