<?php

if ( !defined('GOOGLEV3_VERSION') ) {
	define('GOOGLEV3_VERSION', '1.0.0.1');
}

class ControllerExtensionCaptchaGoogleV3 extends Controller {
	private $error = array();

	public function index() {
		$this->load->language('extension/captcha/googlev3');

		$this->document->setTitle($this->language->get('heading_title'));

		$this->load->model('setting/setting');

		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
			$this->model_setting_setting->editSetting('captcha_googlev3', $this->request->post);

			$this->session->data['success'] = $this->language->get('text_success');

			$this->response->redirect($this->url->link('marketplace/extension', 'user_token=' . $this->session->data['user_token'] . '&type=captcha', true));
		}

		if (isset($this->error['warning'])) {
			$data['error_warning'] = $this->error['warning'];
		} else {
			$data['error_warning'] = '';
		}

		if (isset($this->error['key'])) {
			$data['error_key'] = $this->error['key'];
		} else {
			$data['error_key'] = '';
		}

		if (isset($this->error['secret'])) {
			$data['error_secret'] = $this->error['secret'];
		} else {
			$data['error_secret'] = '';
		}

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/dashboard', 'user_token=' . $this->session->data['user_token'], true)
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_extension'),
			'href' => $this->url->link('marketplace/extension', 'user_token=' . $this->session->data['user_token'] . '&type=captcha', true)
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('heading_title'),
			'href' => $this->url->link('extension/captcha/googlev3', 'user_token=' . $this->session->data['user_token'], true)
		);

		$data['action'] = $this->url->link('extension/captcha/googlev3', 'user_token=' . $this->session->data['user_token'], true);

		$data['cancel'] = $this->url->link('marketplace/extension', 'user_token=' . $this->session->data['user_token'] . '&type=captcha', true);

		if (isset($this->request->post['captcha_googlev3_key'])) {
			$data['captcha_googlev3_key'] = $this->request->post['captcha_googlev3_key'];
		} else {
			$data['captcha_googlev3_key'] = $this->config->get('captcha_googlev3_key');
		}

		if (isset($this->request->post['captcha_googlev3_secret'])) {
			$data['captcha_googlev3_secret'] = $this->request->post['captcha_googlev3_secret'];
		} else {
			$data['captcha_googlev3_secret'] = $this->config->get('captcha_googlev3_secret');
		}

		if (isset($this->request->post['captcha_googlev3_status'])) {
			$data['captcha_googlev3_status'] = $this->request->post['captcha_googlev3_status'];
		} else {
			$data['captcha_googlev3_status'] = $this->config->get('captcha_googlev3_status');
		}
		
		if (isset($this->request->post['captcha_googlev3_hide'])) {
			$data['captcha_googlev3_hide'] = $this->request->post['captcha_googlev3_hide'];
		} else {
			$data['captcha_googlev3_hide'] = $this->config->get('captcha_googlev3_hide');
		}

		$data['app_version'] = GOOGLEV3_VERSION;

		$data['header'] = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['footer'] = $this->load->controller('common/footer');

		$this->response->setOutput($this->load->view('extension/captcha/googlev3', $data));
	}

	protected function validate() {
		if (!$this->user->hasPermission('modify', 'extension/captcha/googlev3')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}

		if (!$this->request->post['captcha_googlev3_key']) {
			$this->error['key'] = $this->language->get('error_key');
		}

		if (!$this->request->post['captcha_googlev3_secret']) {
			$this->error['secret'] = $this->language->get('error_secret');
		}

		return !$this->error;
	}
}
