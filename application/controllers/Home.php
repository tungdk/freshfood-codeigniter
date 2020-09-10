<?php
class Home extends CI_Controller{
	function index(){
		$this->data['page_title'] = 'Cửa hàng thực phẩm Fresh Food';
		$this->data['temp'] = 'site/home/index';
		$this->load->view('site/layout_site', $this->data);
	}
}
