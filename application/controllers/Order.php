<?php
Class Order extends MY_Controller
{
	public function __construct()
	{
		parent::__construct();
		$this->load->model('cart_model');
		$this->load->model('user_model');
		$this->load->model('product_model');
		$this->load->model('order_model');
		$this->load->model('orderdetails_model');
	}

	function index(){
		$this->load->library('form_validation');
		$this->load->helper('form');
		if ($this->session->userdata('user_id_login')) {
			//lấy thông tin user
			$user = $this->user_model->get_info($this->session->userdata('user_id_login'));
			$this->data['user'] = $user;

			//lấy thông tin giỏ hàng
			$this->db->select('* , (carts.quantity * products.price) AS total');
			$this->db->from('carts');
			$this->db->join('products', 'carts.product_id = products.id');
			$this->db->where('carts.user_id', $this->session->userdata('user_id_login'));
			$query = $this->db->get();
			$this->data['cart_products'] = $query->result();

			$order_total = 0;

			foreach ($query->result() as $row) {
				$order_total += $row->total;
			}
			$this->data['order_total'] = $order_total;
		}

		$this->data['hero_normal'] = 'hero_normal';
		$this->data['page_title'] = 'Đặt hàng';
		$this->data['temp'] = 'site/order/index';
		$this->load->view('site/layout_site', $this->data);
	}
	function checkout()
	{
		//kiểm tra login
		if($this->session->userdata('user_id_login'))
		{
			$user = $this->user_model->get_info($this->session->userdata('user_id_login'));
		}
		$this->data['user']  = $user;
		$this->db->select('* , (carts.quantity * products.price) AS total');
		$this->db->from('carts');
		$this->db->join('products', 'carts.product_id = products.id');
		$this->db->where('carts.user_id', $this->session->userdata('user_id_login'));
		$query = $this->db->get();
		$this->data['cart_products'] = $query->result();

		$order_total = 0;

		foreach ($query->result() as $row) {
			$order_total += $row->total;
		}
		$this->data['order_total'] = $order_total;

		$this->load->library('form_validation');
		$this->load->helper('form');

		//neu ma co du lieu post len thi kiem tra
		if($this->input->post())
		{
			$this->form_validation->set_rules('name', 'Tên', 'required|min_length[8]');
			$this->form_validation->set_rules('phone', 'Số điện thoại', 'required');
			$this->form_validation->set_rules('note', 'Ghi chú');
			$this->form_validation->set_rules('address', 'Địa chỉ', 'required');

			//nhập liệu chính xác
			if($this->form_validation->run())
			{
//				die('vào đây rồi');
				//them vao csdl
				$data = array(
					'status'   => 0, //trang thai chua thanh toan
					'user_id'  => $this->session->userdata('user_id_login'), //id thanh vien mua hang neu da dang nhap
					'name'     => $this->input->post('name'),
					'phone'    => $this->input->post('phone'),
					'address'    => $this->input->post('address'),
					'note'       => $this->input->post('note'), //ghi chú khi mua hàng
					'payment'        => $order_total,//tong so tien can thanh toan
					'created_at'       => now(),
				);

				//them du lieu vao bang order
				$this->order_model->create($data);

				$transaction_id = $this->db->insert_id();  //lấy ra id của giao dịch vừa thêm vào

				//them vao bảng order_details (chi tiết đơn hàng)
				foreach ( $query->result() as $row)
				{
					$data = array(
						'order_id' => $transaction_id,
						'product_id'     => $row->product_id,
						'quantity'            => $row->quantity,
						'price'         => $row->price,
					);
					$this->orderdetails_model->create($data);
				}
				//xóa toàn bô giỏ hang
				$this->cart_model->del_rule(array('user_id'=>$this->session->userdata('user_id_login')));
				//tạo ra nội dung thông báo
				$this->session->set_flashdata('message', 'Bạn đã đặt hàng thành công, chúng tôi sẽ kiểm tra và gửi hàng cho bạn');

				//chuyen tới trang danh sách quản trị viên
				redirect('cart');
			}
		}


		//hiển thị ra view
		$this->data['hero_normal'] = 'hero_normal';
		$this->data['page_title'] = 'Đặt hàng';
		$this->data['temp'] = 'site/order/index';
		$this->load->view('site/layout_site', $this->data);
	}
}
