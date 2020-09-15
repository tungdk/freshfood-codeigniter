<?php $this->load->view('site/partials/banner') ?>

<?php if ($this->session->userdata('user_id_login')): ?>
	<div class="section" style="margin-top: 50px">
		<div class="container">
			<div class="col-md-12">
				<div class="col-lg-3 account-left">
					<div class="info-account" style="text-align: center">
						<div class="name-account">
							<p><?= $user->name ?></p>
						</div>
						<hr>
						<div class="created_at">
							<p>Tham gia từ <br><?= $user->created_at ?></p>
						</div>
					</div>
					<hr>
					<div class="list-action">
						<ul>
							<li class="item-action"><a class="btn" href="<?php echo base_url('user') ?>"
													   class="active-item">Tài khoản
									của tôi</a></li>
							<li class="item-action"><a class="btn" href="<?php echo base_url('logout') ?>">Đổi mật
									khẩu</a></li>
							<li class="item-action"><a class="btn" href="<?php echo base_url('logout') ?>">Thoát</a>
							</li>
						</ul>
					</div>
				</div>
				<div class="col-lg-5 account-right">
					<div class="account-title">
						Tài khoản của tôi
					</div>

					<p style="color:green; dislay:none;" class="error successChangeInfo"></p>
					<hr>
					<div class="account-body">
						<form method="POST" action="" enctype="multipart/form-data">
							<div class="info_user">
								<div class="item-fill-user">
									<div class="item-fill-user">
										<div class="label_fill">Họ và tên</div>
										<div class="ctn_fill">
											<input type="text" id="name" class="form-control" value="<?= $user->name ?>"
												   placeholder="Họ và tên" name="name"
												   required="required">
											<p style="color:red; dislay:none;" class="error errorName"></p>

										</div>
									</div>
									<div class="item-fill-user">
										<div class="label_fill">Email</div>
										<div class="ctn_fill">
											<?= $user->email ?>
										</div>
									</div>
									<div class="item-fill-user">
										<div class="label_fill">Giới thiệu</div>
										<div class="ctn_fill">
                                    <textarea class="form-control" id="story" placeholder="Giới thiệu về bản thân"
											  rows="3" name="story"
									></textarea>
										</div>
									</div>
									<div class="item-fill-user">
										<div class="label_fill">Liên hệ</div>
										<div class="ctn_fill">
											<input type="text" class="form-control" id="contact"
												   value="" placeholder="Liên hệ" name="contact"
											>
										</div>
									</div>
								</div>
								<div class="button-saveaccount">
									<button class="btn btn-primary" type="submit" id="submit_changeInfo">Lưu</button>
								</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
<?php else: ?>
	<div class="container" style="margin-top: 50px">
		<h3 style="color: red"><i>Bạn chưa đăng nhập</i></h3>
	</div>
<?php endif; ?>
<!--@endsection-->
<!---->
<!--@section('js')-->
<!--<script type="text/javascript">-->
<!--	@if(!Auth::check()){-->
<!--		$(window).load(function () {-->
<!--			openLoginModal();-->
<!--		});-->
<!--	}-->
<!--	@endif-->
<!--</script>-->
<!--@endsection-->

