<!-- Hero Section Begin -->
<section class="hero">
	<div class="container">
		<div class="row">
			<div class="col-lg-3">
				<div class="hero__categories">
					<div class="hero__categories__all">
						<i class="fa fa-bars"></i>
						<span>Danh mục</span>
					</div>
					<ul>
						<?php foreach ($cate_list as $cate){ ?>
						<li><a href="#"><?= $cate->name?></a></li>
						<?php } ?>

					</ul>
				</div>
			</div>
			<div class="col-lg-9">
				<div class="hero__search">
					<div class="hero__search__form">
						<form action="#">

							<input type="text" placeholder="Bạn đang cần mua?">
							<button type="submit" class="site-btn">Tìm kiếm</button>
						</form>
					</div>
					<div class="hero__search__phone">
						<div class="hero__search__phone__icon">
							<i class="fa fa-phone"></i>
						</div>
						<div class="hero__search__phone__text">
							<?php if(isset($phone)){ ?>
								<h5><?= $phone;?></h5>
							<?php } ?>
							<span>Hỗ trợ 24/7</span>
						</div>
					</div>
				</div>
<!--				<div class="hero__item set-bg" data-setbg="img/hero/banner.jpg">-->
<!--					<div class="hero__text">-->
<!--						<span>FRUIT FRESH</span>-->
<!--						<h2>Vegetable <br />100% Organic</h2>-->
<!--						<p>Free Pickup and Delivery Available</p>-->
<!--						<a href="#" class="primary-btn">SHOP NOW</a>-->
<!--					</div>-->
<!--				</div>-->
				<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
					<ol class="carousel-indicators">
						<li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
						<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
						<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
					</ol>
					<div class="carousel-inner">
						<?php foreach ($sliders as $index_slider => $slider){ ?>
						<div class="carousel-item <?php ($index_slider==0)? 'active' : '' ?>">
							<img class="d-block w-100" src="<?php echo base_url('uploads/sliders/'.$slider->thumbnail ) ?>" >
							<div class="carousel-caption d-none d-md-block">
								<h5><?= $slider->title ?></h5>
								<p><?= $slider->description ?></p>
							</div>
						</div>
						<?php } ?>

					</div>
					<a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
						<span class="carousel-control-prev-icon" aria-hidden="true"></span>
						<span class="sr-only">Previous</span>
					</a>
					<a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
						<span class="carousel-control-next-icon" aria-hidden="true"></span>
						<span class="sr-only">Next</span>
					</a>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- Hero Section End -->

<!-- Categories Section Begin -->
<section class="categories">
	<div class="container">
		<div class="row">
			<div class="categories__slider owl-carousel">
				<div class="col-lg-3">
					<div class="categories__item set-bg" data-setbg="img/categories/cat-1.jpg">
						<h5><a href="#">Fresh Fruit</a></h5>
					</div>
				</div>
				<div class="col-lg-3">
					<div class="categories__item set-bg" data-setbg="img/categories/cat-2.jpg">
						<h5><a href="#">Dried Fruit</a></h5>
					</div>
				</div>
				<div class="col-lg-3">
					<div class="categories__item set-bg" data-setbg="img/categories/cat-3.jpg">
						<h5><a href="#">Vegetables</a></h5>
					</div>
				</div>
				<div class="col-lg-3">
					<div class="categories__item set-bg" data-setbg="img/categories/cat-4.jpg">
						<h5><a href="#">drink fruits</a></h5>
					</div>
				</div>
				<div class="col-lg-3">
					<div class="categories__item set-bg" data-setbg="img/categories/cat-5.jpg">
						<h5><a href="#">drink fruits</a></h5>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- Categories Section End -->

<!-- Featured Section Begin -->
<?php $this->load->view('site/home/components/feature_product')?>
<!-- Featured Section End -->

<!-- Banner Begin -->
<div class="banner">
	<div class="container">
		<div class="row">
			<div class="col-lg-6 col-md-6 col-sm-6">
				<div class="banner__pic">
					<img src="img/banner/banner-1.jpg" alt="">
				</div>
			</div>
			<div class="col-lg-6 col-md-6 col-sm-6">
				<div class="banner__pic">
					<img src="img/banner/banner-2.jpg" alt="">
				</div>
			</div>
		</div>
	</div>
</div>
<!-- Banner End -->

<!-- Latest Product Section Begin -->
<?php $this->load->view('site/home/components/latest_product')?>
<!-- Latest Product Section End -->

<!-- Blog Section Begin -->
<?php $this->load->view('site/home/components/blog'); ?>
<!-- Blog Section End -->
<script type="text/javascript">
	$('.carousel').carousel()
</script>
