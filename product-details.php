<?php
        include("dbconnect.php");
        session_start();
        $prd_id = $_SESSION['varname'];
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Details | asHeeta.in</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/prettyPhoto.css" rel="stylesheet">
    <link href="css/price-range.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
	<link href="css/main.css" rel="stylesheet">
	<link href="css/responsive.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->
    <link rel="shortcut icon" href="images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">
</head><!--/head-->

<body>
	<header id="header"><!--header-->
		<div class="header_top"><!--header_top-->
			<div class="container">
                <?php
                    include("head-top.php");
                ?>
            </div>
		</div><!--/header_top-->

		<div class="header-middle"><!--header-middle-->
			<div class="container">
				<?php
                    include("head-middle.php");
                ?>
			</div>
		</div><!--/header-middle-->

		<div class="header-bottom"><!--header-bottom-->
			<div class="container">
                <?php
                    include("head-bottom.php");
                ?>
            </div>
		</div><!--/header-bottom-->
	</header><!--/header-->

	<section>
		<div class="container">
			<div class="row">


				<div class="col-sm-9 padding-right col-lg-11">
					<div class="product-details"><!--product-details-->
						<div class="col-sm-5 col-lg-offset-1">
							<div class="view-product">

                                <?php

                                    $prd_id = $_SESSION['varname'];
                                    $cat_sql = "SELECT * FROM stock WHERE product_code='$prd_id' ";
                                    $cat_query = mysqli_query($dbconnect, $cat_sql);
                                    $row=mysqli_fetch_array($cat_query);

                                do
                                {

                                        $prd_code = $row[1];
                                        $prd_name = $row[2];
                                        $brand = $row[3];
                                         $color = $row[4];
                                        $b_mat = $row[5];
                                        $plating = $row[7];
                                        $size = $row[8];
                                        $price = $row[9];
                                        $type = $row[10];
                                        $description = $row[11];
                                        $photo1 = $row[12];
                                        $photo1 = $row[13];
                                        $photo1 = $row[14];

								echo'<img src="'.$row[12].'" alt="" />';
                                }
                                while($row=mysqli_fetch_array($cat_query))

                            ?>
							</div>
							<div id="similar-product" class="carousel slide" data-ride="carousel">

								  <!-- Wrapper for slides -->
								    <div class="carousel-inner">
										<div class="item active">
										  <a href=""><img src="images/product-details/similar1.jpg" alt=""></a>
										  <a href=""><img src="images/product-details/similar2.jpg" alt=""></a>
										  <a href=""><img src="images/product-details/similar3.jpg" alt=""></a>
										</div>
									</div>
							</div>

						</div>
						<div class="col-sm-7 col-lg-6">
							<div class="product-information"><!--/product-information-->
								<img src="images/product-details/new.jpg" class="newarrival" alt="" />

                                <?php

								echo   '<h2>'.$prd_name.'</h2>';
								echo   '<p>Product Code:'.$prd_code.'</p>';
								echo   '<img src="images/product-details/rating.png" alt="" />';
								echo   '<span>';
								echo   '<span>MRP ₹ '.$price.'</span>';

                                    ?>

                                    <label>Quantity:</label>
									<input type="text" value="3" />
									<button type="button" class="btn btn-fefault cart">
										<i class="fa fa-shopping-cart"></i>
										Add to cart
									</button>
								</span>
								<p><b>Availability:</b><font color:"#7FFF00"> In Stock</font></p>
								<p><b>Brand :</b>  asHeeta</p>
                            <?php
								echo '<p><b>Color:</b> '.$color.'</p>';
								echo '<p><b>Plating:</b> '.$plating.'</p>';
				            ?>

							</div><!--/product-information-->
						</div>
					</div><!--/product-details-->

					<div class="category-tab shop-details-tab"><!--category-tab-->
						<div class="col-sm-12">
							<ul class="nav nav-tabs">
								<li><a href="#details" data-toggle="tab">Details</a></li>

								<li><a href="#description" data-toggle="tab">Description</a></li>
								<li class="active"><a href="#reviews" data-toggle="tab">Reviews (5)</a></li>
							</ul>
						</div>
						<div class="tab-content">
							<div class="tab-pane fade" id="details" >
								<?php
								echo '<p><b>Product Code:</b> '.$prd_code.'</p>';
								echo '<p><b>Product Name:</b> '.$prd_name.'</p>';
                                echo '<p><b>Brand:</b> '.$brand.'</p>';
                                echo '<p><b>Color:</b> '.$color.'</p>';
                                echo '<p><b>Base Material:</b> '.$b_mat.'</p>';
                                echo '<p><b>Size:</b> '.$size.'</p>';
                                echo '<p><b>Plating:</b> '.$plating.'</p>';
                                echo '<p><b>Type:</b> '.$type.'</p>';

				            ?>
							</div>

							<div class="tab-pane fade" id="description" >
								<p>asHeeta Fashion Jewellery brings to you the Exquisite, Fine crated Classic Designer Jewellery to Enhance your Natural Graceful Elegance. Women Love Jewellery as it not only enhances their beauty, but also gives them the social confidence. Festivals and celebrations are part of Indian culture and women like to traditionally dress themselves with latest trends in Jewellery and asHeeta exactly fulfills that need for the occasion. The Jewellery is made keeping in mind the Women ; who is today modern yet connected to our traditional values.</p>
							</div>


							<div class="tab-pane fade active in" id="reviews" >
								<div class="col-sm-12">
									<ul>
										<li><a href=""><i class="fa fa-user"></i>User</a></li>
										<li><a href=""><i class="fa fa-clock-o"></i>12:41 PM</a></li>
										<li><a href=""><i class="fa fa-calendar-o"></i>11 April 2018</a></li>
									</ul>
									<p>Awsome product . totatly staisfied with the quality of product with such an affordable price.Thanks to asHeeta.in for providing such a great product at so tempting and cheap price. though the price is cheap but no compromise is done on the quality basis. Thank you asHeeta.in .</p>
									<p><b>Write Your Review</b></p>

									<form action="#">
										<span>
											<input type="text" placeholder="Your Name"/>
											<input type="email" placeholder="Email Address"/>
										</span>
										<textarea name="" ></textarea>
										<b>Rating: </b> <img src="images/product-details/rating.png" alt="" />
										<button type="button" class="btn btn-default pull-right">
											Submit
										</button>
									</form>
								</div>
							</div>

						</div>
					</div><!--/category-tab-->

					<div class="col-sm-12 padding-right">
					<div class="features_items"><!--features_items-->
						<h2 class="title text-center">Best Selling Product</h2>
						<div class="col-sm-4">
							<div class="product-image-wrapper">
								<div class="single-products">
										<div class="productinfo text-center">
											<img src="images/home/product1.jpg" alt="" />
											<h2>₹250</h2>
											<p>Elegant Silver Ring</p>
											<a href="#" class="btn btn-default add-to-cart">Shop Now</a>
										</div>
								</div>
							</div>
						</div>
						<div class="col-sm-4">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="images/home/product2.jpg" alt="" />
										<h2>₹550</h2>
										<p>Gold Platted Necklace</p>
										<a href="#" class="btn btn-default add-to-cart">Shop Now</a>
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-4">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="images/home/product3.jpg" alt="" />
										<h2>₹ 300</h2>
										<p>Golden Bangles</p>
										<a href="#" class="btn btn-default add-to-cart">Shop Now</a>
									</div>
								</div>
							</div>
						</div>
</div><!--features_items-->

				</div>
			</div>
		</div>
	</section>

<!--Footer-->
	<footer>
		<div class="footer-widget">
			<div class="container">
			<?php
                    include("footer.php");
                ?>
            </div>
		</div>

	</footer><!--/Footer-->

    <script src="js/jquery.js"></script>
	<script src="js/price-range.js"></script>
    <script src="js/jquery.scrollUp.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.prettyPhoto.js"></script>
    <script src="js/main.js"></script>
</body>
</html>
