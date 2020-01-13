<header class="container-fluid">
    <div class="row" style="padding-top: 6px;">
        <div class='col-md-9'>
            欢迎来到<a href='/'>CloudaPing</a>
            |
            <a href='#'><img src='${path}/images/china_flag.jpeg' width='20px' height='12px'>中国</a>
            |
            <a href='#'>关于我们</a>
            |
            <a href='#'>App下载</a>
        </div>
        <div class='col-md-3'>
            <div style="text-align: right">
                <a href='/product/all'>所有商品 | </a>

                <a href='/order/my'>订单 | </a>
                <#if !user??>
                    <a href='/user/login'>登录</a>
                    <a href='/user/signup'> | 注册</a>
                <#else>
                    <a href='/userPage/information'>
                        <#if user.username??&&user.username!="">
                            ${user.username}
                        <#else>
                            ${user.email}
                        </#if>
                    </a>
                </#if>
            </div>
        </div>
    </div>
</header>