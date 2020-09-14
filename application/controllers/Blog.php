<?php
class Blog extends MY_Controller{
	public function __construct()
	{
		parent::__construct();
		$this->load->model('news_model');
		$input =array();
		$input['order'] = array('views', 'DESC');
		$input['limit'] = array(5, 0);
		$views_news = $this->news_model->get_list($input);
		$this->data['views_news'] = $views_news;
	}

	function index(){
		$input =array();
		$input['order'] = array('views', 'DESC');
		$list_news = $this->news_model->get_list($input);
		$this->data['list_news'] = $list_news;

		$this->data['hero_normal']= 'hero_normal';

		$this->data['page_title'] = 'Bài viết';
		$this->data['temp'] = 'site/blog/index';
		$this->load->view('site/layout_site', $this->data);
	}

	function blog_details($id){
		$blog_details = $this->news_model->get_info($id);
		$this->data['blog_details'] = $blog_details;

		$input =array();
		$input['order'] = array('created_at', 'DESC');
		$input['limit'] = array(5, 0);
		$recent_news = $this->news_model->get_list($input);
		$this->data['recent_news'] = $recent_news;

		$this->data['hero_normal']= 'hero_normal';
		$this->data['page_title'] = 'Chi tiết bài viết';
		$this->data['temp'] = 'site/blog/blog-details';
		$this->load->view('site/layout_site', $this->data);
	}
}
