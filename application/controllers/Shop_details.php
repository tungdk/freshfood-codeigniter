<?php
class Shop_details extends MY_Controller{
	function index($id){
		$this->load->model('product_model');
		//lấy thông tin sản phẩm
		$product = $this->product_model->get_info($id);
		$this->data['product'] = $product;

		//4 sản phẩm liên quan
		$input =array();
		$input['order'] = array('created_at', 'DESC');
		$input['limit'] = array(4, 0);
		$input['where'] = array('category_id'=>$product->category_id, 'id !='=> $id);
		$four_recent_products = $this->product_model->get_list($input);
		$this->data['four_recent_products'] = $four_recent_products;


		$this->data['hero_normal']= 'hero_normal';
		$this->data['page_title'] = $product->name;
		$this->data['temp'] = 'site/shop-details/index';
		$this->load->view('site/layout_site', $this->data);
	}

}
