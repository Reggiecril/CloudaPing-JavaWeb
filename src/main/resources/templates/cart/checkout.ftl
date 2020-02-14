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
<div class="pb-5">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 p-5 bg-white rounded shadow-sm mb-5">
                <div class="form-inline">
                    <h3>地址: </h3>
                    <a href="" style="padding-left: 20px " data-toggle="modal" data-target=".checkout-address"><i class="fa fa-plus-circle fa-2x"  aria-hidden="true"></i></a>
                </div>
                <#list addressList as address>
                <select class="form-control form-control-lg">!
                    <option value="${address.id!}">${address.address!}</option>
                </select>
                </#list>
            </div>
            <div class="col-lg-12 p-5 bg-white rounded shadow-sm mb-5">
                <div class="form-inline">
                    <h3>付款方式: </h3>
                    <a href="" style="padding-left: 20px " data-toggle="modal" data-target=".checkout-payment"><i class="fa fa-plus-circle fa-2x"  aria-hidden="true"></i></a>
                </div>
                <#list paymentList as payment>
                    <select class="form-control form-control-lg">!
                        <option value="${payment.id!}">${payment.cardNumber!}</option>
                    </select>
                </#list>
            </div>
            <div class="col-lg-12 p-5 bg-white rounded shadow-sm mb-5">
                <!-- Shopping cart table -->
                <div class="table-responsive">
                    <table class="table">
                        <thead>
                        <tr>
                            <th scope="col" class="border-0 bg-light">
                                <div class="p-2 px-3 text-uppercase">Product</div>
                            </th>
                            <th scope="col" class="border-0 bg-light">
                                <div class="py-2 text-uppercase">Price</div>
                            </th>
                            <th scope="col" class="border-0 bg-light">
                                <div class="py-2 text-uppercase">Quantity</div>
                            </th>
                        </tr>
                        </thead>
                        <tbody>
                        <#if cartList??>
                            <#list cartList as product>
                                <tr>
                                    <th scope="row" class="border-0">
                                        <div class="p-2">
                                            <img src="${path}/productImages/${product.productImage!}"
                                                 alt="" width="70" class="img-fluid rounded shadow-sm">
                                            <div class="ml-3 d-inline-block align-middle">
                                                <h5 class="mb-0"><a href="#"
                                                                    class="text-dark d-inline-block align-middle">${product.productName!}</a>
                                                </h5><span class="text-muted font-weight-normal font-italic d-block">Category: ${product.productCategory!}</span>
                                            </div>
                                        </div>
                                    </th>
                                    <td class="border-0 align-middle"><strong>£${product.productNowPrice!}</strong></td>
                                    <td class="border-0 align-middle"><strong>${product.productQuantity!}</strong></td>
                                </tr>
                            </#list>
                        <#else>
                            <tr>
                                <th scope="row" class="border-0">
                                    <h3 style="text-align: center;margin: 0 auto;">Cart is Empty</h3>
                                </th>
                            </tr>
                        </#if>
                        </tbody>
                    </table>
                </div>
                <!-- End -->
            </div>
        </div>
        <div class="row py-5 p-4 bg-white rounded shadow-sm">
            <div class="col-lg-6">
                <div class="bg-light rounded-pill px-4 py-3 text-uppercase font-weight-bold">Coupon code</div>
                <div class="p-4">
                    <p class="font-italic mb-4">If you have a coupon code, please enter it in the box below</p>
                    <div class="input-group mb-4 border rounded-pill p-2">
                        <input type="text" placeholder="Apply coupon" aria-describedby="button-addon3"
                               class="form-control border-0">
                        <div class="input-group-append border-0">
                            <button id="button-addon3" type="button" class="btn btn-dark px-4 rounded-pill"><i
                                        class="fa fa-gift mr-2"></i>Apply coupon
                            </button>
                        </div>
                    </div>
                </div>
                <div class="bg-light rounded-pill px-4 py-3 text-uppercase font-weight-bold">Instructions for seller
                </div>
                <div class="p-4">
                    <p class="font-italic mb-4">If you have some information for the seller you can leave them in the
                        box below</p>
                    <textarea name="" cols="30" rows="2" class="form-control"></textarea>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="bg-light rounded-pill px-4 py-3 text-uppercase font-weight-bold">Order summary</div>
                <div class="p-4">
                    <p class="font-italic mb-4">Shipping and additional costs are calculated based on values you have
                        entered.</p>
                    <ul class="list-unstyled mb-4">
                        <li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">Order
                                Subtotal </strong><strong>£${total!}</strong></li>
                        <li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">Shipping
                                and handling</strong><strong>£0.00</strong></li>
                        <li class="d-flex justify-content-between py-3 border-bottom"><strong
                                    class="text-muted">Tax</strong><strong>£0.00</strong></li>
                        <li class="d-flex justify-content-between py-3 border-bottom"><strong
                                    class="text-muted">Total</strong>
                            <h5 class="font-weight-bold">£${total!}</h5>
                        </li>
                    </ul>
                    <a href="/user/order/create" class="btn btn-dark rounded-pill py-2 btn-block">Procceed to checkout</a>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
<#--address-->
<div class="modal fade checkout-address" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="myLargeModalLabel">New message</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form>
                    <div class="form-group">
                        <label for="recipient-name" class="col-form-label">Recipient:</label>
                        <input type="text" class="form-control" id="recipient-name">
                    </div>
                    <div class="form-group">
                        <label for="message-text" class="col-form-label">Message:</label>
                        <textarea class="form-control" id="message-text"></textarea>
                    </div>
                </form>
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary">Send message</button>
            </div>
        </div>
    </div>
</div>
<#--payment-->
<div class="modal fade checkout-payment" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="myLargeModalLabel">New message</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form>
                    <div class="form-group">
                        <label for="recipient-name" class="col-form-label">Recipient:</label>
                        <input type="text" class="form-control" id="recipient-name">
                    </div>
                    <div class="form-group">
                        <label for="message-text" class="col-form-label">Message:</label>
                        <textarea class="form-control" id="message-text"></textarea>
                    </div>
                </form>
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary">Send message</button>
            </div>
        </div>
    </div>
</div>
</html>