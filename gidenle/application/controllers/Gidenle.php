<?php 


class Gidenle extends CI_Controller
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
		$this->data['Iller'] = $this->Main_model->getIl();
		$this->load->view('index', $this->data);
	}
	public function send()
	{
		if($this->input->post())
		{
			$AddNewPacket = $this->Main_model->addNewPacket($this->data);
			if($AddNewPacket['status'])
			{
				$this->session->set_flashdata('form_error', $AddNewPacket['result']['message']);
				//redirect(site_url('login'));
			} else {
				$this->data['form_error'] = $AddNewPacket['result']['message'];
			}
		}
		$this->data['Iller'] = $this->Main_model->getIl();
		$this->load->view('send', $this->data);
	}
	
	public function pendingpackets()
	{
		
	}
	
	
	
	public function logout()
	{
		$this->User_model->logout();
		redirect(site_url());
	}

}
?>