<?php

class DocumentsController extends BaseController {


	

	public function action_notify()
	{

		
		$result_json = $_POST['transloadit'];
		$result = json_decode($result_json);

		$Doc = new Document();
		$Doc->imageurl = $result['results']['thumb'][0]['ssl_url'];
		$Doc->documenturl = $result['results'][':original'][0]['ssl_url'];
		$Doc->doctor_id = 55555555;
		$Doc->filename = 'upload_test';
		$Doc->container = 'upload_test';
		$Doc->token = 'upload_test';

		$Doc->save();
		
		return("<pre>". var_export($_POST['transloadit']) ."</pre>");


		//just tell transloadit that we are good...
		return Response::make('', 200);

	}


	public function action_docform(){

		$this->view_data['doctor_name'] = 'Fred Trotter';
		$this->view_data['doctor_id'] = 1;

		$base_url = URL::base();
		$auth = Config::get('transloadit_authkey');
		$template_id = Config::get('transloadit_template_id');

		$trans_params = array(
    			'auth' => array('key' => $auth),
    			'template_id' => $template_id,
    			'redirect_url' => $base_url . '/index.php/documents/notify/'
);

		$trans_params_html = htmlentities(json_encode($trans_params));


		$this->view_data['trans_params'] = $trans_params_html;

		return($this->_render('documents_docform'));


	}
}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */
