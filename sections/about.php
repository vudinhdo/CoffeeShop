<section class="about" id="about">

    <h3 class="sub-heading" data-aos="fade-up"> về chúng tôi </h3>
    <h1 class="heading" data-aos="fade-up"> Tại sao nên chọn chúng tôi? </h1>

    <div class="about-info">
        <div class="image" data-aos="fade-right">
            <img src="./images/coffee/coffee1.jpg" alt="">
        </div>

        <div class="content" data-aos="fade-left">
            <h3>về cửa tiệm của chúng tôi</h3>
            <p>Bên trong tiệm cà phê nhỏ, ánh sáng vàng ấm đang tỏa sáng qua cửa sổ, vẽ ra những bóng mờ trên mặt bàn gỗ cổ điển. Tiếng cà phê nghiền và mùi hương thơm lừng làm tôi nhớ về những buổi sáng dễ thương. Nhân viên pha chế với nụ cười thân thiện đang chuẩn bị tách cà phê của tôi, và tôi biết rằng tại đây, tôi sẽ tìm thấy một phút giây thư giãn, cùng với một tách cà phê ngon đúng điệu, và không gian ấm áp để cảm nhận những khoảnh khắc bình yên.</p>
            <p>Chilling Cafe luôn cố gắng thay đổi và cải thiện để trở lên tốt hơn, tất cả những lời đóng góp và nhận xét của khách hàng đều sẽ được chúng tôi ghi nhận.</p>
            <div class="icons-container">
                <div class="icons">
                    <i class="fas fa-shipping-fast"></i>
                    <span>vận chuyển nhanh</span>
                </div>
                <div class="icons">
                    <i class="fas fa-dollar-sign"></i>
                    <span>thanh toán dễ dàng</span>
                </div>
                <div class="icons">
                    <i class="fas fa-headset"></i>
                    <span>dịch vụ 24/7</span>
                </div>
            </div>
        </div>
    </div>

    <h3 class="sub-heading" data-aos="fade-up"> Khách hàng </h3>
    <h1 class="heading" data-aos="fade-up"> Những khoảnh khắc đẹp </h1>

    <div class="row" id="gallery" data-aos="fade-up">
        <div class="col-lg-8 m-auto">
            <div class="customer-table-img-slider" id="icon">
                <div class="swiper-wrapper">

                <?php for($i=1; $i<8;$i++){ ?>
                    <img src="./images/customers2/c<?php echo $i ?>.jpg" data-fancybox="table-slider"
                        class="customer-table-img swiper-slide"></img>  
                <?php } ?>       
                 
                </div>
        
                <div class="swiper-pagination"></div>
            </div>
        </div>
    </div>

    <h3 class="sub-heading" data-aos="fade-up"> Nhân viên </h3>
    <h1 class="heading" data-aos="fade-up"> Đội ngũ nhân viên tuyệt vời của chúng tôi! </h1>


    <div class="row team-slider" data-aos="fade-up">
        <div class="swiper-wrapper">

<!-- get all team member informations from table TEAM  -->
<?php
    $query="SELECT member_name, member_image, member_role FROM team";
    $result=mysqli_query($conn,$query);
    
    if($result){
        while($row=mysqli_fetch_assoc($result)){  ?>       

            <div class="col-lg-4 swiper-slide">
                <div class="team-box text-center">
                    <img src="./images/team2/<?php echo $row['member_image'] ?>" class="team-img">

                    <h3 class="h3-title"><?php echo $row['member_name'] ?></h3>
                    <p> <?php echo $row['member_role'] ?> </p>
                    <div class="social-icon">
                        <ul>
                            <li>
                                <a href="#"><i class="fab fa-facebook-f"></i></a>
                            </li>
                            <li>
                                <a href="#"><i class="fab fa-instagram"></i></a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>

<?php }} ?>

        </div>

        <div class="swiper-pagination"></div>
    </div>



</section>
