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

			}
		}
	}
	 private function _check_login_admin(){

	 }
}
