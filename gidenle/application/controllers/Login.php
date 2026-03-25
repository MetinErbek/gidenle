<?php 


class Login extends CI_Controller
{
	Public $data;
	public function __construct()
	{
		parent::__construct();
		$this->load->model('Carry_model');
		$this->load->model('Send_model');
		$this->load->model('User_model');
		$this->data = array();
		$this->data = array_merge($this->data, $this->input->post());
		$this->data = array_merge($this->data, $this->input->get());
		$this->data = array_merge($this->data, $this->session->flashdata());
	}

	public function index()
	{
		if($this->input->post())
		{
			$Login = $this->User_model->loginUser($this->data);
			if($Login['status'])
			{
				redirect(site_url());return;
			} else {
				$this->data['form_error'] = $Login['result']['message'];
				
			}
			
		}
		//$this->data['Iller'] = $this->Main_model->getIl();
		
		$this->load->view('login', $this->data);
	}	
	public function carryregister()
	{
		if($this->input->post())
		{
			$Save = $this->Carry_model->addCarrier($this->data);
			if($Save)
			{
				$this->session->set_flashdata(array(
					'form_error'		=> $Save['result']['message'],
					'form_error_title'	=> 'Kaydınız Başarılı',
				));
				redirect(site_url('gidenle/index'));return;
			} else {
				$this->data['form_error'] = $Save['result']['message'];
			}
		}
		$this->data['CarModels'] = $this->Main_model->getCarModels();
		
		$this->load->view('carryregister', $this->data);
	}
	
	public function senderregister()
	{
		if($this->input->post())
		{
			$Save = $this->Send_model->addSender($this->data);
			if($Save)
			{
				$this->session->set_flashdata(array(
					'form_error'		=> $Save['result']['message'],
					'form_error_title'	=> 'Kaydınız Başarılı',
				));
				
			} else {
				$this->session->set_flashdata(array(
					'form_error'		=> $Save['result']['message'],
					'form_error_title'	=> 'Kaydınız Başarısız',
				));
			}
			redirect(site_url('login/index'));return;
		}

	}
}
?>