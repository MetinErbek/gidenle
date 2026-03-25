<?php 


class Carry extends CI_Controller
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
	public function searchpacket()
	{
		$this->data['Packets'] = $this->Main_model->getPacket(array('packet_status'=>'pending', 'not_has_offer_id'=>$this->session->userdata('user_id')))->result_array();	
		$this->load->view('searchpacket', $this->data);
	}
	public function addoffer($packet_id = NULL)
	{
		if(isset($packet_id))
		{
			$packetRS = $this->Main_model->getPacket(array('packet_id'=>$packet_id));
			if($packetRS->num_rows() > 0 )
			{
				$this->data['paket'] = $packetRS->row_array();
				$this->data['packet_id'] = $packet_id;
				if($this->input->post())
				{
					$addNewOffer = $this->Carry_model->addNewOffer($this->data);
					if($addNewOffer['status'])
					{
						$this->session->set_userdata('form_error', $addNewOffer['result']['message']);
						redirect(site_url('carry/pendingpackets'));
						return;
					}
					$this->data['form_error'] = $addNewOffer['result']['message'];
					
				}
				
				
				$this->load->view('addoffer', $this->data);
				
			} else {
				
			}
			
			
			
			
		} else {
			
		}
		
	}
	
	public function pendingpackets()
	{
		$this->data['Packets'] = $this->Main_model->getPacket(array('packet_status'=>'pending', 'has_offer_id'=>$this->session->userdata('user_id')))->result_array();	
		$this->load->view('pendingpackets', $this->data);
	}

}
?>