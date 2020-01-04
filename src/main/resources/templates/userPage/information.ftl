<!DOCTYPE html>
<html>
<#include "common/header.ftl">
<body>

<div class="wrapper">
    <#include "common/left-nav.ftl">
    <!-- Page Content Holder -->
    <div id="content">
        <#include "common/top-nav.ftl">
        <form>
            <h3 style="padding-bottom:10px;border-bottom: 0.5px dashed #cccccc">Cloudaping信息</h3>
            <div class="form-group row">
                <label for="staticEmail" class="col-sm-2 col-form-label">Email:</label>
                <div class="col-sm-3">
                    <input type="text" readonly class="form-control-plaintext" id="staticEmail"
                           value="email@example.com">
                </div>
            </div>
            <div class="form-group row">
                <label for="username" class="col-sm-2 col-form-label">Username:</label>
                <div class="col-sm-3">
                    <input type="text" readonly class="form-control-plaintext" id="username"
                           value="email@example.com">
                </div>
            </div>
            <div class="line"></div>

            <h3 style="padding-bottom:10px;border-bottom: 0.5px dashed #cccccc">我的信息</h3>
            <div class="form-group row">
                <label for="realname" class="col-sm-2 col-form-label">姓名:</label>
                <div class="col-sm-3">
                    <input type="text" readonly class="form-control-plaintext" id="realname"
                           value="email@example.com">
                </div>
            </div>
            <div class="form-group row">
                <label for="phone" class="col-sm-2 col-form-label">手机号:</label>
                <div class="col-sm-3">
                    <input type="text" readonly class="form-control-plaintext" id="phone"
                           value="email@example.com">
                </div>
            </div><div class="form-group row">
                <label for="birthday" class="col-sm-2 col-form-label">出生日期:</label>
                <div class="col-sm-3">
                    <input type="text" readonly class="form-control-plaintext" id="birthday"
                           value="email@example.com">
                </div>
            </div>
            <div class="form-group row">
                <label for="gender" class="col-sm-2 col-form-label">性别:</label>
                <div class="col-sm-3">
                    <input type="text" readonly class="form-control-plaintext" id="gender"
                           value="email@example.com">
                </div>
            </div>
        </form>
    </div>
</div>


</body>
<#include "common/javascript.ftl">
</html>