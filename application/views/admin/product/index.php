<div class="content-wrapper">
	<!-- Content Header (Page header) -->
	<div class="content-header">
		<div class="container-fluid">
			<div class="row mb-2">
				<div class="col-sm-6">
					<h1 class="m-0 text-dark">Quản lý sản phẩm</h1>
				</div><!-- /.col -->
				<div class="col-sm-6">
					<ol class="breadcrumb float-sm-right">
						<li class="breadcrumb-item"><a href="<?= admin_url('home')?>">Trang quản trị</a></li>
						<li class="breadcrumb-item active">Sản phẩm</li>
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
				<div class="col-md-12 ">
					<a href="<?= admin_url('product/trash')?>" class="btn btn-default float-right"><i class="fa fa-trash"></i> Thùng rác</a>
					<a href="<?= admin_url('product/add')?>" class="btn btn-success float-right"><i class="fa fa-plus"></i> Thêm mới</a>
				</div>
				<!-- /.col-md-6 -->
				<?php $this->load->view('admin/message', $this->data);?>
				<div class="col-md-12">
					<table class="table table-striped table-bordered" style="width:100%">
						<thead>
						<tr>
							<th scope="col">ID</th>
							<th scope="col">Ảnh</th>
							<th scope="col">Tên sản phẩm</th>
							<th scope="col">Số lượng</th>
							<th scope="col">Giá tiền</th>
							<th scope="col">Đã bán</th>
							<th scope="col">Danh mục</th>
							<th scope="col">Trạng thái</th>
							<th scope="col">Action</th>
						</tr>
						</thead>
						<tbody>

						<?php foreach($list as $product): ?>
						<tr>
							<th scope="row"><?= $product->id ?></th>
							<td><img src="<?= base_url('uploads/products/'). $product->image ?>" style="height: 100px"></td>
							<td><?= $product->name ?></td>
							<td><?= $product->discount ?></td>
							<td><?= $product->price ?></td>
							<td><?= $product->buyed ?></td>
							<td><?= $product->price ?></td>
							<td><input type="checkbox" <?php if($product->status == 1){echo 'checked';} ?> ></td>
							<td>
								<a href="<?= admin_url('product/edit/'.$product->id)?>" class="btn btn-warning"><i class="fa fa-edit"></i> Sửa</a>
								<a href="<?= admin_url('product/deleted_at/'.$product->id)?>" class="btn btn-danger <?php if($product->status == 0){echo 'disabled';} ?>" onclick="return confirm('Bạn có muốn xoá không?');" id="deleted_at" ><i class="fa fa-trash"></i> Xoá</a>
							</td>
						</tr>
						<?php endforeach;?>
						</tbody>
					</table>
				</div>
				<!-- /.col-md-6 -->
			</div>
			<!-- /.row -->
		</div><!-- /.container-fluid -->
	</div>
	<!-- /.content -->
</div>
