<?php

class Product extends MY_Controller
{
	function __construct()
	{
		parent::__construct();
		$this->load->model('product_model');
		$this->load->model('category_model');
	}

	function index()
	{
		$input = array();
		$list = $this->product_model->get_list($input);
		$this->data['list'] = $list;

		//lay nội dung của biến message
		$message = $this->session->flashdata('message');
		$this->data['message'] = $message;

		//load view
		$this->data['page_title'] = 'Sản phẩm';
		$this->data['temp'] = 'admin/product/index';
		$this->load->view('admin/layout_admin', $this->data);

	}

	function add()
	{
		//neu ma co du lieu post len thi kiem tra
		if ($this->input->post()) {
			//load thư viện validate dữ liệu
			$this->load->library('form_validation');
			$this->load->helper('form');
			$this->load->helper('slug');

			$this->form_validation->set_rules('name', 'Tên sản phẩm', 'required');
			$this->form_validation->set_rules('price', 'Giá sản phẩm', 'required');
			$this->form_validation->set_rules('discount', 'Giá sản phẩm', 'required');
			$this->form_validation->set_rules('image', 'Ảnh', 'required');
			$this->form_validation->set_rules('content', 'Nội dung', 'required');
			$this->form_validation->set_rules('category_id', 'Danh mục', 'required');

			//nhập liệu chính xác
			if ($this->form_validation->run()) {

				$status = $this->input->post('status') ? 1 : 0;
				//lay ten file anh minh hoa duoc update len
				$this->load->library('upload_library');
				$upload_path = './uploads/products';
				$upload_data = $this->upload_library->upload($upload_path, 'image');
				$image = '';
				if (isset($upload_data['file_name'])) {
					$image = $upload_data['file_name'];
				}

				//luu du lieu can them
				$data = array(
					'name' => $this->input->post('name'),
					'slug' => create_slug($this->input->post('name')),
					'image' => $this->input->post('image'),
					'price' => $this->input->post('price'),
					'discount' => $this->input->post('discount'),
					'content' => $this->input->post('content'),
					'category_id' => $this->input->post('category_id'),
					'created_at' => now(),
					'status' => $status,
				);
				//them moi vao csdl
				//lay nội dung của biến message
				$message = $this->session->flashdata('message');
				$this->data['message'] = $message;

				if ($this->product_model->create($data)) {
					//tạo ra nội dung thông báo
					$this->session->set_flashdata('message', 'Thêm mới dữ liệu thành công');
					redirect(admin_url('product'));
				} else {
					$this->session->set_flashdata('message', 'Không thêm được');
					redirect(admin_url('product/add'));;
				}

				//chuyen tới trang danh sách
				//redirect(admin_url('news'));
			}
		}
		$input = array();
		$categories = $this->category_model->get_list($input);
		$this->data['page_title'] = 'Thêm mới sản phẩm';
		$this->data['categories'] = $categories;
		$this->data['temp'] = 'admin/product/add';
		$this->load->view('admin/layout_admin', $this->data);
	}

	/*
     * Chinh sua bài viết
     */
	function edit($id)
	{
		$product = $this->product_model->get_info($id);
		if (!$product) {
			//tạo ra nội dung thông báo
			$this->session->set_flashdata('message', 'Không tồn tại bài viết này');
			redirect(admin_url('product'));
		}
		$this->data['product'] = $product;


		//load thư viện validate dữ liệu
		$this->load->library('form_validation');
		$this->load->helper('form');
		$this->load->helper('slug');


		//neu ma co du lieu post len thi kiem tra
		if ($this->input->post()) {
			$this->form_validation->set_rules('name', 'Tên sản phẩm', 'required');
			$this->form_validation->set_rules('price', 'Giá sản phẩm', 'required');
			$this->form_validation->set_rules('discount', 'Giá sản phẩm', 'required');
			$this->form_validation->set_rules('content', 'Nội dung', 'required');
			$this->form_validation->set_rules('category_id', 'Danh mục', 'required');

			//nhập liệu chính xác
			if ($this->form_validation->run()) {
				$status = ($this->input->post('status')) ? 1 : 0;

				if ($this->input->post('image')) {
					//lay ten file anh minh hoa duoc update len
					$this->load->library('upload_library');
					$upload_path = './uploads/news';
					$upload_data = $this->upload_library->upload($upload_path, 'image');
					$image = '';
					if (isset($upload_data['file_name'])) {
						$image = $upload_data['file_name'];
					}

					//luu du lieu can them
					$data = array(
						'name' => $this->input->post('name'),
						'slug' => create_slug($this->input->post('name')),
						'image' => $this->input->post('image'),
						'price' => $this->input->post('price'),
						'category_id' => $this->input->post('category_id'),
						'discount' => $this->input->post('discount'),
						'content' => $this->input->post('content'),
						'status' => $status,
					);

				} else {
					$data = array(
						'name' => $this->input->post('name'),
						'slug' => create_slug($this->input->post('name')),
						'price' => $this->input->post('price'),
						'discount' => $this->input->post('discount'),
						'category_id' => $this->input->post('category_id'),
						'content' => $this->input->post('content'),
						'status' => $status,
					);
				}


				//them moi vao csdl
				if ($this->product_model->update($product->id, $data)) {
					//tạo ra nội dung thông báo
					$this->session->set_flashdata('message', 'Cập nhật dữ liệu thành công');
				} else {
					$this->session->set_flashdata('message', 'Không cập nhật được');
				}
				//chuyen tới trang danh sách
				redirect(admin_url('product'));
			}
		}

		$input = array();
		$categories = $this->category_model->get_list($input);
		$this->data['categories'] = $categories;
		//load view
		$this->data['temp'] = 'admin/product/edit';
		$this->load->view('admin/layout_admin', $this->data);
	}


	function deleted_at($id)
	{
		$product = $this->product_model->get_info($id);
		if (!$product) {
			//tạo ra nội dung thông báo
			$this->session->set_flashdata('message', 'Không tồn tại sản phẩm này');
			redirect(admin_url('product'));
		}
		if ($product->discount > 0) {
			$this->session->set_flashdata('message', 'Sản phẩm còn trong cửa hàng, không thể xoá');
			redirect(admin_url('product'));
		}
		$data = array(
			'status' => 0
		);

		if ($this->product_model->update($product->id, $data)) {
			$this->session->set_flashdata('message', 'Xoá thành công');
		} else {
			$this->session->set_flashdata('message', 'Xoá không thành công');
		}
		redirect(admin_url('product'));

	}
}
