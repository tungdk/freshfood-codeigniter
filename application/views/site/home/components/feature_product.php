<section class="featured spad">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="section-title">
					<h2>Sản phẩm nổi bật</h2>
				</div>
				<div class="featured__controls">
					<ul>
						<?php foreach ($cate_list as $index => $cate) { ?>
							<li data-filter=".<?= $cate->slug ?>"
								class="<?= $index == 0 ? 'active' : '' ?>"><?= $cate->name ?></li>
						<?php } ?>
					</ul>
				</div>
			</div>
		</div>
		<div class="row featured__filter">
			<?php foreach ($cate_list as $index_cate => $cate) {
			$input['where'] = array('category_id' => $cate->id, 'featured' => 1);
			$featured_products = $this->product_model->get_list($input);
			foreach ($featured_products as $featured) { ?>
				<div class="col-lg-3 col-md-4 col-sm-6 mix <?php echo $cate->slug; ?>" <?php if($index_cate != 0) echo 'style="display: none;"'; ?>>
					<div class="featured__item">
						<div class="featured__item__pic set-bg"
							 data-setbg="<?php echo  base_url('/uploads/products/' . $featured->image); ?>">
							<ul class="featured__item__pic__hover">
								<li><a href="#"><i class="fa fa-retweet" title="Xem chi tiết"></i></a></li>
								<li><a href="#"><i class="fa fa-shopping-cart" title="Thêm vào giỏ hàng"></i></a></li>
							</ul>
						</div>
						<div class="featured__item__text">
							<h6><a href="#"><?= $featured->name ?></a></h6>
							<h5><?= $featured->price ?> VNĐ</h5>
						</div>
					</div>
				</div>
			<?php } } ?>
		</div>
	</div>
</section>
