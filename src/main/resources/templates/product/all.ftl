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
                                <a href="${}">${l}</a>
                            </#list>
                        </dd>

                    </dl>
                    <dl>
                        <dt><a href="#">显卡:<i> &gt;</i></a></dt>
                        <dd>
                            <#list laptop["laptopGraphicsCard"] as l>
                                <a href="#">${l}</a>
                            </#list>
                        </dd>

                    </dl>
                    <dl>
                        <dt><a href="#">CPU:<i> &gt;</i></a></dt>
                        <dd>
                            <#list laptop["laptopCpu"] as l>
                                <a href="#">${l}</a>
                            </#list>
                        </dd>

                    </dl>
                    <dl>
                        <dt><a href="#">尺寸:<i> &gt;</i></a></dt>
                        <dd>
                            <#list laptop["laptopSize"] as l>
                                <a href="#">${l}</a>
                            </#list>
                        </dd>

                    </dl>
                </#if>
                <#if RequestParameters["type"]=="mobile"></#if>
                <#if RequestParameters["type"]=="audiovideo"></#if>
                <#if RequestParameters["type"]=="computer"></#if>
                <#if RequestParameters["type"]=="camera"></#if>


            </#if>
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
<script type="text/javascript">
    function changeURLPar(destiny, par, par_value)
    {
        var pattern = par+'=([^&]*)';
        var replaceText = par+'='+par_value;
        if (destiny.match(pattern))
        {
            var tmp = '/\\'+par+'=[^&]*/';
            tmp = destiny.replace(eval(tmp), replaceText);
            return (tmp);
        }
        else
        {
            if (destiny.match('[\?]'))
            {
                return destiny+'&'+ replaceText;
            }
            else
            {
                return destiny+'?'+replaceText;
            }
        }
        return destiny+'\n'+par+'\n'+par_value;
    }
</script>
</html>