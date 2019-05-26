<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Riwayat extends CI_Controller
{
	public function __construct()
	{
		parent::__construct();

		if (!$this->session->userdata('email')) {
			redirect('auth');
		}

	}



	public function index()
	{
		// $data['content'] = 'admin/riwayat/list'; 
		$data['title'] = 'Daftar Riwayat';
		$data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')]) -> row_array();
		$user = $this->session->userdata('email');
		$this->load->library('session');
	
		$this->load->library('form_validation');
		 $this->load->database();
		 $this->load->model(array('Riwayat_model'));

		$data['dataRiwayat'] = $this->Riwayat_model->daftarRiwayat();
		$data['dataHasil'] = $this->Riwayat_model->daftarHasil();
		
		$this->load->view('templates/header', $data);
		$this->load->view('templates/sidebar', $data);
		$this->load->view('templates/topbar', $data);
		$this->load->view('admin/listriwayat', $data);
		$this->load->view('templates/footer', $data);
	}


}