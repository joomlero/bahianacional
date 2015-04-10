<?php  
class ControllerModuleBanner extends Controller {
	protected function index($setting) {
		static $module = 0;
		
		$this->load->model('design/banner');
		$this->load->model('tool/image');
                $this->data['banners'] = array();
                $results = $this->model_design_banner->getBanner($setting['banner_id']);
                foreach ($results as $result) {
                    if (file_exists(DIR_IMAGE . $result['image'])) {
                        $this->data['banners'][] = array(
                                'title' => $result['title'],
                                'link'  => $result['link'],
                                'width'  => $setting['width'],
                                'height'  => $setting['height'],
                                'image' => $this->model_tool_image->resize($result['image'], $setting['width'], $setting['height'])
                        );
                    }
                }
                if($setting['banner_id'] == 14){//Banner tiendas
                    $this->data['module'] = $module++;
                    if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/banner_store.tpl')) {
                        $this->template = $this->config->get('config_template') . '/template/module/banner_store.tpl';
                    } else {
                        $this->template = 'default/template/module/banner.tpl';
                    }
                } else {
                    $this->document->addScript('catalog/view/javascript/jquery/jquery.cycle.js');
                    $this->data['module'] = $module++;
                    if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/banner.tpl')) {
                        $this->template = $this->config->get('config_template') . '/template/module/banner.tpl';
                    } else {
                        $this->template = 'default/template/module/banner.tpl';
                    }
                }
                //print '<pre>'.print_r($setting,true).'</pre>';
		
		
		$this->render();
	}
}
?>