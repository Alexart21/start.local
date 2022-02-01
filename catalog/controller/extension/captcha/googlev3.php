<?php

class ControllerExtensionCaptchaGoogleV3 extends Controller {

	public function index($error = array()) {

		$data = [];

		$this->load->language('extension/captcha/googlev3');

		if (isset($error['captcha'])) {
			$data['error_captcha'] = $error['captcha'];
		} else {
			$data['error_captcha'] = '';
		}

		$data['site_key'] = $this->config->get('captcha_googlev3_key');
		$data['hide_mode'] = $this->config->get('captcha_googlev3_hide');
		$data['route'] = $this->request->get['route'];
		$data['action'] = '';

		$parts = explode('/', $this->request->get['route']);
		foreach ($parts as $part) {
			$data['action'] .= ucfirst(str_replace('_', '', $part));
		}

		return $this->load->view('extension/captcha/googlev3', $data);
	}

	public function validate() {

		if (empty($this->session->data['gcapchav3'])) {
			$this->load->language('extension/captcha/googlev3');

			if (!isset($this->request->post['g-recaptchav3-response']) || empty($this->request->post['g-recaptchav3-response'])) {
				return $this->language->get('error_captcha');
			}

			// Build POST request:
			$recaptcha_url = 'https://www.google.com/recaptcha/api/siteverify';

			// Make and decode POST request:
			$response = file_get_contents($recaptcha_url . '?secret=' . urlencode($this->config->get('captcha_googlev3_secret')) . '&response=' . $this->request->post['g-recaptchav3-response'] . '&remoteip=' . $this->request->server['REMOTE_ADDR']);
			$responseKeys = json_decode($response, true);

			// Take action based on the score returned:

			if ($responseKeys['success']) {
				// Verified
				$this->session->data['gcapchav3'] = true;
			} else {
				// Not verified
				return $this->language->get('error_captcha');
			}
		}
	}

}
