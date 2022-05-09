</div>

<section id="footer" style="
    width: 100%;
    background: pink;
">
    <div class="container" style="
    width: 250px;
">
        <div id="shareicon" style="background: #555;">
            <ul >
                <li>
                    <a href="https://www.facebook.com/iamchuppyy"><i class="fa fa-facebook"></i></a>
                </li>
                <li>
                    <a href="https://www.instagram.com/_chuppyy_/"><i class="fa fa-instagram"></i></a>
                </li>
                <li>
                    <a href="https://www.pinterest.com/iamchuppyy/boards/"><i class="fa fa-pinterest"></i></a>
                </li>
                <li>
                    <a href="https://www.youtube.com/channel/UCcB8cwKPjjLuuOFI4QkpnQg"><i class="fa fa-youtube"></i></a>
                </li>
            </ul>
        </div>
    </div>
</section>

<div class="row"
    style="height:220px;background-image:url(./public/frontend/images/gif1.gif);width: 100%;margin-right: 0px;margin-left: 0px;">
    <div class="col-md-4 box-footer" style="
    margin-left: 100px;
    margin-right: 100px;
    border-left-width: 0px;
">
        <h3 class="title-footer" style="color:white;font-family: 'Lemonada', cursive;"> Thông Tin</h3>
        <br>
        <p style="font-size: 16px;color:white;font-family: 'Lemonada', cursive;">Shop bắt đầu vào năm 2022. Cửa hàng đầu tiên là một shop nhỏ
            trên con phố
            tấp nập người qua lại trên
            con đường
            Ngô Quyền<br>
            Tôi đang không ngừng sáng tạo với mục tiêu là tiến xa hơn trong thời gian tới.</p>
    </div>
    <div class="col-md-5" id="footer-support" style="padding-left:50px;">
        <h3 class="title-footer" style="color:white;font-family: 'Lemonada', cursive;">Liên Hệ</h3>
        <p style="font-size: 16px;color:white;font-family: 'Lemonada', cursive;"><strong style="font-family: 'Lemonada', cursive;font-size: 20px;color:white;">Shop Lona<br></strong>
            – Địa chỉ: <span class="_2iem" style="font-size: 16px;color:white;font-family: 'Lemonada', cursive;">187 Ngô Quyền, Sơn Trà,
            </span>Đà Nẵng,
            Việt Nam<br>
            – Điện thoại: 0935490461</p>
    </div>
</div>

<div class="container-pluid" style="
    width: 100%;
">
<div class="footer-center">
    <p style="text-align: center"> Công ty Cổ phần với số đăng ký kinh doanh: 000000000 </br>
        Địa chỉ đăng ký: 187 Ngô Quyền, P.Thọ Quang, Q.Sơn Trà, TP.Đà Nẵng, Việt Nam - 0935490461 <br> Đặt hàng online : <b>0935490461</b> .
    </p>
</div>
<div class="footer-bottom"  style="text-align: center">
    ©Lona All rights reserved
</div>
</div>
</div>
</div>
</div>
</div>
<script src="/Lona/public/frontend/js/slick.min.js"></script>
</body>

</html>
<script type="text/javascript">
$(function() {
    $hidenitem = $(".hidenitem");
    $itemproduct = $(".item-product");
    $itemproduct.hover(function() {
        $(this).children(".hidenitem").show(100);
    }, function() {
        $hidenitem.hide(500);
    })
})
$(function() {
    $updatecart = $(".updatecart");
    $updatecart.click(function(e) {
        e.preventDefault();
        $qty = $(this).parents("tr").find("#qty").val();
        console.log($qty);
        $key = $(this).attr("data-key");
        $.ajax({
            url: 'cap-nhat-gio-hang.php',
            type: 'GET',
            data: {
                'qty': $qty,
                'key': $key
            },
            success: function(data) {
                if (data == 1) {
                    alert("Cập nhật thành công");
                    location.href = 'gio-hang.php';
                }
            }
        });
    })
})
</script>