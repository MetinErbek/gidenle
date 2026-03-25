<?php 
class Carry_model extends CI_Model
{
	public function addCarrier($parametre = NULL)
	{
		if(isset($parametre)){extract($parametre);}
		if(isset($user_email) && isset($user_pass))
		{
			$parametre['user_type'] = 1;
			$parametre['kayit_tarihi'] = date('Y-m-d H:i:s');
			$parametre['user_pass'] = md5($parametre['user_pass']);
			$Save = $this->Main_model->Save_Info('users', $parametre, NULL, 'insert');
			if($Save)
			{
				return array('status'=>TRUE, 'result'=>array('message'=> 'Üyelik Kaydınız Yapıldı. Lütfen Giriş Yapınız.' ));
			} else {
				return array('status'=>FALSE, 'result'=>array('message'=> 'Kaydedilemedi' ));
			}
			
		} else {
			return array('status'=>FALSE, 'result'=>array('message'=> 'Bazı Zorunlu Kısımları Boş Bıraktınız.' ));
		}
	}
	public function addNewOffer($parametre = NULL)
	{
		if(isset($parametre)){extract($parametre);}
		if(isset($packet_id) && isset($offer_price) && isset($offer_arrive_day))
		{
			$parametre['packet_id'] = $packet_id;
			$parametre['offer_owner_id'] = $this->session->userdata('user_id');
			$Save = $this->Main_model->Save_Info('packet_offers', $parametre, NULL, 'insert');
			if($Save)
			{
				return array('status'=>TRUE, 'result'=>array('message'=> 'Teklifiniz Başarıyla Kargo Sahibine İletildi. Kargo sahibi kabul ettiği takdirde, kargoyu taşıyabileceksiniz.' ));
			} else {
				return array('status'=>FALSE, 'result'=>array('message'=> 'Bir Sorun Oluştu' ));
			}
			
		} else {
			return array('status'=>FALSE, 'result'=>array('message'=> 'Bazı Zorunlu Kısımları Boş Bıraktınız.' ));
		}
	}
	
}

?>