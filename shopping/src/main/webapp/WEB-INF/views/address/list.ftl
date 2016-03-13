<!DOCTYPE html>
<html lang="en">
<head>
    <title>微信商城</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0,user-scalable=no">
    <link rel="stylesheet" href="/static/weui/dist/style/weui.css"/>
    <style>
        .weui_cell_ft {
            margin-top: 10px;
            margin-right: 10px;
        }
    </style>
</head>
<body>
    <div class="weui_cells weui_cells_form">
        <div class="weui_cells weui_cells_radio">
        <#list addressList as address>
            <label class="weui_cell weui_check_label" for="${address.addressId}">
                <div class="weui_cell_bd weui_cell_primary">
                    <p>${address.name}　${address.phone}　${address.province}${address.city} ${address.area}${address.address}</p>
                </div>
                <div class="weui_cell_ft">
                    <input type="radio" class="weui_check" name="address" id="${address.addressId}">
                    <span class="weui_icon_checked"></span>
                </div>
            </label>
        </#list>
        </div>
    </div>
    <div class="bd spacing weui_cell_ft">
        <div class="button_sp_area">
            <a href="/address/add" id="save" class="weui_btn weui_btn_mini  weui_btn_primary">新增收货地址</a>
        </div>
    </div>
</body>
</html>


