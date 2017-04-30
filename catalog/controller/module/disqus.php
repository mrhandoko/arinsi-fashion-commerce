<?php
class ControllerModuleDisqus extends Controller {
	public function index($setting) {
  
    if (!empty($setting['shortname'])) {
    
      $this->load->language('module/disqus');
    
      $data['text_comments'] = $this->language->get('text_comments'); 
		
      $data['shortname'] = $setting['shortname'];
      $data['auto_load'] = $setting['auto_load'];
      
      if (!$setting['auto_config']) {
      
        $data['url'] = $setting['url'];
        $data['identifier'] = $setting['identifier'];
        $data['title'] = $setting['title'];
      
      } else {
      
        if ($this->config->get('config_seo_url')) {
        
          // Decode URL
      		if (isset($this->request->get['_route_'])) {
      			$parts = explode('/', $this->request->get['_route_']);
      
      			// remove any empty arrays from trailing
      			if (utf8_strlen(end($parts)) == 0) {
      				array_pop($parts);
      			}
      			
      			$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "url_alias WHERE keyword = '" . $this->db->escape(end($parts)) . "'");
      
      			if ($query->num_rows) {
      				$data['identifier'] = $query->row['query'];
      			}
      			
      		}
			   
		    }
        
        if (empty($data['identifier'])) {
        
          if (isset($this->request->get['route'])) {
  			   $route = $this->request->get['route'];
  		    } else {
  			   $route = 'common/home';
  		    }
          
          $data['identifier'] = $route;
          
          if (!empty($this->request->get['information_id']) && ($route=="information/information")) $data['identifier'] = "information_id=".$this->request->get['information_id'];          
          if (!empty($this->request->get['path']) && ($route=="information/category")) {
            $paths = explode('_', $this->request->get['path']);
            $data['identifier'] = "information_category_id=". end($paths);
          }
          
          //oc compatible code start
          
          if (!empty($this->request->get['product_id']) && ($route=="product/product")) $data['identifier'] = "product_id=".$this->request->get['product_id'];          
          if (!empty($this->request->get['manufacturer_id']) && ($route=="product/manufacturer/info")) $data['identifier'] = "manufacturer_id=".$this->request->get['manufacturer_id'];
          if (!empty($this->request->get['path']) && ($route=="product/category")) {
            $paths = explode('_', $this->request->get['path']);
            $data['identifier'] = "category_id=". end($paths);
          }
          
          //oc compatible code end
        
        }
          
      }
  
  		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/disqus.tpl')) {
  			return $this->load->view($this->config->get('config_template') . '/template/module/disqus.tpl', $data);
  		} else {
  			return $this->load->view('default/template/module/disqus.tpl', $data);
  		}
    
    }
	}
}