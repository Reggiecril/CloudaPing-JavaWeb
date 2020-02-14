<div id="item-nav">
    <div id="item-category" onMouseOver="this.className='on'" onmouseleave="this.className=''">
        <div class="ld">
            <h2>All Products</h2><b></b>
        </div>
        <div id="allsort">
            <div class="item-header" onMouseOver="this.className='item-header on'"
                 onmouseleave="this.className='item-header'">
                <span><h3><a href="index.php?content=mainPages/product&product=laptop">笔记本电脑</a></h3></span>
                <div class="i-mc">
                    <div class="sub">
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
            </div>
            <div class="item-header" onMouseOver="this.className='item-header on'"
                 onmouseleave="this.className='item-header'">
                <span><h3><a href="index.php?content=mainPages/product&product=laptop">手机</a></h3></span>
                <div class="i-mc">
                    <div class="sub">
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
            </div>
            <div class="item-header" onMouseOver="this.className='item-header on'"
                 onmouseleave="this.className='item-header'">
                <span><h3><a href="index.php?content=mainPages/product&product=laptop" style="color:#333;">台式电脑</a></h3></span>
                <div class="i-mc">
                    <div class="sub">
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
            </div>
            <div class="item-header" onMouseOver="this.className='item-header on'"
                 onmouseleave="this.className='item-header'">
                <span><h3><a href="index.php?content=mainPages/product&product=laptop" style="color:#333;">照相机</a></h3></span>
                <div class="i-mc">
                    <div class="sub">
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
            </div>
            <div class="item-header" onMouseOver="this.className='item-header on'"
                 onmouseleave="this.className='item-header'">
                <span><h3><a href="index.php?content=mainPages/product&product=laptop" style="color:#333;">
                            影音设备</a></h3></span>
                <div class="i-mc">
                    <div class="sub">
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
            </div>
            <div class="item-header" onMouseOver="this.className='item-header on'"
                 onmouseleave="this.className='item-header'">
                <span><h3><a href="index.php?content=mainPages/product&product=laptop" style="color:#333;">
                            其他</a></h3></span>
                <div class="i-mc">
                    <div class="sub">

                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="item-header-navigation">
        <li><a href="/">Home</a></li>
    </div>
</div>

