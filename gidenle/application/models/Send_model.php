<?php 
class Send_model extends CI_Model
{
	public function addSender($parametre = NULL)
	{
		if(isset($parametre)){extract($parametre);}
		if(isset($user_email) && isset($user_pass))
		{
			$parametre['user_type'] = 2;
			$parametre['kayit_tarihi'] = date('Y-m-d H:i:s');
			$parametre['user_pass'] = md5($parametre['user_pass']);
			$Save = $this->Main_model->Save_Info('users', $parametre, NULL, 'insert');
			if($Save)
			{
				return array('status'=>TRUE, 'result'=>array('new_user_id'=> $this->db->insert_id(),'message'=> 'Üyelik Kaydınız Yapıldı. Lütfen Giriş Yapınız.' ));
			} else {
				return array('status'=>FALSE, 'result'=>array('message'=> 'Kaydedilemedi' ));
			}
			
		} else {
			return array('status'=>FALSE, 'result'=>array('message'=> 'Bazı Zorunlu Kısımları Boş Bıraktınız.' ));
		}
	}
	
}

?>