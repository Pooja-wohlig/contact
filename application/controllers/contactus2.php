<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class contactus2 extends CI_Controller 
{
    public function insert()
    {   
        $data["page"]="contact_view";
		$this->load->view('template',$data); 
	}
    public function insertsubmit()
    {
         $website=$this->input->post('website');
        $name=$this->input->post('name');   
        $email=$this->input->post('email');
        $phone=$this->input->post('phone');
        $query=$this->input->post('query');
        $subject=$this->input->post('subject');
        $json=$this->input->post('json');
        $data['msg']=$this->contact_model->create($website,$name,$email,$phone,$query,$subject,$json); //insert values
        if($data['msg']!=0)
        {

        	$data["alertsuccess"]="Submitted Successfully!!!";
        	$data["page"]="contact_view";
			$this->load->view('template',$data);   
       }
       else
        {
		    $data["page"]="contact_view";
		   $data["alerterror"]="Value was not submitted !!!";
			$this->load->view('template',$data); 
        }
	}
     public function viewall() 
    {     
         
        $data['msg']=$this->contact_model->create($website,$name,$email,$phone,$query,$subject,$json);  //Select query
        $data["alertsuccess"]="Submitted Successfully!!!";
        $data["page"]="contact_view";
		$this->load->view('template',$data);
         //$this->load->view('backend/table');  
    }
    public function tableview() 
    {     
         $this->load->view('backend/header');
         $data['msg']=$this->contact_model->selectall();  //Select query
         $this->load->view('backend/table2',$data);  
    }   
    public function delete()
	{
        $id=$this->input->get('id');
        $this->contact_model->delete($id);//Delete values
//        $data['msg']=$this->website_model->selectall1();//Select query
//		$this->load->view('backend/Table',$data);//To again display after delete
        $data['redirect']="contactus2/tableview";
			$this->load->view("redirect",$data);
	} 
    public function update2_view()
    {
        
        $website=$this->input->post('website');
        $id=$this->input->post('id');
        $name=$this->input->post('name');
        $email=$this->input->post('email');
        $phone=$this->input->post('phone');
        $query=$this->input->post('query');
        $subject=$this->input->post('subject');
        $json=$this->input->post('json');
      $this->contact_model->update($id,$website,$name,$email,$phone,$query,$subject,$json); 
        redirect('contactus2/tableview', 'location', 301);
    }
        public function update()
    {  
        $id=$this->input->get('id');    
         $this->load->view('backend/header');
      $data['inbox']=$this->contact_model->select($id);
//            echo "dbfj";
     $this->load->view('backend/update2',$data); 
                  
    }
}