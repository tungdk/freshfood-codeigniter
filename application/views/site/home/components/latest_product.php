<section class="latest-product spad">
	<div class="container">
		<div class="row">
			<div class="col-lg-4 col-md-6">
				<div class="latest-product__text">
					<h4>Sản phẩm mới nhất</h4>
					<div class="latest-product__slider owl-carousel">
						<?php foreach ($latest_products as $key=>$latest_product){
						?>
						<?php if($key % 3 == 0){?>
						<div class="latest-prdouct__slider__item">
							<?php } ?>
							<a href="#" class="latest-product__item">
								<div class="latest-product__item__pic">
									<img src="<?php echo base_url('uploads/products/'.$latest_product->image)?>" alt="" style="width: -1% !important;">
								</div>
								<div class="latest-product__item__text">
									<h6><?= $latest_product->name ?></h6>
									<span><?= $latest_product->price ?> VNĐ</span>
								</div>
							</a>

							<?php if($key % 3 == 2){?>
						</div>
					<?php } }?>


					</div>
				</div>
			</div>
			<div class="col-lg-4 col-md-6">
				<div class="latest-product__text">
					<h4>Sản phẩm mua nhiều</h4>
					<div class="latest-product__slider owl-carousel">
						<?php foreach ($buyed_products as $key=>$latest_product){
							?>
							<?php if($key % 3 == 0){?>
								<div class="latest-prdouct__slider__item">
							<?php } ?>
							<a href="#" class="latest-product__item">
								<div class="latest-product__item__pic">
									<img src="<?php echo base_url('uploads/products/'.$latest_product->image)?>" alt="">
								</div>
								<div class="latest-product__item__text">
									<h6><?= $latest_product->name ?></h6>
									<span><?= $latest_product->price ?> VNĐ</span>
								</div>
							</a>

							<?php if($key % 3 == 2){?>
								</div>
							<?php } }?>


					</div>
				</div>
			</div>
			<div class="col-lg-4 col-md-6">
				<div class="latest-product__text">
					<h4>Sản phảm xem nhiều</h4>
					<div class="latest-product__slider owl-carousel">
						<?php foreach ($views_products as $key=>$latest_product){
							?>
							<?php if($key % 3 == 0){?>
								<div class="latest-prdouct__slider__item">
							<?php } ?>
							<a href="#" class="latest-product__item">
								<div class="latest-product__item__pic">
									<img src="<?php echo base_url('uploads/products/'.$latest_product->image)?>" alt="">
								</div>
								<div class="latest-product__item__text">
									<h6><?= $latest_product->name ?></h6>
									<span><?= $latest_product->price ?> VNĐ</span>
								</div>
							</a>

							<?php if($key % 3 == 2){?>
								</div>
							<?php } }?>


					</div>
				</div>
			</div>
		</div>
	</div>
</section>
