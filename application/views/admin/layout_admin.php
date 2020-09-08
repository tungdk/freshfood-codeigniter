<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html lang="en">
<head>
	<?php $this->load->view('admin/partials/head');?>
</head>
<body class="hold-transition sidebar-mini">
	<div class="wrapper">
		<!-- Header -->
		<?php $this->load->view('admin/partials/header');?>

		<!-- Main Sidebar Container -->
		<?php $this->load->view('admin/partials/siderbar');?>

		<!-- Content -->
		<?php  $this->load->view($temp, $this->data);?>
		<!-- End content -->


		<!-- Main Footer -->
		<?php $this->load->view('admin/partials/footer');?>
	</div>
<!-- ./wrapper -->

<!-- REQUIRED SCRIPTS -->

<!-- jQuery -->
<script src="plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/adminlte.min.js"></script>
</body>
</html>
