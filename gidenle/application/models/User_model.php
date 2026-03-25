<?php 
class User_model extends CI_Model
{
	public function getUser($parametre = NULL)
	{
		if(isset($parametre)){extract($parametre);}
		if(isset($user_email))
		{
			$this->db->where('user_email', $user_email);
		}		
		if(isset($user_pass))
		{
			$this->db->where('user_pass', md5($user_pass) );
		}
		return $this->db->get('users');
	}	
	public function loginUser($parametre)
	{
		if(isset($parametre)){extract($parametre);}
		if(isset($user_email) && isset($user_pass))
		{
			$UserRS = $this->User_model->getUser($parametre);
			if($UserRS->num_rows() > 0)
			{
				$User = $UserRS->row_array();
				$User['Logged'] = TRUE;
				$this->session->set_userdata($User);
				return array('status'=>TRUE, 'result'=>array('message'=> 'Başarıyla Giriş Yaptınız..'));
			} else {
				return array('status'=>FALSE, 'result'=>array('message'=> 'Kullanıcı Bulunamadı.'));
			}
		} else {
			return array('status'=>FALSE, 'result'=>array('message'=> 'Email veya şifre boş geçilemez.'));
		}
		
	}
	
	function logout()
	{
		//session_destroy();
		$this->session->sess_destroy();
	}
	
}

?>