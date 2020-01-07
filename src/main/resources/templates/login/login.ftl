<!DOCTYPE html>
<html lang="en">
<#include "head.ftl">
<body>

<div class="limiter">
    <div style="top:0; height: 80px; width:100%;position: fixed;">
        <a href="../index"><img src="${path}/images/log1.jpg" style="width: 200px;height: 80px;"></a>
        <div style="float: right;margin-top: 20px;margin-right: 20px;">
            <a href="../index"><span class="btn btn-outline-light">首页</span></a>
            <a href="signup"><span class="btn btn-outline-light">注册</span></a>
        </div>
    </div>
    <div class="container-login100">

        <div class="wrap-login100">

            <div class="login100-form-title" style="background-image: url(${path}/images/bg-01.jpg);">
					<span class="login100-form-title-1">
						登录
					</span>
            </div>
            <form class="login100-form" method="post" action="/user/login">
                <div class="wrap-input100 validate-input m-b-26">
                    <span class="label-input100">邮箱</span>
                    <input class="input100" type="text" name="email" placeholder="输入邮箱">
                </div>

                <div class="wrap-input100 validate-input m-b-18">
                    <span class="label-input100">密码</span>
                    <input class="input100" type="password" name="password" placeholder="输入密码">
                </div>

                <div class="flex-sb-m w-full p-b-30">
                    <div class="contact100-form-checkbox">
                        <input class="input-checkbox100" id="ckb1" type="checkbox" name="remember-me">
                        <label class="label-checkbox100" for="ckb1">
                            记住我
                        </label>
                    </div>

                    <div>
                        <a href="#" class="txt1">
                            忘记密码？
                        </a>
                    </div>
                </div>

                <div class="container-login100-form-btn">
                    <button class="login100-form-btn">
                        登录
                    </button>
                </div>
                <div style="color:#D52341; margin: 0 auto; width: 100%;position: relative;padding-top: 20px">${errMsg!}</div>

            </form>
        </div>
    </div>
</div>
</body>
</html>