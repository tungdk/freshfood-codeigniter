<?php
class Blog extends MY_Controller{
	function index(){

		$this->load->model('news_model');
		$input =array();
		$input['order'] = array('views', 'DESC');
		$input['limit'] = array(5, 0);
		$views_news = $this->news_model->get_list($input);
		$this->data['views_news'] = $views_news;

		$input =array();
		$input['order'] = array('views', 'DESC');
		$list_news = $this->news_model->get_list($input);
		$this->data['list_news'] = $list_news;

		$this->data['page_title'] = 'Bài viết';
		$this->data['temp'] = 'site/blog/index';
		$this->load->view('site/layout_site', $this->data);
	}
}
