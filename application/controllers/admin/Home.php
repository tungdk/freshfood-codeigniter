<?php

class Home extends CI_Controller
{
	function index(){
		$this->data['page_title'] = 'Trang quản trị';
		$this->data['temp'] = 'admin/home';
		$this->load->view('admin/layout_admin', $this->data);
	}
}
