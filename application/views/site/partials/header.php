<header class="header">
	<div class="header__top">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 col-md-6">
					<div class="header__top__left">
						<ul>
							<?php if(isset($email)){ ?>
								<li><i class="fa fa-envelope"></i>  <?= $email; ?> </li>
							<?php } ?>
						</ul>
					</div>
				</div>
				<div class="col-lg-6 col-md-6">
					<div class="header__top__right">
						<div class="header__top__right__social">
							<?php if(isset($facebook)){ ?>
								<a href="<?= $facebook;?>"><i class="fa fa-facebook"></i></a>
							<?php } ?>

							<?php if(isset($twitter)){ ?>
								<a href="<?= $twitter;?>"><i class="fa fa-twitter"></i></a>
							<?php } ?>

							<?php if(isset($linkedin)){ ?>
								<a href="<?= $linkedin;?>"><i class="fa fa-linkedin"></i></a>
							<?php } ?>

						</div>

						<div class="header__top__right__auth">
							<a href="<?= base_url('login');?>"><i class="fa fa-user"></i> Đăng nhập</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-lg-3">
				<div class="header__logo">
					<a href="./index.html"><img src="img/logo.png" alt=""></a>
				</div>
			</div>
			<div class="col-lg-6">
				<nav class="header__menu">
					<ul>
						<li class="active"><a href="./index.html">Trang chủ</a></li>
						<li><a href="./shop-grid.html">Giới thiệu</a></li>
						<li><a href="./blog.html">Tin tức</a></li>
						<li><a href="<?php echo base_url('contact')?> ">Liên hệ</a></li>
					</ul>
				</nav>
			</div>
			<div class="col-lg-3">
				<div class="header__cart">
					<ul>
						<li><a href="#"><i class="fa fa-heart"></i> <span>1</span></a></li>
						<li><a href="#"><i class="fa fa-shopping-bag"></i> <span>3</span></a></li>
					</ul>
					<div class="header__cart__price">item: <span>$150.00</span></div>
				</div>
			</div>
		</div>
		<div class="humberger__open">
			<i class="fa fa-bars"></i>
		</div>
	</div>
</header>
