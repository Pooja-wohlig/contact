
<?php
if ( !defined( 'BASEPATH' ) )
	exit( 'No direct script access allowed' );
class website_model extends CI_Model
{
	public function create($name,$status,$json,$email)
	{
		$data  = array(
			'name' => $name,
			'status' => $status,
            'json' =>$json,
            'email' =>$email
		);
		$query=$this->db->insert( 'website', $data );
	//	$id=$this->db->insert_id();
		if(!$query)
			return  0;
		else
			return  1;
	}
    function selectall1()
    {  
        $data=$this->db->query("SELECT * FROM `website`")->result();
         return $data;
    }
      function select($id)
    {
        $data=$this->db->query("SELECT `name`,`status`,`json`,`email`,`id` FROM `website` WHERE `id`='$id'")->row();
         return $data;
    }
     function delete($id)
    {
        $data=$this->db->query("DELETE FROM `website` WHERE `id`='$id'");
         return $data;
    }
  
    function update($id,$name,$status,$json,$email)
   {
     $query=$this->db->query(" UPDATE `website` SET  `name`='$name',`status`='$status',`json`='$json',`email`='$email' WHERE `id`='$id' "); 
//   echo "query".$query;
    return  1;
   }
}
?>