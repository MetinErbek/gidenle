<?php 
class Main_model extends CI_Model
{
	public function getIl()
	{
		return $this->db->get('il');
	}	
	public function getCarModels()
	{
		return $this->db->get('cars_models');
	}
	
	
  /**
     * 
     * @param type $table
     * @param type $info
     * @param type $where
     * @param type $type
     * @return boolean
     * insert or Update processes
     */
    public function Save_Info($table, $info, $where = NULL , $type = 'insert')
    {
        $fields = $this->db->list_fields($table);
        $insert_table = array();
        if(is_array($info))
        {
            foreach($info as $key => $value)
            {
                if(in_array($key, $fields))
                {
                    $insert_table[$key] = $value;
                }
            }
            if(count($insert_table) > 0)
            {
                if($type == 'insert')
                {
                    return $this->db->insert($table, $insert_table);
                } else {
                    foreach($where as $key => $value)
                    {
                        $this->db->where($key, $value);
                    }
                    return $this->db->update($table, $insert_table);
                }
                
            }
            
        } else {
            return FALSE;
        }
    } // end Save_Info($table, $info, $where = NULL , $type = 'insert')
	
	public function addNewPacket($parametre = NULL)
	{
		if(isset($parametre)){extract($parametre);}
		if((isset($user_email) && isset($user_pass)) || $this->session->userdata('Logged'))
		{
			if(!$this->session->userdata('Logged'))
			{
				$AddUser = $this->Send_model->addSender($parametre);
				if($AddUser['status'])
				{
					$parametre['packet_owner_id'] = $AddUser['result']['new_user_id'];
				} else {
					return array('status'=>FALSE, 'result'=>array('message' => $AddUser['message']));

				}
			} else {
				$parametre['packet_owner_id'] = $this->session->userdata('user_id');
			}
			
			$SavePacket = $this->Main_model->Save_Info('packets', $parametre, NULL, 'insert');
			if($SavePacket)
			{
				return array('status'=>TRUE, 'result'=>array('message' => 'Paketinizi Kaydettik.'));
			} else {
				return array('status'=>FALSE, 'result'=>array('message' => 'Bir Sorun Oluştu'));
			}
			
		} else {
			return array('status'=>FALSE, 'result'=>array('message' => 'Bazı zorunlu değerleri boş geçtiniz'));
		}
		
		
	}
	
	public function getPacket($parametre = NULL)
	{
		if(isset($parametre)){extract($parametre);}
		if(isset($user_id))
		{
			$this->db->where('packet_owner_id', $user_id);
		}
		if(isset($packet_status))
		{
			$this->db->where('packet_status', $packet_status);
		}		
		if(isset($packet_id))
		{
			$this->db->where('packets.packet_id', $packet_id);
		}		
		if(isset($has_offer_id))
		{
			$this->db->where('( EXISTS(select * from packet_offers where packet_offers.packet_id = packets.packet_id AND packet_offers.offer_status="pending" AND offer_owner_id="'.$has_offer_id.'") )');
		}
		return $this->db->get('packets');
	}
	
	public function getOffers($parametre = NULL)
	{
		if(isset($parametre)){extract($parametre);}
		if(isset($packet_id))
		{
			$this->db->where('packet_offers.packet_id', $packet_id);
		}	
		
		$this->db->join('users', 'users.user_id = packet_offers.offer_owner_id', 'LEFT');
		return $this->db->get('packet_offers');
	}
	
	
	
	
}

?>