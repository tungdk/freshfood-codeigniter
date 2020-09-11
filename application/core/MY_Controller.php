<?php


class MY_Controller extends CI_Controller
{
	function __construct()
	{
		parent::__construct();

		$controller = $this->uri->segment(1);
		switch ($controller){
			case 'admin':
			{
				$this->_check_login_admin();
				break;
			}
			default:
			{
				//lấy danh sách danh mục
				$this->load->model('category_model');
				$cate_list = $this->category_model->get_list();
				$this->data['cate_list'] = $cate_list;



				//lấy thông tin setting
				$this->load->model('setting_model');

				$setting_name = $this->setting_model->get_info_rule(array('setting_key'=>'name'),'setting_value');
//				$this->data['name'] = $setting_name->setting_value;

				$setting_address = $this->setting_model->get_info_rule(array('setting_key'=>'address'),'setting_value');
				$setting_phone = $this->setting_model->get_info_rule(array('setting_key'=>'phone'),'setting_value');
				$setting_map = $this->setting_model->get_info_rule(array('setting_key'=>'map'),'setting_value');
				$setting_email = $this->setting_model->get_info_rule(array('setting_key'=>'email'),'setting_value');
				$setting_facebook = $this->setting_model->get_info_rule(array('setting_key'=>'facebook'),'setting_value');
				$setting_twitter = $this->setting_model->get_info_rule(array('setting_key'=>'twitter'),'setting_value');
				$setting_linkedin = $this->setting_model->get_info_rule(array('setting_key'=>'linkedin'),'setting_value');
				$this->data['name'] = $setting_name->setting_value;
				$this->data['address'] = $setting_address->setting_value;
				$this->data['phone'] = $setting_phone->setting_value;
				$this->data['map'] = $setting_map->setting_value;
				$this->data['email'] = $setting_email->setting_value;
				$this->data['facebook'] = $setting_facebook->setting_value;
				$this->data['twitter'] = $setting_twitter->setting_value;
				$this->data['linkedin'] = $setting_linkedin->setting_value;
			}
		}
	}
	 private function _check_login_admin(){

	 }
}
