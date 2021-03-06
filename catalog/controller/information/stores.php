<?php 
class ControllerInformationStores extends Controller {
    private $error = array(); 
	    
    public function index() {
        $this->language->load('information/stores');
        $this->load->model('catalog/information');
    	$this->document->setTitle($this->language->get('heading_title'));  
        //$arrInformations = $this->model_catalog_information->getInformations();
        $arrInformations = $this->model_catalog_information->getAllIdInformations();
       // print '<pre>'.print_r($arrInformations,true).'</pre>';
        foreach($arrInformations as $information){
            if($information['title'] == 'TIENDAS' || $information['title'] == 'STORES'){
                $informationId = $information['information_id'];
                break;
            }
        }
        
        if($informationId){
            $arrInfoContacto = $this->model_catalog_information->getInformation($informationId);
            if($arrInfoContacto != ''){
                $this->data['description'] = html_entity_decode($arrInfoContacto['description'], ENT_QUOTES, 'UTF-8');
            }
            //print '<pre>'.print_r($arrInfoContacto,true).'</pre>';
        }
        
      	$this->data['breadcrumbs'] = array();

      	$this->data['breadcrumbs'][] = array(
        	'text'      => $this->language->get('text_home'),
			'href'      => $this->url->link('common/home'),        	
        	'separator' => false
      	);

      	$this->data['breadcrumbs'][] = array(
        	'text'      => $this->language->get('heading_title'),
			'href'      => $this->url->link('information/contact'),
        	'separator' => $this->language->get('text_separator')
      	);	
			
    	$this->data['heading_title'] = $this->language->get('heading_title');

    	$this->data['text_location'] = $this->language->get('text_location');
		$this->data['text_contact'] = $this->language->get('text_contact');
		$this->data['text_address'] = $this->language->get('text_address');
    	$this->data['text_telephone'] = $this->language->get('text_telephone');
    	$this->data['text_fax'] = $this->language->get('text_fax');
    	$this->data['text_button'] = $this->language->get('text_button');

    	$this->data['entry_name'] = $this->language->get('entry_name');
    	$this->data['entry_email'] = $this->language->get('entry_email');
    	$this->data['entry_enquiry'] = $this->language->get('entry_enquiry');
		$this->data['entry_captcha'] = $this->language->get('entry_captcha');

//		if (isset($this->error['name'])) {
//    		$this->data['error_name'] = $this->error['name'];
//		} else {
//			$this->data['error_name'] = '';
//		}
//		
//		if (isset($this->error['email'])) {
//			$this->data['error_email'] = $this->error['email'];
//		} else {
//			$this->data['error_email'] = '';
//		}		
//		
//		if (isset($this->error['enquiry'])) {
//			$this->data['error_enquiry'] = $this->error['enquiry'];
//		} else {
//			$this->data['error_enquiry'] = '';
//		}		
//		
// 		if (isset($this->error['captcha'])) {
//			$this->data['error_captcha'] = $this->error['captcha'];
//		} else {
//			$this->data['error_captcha'] = '';
//		}	

    	$this->data['button_continue'] = $this->language->get('button_continue');
    
		$this->data['action'] = $this->url->link('information/contact');
		$this->data['store'] = $this->config->get('config_name');
    	$this->data['address'] = nl2br($this->config->get('config_address'));
    	$this->data['telephone'] = $this->config->get('config_telephone');
    	$this->data['fax'] = $this->config->get('config_fax');
    	
		if (isset($this->request->post['name'])) {
			$this->data['name'] = $this->request->post['name'];
		} else {
			$this->data['name'] = $this->customer->getFirstName();
		}

		if (isset($this->request->post['email'])) {
			$this->data['email'] = $this->request->post['email'];
		} else {
			$this->data['email'] = $this->customer->getEmail();
		}
		
		if (isset($this->request->post['enquiry'])) {
			$this->data['enquiry'] = $this->request->post['enquiry'];
		} else {
			$this->data['enquiry'] = '';
		}
		
		if (isset($this->request->post['captcha'])) {
			$this->data['captcha'] = $this->request->post['captcha'];
		} else {
			$this->data['captcha'] = '';
		}		

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/information/stores.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/information/stores.tpl';
		} else {
			$this->template = 'default/template/information/contact.tpl';
		}
		
		$this->children = array(
			'common/column_left',
			'common/column_right',
			'common/content_top',
			'common/content_bottom',
			'common/footer',
			'common/header'
		);
				
 		$this->response->setOutput($this->render());		
  	}
}
?>
