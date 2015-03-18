<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class contactus1 extends CI_Controller 
{
    public function view(){
    $this->load->view('backend/header'); 
    }
   
    public function website_insert()
    { 
        $data["page"]="website_view";
		$this->load->view('template',$data);   

       }
   public function website_insertsubmit()
    {
        
        $name=$this->input->post('name');
        $status=$this->input->post('status');
        $json=$this->input->post('json');
        $email=$this->input->post('email');
        $data['msg']=$this->website_model->create($name,$status,$json,$email); //insert values

        if($data['msg']==1)
        {

        $data["alertsuccess"]="Submitted Successfully!!!";
        $data["page"]="website_view";
		$this->load->view('template',$data);   
////		$this->load->view('backend/contact_view',$data);  //to display view after delete
       }
       else
        {
		     $data["page"]="website_view";
		$this->load->view('template',$data); 
//            $this->load->view('backend/website_view',$data); 
        }
	}
     public function viewall()
    {     
         $this->load->view('backend/header');
        $data['msg']=$this->website_model->create($name,$status,$json,$email);  //Select query
		$this->load->view('backend/website_view');
         //$this->load->view('backend/table');  
    }
    public function tableview() 
    {     
      //  $this->load->view( 'template', $data );	
         $this->load->view('backend/header');
         $data['msg']=$this->website_model->selectall1();  //Select query
         $this->load->view('backend/Table',$data);  
    }
    public function delete()
	{
        $id=$this->input->get('id');
        $this->website_model->delete($id);//Delete values
//        $data['msg']=$this->website_model->selectall1();//Select query
//		$this->load->view('backend/Table',$data);//To again display after delete
        $data['redirect']="contactus1/tableview";
			$this->load->view("redirect",$data);
	} 
    public function update_view()
    {
//    $this->load->view('backend/header');
     $name=$this->input->post('name');
    $id=$this->input->post('id');
      echo " status".$status=$this->input->post('status');
       $json=$this->input->post('json');
      $email=$this->input->post('email');
      $this->website_model->update($id,$name,$status,$json,$email); 
       // $data['redirect']="contactus1/tableview";
			//$this->load->view("redirect",$data);
       redirect('/contactus1/tableview', 'location', 301);
    }
        public function update()
    {  
          $id=$this->input->get('id');  
            $this->load->view('backend/header');
      $data['inbox']=$this->website_model->select($id);
            echo "dbfj";
     $this->load->view('backend/update',$data); 
                  
    }
}