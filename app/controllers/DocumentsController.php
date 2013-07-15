<?php

class DocumentsController extends BaseController {

	public function action_notify()
	{

		if(Input::has('transloadit')){
			$result_json = Input::get('transloadit');
		}else{
			echo "<pre>";
			var_export(Input::all());
			echo "</pre>";
			exit();
		}
		
		$result = json_decode($result_json);

//		$Doc = new Document();
//		$Doc->imageurl = $result['results']['thumb'][0]['ssl_url'];
//		$Doc->documenturl = $result['results'][':original'][0]['ssl_url'];
//		$Doc->doctor_id = 55555555;
//		$Doc->filename = 'upload_test';
//		$Doc->container = 'upload_test';
//		$Doc->token = 'upload_test';

//		$Doc->save();
		
		return("<pre>". var_export(Input::get('transloadit'),true) ."</pre>");

		//just tell transloadit that we are good...
//		return Response::make('', 200);

	}


	public function action_docform(){

	 	if(Input::has('provider_id')){
			$this->view_data['provider_id'] = Input::get('provider_id');
		}else{
			$this->view_data['provider_id'] = -1;
		}

		//here we get all the doctors...

		
		$provider_array = Provider::all()->toArray();
		$provider_flat = array();
		foreach($provider_array as $id => $provider_stuff){
			$provider_flat[$provider_stuff['id']] = $provider_stuff['select_name'];
		}

		$document_type_array = DocumentType::all()->toArray();
		$document_type_flat = array();
		foreach($document_type_array as $id => $doc_stuff){
			$document_type_flat[$doc_stuff['id']] = $doc_stuff['name'];
		}



		$this->view_data['provider_list'] = $provider_flat;
		$this->view_data['document_type'] = $document_type_flat;

		$notify_url = URL::action('DocumentsController@action_notify');
		$this->view_data['post_url'] = $notify_url;
		$auth = Config::get('app.transloadit_authkey');
		$template_id = Config::get('app.transloadit_template_id');

		$trans_params = array(
    			'auth' => array('key' => $auth),
    			'template_id' => $template_id,
);

		$trans_params_html = htmlentities(json_encode($trans_params));


		$this->view_data['trans_params'] = $trans_params_html;

		return($this->_render('documents_docform'));


	}
}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */
