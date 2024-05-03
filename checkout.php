<?php 
      session_start();
      if(!isset($_SESSION["cart_page"])){
          header("location:index.php");
          exit();
      }
?>

<!DOCTYPE html>
<html>
 <head>
 <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0,minimum-scale=1, maximum-scale=1">
    <title>Thanh toán</title>

  <!-- bootstrap css file -->
  <link rel="stylesheet" href="./plugins/bootstrap-5.1.3/css/bootstrap.min.css">

  <!-- font awesome css cdn link -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">


  <!-- custom css file link  -->
  <link rel="stylesheet" href="./css/style.css">
  <link rel="stylesheet" href="./css/header.css">
  <link rel="stylesheet" href="./css/checkout.css">

 </head>
 <body>

    <!-- Database connection -->
    <?php include_once('./includes/db_connect.php'); ?>   

    <header>
        <a href="./index.php" class="logo"><i class="fas fa-utensils"></i>Chilling Cafe.</a>

        <div class="icons"> 
           <a href="./wishlist.php" class="fas fa-heart"></a>
           <a href="./cart.php" class="fas fa-shopping-cart"></a>
        </div>
    </header>  


    <div class="checkout">

    
        <div class="container1">

             <!-- BILLING DETAILS -->
            <div class="billing_details">
                <h1 align="center">Chi tiết hóa đơn</h1>

                <!-- customer name -->
                <div class="row">
                    <div class="col-6">
                        <div class="form-group">
                            <label><b>Tên của bạn <span class="text-danger">*</span></b></label>
                            <input type="text" name="customer_first_name" id="customer_first_name" class="form-control" value="" />
                            <span id="error_customer_first_name" class="text-danger"></span>
                        </div>
                    </div>

                    <div class="col-6">
                        <div class="form-group">
                            <label><b>Họ của bạn <span class="text-danger">*</span></b></label>
                            <input type="text" name="customer_last_name" id="customer_last_name" class="form-control" value="" />
                            <span id="error_customer_last_name" class="text-danger"></span>
                        </div>
                    </div>
                </div>

                <!-- customer email and phone number -->
                <div class="row">
                    <div class="col-6">
                        <div class="form-group">
                            <label><b>Địa chỉ Email <span class="text-danger">*</span></b></label>
                            <input type="text" name="email_address" id="email_address" class="form-control" value="" />
                            <span id="error_email_address" class="text-danger"></span>
                        </div>
                    </div>

                    <div class="col-6">
                        <div class="form-group">
                            <label><b>Số điện thoại <span class="text-danger">*</span></b></label>
                            <input type="number" name="mobile_number" id="mobile_number" class="form-control" value=""/>
                            <span id="error_mobile_number" class="text-danger"></span>
                        </div>
                    </div>
                </div>

                <!-- customer address -->
                <div class="form-group">
                    <label><b>Địa chỉ <span class="text-danger">*</span></b></label>
                    <textarea name="customer_address" id="customer_address" class="form-control"></textarea>
                    <span id="error_customer_address" class="text-danger"></span>
                </div>

                <!-- customer city & zip code -->
                <div class="row">
                    <div class="col-6">
                        <div class="form-group">
                            <label><b>Thành phố <span class="text-danger">*</span></b></label>
                            <input type="text" name="customer_city" id="customer_city" class="form-control" value="" />
                            <span id="error_customer_city" class="text-danger"></span>
                        </div>
                    </div>

                    <div class="col-6">
                        <div class="form-group">
                            <label><b>Mã Zip <span class="text-danger">*</span></b></label>
                            <input type="number" name="customer_zip" id="customer_zip" class="form-control" onwheel="this.blur()" value="" />
                            <span id="error_customer_zip" class="text-danger"></span>
                        </div>
                    </div>
                </div>


                <!-- customer state & country -->
                <div class="row">
                    <div class="col-6">
                        <div class="form-group">
                            <label><b>Vùng <span class="text-danger">*</span></b></label>
                            <input type="text" name="customer_state" id="customer_state" class="form-control" value="" />
                            <span id="error_customer_state" class="text-danger"></span>
                        </div>
                    </div>

                    <div class="col-6">
                        <div class="form-group">
                            <label><b>Quốc gia <span class="text-danger">*</span></b></label>
                            <input type="text" name="customer_country" id="customer_country" class="form-control" />
                            <span id="error_customer_country" class="text-danger"></span>
                        </div>
                    </div>
                </div>

                <hr style="margin-top:1.5em;" />

            </div>

            
            <!-- ORDER DETAILS -->
            <div class="order_details">
                <h1 align="center">Chi tiết đơn hàng</h1>
                <div class="table-responsive" id="order_table">
                    <table class="table table-bordered table-striped">
                        <tr align="center">  
                            <th>Tên loại đồ uống</th>  
                            <th>Giá</th>  
                            <th>Tổng</th>  
                        </tr>

                        <?php

                        foreach($_SESSION["shopping_cart"] as $keys => $values){?>

                        <tr>
                            <td class="product_name"> 
                                <div class="image">
                                    <img src="<?php echo $values['product_image'] ?>" >
                                </div>

                                <?php 
                                
                                if($values['product_toppings'] != '' )
                                    echo $values['product_name']."  (x".trim($values['product_quantity']).")  + toppings";
                                else
                                    echo $values['product_name']."  (x".$values['product_quantity'].")"?>
                            </td>
                            <td align="right"> <?php echo $_SESSION['currency']['logo']." ".$values["product_price"] ?></td>
                            <td align="right"> <b><?php echo $_SESSION['currency']['logo']." ".$values["product_total"] ?> </b></td>
                        </tr>

                        <?php  }  ?>

                        <tr>  
                            <td colspan="2" align="right"><i class="fas fa-shipping-fast"></i> <b>Phí giao hàng</td>  
                            <td align="right"><b><?php echo $_SESSION['currency']['logo']." ".$_SESSION['shipping'] ?></b></td>
                        </tr>

                        <tr>  
                            <td colspan="2" align="right"><b>Thành tiền</b></td>  
                            <td align="right" style="color:red;"><b><?php echo $_SESSION['currency']['logo']." ".$_SESSION['shopping_cart_total'] ?></b></td>
                        </tr>
                    </table>
                </div>
            </div>

        </div>


        <div class="container2">

            <!-- PAYMENT DETAILS -->
            <div class="payment_details">
                <h1 align="center">Chi tiết thanh toán</h1>
                <div class="form-group">   
                    <input type="checkbox" checked disabled>
                    <label><b>Thanh toán bằng tiền mặt sau khi nhận hàng </b></label>
                </div>

                <h4>Dữ liệu cá nhân của bạn sẽ được sử dụng để xứ lý đơn và cải thiện trải nghiệm của bạn với dịch vụ của chúng tôi</h4>

                <div class="form-group">   
                    <input type="checkbox" name="agree_checkbox" id="agree_checkbox" >
                    <label><b>Tôi đã đọc và đồng ý với điều kiện và điều khoản của cửa hàng *</b></label>
                    <br>
                    <span id="error_agree_checkbox" class="text-danger"></span>
                </div>
            </div>
        </div>
 

        <div class="place_order">
            <input type="button" id="place_order" class="btn-success" value="Xác nhận"/>
        </div>
        <form class="" method="POST" target="_blank" enctype="application/x-www-form-urlencoded"
                          action="requests/xulythanhtoanmomo.php">
            <input type="submit" name="momo" class="btn btn-danger" value="Thanh Toán QR MOMO"/>
        </form>
        <form class="" method="POST" target="_blank" enctype="application/x-www-form-urlencoded"
                          action="./requests/xulythanhtoanmomo_atm.php">
            <input type="submit" name="momo" class="btn btn-danger" value="Thanh Toán MOMO"/>
        </form>
    </div>



<!-- jquery js file  -->
<script src="./plugins/jquery-3.6.0/jquery.min.js"></script>

<!-- bootstrap js file-->
<script src="./plugins/bootstrap-5.1.3/js/bootstrap.min.js"></script> 

<!-- sweetalert2 js file -->
<script src="./plugins/sweetalert2/sweetalert2.js"></script>

<script src="./js/form_validation.js"></script>

</body>
</html>