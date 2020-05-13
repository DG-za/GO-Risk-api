<?php

class SaveProcessStep_model extends CI_Model
{
	public function Save_Data($insertArray)
	{
		$result = $this->db->insert("`risk_process_step`", $insertArray);
		return $this->db->insert_id();
	}

	public function Update_Data($saveArray, $id)
	{
		$this->db->where('id', $id);
		$this->db->update('risk_process_step', $saveArray);
		return true;
	}
}
