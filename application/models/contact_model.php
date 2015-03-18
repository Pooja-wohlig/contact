
<?php
if ( !defined( 'BASEPATH' ) )
	exit( 'No direct script access allowed' );
class contact_model extends CI_Model
{
	public function create($website,$name,$email,$phone,$query,$subject,$json)
	{
		$data  = array(
            'website' =>$website,
			'name' => $name,
             'email' =>$email,
            'phone' => $phone,
            'query' =>$query,
           'subject' =>$subject,
           'json' =>$json,
		);
		$query=$this->db->insert( 'contactus', $data );
		$id=$this->db->insert_id();
		
		if(!$query)
			return  0;
		else
			return  $id;
	}
    function selectall()
    {  
        $data=$this->db->query("SELECT * FROM `contactus`")->result();
         return $data;
    }
      function select($id)
    {
        $data=$this->db->query("SELECT `id`,`website`,`name`,`email`,`phone`,`query`,`subject`,`json` FROM `contactus` WHERE `id`='$id'")->row();
         return $data;
    }
     function delete($id)
    {
        $data=$this->db->query("DELETE FROM `contactus` WHERE `id`='$id'");
         return $data;
    }
  
    function update($id,$website,$name,$email,$phone,$query,$subject,$json)
   {
     $query=$this->db->query(" UPDATE `contactus`   SET  `website`='$website',`name`='$name',`email`='$email',`phone`='$phone',`query`='$query',`subject`='$subject',`json`='$json' WHERE `id`='$id' "); 
//        echo "query".$query;
    return  1;
   }
}
?>