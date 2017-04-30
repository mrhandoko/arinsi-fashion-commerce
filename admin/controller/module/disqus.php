<?php
class ControllerModuleDisqus extends Controller {
	private $error = array();

	public function index() {
		$this->load->language('module/disqus');

		$this->document->setTitle($this->language->get('heading_title'));

		$this->load->model('extension/module');

		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
			if (!isset($this->request->get['module_id'])) {
				$this->model_extension_module->addModule('disqus', $this->request->post);
			} else {
				$this->model_extension_module->editModule($this->request->get['module_id'], $this->request->post);
			}
			
			$this->session->data['success'] = $this->language->get('text_success');

			$this->response->redirect($this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'));
		}

		$data['heading_title'] = $this->language->get('heading_title');
		
		$data['text_edit'] = $this->language->get('text_edit');
		$data['text_enabled'] = $this->language->get('text_enabled');
		$data['text_disabled'] = $this->language->get('text_disabled');
		
		$data['entry_name'] = $this->language->get('entry_name');
    $data['entry_shortname'] = $this->language->get('entry_shortname');
    $data['entry_identifier'] = $this->language->get('entry_identifier');
    $data['entry_url'] = $this->language->get('entry_url');
    $data['entry_title'] = $this->language->get('entry_title');
    $data['entry_auto_load'] = $this->language->get('entry_auto_load');
    $data['entry_auto_config'] = $this->language->get('entry_auto_config');
    $data['entry_status'] = $this->language->get('entry_status');
    
    $data['help_auto_config'] = $this->language->get('help_auto_config');
    $data['help_auto_load'] = $this->language->get('help_auto_load');
    $data['help_shortname'] = $this->language->get('help_shortname');
    $data['help_identifier'] = $this->language->get('help_identifier');
    $data['help_url'] = $this->language->get('help_url');
    $data['help_title'] = $this->language->get('help_title');

		$data['button_save'] = $this->language->get('button_save');
		$data['button_cancel'] = $this->language->get('button_cancel');

		if (isset($this->error['warning'])) {
			$data['error_warning'] = $this->error['warning'];
		} else {
			$data['error_warning'] = '';
		}
		
		if (isset($this->error['name'])) {
			$data['error_name'] = $this->error['name'];
		} else {
			$data['error_name'] = '';
		}
    
    if (isset($this->error['shortname'])) {
			$data['error_shortname'] = $this->error['shortname'];
		} else {
			$data['error_shortname'] = '';
		}

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/dashboard', 'token=' . $this->session->data['token'], 'SSL')
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_module'),
			'href' => $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL')
		);


		if (!isset($this->request->get['module_id'])) {
			$data['breadcrumbs'][] = array(
				'text' => $this->language->get('heading_title'),
				'href' => $this->url->link('module/disqus', 'token=' . $this->session->data['token'], 'SSL')
			);
		} else {
			$data['breadcrumbs'][] = array(
				'text' => $this->language->get('heading_title'),
				'href' => $this->url->link('module/disqus', 'token=' . $this->session->data['token'] . '&module_id=' . $this->request->get['module_id'], 'SSL')
			);			
		}

		if (!isset($this->request->get['module_id'])) {
			$data['action'] = $this->url->link('module/disqus', 'token=' . $this->session->data['token'], 'SSL');
		} else {
			$data['action'] = $this->url->link('module/disqus', 'token=' . $this->session->data['token'] . '&module_id=' . $this->request->get['module_id'], 'SSL');
		}

		$data['cancel'] = $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL');
		
		if (isset($this->request->get['module_id']) && ($this->request->server['REQUEST_METHOD'] != 'POST')) {
			$module_info = $this->model_extension_module->getModule($this->request->get['module_id']);
		}
		
		if (isset($this->request->post['name'])) {
			$data['name'] = $this->request->post['name'];
		} elseif (!empty($module_info)) {
			$data['name'] = $module_info['name'];
		} else {
			$data['name'] = '';
		}
    
    if (isset($this->request->post['shortname'])) {
			$data['shortname'] = $this->request->post['shortname'];
		} elseif (!empty($module_info)) {
			$data['shortname'] = $module_info['shortname'];
		} else {
			$data['shortname'] = '';
		}
    
    if (isset($this->request->post['identifier'])) {
			$data['identifier'] = $this->request->post['identifier'];
		} elseif (!empty($module_info)) {
			$data['identifier'] = $module_info['identifier'];
		} else {
			$data['identifier'] = '';
		}
    
    if (isset($this->request->post['url'])) {
			$data['url'] = $this->request->post['url'];
		} elseif (!empty($module_info)) {
			$data['url'] = $module_info['url'];
		} else {
			$data['url'] = '';
		}
    
    if (isset($this->request->post['title'])) {
			$data['title'] = $this->request->post['title'];
		} elseif (!empty($module_info)) {
			$data['title'] = $module_info['title'];
		} else {
			$data['title'] = '';
		}
    
    if (isset($this->request->post['auto_load'])) {
			$data['auto_load'] = $this->request->post['auto_load'];
		} elseif (!empty($module_info)) {
			$data['auto_load'] = $module_info['auto_load'];
		} else {
			$data['auto_load'] = 1;
		}
    
    if (isset($this->request->post['auto_config'])) {
			$data['auto_config'] = $this->request->post['auto_config'];
		} elseif (!empty($module_info)) {
			$data['auto_config'] = $module_info['auto_config'];
		} else {
			$data['auto_config'] = 1;
		}
   	
		if (isset($this->request->post['status'])) {
			$data['status'] = $this->request->post['status'];
		} elseif (!empty($module_info)) {
			$data['status'] = $module_info['status'];
		} else {
			$data['status'] = '';
		}
		
		$data['header'] = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['footer'] = $this->load->controller('common/footer');

		$this->response->setOutput($this->load->view('module/disqus.tpl', $data));
	}

	protected function validate() {
		if (!$this->user->hasPermission('modify', 'module/disqus')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}
		
		if ((utf8_strlen($this->request->post['name']) < 3) || (utf8_strlen($this->request->post['name']) > 64)) {
			$this->error['name'] = $this->language->get('error_name');
		}
    
    if (utf8_strlen($this->request->post['shortname']) < 1) {
			$this->error['shortname'] = $this->language->get('error_shortname');
		}

		return !$this->error;
	}
}
