<?php 
class ControllerModuleBonfire extends Controller {
	private $error = array();
	
	public function index() {
		$this->load->language('module/bonfire');
		
		$this->document->setTitle($this->language->get('heading_title'));
		
		$this->load->model('setting/setting'); 
		
		$this->document->addStyle('view/stylesheet/colorpicker.css');
		$this->document->addStyle('view/stylesheet/bonfire.css');
		$this->document->addScript('view/javascript/jquery/colorpicker.js');
		
		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
			$this->model_setting_setting->editSetting('bonfire', $this->request->post);		
			
			$this->session->data['success'] = $this->language->get('text_success');
						
			$this->redirect($this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'));
		}
		
		$this->data['text_enabled'] = $this->language->get('text_enabled');
		$this->data['text_disabled'] = $this->language->get('text_disabled');
		
		$this->data['button_save'] = $this->language->get('button_save');
		$this->data['button_cancel'] = $this->language->get('button_cancel');
		$this->data['button_add_module'] = $this->language->get('button_add_module');
		$this->data['button_remove'] = $this->language->get('button_remove');
		
		$this->data['text_image_manager'] = $this->language->get('text_image_manager');
 		$this->data['text_browse'] = $this->language->get('text_browse');
		
		$this->data['token'] = $this->session->data['token'];

 		if (isset($this->error['warning'])) {
			$this->data['error_warning'] = $this->error['warning'];
		} else {
			$this->data['error_warning'] = '';
		}
		
		if (isset($this->error['code'])) {
			$this->data['error_code'] = $this->error['code'];
		} else {
			$this->data['error_code'] = '';
		}

				
		$this->data['heading_title'] = $this->language->get('heading_title');
		$this->data['breadcrumbs'] = array();
		
		$this->data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('text_home'),
			'href'      => $this->url->link('common/home', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => false
   		);

   		$this->data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('text_module'),
			'href'      => $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => ' :: '
   		);
		
   		$this->data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('heading_title'),
			'href'      => $this->url->link('module/bonfire', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => ' :: '
   		);
		
		$this->data['action'] = $this->url->link('module/bonfire', 'token=' . $this->session->data['token'], 'SSL');
		
		$this->data['cancel'] = $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL');
		
		if (isset($this->request->post['bonfire'])) {
			$this->data['bonfire'] = $this->request->post['bonfire'];
		} else {
			$this->data['bonfire'] = $this->config->get('bonfire');
		}	
				
		$this->load->model('design/layout');
		
		$this->data['layouts'] = $this->model_design_layout->getLayouts();
		
		$this->load->model('localisation/language');
		
		$this->data['languages'] = $this->model_localisation_language->getLanguages();
		
		$this->template = 'module/bonfire.tpl';
		$this->children = array(
			'common/header',
			'common/footer'
		);
				
		$this->response->setOutput($this->render());
		
	}
	
	private function validate() {
		if (!$this->user->hasPermission('modify', 'module/bonfire')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}
		
		if (!$this->request->post['bonfire']) {
			$this->error['code'] = $this->language->get('error_code');
		}
		
		if (!$this->error) {
			return true;
		} else {
			return false;
		}	
	}
	
} 

?>