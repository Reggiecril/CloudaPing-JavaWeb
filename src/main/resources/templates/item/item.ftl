<!DOCTYPE html>
<html lang="en">
<head>
    <#include "../common/head.ftl">
    <link rel="stylesheet" type="text/css" href="${path}/css/home.css">
    <link rel="stylesheet" type="text/css" href="${path}/css/item.css">
    <link rel="stylesheet" type="text/css" href="${path}/css/product.css">
    <script src="${path}/js/item.js" ></script>

</head>
<#include "../common/header.ftl">

<body>
<#include "../common/search.ftl">
<#include "../common/product-nav.ftl">

<div class="crumb-wrap" id="crumb-wrap">
    <div class="crumb-wrap-content">
        <div class="crumb-wrap-title">
            <div class="product-category-title-first">
                <a href="">${productdetail.productName}</a>
            </div>
        </div>
        <div class="crumb-wrap-left">
            <i class="fa fa-users" aria-hidden="true" style="color: #D52341;padding: 0 0 0 10px;"></i><a href="#"> trader</a>
            <i class="fa fa-commenting" aria-hidden="true" style="color: #D52341;padding: 0 0 0 10px;"></i><a href="#"> Communication</a>
            <i class="fa fa-star" aria-hidden="true" style="color: #D52341;padding: 0 0 0 10px"></i><a href=""> Add Favorite</a>

        </div>
    </div>
</div>

<div class="item-description">
    <div class="item-image-left">
        <div class="shang">
            <img src="${path+"/productImages/"+productdetail.productImage}" height="350" width="350" id="pian">
            <div class="yin"></div>
        </div>
        <div class="bao">
            <span class="item-image-left-tab-left"><img src="${path+"/productImages/"+productdetail.productImage}" width="30px" height="50px"></span>
            <div class="item-image-left-tab">
                <ul class="item-image-left-tab-Ul">
                    <li>
                        <img src="${path+"/productImages/"+productdetail.productImage}" height="52" width="52" />
                    </li>
                    <li>
                        <img src="${path+"/productImages/"+productdetail.productImage}" height="52" width="52" />
                    </li>
                    <li>
                        <img src="${path+"/productImages/"+productdetail.productImage}" height="52" width="52" />
                    </li>
                    <li>
                        <img src="${path+"/productImages/"+productdetail.productImage}" height="52" width="52" />
                    </li>
                    <li>
                        <img src="${path+"/productImages/"+productdetail.productImage}" height="52" width="52" />
                    </li>
                    <li>
                        <img src="${path+"/productImages/"+productdetail.productImage}" height="52" width="52" />
                    </li>
                    <li>
                        <img src="${path+"/productImages/"+productdetail.productImage}" height="52" width="52" />
                    </li>
                    <li>
                        <img src="${path+"/productImages/"+productdetail.productImage}" height="52" width="52" />
                    </li>
                </ul>
            </div>
            <span class="item-image-left-tab-right"><img src="${path+"/productImages/"+productdetail.productImage}" width="30px" height="50px"></span>
        </div>
    </div>
    <div class="item-image-right">
        <img src="${path+"/productImages/"+productdetail.productImage}" height="600" width="600" id="zhao" />
    </div>
    <div class="item-description-word">
        <h3>${productdetail.productName}</h3>

        <div class="item-price">
<#--            <div class="item-price-reviews" >-->
<#--            </div>-->
            <div class="item-price-origin">
                <p style="display: inline-block; color: #aaa">Origin price :</p>
                <del style="display: inline-block;color: #E4393C;">£${productdetail.productOriginPrice}</del>
            </div>
            <div class="item-price-now">
                <h2 style="display: inline-block;color:#E4393C">Now :</h2>
                <p style="display: inline-block; color: #E4393C;">£${productdetail.productNowPrice}</p>
            </div>

        </div>
]        <div class="item-category">

            <div class="item-category-color">
                <p>Color :</p> yellow
            </div>
            <form method="post" action="/item?id=${productdetail.productId}">
                <div class="item-category-quantity">

                    <p>Quantity :</p>
                    <input class="min" name="" type="button" value="-" />
                    <input name="item-category-quantity" id="inputId" type="text" value="1" />
                    <input class="add" name="" type="button" value="+" />

                </div>
                <div class="item-cart">
                    <input type="submit" name="cart" value="Add To Cart">
                </div>
                <div class="item-buy">
                    <a href="" id="linkToCart" style="text-decoration: none;">Buy Now</a>
                </div>
            </form>
        </div>
    </div>
    <div class="item-right">
        <div class="item-right-title">
            -----See More-----
        </div>


        <div class="item-right-image">
            <img src="${path+"/productImages/"+productdetail.productImage}" width="150" height="150">
            <div class="item-right-image-description">
                <a href="">name</a>
                <div style="color:#D52341;position:absolute;right:0;bottom:0;">GBP: now_price</div>
            </div>
        </div>

    </div>
</div>
<div class="item-down">
    <div class="item-down-left">
        <p style="border-bottom: 1px solid #ddd;padding: 10px 0 10px 0;">We recommend</p>

        <a href=""><img src="${path+"/productImages/"+productdetail.productImage}" width="180px" height="180px;"></a>
        <a href="" style="text-align: center;">name</a>
        <h3 style="color: #D52341; text-align: center; margin-top: 10px;">£now_price</h3>
    </div>

    <div class="item-down-right">
        <div class="item-down-right-all">
            <div class="item-down-right-tab">
                <a href="javascript:;" class="on">Description</a>
                <a href="javascript:;">Reviews(<?php echo $count1; ?>)</a>
                <a href="javascript:;">Records</a>
                <a href="javascript:;">Others</a>
            </div>
            <div class="item-down-right-content">
                <ul>

                    <li><blockquote class="blockquote">
                            <p class="mb-0">detail</p>
                        </blockquote></li>
                    <li>
                        <div class="col-sm-10">
                            <hr/>
                            <div class="review-block">

                                <div class="row" style="margin-bottom: 20px;margin-top: 20px; border-bottom: 2px dotted #eee;">

                                    <div class="col-sm-2" style="height: 100px;">
                                        <div class="review-block-name"><h4 href="#">customer anem</h4></div>
                                        <div class="review-block-date">updateDate<br/>1 day ago</div>
                                    </div>
                                    <div class="col-sm-14">

                                        <div class="review-block-title">title</div>
                                        <div class="review-block-description">content</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <table class="table table-striped">
                            <thead>
                            <tr>
                                <th scope="col" class="text-left">Product</th>
                                <th scope="col">Trader</th>
                                <th scope="col">Quantity</th>
                                <th scope="col" class="text-right">Customer</th>
                            </tr>
                            </thead>
                            <tbody>

                            <tr>
                                <td scope="row" class="text-left"><img src="${path+"/productImages/"+productdetail.productImage}" height="50" width="50"></td>
                                <td>trader</td>
                                <td>quantity</td>
                                <td class="text-right">customer name</td>
                            </tr>
                            </tbody>
                        </table>
                    </li>
                    <li><p>Others</p></li>
                </ul>
            </div>
        </div>

    </div>
</div>
</body>
<script src="http://cdn.static.runoob.com/libs/jquery/1.10.2/jquery.min.js"></script>
<script type="text/javascript">
    $(document).ready(function(){
        //点击链接的时候调用
        $("#linkToCart").click(function(){

            //得到input的值
            var count = $("#inputId").val();

            //得到id的值
            var id = ${productdetail.productId}

            //设置linkToCart的href的值
            $("#linkToCart").attr("href","item/buynow?id="+id+"&item-category-quantity="+count);
        });
    });
</script>
</html>