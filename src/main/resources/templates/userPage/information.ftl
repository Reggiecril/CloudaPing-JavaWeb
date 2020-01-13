<!DOCTYPE html>
<html>
<head>
    <#include "common/head.ftl">
</head>
<body>

<div class="wrapper">
    <#include "common/left-nav.ftl">
    <!-- Page Content Holder -->
    <div id="content">
        <#include "common/top-nav.ftl">
        <form method="post" action="/userPage/information">
            <div style="padding-bottom:10px;border-bottom: 0.5px dashed #cccccc;">
                <h3 style="display: inline-block">Cloudaping信息</h3>
                <div id="information-edit" style="display: inline-block;float:right;margin-right: 20px">
                    <a id="information-edit-front" href="#" style="color: #999">编辑</a>
                </div>
            </div>
            <div class="form-group row">
                <label for="email" class="col-sm-2 col-form-label">Email:</label>
                <div class="col-sm-3">
                    <input type="text" readonly class="form-control-plaintext" name="email" id="email"
                           value="${user.email}">
                </div>
            </div>
            <div class="form-group row">
                <label for="username" class="col-sm-2 col-form-label">Username:</label>
                <div class="col-sm-3">
                    <input type="text" readonly class="form-control-plaintext" name="username" id="username"
                           value="${user.username!}">
                </div>
            </div>
            <div class="line"></div>

            <h3 style="padding-bottom:10px;border-bottom: 0.5px dashed #cccccc">我的信息</h3>
            <div class="form-group row">
                <label for="realname" class="col-sm-2 col-form-label">姓名:</label>
                <div class="col-sm-3">
                    <input type="text" readonly class="form-control-plaintext" name="name" id="name"
                           value="${user.name!}">
                </div>
            </div>
            <div class="form-group row">
                <label for="phone" class="col-sm-2 col-form-label">手机号:</label>
                <div class="col-sm-3">
                    <input type="tel" readonly class="form-control-plaintext" name="phone" id="phone"
                           value="${user.phone!}">
                </div>
            </div>
            <div class="form-group row">
                <label for="birthday" class="col-sm-2 col-form-label">出生日期:</label>
                <div class="col-sm-3">
                    <input type="text" readonly class="form-control-plaintext" name="birthday" id="birthday"
                           value="${user.birthday!}">
                </div>
            </div>
            <div class="form-group row">
                <label for="gender" class="col-sm-2 col-form-label">性别:</label>
                <div class="col-sm-3">
                    <input type="text" readonly class="form-control-plaintext" id="input_gender"
                           value="${user.gender!}">
                    <select class="mdb-select md-form" name="gender" id="select_gender" style="display: none">

                        <option value="男">男</option>
                        <option value="女">女</option>

                    </select>


                </div>
            </div>
            <div class="form-group row">
                <div class="col-sm-3">
                    <button id="information-edit-backend" class="btn btn-danger" type="submit" style="display: none">
                        完成
                    </button>

                </div>
            </div>

        </form>
    </div>
</div>


</body>
<#include "common/javascript.ftl">
<script>
    function my(id) {
        return document.getElementById(id);
    }

    my("information-edit-front").onclick = function () {
        my("information-edit-front").style.display = "none";
        my("information-edit-backend").style.display = "block";
        my("username").removeAttribute("readonly");
        my("name").removeAttribute("readonly");
        my("phone").removeAttribute("readonly");
        my("birthday").removeAttribute("readonly");
        my("input_gender").style.display = "none";
        my("select_gender").style.display = "block";
    }
    my("information-edit-backend").onclick = function () {
        my("information-edit-front").style.display = "block";
        my("information-edit-backend").style.display = "none";
        my("username").setAttribute("readonly");
        my("name").setAttribute("readonly");
        my("phone").setAttribute("readonly");
        my("birthday").setAttribute("readonly");
        my("input_gender").style.display = "block";
        my("select_gender").style.display = "none";

    }
</script>
</html>