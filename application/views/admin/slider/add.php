<div class="content-wrapper">
	<!-- Content Header (Page header) -->
	<div class="content-header">
		<div class="container-fluid">
			<div class="row mb-2">
				<div class="col-sm-6">
					<h1 class="m-0 text-dark">Thêm mới slider</h1>
				</div><!-- /.col -->
				<div class="col-sm-6">
					<ol class="breadcrumb float-sm-right">
						<li class="breadcrumb-item"><a href="<?= site_url('admin')?>">Trang quản trị</a></li>
						<li class="breadcrumb-item"><a href="<?= site_url('admin/category')?>">Slider</a></li>
						<li class="breadcrumb-item active">Thêm mới</li>
					</ol>
				</div><!-- /.col -->
			</div><!-- /.row -->
		</div><!-- /.container-fluid -->
	</div>
	<!-- /.content-header -->

	<!-- Main content -->
	<div class="content">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-6">
					<?php $this->load->view('admin/message', $this->data);?>

					<form action="" method="Post">
						<div class="form-group">
							<label>Tiêu đề</label>
							<input type="text" class="form-control" name="title" placeholder="Nhập tiêu đề">
						</div>

						<div class="form-group">
							<label>Link</label>
							<textarea type="text" class="form-control" name="link"
									  placeholder="Nhập liên kết"
									  cols="5"></textarea>
						</div>

						<div class="form-group">
							<label>Mô tả ngắn</label>
							<input type="text" class="form-control" name="description" placeholder="Nhập tên mô tả ngắn">
						</div>

						<div class="form-group">
							<label>Ảnh</label>
							<input type="file" class="form-control" name="thumbnail" placeholder="Nhập tên danh mục">
						</div>

						<div class="form-group">
							<label>Trạng thái hiển thị <i>(Tích để hiển thị)</i>&nbsp;&nbsp;</label>
							<input type="checkbox" name="status" checked>
						</div>
						<button type="submit" class="btn btn-primary">Thêm</button>
					</form>
				</div>
			</div>
			<!-- /.row -->
		</div><!-- /.container-fluid -->
	</div>
	<!-- /.content -->
</div>
