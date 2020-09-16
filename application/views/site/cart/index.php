<?php $this->load->view('site/partials/banner') ?>

<!-- Shoping Cart Section Begin -->
<section class="shoping-cart spad">
	<div class="container">
		<?php if ($this->session->userdata('user_id_login')):
			if (!$cart_products): ?>
				<div class="row">
					<h3>Giỏ hàng của bạn đang trống. <a href="<?php echo base_url('home') ?>" class="btn btn-success">Tiếp tục mua
							sắm</a>
					</h3>
				</div>
			<?php else: ?>
				<div class="row">
					<div class="col-lg-12">
						<div class="shoping__cart__table">
							<table>
								<thead>
								<tr>
									<th class="shoping__product">Sản phẩm</th>
									<th>Giá tiền</th>
									<th>Số lượng</th>
									<th>Tổng tiền</th>
									<th></th>
								</tr>
								</thead>
								<tbody>
								<?php foreach ($cart_products as $product): ?>
									<tr>
										<td class="shoping__cart__item">
											<a href="<?php echo base_url('/'.$product->id.'-'.$product->slug.'.html')?>" title="<?= $product->name ?>">
											<img src="<?php echo base_url('uploads/products/' . $product->image) ?>"
												 alt=""
												 style="height: 100px">
											<h5><?= $product->name ?></h5>
											</a>
										</td>
										<td class="shoping__cart__price price_product">
											<span id="price_product"><?= $product->price ?></span> VNĐ
										</td>
										<td class="shoping__cart__quantity quantity_product">
											<div class="quantity">
												<div class="pro-qty">
													<input type="text" value="<?= $product->quantity ?>" readonly>
												</div>
											</div>
										</td>
										<td class="shoping__cart__total">
											<?= $product->total ?>
										</td>
										<td class="shoping__cart__item__close">
											<span class="icon_close"></span>
										</td>
									</tr>
								<?php endforeach; ?>

								</tbody>
							</table>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-12">
						<div class="shoping__cart__btns">
							<a href="<?php echo base_url('home') ?> " class="primary-btn cart-btn">Tiếp tục mua hàng</a>
							<a href="<?php echo base_url('cart/update') ?> "
							   class="btn btn-primary primary-btn cart-btn cart-btn-right"><span class="icon_loading"></span>
								Cập nhật giỏ hàng</a>
						</div>
					</div>
					<div class="col-lg-6">
					</div>
					<div class="col-lg-6">
						<div class="shoping__checkout">
							<h5>Thành tiền</h5>
							<ul>
								<!--						<li>Subtotal <span>$454.98</span></li>-->
								<li>Total <span><?= $order_total ?> VNĐ</span></li>
							</ul>
							<a href="<?php echo base_url('order') ?>" class="primary-btn">Đặt hàng</a>
						</div>
					</div>
				</div>
			<?php endif; ?>
		<?php else: ?>
			<div class="row">
				<h3>Bạn cần <a href="<?php echo base_url('login') ?>" class="btn btn-success">đăng nhập</a> để xem giỏ
					hàng</h3>
			</div>
		<?php endif; ?>
	</div>
</section>
<!-- Shoping Cart Section End -->
<script type="text/javascript">
	window.onLoad = function () {
		alert('ahihi');
		var price_product = $('#price_product').val();
		alert(price_product);
		// console.log(price_product);
		var quantity_product =;
		var total = price_product * quantity_product;
	}


</script>