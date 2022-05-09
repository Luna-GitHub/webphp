<?php 
    require_once  __DIR__. "/autoload/autoload.php"; 
    $sqlHomecate = "SELECT name,id FROM category WHERE home ";  
    $CategoryHome = $db->fetchsql($sqlHomecate);
    $data = [];
        foreach ($CategoryHome as $item)
         {
        $cateId = intval($item['id']);
        $sql = " SELECT * FROM product WHERE category_id = $cateId";
        $ProductHome = $db->fetchsql($sql);
        $data[$item['name']] = $ProductHome;
        }
 ?>

<?php require_once  __DIR__. "/layouts/header.php"; ?>
<section style="
    width: 100%;
">
    <h2
        style="position: absolute;top:400px;left:900px;text-align: center;text-decoration: none;font-size: 28px;display: inline-block;font-family: 'Dancing Script', cursive;color: pink">
        Rẻ như bèo<br>Nghèo cũng có tiền mua
    </h2>
    <a href="main.php" class="button w3-button w3-border w3-hover-red"
        style="position:absolute;margin-top:380px;margin-left:940px;height:44px;background-color:#fff;border: none;border-radius: 99px;
    padding:10px 20px;text-align: center;text-decoration: none;display: inline-block;font-size: 16px;color:#666666">Xem Shop Lona</a>
    <img src=" ./public/frontend/images/bg1.jpg" class="right" alt="Image" style="width:100%;height:680px">
</section>

<section style="
    width: 100%;
">
    <div class="" style="height:310px; background-color:#D8D8D8">
        <div class="col-md-4" style="height:200px;padding-left: 50px">
            <div class="col-inner" style="margin-top: 50px;width: 400px;padding-right: 50px;">
                <div class="icon-box featured-box icon-box-left text-left" style="text-align: left;display: flex;">
                    <div class="icon-box-img" style="width: 62px">
                        <div class="icon">
                            <div class="icon-inner">
                                <img width="62" height="62" src="./public/frontend/images/ou1.png"
                                    class="attachment-medium size-medium" alt="img_outleft"> </div>
                        </div>
                    </div>
                    <div class="icon-box-text last-reset" style="padding-left: 1em;">

                        <h3 style="font-family: 'Dancing Script', cursive;">Chất vải tốt 100% - Co Giản Thoải Mái</h3>
                        <br>
                        <p style="font-family: 'MuseoModerno', cursive;"><em
                                style="font-size:16px;font-family: 'MuseoModerno', cursive;">Các loại áo hầu hết đều là những loại áo phông rộng, bộ đồ hot trend, ... đa dạng thiết kế cho bạn lựa chọn. Chất liệu vải của Shop Lona đều là những chất liệu dày dặn, không dễ bị giãn hay hư hổng khi sử dụng một thời gian dài. </em></p>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-4" style="height:200px; padding-left: 30px; padding-right: 30px;">
            <div class="col-inner" style="margin-top: 50px;width: 400px;padding-right: 50px;">
                <div class="icon-box featured-box icon-box-left text-left" style="text-align: left;display: flex;">
                    <div class="icon-box-img" style="width: 62px">
                        <div class="icon">
                            <div class="icon-inner">
                                <img width="62" height="62" src="./public/frontend/images/ou2.png"
                                    class="attachment-medium size-medium" alt="img_outleft"> </div>
                        </div>
                    </div>
                    <div class="icon-box-text last-reset" style="padding-left: 1em;">

                        <h3 style="font-family: 'Dancing Script', cursive;">Gu Thời Trang Phong Phú Với Nhiều Các Kiểu Dáng
                        </h3>
                        <br>
                        <p style="font-family: 'MuseoModerno', cursive;"><em
                                style="font-size:16px;font-family: 'MuseoModerno', cursive;">Sản phẩm của tôi có
                                nhiều Gu & Cách ăn mặc để bạn chọn lựa.</em></p>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-4" style="height:200px; padding-left: 15px;padding-right: 50px;">
            <div class="col-inner" style="margin-top: 50px;width: 400px;padding-right: 50px;">
                <div class="icon-box featured-box icon-box-left text-left" style="text-align: left;display: flex;">
                    <div class="icon-box-img" style="width: 62px">
                        <div class="icon">
                            <div class="icon-inner">
                                <img width="62" height="62" src="./public/frontend/images/ou3.png"
                                    class="attachment-medium size-medium" alt="img_outleft"> </div>
                        </div>
                    </div>
                    <div class="icon-box-text last-reset" style="padding-left: 1em;">

                        <h3 style="font-family: 'Dancing Script', cursive;">Đảm Bảo Chất Lượng Người Dùng</h3>
                        <br>
                        <p style="font-family: 'MuseoModerno', cursive;"><em
                                style="font-size:16px;font-family: 'MuseoModerno', cursive;">Đợi hướng tới đào tạo
                                nhân lực quản lý,
                                đào tạo để mở rộng shop quần áo
                                cho Shop Lona.</em></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<section style="height:240px;width:100%;background-color:white;">
    <div class="col-md-9" style="height:200px;padding-left: 200px;padding-right: 200px;width: 100%;">
        <div class=" col-inner" style="margin-top: 20px;width: auto;">
            <div class="icon-box featured-box icon-box-left text-left" style="text-align: left;display: flex;">
                <div class="icon-box-img" style="width: 150px">
                    <div class="icon">
                        <div class="icon-inner">
                            <img width="150px" height="100px" src="./public/frontend/images/lona.png"
                                class="attachment-medium size-medium" alt="img_outleft"> </div>
                    </div>
                </div>
                <div class="icon-box-text last-reset" style="padding-left: 1em;margin-top:30px;font-size:20px">
                    <h3 style="font-family: 'Dancing Script', cursive;">Bắt đầu ngày mới cùng “Shop Lona”</h3>
                    <br>
                    <p style="font-size:20px"><em style="font-size:16px;font-family: 'MuseoModerno', cursive;">Với
                            nhiều kinh nghiệm
                            nghiên cứu về bán hàng, Lona tin rằng có thể mang đến
                            cho
                            các bạn những trải nghiệm tuyệt vời nhất.</em></p>
                </div>
                <div><img src="./public/frontend/images/ab1.png"
                        style="height: 160px;padding-top: 10px;padding-left: 10px;border-radius: 99px;"></img></div>
            </div>
        </div>
    </div>
</section>
<section id="Slider">
    <div class="aspect-ratio-169">
        <img src="./public/frontend/images/Slide1.jpg" style="width:100%;height:680px">
        <img src="./public/frontend/images/Slide2.jpg">
        <img src="./public/frontend/images/Slide3.jpg">
    </div>
</section>
<section style="width: 100%;" style="float:left">
    <div class="" style="text-align:center">
        <h3
            style="width:100%;text-align: center;text-decoration: none;font-size: 28px;display: inline-block;font-family: 'Dancing Script', cursive;padding-left: 200px;padding-right: 200px;padding-bottom: 5px;padding-top: 5px;">
            --- Sản Phẩm Mới ---</h3>
        <ul>
            <?php foreach ($productNew as $item):?>
            <li class="clearfix" style="float:left;padding:20px 20px 20px 45px">
                <a href="chi-tiet-san-pham.php?id= <?php echo $item['id'] ?>">
                    <img src=" public/uploads/product/<?php echo $item['thunbar']?>"
                        style="width:200px;height:200px;border-radius:20%" class="img-responsive">
                    <div class="info" style="float:left;width:200px">
                        <p class="name" style="width:200px;text-align: center;text-decoration: none;padding:20px 0px">
                            <?php echo $item['name'] ?></p>
                        <?php if ($item['sale'] > 0): ?>
                        <p> <strike class="sale"><?php echo formatPrice($item['price']) ?>
                            </strike></br> <b
                                class="price"><?php echo formatpricesale($item['price'],$item['sale']) ?></b>
                            <?php else: ?>
                            <b class="price"><?php echo formatPrice($item['price']) ?></b>
                            <?php endif ?>
                    </div>
                </a>
            </li>
            <?php endforeach; ?>
        </ul>
        <a href="main.php"
            style="width:1220px;padding:5px 450px;color:4c4c4c;text-align: center;text-decoration: none;font-size: 20px;display: inline-block;font-family: 'Dancing Script', cursive;">
           ( Xem Thêm Sản Phẩm )
        </a>
    </div>
</section>

<section style="margin-top:10px;float:left;height:700px;width: 100%;background-image:url(./public/frontend/images/ab3.jpg);">
    <div style="padding:80px 60px"><iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3833.4732119690434!2d108.24388769999999!3d16.09280350000001!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x314217f12b9bde89%3A0x8d046cc990de4b90!2zMTg3IE5nLiBRdXnhu4FuLCBUaOG7jSBRdWFuZywgU8ahbiBUcsOgLCDEkMOgIE7hurVuZywgVmnhu4d0IE5hbQ!5e0!3m2!1svi!2sus!4v1651292099634!5m2!1svi!2sus" width="1200" height="550" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
        <h2
            style="width:1220px;padding:5px 450px;color:white;text-align: center;text-decoration: none;font-size: 28px;display: inline-block;font-family: 'Dancing Script', cursive;">
            <i class="fas fa-map-marker-alt"
                style="color:white;text-align: center;text-decoration: none;font-size: 28px;display: inline-block;padding-right:15px"></i>Đà Nẵng - Việt Nam
        </h2>
    </div>
</section>

<?php require_once  __DIR__. "/layouts/footer.php"; ?>
<style>
@import url('https://fonts.googleapis.com/css2?family=Dancing+Script:wght@700&display=swap');
</style>
<style>
@import url('https://fonts.googleapis.com/css2?family=Dancing+Script:wght@700&family=Fahkwang:wght@200&display=swap');
</style>