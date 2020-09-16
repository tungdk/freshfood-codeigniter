<!DOCTYPE html>
<html lang="vi">

<head>
	<?php $this->load->view('site/partials/head');?>
</head>

<body>
    <!-- Page Preloder -->
<!--    <div id="preloder">-->
<!--        <div class="loader"></div>-->
<!--    </div>-->

    <!-- Header Section Begin -->
    <?php $this->load->view('site/partials/header');?>
    <!-- Header Section End -->

	<!-- Content -->
	<?php  $this->load->view($temp, $this->data);?>
	<!-- End content -->

    <!-- Footer Section Begin -->
   <?php $this->load->view('site/partials/footer')?>
    <!-- Footer Section End -->

    <!-- Js Plugins -->
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.nice-select.min.js"></script>
    <script src="js/jquery-ui.min.js"></script>
    <script src="js/jquery.slicknav.js"></script>
    <script src="js/mixitup.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/main.js"></script>

	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
	<script src="js/addtocart.js"></script>

</body>

</html>
