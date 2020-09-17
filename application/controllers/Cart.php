<?php

class Cart extends MY_Controller
{
	public function __construct()
	{
		parent::__construct();
		$this->load->model('product_model');
		$this->load->model('cart_model');
	}

	function index()
	{
		if ($this->session->userdata('user_id_login')) {
			$this->db->select('* , carts.id AS cart_id, (carts.quantity * products.price) AS total');
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
		$this->data['page_title'] = 'Giỏ hàng';
		$this->data['temp'] = 'site/cart/index';
		$this->load->view('site/layout_site', $this->data);
	}

	function add($id, $quantity)
	{
		if (!$this->session->userdata('user_id_login')) {
			$result = array('success' => false, 'message' => 'Bạn cần đăng nhập để mua hàng');
			die(json_encode($result));
		}
		//lay ra san pham muon them vao gio hang

		$product = $this->product_model->get_info($id);
		if (!$product || $product->status == 0) {
			$result = array('success' => false, 'message' => 'Sản phẩm không tồn tại');
			die(json_encode($result));
		}
		if ($product->amount == 0) {
			$result = array('success' => false, 'message' => 'Sản phẩm tạm thời hết hàng');
			die(json_encode($result));
		}
		$where = array('product_id' => $id, 'user_id' => $this->session->userdata('user_id_login'));
		if ($cart_product = $this->cart_model->get_info_rule($where)) {
			//cập nhật thong tin them vao gio hang
			$data = array(
				'quantity' => $cart_product->quantity + $quantity
			);
			$addCart = $this->cart_model->update($cart_product->id, $data);
			if ($addCart) {
				$result = array('success' => true, 'message' => 'Thành công');
				die(json_encode($result));
			}
			$result = array('success' => false, 'message' => 'Có lỗi xảy ra');
			die(json_encode($result));
		}

		//thong tin them vao gio hang
		$data = array();
		$data['product_id'] = $id;
		$data['user_id'] = $this->session->userdata('user_id_login');
		$data['quantity'] = $quantity;
		$addCart = $this->cart_model->create($data);

		if ($addCart) {
			$result = array('success' => true, 'message' => 'Thành công');
			die(json_encode($result));
		}
	}

	/*
	* Cập nhật giỏ hàng
	*/
	function update()
	{
		//thong gio hang
		$carts = $this->cart->contents();
		foreach ($carts as $key => $row) {
			//tong so luong san pham
			$total_qty = $this->input->post('qty_' . $row['id']);
			$data = array();
			$data['rowid'] = $key;
			$data['qty'] = $total_qty;
			$this->cart->update($data);
		}

		//chuyen sang trang danh sach san pham trong gio hang
		redirect('cart');
	}

	function delete($id)
	{
		if (!$this->session->userdata('user_id_login')) {
			$result = array('success' => false, 'message' => "Bạn chưa đăng nhập");
			die(json_encode($result));
		}
		$product_cart = $this->cart_model->get_info($id);
//		die($product_cart);

		if ($product_cart->user_id == $this->session->userdata('user_id_login')) {
			$delete_product = $this->cart_model->delete($id);
			if ($delete_product) {
				$result = array('success' => true, 'message' => "Thành công");
				die(json_encode($result));
			}
		}
		$result = array('success' => false, 'message' => "Có lỗi xảy ra");
		die(json_encode($result));
	}
}
