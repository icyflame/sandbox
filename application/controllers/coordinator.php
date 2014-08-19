<?php
class Coordinator extends CI_Controller{
	public function __construct(){
		parent::__construct();
		$this->load->library('session');
		$this->load->model('coordinatormodel');
		$this->load->helper('url');
		$this->load->helper('form');
		$this->load->library('form_validation');
		$this->form_validation->set_rules('from','From alumid','required');
		$this->form_validation->set_rules('to','To alumid','required');
		$this->form_validation->set_rules('member','Member name','required');

	}
	
	private function accessCheck(){
		$privilege = $this->session->userdata('privilege');
		if($privilege=='2'){
			return "True";
		}

	}

	public function index(){
		if($this->accessCheck()){
			$data['memberList'] = $this->coordinatormodel->getMembers();
			$notifications = $this->coordinatormodel->numberOfNotifications();
			$this->session->set_userdata('notifications',$notifications);
			$this->load->model('membermodel');
			$data['years'] = $this->membermodel->getYearList();
			$this->load->view('templates/header',$data);
			$this->load->view('templates/menu');
			$this->load->view('coordinators/home',$data);
			
			
			$data['msg'] = "";
			$this->load->view('coordinators/networkingSummary',$data);
			
			$this->load->view('templates/footer');
		}else{
			$this->load->view('templates/accessErr');
		}

	}
	public function viewAs($name){
		if($this->accessCheck()){
		$username = $this->coordinatormodel->usernameFromName($name);
		$this->session->set_userdata('alias',$username);
		redirect('/member/index','refresh:2');
	}else{
					$this->load->view('templates/accessErr');

	}
}
public function viewAsSelf(){

	$this->session->unset_userdata('alias');
	redirect('/coordinator/index','refresh:2');
	echo "You are being redirected back";
}
public function assignWork(){
	if($this->accessCheck()){
	if ($this->form_validation->run() == FALSE)
		{	
			$data['fromid'] = $this->coordinatormodel->getUnassignedAlum();
			$data['toid'] = $this->coordinatormodel->getUnassignedAlum();
			$data['members'] = $this->coordinatormodel->getMembers();
			$data['msg'] = "";
			$this->load->view('templates/header');
			$this->load->view('templates/menu');
			$this->load->view('coordinators/assignWork',$data);
			
		}
		else
		{	
			$from = $this->input->post('from');
			$to = $this->input->post('to');
			if($to<$from){
				$data["msg"] = "The To Id can not be smaller than the From Id";
				$data['fromid'] = $this->coordinatormodel->getUnassignedAlum();
				$data['toid'] = $data['fromid'];
				$data['members'] = $this->coordinatormodel->getMembers();
				$this->load->view('templates/header');
				$this->load->view('templates/menu');
				$this->load->view('coordinators/assignWork',$data);
				$this->load->view('templates/footer');
			}else{
				$member = $this->input->post('member');
				
					if($this->coordinatormodel->assignWork($from,$to,$member)=="success"){
						header('Refresh:2, url="assignWork"');
						echo "Work assigned. You are being redirected back";
					}else{
						header('Refresh:2, url="assignWork"');
						echo "Unable to assign work, you are being redirected back";

					}
				
			}
		}
	
}else{
					$this->load->view('templates/accessErr');

	}
}
public function getNotifications(){
	if($this->accessCheck()){
		$data['result'] = $this->coordinatormodel->getNotifications();
		$this->load->view('templates/header');
		$this->load->view('templates/menu');
		$this->load->view('templates/dummyCoordinator',$data);
		$this->load->view('templates/footer');
	}else{
		$this->load->view('templates/accessErr');
		
	}

}

public function showVerifyPayment(){
	if($this->accessCheck()){
		$data['data'] = $this->coordinatormodel->showVerifyPayment();
		$this->load->view('templates/header');
		$this->load->view('templates/menu');
		$this->load->view('coordinators/verifyPayment',$data);
		$this->load->view('templates/footer');
		
		}else{
			$this->load->view('templates/accessErr');
		}
	}

public function showVerifyRegistration(){
	if($this->accessCheck()){
		$data['data'] = $this->coordinatormodel->showVerifyRegistration();
		$this->load->view('templates/header');
		$this->load->view('templates/menu');
		$this->load->view('coordinators/verifyRegistration',$data);
		$this->load->view('templates/footer');

		}else{
			$this->load->view('templates/accessErr');
		}
	}

public function verifyRegistration($alumid){
	if($this->coordinatormodel->verifyRegistration($alumid)=="success")
		echo "success";
	
}

public function verifyPayment($alumid){
	if($this->coordinatormodel->verifyPayment($alumid)=="success")
		echo "success";
}
public function getNetworkingSummary($year){
	if($data =  $this->coordinatormodel->getNetworkingSummary($year))
		echo json_encode($data);

}

public function notificationStatus(){

	$id = $this->input->get('id');
	$this->session->set_userdata('notifications',$this->session->userdata('notifications')-1) ;

	$this->coordinatormodel->updateNotificationStatus($id);
	
}

public function registerMember(){
	if($this->accessCheck()){
		$data['data'] = $this->coordinatormodel->getUnregistered();
		$this->load->view('templates/header');
		$this->load->view('templates/menu');
		$this->load->view('coordinators/registerMember',$data);
		$this->load->view('templates/footer');
	}else{
		$this->load->view('template/accessErr');
	}

}
public function confirmRegister(){

	
	$id = $this->input->post('userid');
	$this->db->where('userid',$id);
	$this->db->update('users',array('privilege'=>1));
	$url = $_SERVER['HTTP_REFERER'];
	header("Refresh:2, url='".$url."'");
	echo  "Member Registered. You are being redirected back";

}
}


?>