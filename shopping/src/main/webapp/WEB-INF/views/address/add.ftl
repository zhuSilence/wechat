<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0">
    <title>WeUI</title>
    <script type="text/javascript" src="/static/jquery-2.1.1.min.js"></script>
    <script type="text/javascript" src="/static/js/getLocation.js"></script>
    <link rel="stylesheet" href="/static/weui/dist/style/weui.css"/>
    <style type="text/css">
        .spacing .button_sp_area {
            padding: 10px 10px;
            margin: 0 auto;
            text-align: justify;
            text-justify: distribute-all-lines;
        }

        .weui_cells_checkbox {
            margin-top: 0;
        }
        .spacing .button_sp_area a {
            margin: 0 3em;
        }
    </style>
</head>
<body ontouchstart onload="setup();promptinfo();">
<div class="add">
    <form id="form">
        <div class="bd">
            <div class="weui_cells weui_cells_form" >
                <div class="weui_cell">
                    <div class="weui_cell_hd">姓　　名：</div>
                    <div class="weui_cell_bd weui_cell_primary">
                        <input class="weui_input" id="name" name="name" type="text" placeholder="请输入姓名"/>
                    </div>
                </div>
                <div class="weui_cell">
                    <div class="weui_cell_hd">联系方式：</div>
                    <div class="weui_cell_bd weui_cell_primary">
                        <input class="weui_input" id="phone" name="phone" type="number" pattern="[0-9]*"
                               placeholder="请输入联系方式"/>
                    </div>
                </div>
                <div class="weui_cell weui_cell_select weui_select_after">
                    <div class="weui_cell_hd">
                        省　　份：
                    </div>
                    <div class="weui_cell_bd weui_cell_primary">
                        <select class="weui_select" id="province" name="province">
                            <option value="">--请选择--</option>
                        </select>
                    </div>
                </div>
                <div class="weui_cell weui_cell_select weui_select_after">
                    <div class="weui_cell_hd">
                        城　　市：
                    </div>
                    <div class="weui_cell_bd weui_cell_primary">
                        <select class="weui_select" id="city" name="city">
                            <option value="">--请选择--</option>
                        </select>
                    </div>
                </div>
                <div class="weui_cell weui_cell_select weui_select_after">
                    <div class="weui_cell_hd">
                        区 ／ 县 ：
                    </div>
                    <div class="weui_cell_bd weui_cell_primary">
                        <select class="weui_select" id="area" name="area">
                            <option value="">--请选择--</option>
                        </select>
                    </div>
                </div>

                <div class="weui_cell">
                    <div class="weui_cell_hd">详细地址：</div>
                    <div class="weui_cell_bd weui_cell_primary">
                        <input class="weui_input" id="address" name="address" type="text" placeholder="请输入详细地址"/>
                    </div>
                </div>
                <div class="weui_cell">
                    <div class="weui_cell_hd">邮　　编：</div>
                    <div class="weui_cell_bd weui_cell_primary">
                        <input class="weui_input" type="number" name="post" id="post" maxlength="6" pattern="[0-9]*"
                               placeholder="请输入邮编"/>
                    </div>
                </div>
            <div class="weui_cells weui_cells_checkbox">
                <label class="weui_cell weui_check_label" for="s11">
                    <div class="weui_cell_hd">
                        <input type="checkbox" class="weui_check" name="defaultAdd" id="s11" value="1">
                        <i class="weui_icon_checked"></i>
                    </div>
                    <div class="weui_cell_bd weui_cell_primary">
                        <p>是否作为默认地址</p>
                    </div>
                </label>
            </div>

            </div>
            <div class="bd spacing">
                <div class="button_sp_area">
                    <a href="javascript:;" id="save" class="weui_btn weui_btn_mini  weui_btn_primary">保存</a>
                    <a href="javascript:;" id="cancel" class="weui_btn weui_btn_mini  weui_btn_default">取消</a>
                </div>
            </div>
        </div>
    </form>
</div>

</body>
<script>

    function promptinfo()
    {
        var address = document.getElementById('address');
        var s1 = document.getElementById('province');
        var s2 = document.getElementById('city');
        var s3 = document.getElementById('area');
        //address.value = s1.value + s2.value + s3.value;
    }

    $(function () {
        $('#save').on('click', function () {
            $.post('/address/save',decodeURI($('#form').serialize()),function(data){
                alert(data);
                window.location.href = "/address/list";
            });

        });
    });
</script>
</html>
