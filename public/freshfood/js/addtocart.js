$(function () {
	$(document).on('click', '.add_to_cart', function (e) {
		e.preventDefault();
		let urlRequest = $(this).data('url');
		$.ajax({
			type: 'GET',
			url: urlRequest,
			success: function (data) {
				 var data2 = JSON.parse(data);

				// var data2 = JSON.parse(response);
				// alert(data2[1].message);
				if (data2.success == true) {
					Swal.fire({
						title: 'Thêm vào giỏ hàng thành công',
						icon: 'success',
						showCancelButton: true,
						confirmButtonColor: '#3085d6',
						cancelButtonColor: 'Tiếp tục mua hàng',
						confirmButtonText: 'Đi đến giỏ hàng',
						// confirmButtonText: '<a href="cart">Đi đến giỏ hàng</a>'
					}).then((result) => {
						if (result.isConfirmed) {
							window.location.href = "/freshfood/cart";
						}
					})
				} else{
					Swal.fire({
						icon: 'error',
						title: data2.message,
					})
				}
			},
			error: function () {

			}
		});

	});
});
