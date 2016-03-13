<!DOCTYPE html>
<html lang="en">
<head>
    <title>微信商城</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0,user-scalable=no">
    <link rel="stylesheet" href="/static/css/style.css"/>
    <link rel="stylesheet" href="/static/css/luara.left.css"/>
</head>
<body>
<div class="example">
    <div class="main1">
        <script src="/static/js/jquery-1.8.3.min.js"></script>
        <script src="/static/js/jquery.luara.0.0.1.min.js"></script>

        <h3>店铺主页</h3>

        <div class="example2">
            <a>
                <ul>
                    <li><img src="/static/images/1.jpg" alt="1"/></li>
                    <li><img src="/static/images/2.jpg" alt="2"/></li>
                    <li><img src="/static/images/3.jpg" alt="3"/></li>
                    <li><img src="/static/images/4.jpg" alt="4"/></li>
                </ul>
                <ol>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                </ol>
            </a>
        </div>
        <div class="linedown"></div>
    </div>

    <div class="main2">
        <a>
            <h3>热销商品</h3>
            <img src="/static/images/red.jpg"/>
        </a>

        <div class="linedown"></div>
    </div>
    <div class="main3">
        <a>
            <h3>精选推荐</h3>
            <img src="/static/images/red.jpg"/>
        </a>

        <div class="linedown"></div>
    </div>
</div>
<a href="/address/list">跳转联系人</a>
</body>
<#include "./footer.ftl"/>
</html>

<script>
    $(function () {
        $(".example2").luara({width: "500", height: "334", interval: 4500, selected: "seleted", deriction: "left"});
    });
</script>
<script type="text/javascript">
    $(function () {

        var imglist = document.getElementsByTagName("img");
//安卓4.0+等高版本不支持window.screen.width，安卓2.3.3系统支持
        /*
        var _width = window.screen.width;
        var _height = window.screen.height - 20;

        var _width = document.body.clientWidth;
        var _height = document.body.clientHeight - 20;
        */
        var _width,
                _height;
        doDraw();

        window.onresize = function () {
            doDraw();
        }

        function doDraw() {
            _width = window.innerWidth;
            _height = window.innerHeight - 20;
            for (var i = 0, len = imglist.length; i < len; i++) {
                DrawImage(imglist[i], _width, _height);
            }
        }

        function DrawImage(ImgD, _width, _height) {
            var image = new Image();
            image.src = ImgD.src;
            image.onload = function () {
                if (image.width > 30 && image.height > 30) {

                    if (image.width / image.height >= _width / _height) {
                        if (image.width > _width) {
                            ImgD.width = _width;
                            ImgD.height = (image.height * _width) / image.width;
                        } else {
                            ImgD.width = image.width;
                            ImgD.height = image.height;
                        }
                    } else {
                        if (image.height > _height) {
                            ImgD.height = _height;
                            ImgD.width = (image.width * _height) / image.height;
                        } else {
                            ImgD.width = image.width;
                            ImgD.height = image.height;
                        }
                    }
                }
            }

        }

    })
</script>
