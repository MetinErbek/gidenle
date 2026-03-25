<?php 


class Sender extends CI_Controller
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
	public function pendingpackets()
	{
		
		$this->data['Packets'] = $this->Main_model->getPacket(array('packet_status'=>'pending', 'user_id'=>$this->session->userdata('user_id')))->result_array();
		
		$this->load->view('mypackets', $this->data);
	}
	
	public function offers($packet_id = NULL)
	{
		if(isset($packet_id))
		{
			$packetRS = $this->Main_model->getPacket(array('packet_id'=>$packet_id, 'user_id'=>$this->session->userdata('user_id')));
			if($packetRS->num_rows() > 0)
			{
				$this->data['paket'] = $packetRS->row_array();
				
				$this->data['Offers'] = $this->Main_model->getOffers(array('packet_id'=>$packet_id));
				$this->load->view('offers', $this->data);
			} else {
				echo 'Paket Size Ait Değil';
			}
		
		} else {
			echo 'Packet Not Found';
		}
	}
	
	public function selectoffer($offer_id = NULL)
	{
		if(isset($packet_id))
		{
			$PacketRS = $this->Main_model->getPacket(array('has_offer_id'=>$offer_id));
			if($packetRS->num_rows() > 0)
			{
				$Packet = $packetRS->row_array();
				$this->Main_model->Save_Info('packet_offers', array('offer_status'=>'rejected'), array('packet_id'=>$Packet['packet_id']), 'update' );
				$this->Main_model->Save_Info('packet_offers', array('offer_status'=>'success'), array('packet_offers_id'=>$offer_id), 'update' );
				$this->Main_model->Save_Info('packets', array('packet_status'=>'success'), array('packet_id'=>$Packet['packet_id']), 'update' );
				
				
				
				
			}
		}
	}
	
	

}
?>