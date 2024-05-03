<section class="offers" id="offers">  
    <div class="category">
            <?php for($i=1; $i<7; $i++){ ?>
                    <a href="#" class="cat">
                        <img src="images/random2/o<?php echo $i ?>.jpg" alt="">
                    </a>
            <?php } ?>
    </div>  

    <!-- Check if there is any item in offer table -->
    <!-- If we don't have any offer the offer section is not displayed at all -->

    <?php
        $query="SELECT offer_id FROM todayoffer";
        $result=mysqli_query($conn,$query);

        if($row=mysqli_fetch_assoc($result)){  ?>

    <h3 class="sub-heading" data-aos="fade-up"> nhanh tay </h3>
    <h1 class="heading" data-aos="fade-up"> ưu đãi hấp dẫn! </h1>

    <div class="banner">
        <!-- we have two sections:
                1) For the items having max discount
                2) For the rest of the items -->
    
    
        <div class="grid-banner">

            <?php

                // Select the max discount           
                $query="SELECT max(pourcentage) AS max FROM todayoffer";
                $result=mysqli_query($conn,$query);
                $row=mysqli_fetch_assoc($result);

            ?>

            <div class="grid" data-aos="fade-up">
                <img src="images/coffee/bg_2.jpg" alt="">
                <div class="content">
                    <span>ưu đãi đặc biệt</span>
                    <h3>lên tới <?php echo $row['max']; ?>%</h3>
                    <a href="./offers_list.php?section=1" class="btn">xem chi tiết</a>
                </div>
            </div>
          

            <?php

                // Check if there is other items having a discount different than the max discount
                $query="SELECT offer_id FROM todayoffer WHERE pourcentage != ".$row['max'];
                
                $result=mysqli_query($conn,$query);
                $row=mysqli_fetch_assoc($result);

                if($row){
            ?>
            
            <div class="grid" data-aos="fade-up">
                <img src="images/coffee/coffee2.jpg" alt="">
                <div class="content">
                    <span>ưu đãi trong ngày</span>
                    <h3>nhanh tay</h3>
                    <a href="./offers_list.php?section=2" class="btn">xem chi tiết</a>
                </div>
            </div>

            <?php }  ?>
        </div>      
    </div>
    <?php } ?>
</section>

