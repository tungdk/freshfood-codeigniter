

<!-- Breadcrumb Section Begin -->
<section class="breadcrumb-section set-bg" data-setbg="img/breadcrumb.jpg">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 text-center">
				<div class="breadcrumb__text">
					<h2>Bài viết</h2>
					<div class="breadcrumb__option">
						<a href="<?php echo base_url('home') ?>">Home</a>
						<span>Bài viết</span>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- Breadcrumb Section End -->

<!-- Blog Section Begin -->
<section class="blog spad">
	<div class="container">
		<div class="row">
			<div class="col-lg-8 col-md-7">
				<div class="row">
					<?php foreach ($list_news as $news): ?>
					<div class="col-lg-6 col-md-6 col-sm-6">
						<div class="blog__item">
							<div class="blog__item__pic">
								<img src="<?php echo base_url('uploads/news/'.$news->image) ?>" alt="">
							</div>
							<div class="blog__item__text">
								<ul>
									<li><i class="fa fa-calendar-o"></i> <?= $news->created_at ?></li>
									<li><i class="fa fa-eye"></i> <?= $news->views ?></li>
								</ul>
								<h5><a href="#"><?= $news->title ?></a></h5>
								<p><?= $news->description ?> </p>
								<a href="#" class="blog__btn">Xem chi tiết<span class="arrow_right"></span></a>
							</div>
						</div>
					</div>
					<?php endforeach; ?>

					<div class="col-lg-12">
						<div class="product__pagination blog__pagination">
							<a href="#">1</a>
							<a href="#">2</a>
							<a href="#">3</a>
							<a href="#"><i class="fa fa-long-arrow-right"></i></a>
						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-4 col-md-5">
				<div class="blog__sidebar">
					<div class="blog__sidebar__search">
						<form action="#">
							<input type="text" placeholder="Tìm kiếm...">
							<button type="submit"><span class="icon_search"></span></button>
						</form>
					</div>
					<div class="blog__sidebar__item">
						<h4>Bài viết hay</h4>
						<div class="blog__sidebar__recent">
							<?php foreach ($views_news as $news): ?>
							<a href="#" class="blog__sidebar__recent__item">
								<div class="blog__sidebar__recent__item__pic">
									<img src="<?php echo base_url('uploads/news/'.$news->image)?>" alt="" style="width: 120px">
								</div>
								<div class="blog__sidebar__recent__item__text">
									<h6><?= $news->title ?></h6>
									<span><i class="fa fa-eye"></i> <?= $news->views ?></span>
								</div>
							</a>
							<?php endforeach; ?>
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>
</section>
<!-- Blog Section End -->

