<?php if($this->session->userdata('user_id_login')):?>
	<a href="<?=  base_url('user');?>"><i class="fa fa-user"></i> <?= $this->session->userdata('user_name_login') ?></a>
	<a href="<?=  base_url('logout');?>"><i class="fa fa-sign-out"></i> Đăng xuất</a>
<?php else: ?>
	<a href="<?=  base_url('login');?>"><i class="fa fa-user"></i> Đăng nhập</a>
<?php endif; ?>
