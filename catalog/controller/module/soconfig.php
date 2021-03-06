<?php  
class ControllerModuleSoconfig extends Controller {
	protected function index($setting) {
		
		$this->data['status'] = $this->config->get('cpanel');
		
		
		if($this->data['status']==1){
			$data_template = $this->cache->get('soconfig.' . (int)$this->config->get('config_language_id'));
			$this->data['data_template'] = $data_template;
			$data_template = false;
			$this->data['data_template'] = false;
			if(!$data_template){
				
				$this->load->model('module/soconfig');
				
				$this->data['bg_images'] = $this->model_soconfig_boss_editorthemes->getBackgrounds();
				
				$this->data['temp_setting_arr'] = $this->model_soconfig_boss_editorthemes->getColorThemes();
				
				$this->data['temp_name_arr'] = $this->model_soconfig_boss_editorthemes->getThemeNames();
				
				$colors_data = $this->data['temp_setting_arr'];
				
				$this->data['colors_data'] = json_encode($colors_data);
				
				if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/soconfig.tpl')) {
					$this->template = $this->config->get('config_template') . '/template/module/soconfig.tpl';
				} else {
					$this->template = 'default/template/module/soconfig.tpl';
				}
				$this->cache->set('soconfig.' . (int)$this->config->get('config_language_id'),$this->render());
				//$this->render(); 
			}else{
				if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/soconfig.tpl')) {
					$this->template = $this->config->get('config_template') . '/template/module/soconfig.tpl';
				} else {
					$this->template = 'default/template/module/soconfig.tpl';
				}
				
				$this->render();
			}
		}else{
			if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/soconfig.tpl')) {
				$this->template = $this->config->get('config_template') . '/template/module/soconfig.tpl';
			} else {
				$this->template = 'default/template/module/soconfig.tpl';
			}
			
			$this->render();
		}
	}
}
?>