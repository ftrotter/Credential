<?php

class DoctorsController extends BaseController {


	public $restful = true;


	public function get_expiring(){
	

	$datetime = strtotime("+2 years");
	$mysqldate = date("m/d/y g:i A", $datetime);

	$mysqldate = "2013-09-05 00:00:00";
		$sql = "
(SELECT 
`id`,
`Provider_id`,
`name`,
`expire_date`,
'Identifier' as data_type
FROM  `Identifiers` 
WHERE  `expire_date` <  '$mysqldate'

) 

UNION ALL

(
SELECT  
`id`,
`Provider_id` ,  
`coverage_name` AS name,  
`expire_date` ,  'Insurancecoverage' as data_type
FROM  `Insurancecoverages` 
WHERE  `expire_date` <  '$mysqldate'

)

UNION ALL

(
SELECT  
`id`,
`Provider_id` ,  
`select_name` AS name,  
`expire_date` , 
 'Document' as data_type
FROM  `Documents` 
WHERE  `expire_date` <  '$mysqldate'
)

UNION ALL 

(
SELECT  
`id`,
`Provider_id` ,  
`name`,  
`expire_date` , 
 'ProviderLicense' as data_type
FROM  `ProviderLicenses` 
WHERE  `expire_date` <  '$mysqldate'
)

ORDER BY `expire_date`

";
	

		$results = DB::select($sql);

		$result_array = array();
		foreach($results as $result_obj){
			$tmp = array();
			$tmp['id'] = $result_obj->id;
			$tmp['Provider_id'] = $result_obj->Provider_id;
			$tmp['name'] = $result_obj->name;
			$tmp['data_type'] = $result_obj->data_type;
			$tmp['expire_date'] = $result_obj->expire_date;
			$result_array[] = $tmp;
		}
		

		$this->view_data['results'] = $result_array;


		return($this->_render("expiring"));


		//Things that expire:
		//ProviderLicense
		//Document
		//InsuranceCoverage
		//Identifier

			


	}

	public function get_index()
	{	


		if(isset($_GET['npi'])){
			//load the NPI back...
			$npi = $_GET['npi'];
                	if(is_numeric($npi) && strlen($npi) == 10){
				$Doctor = new Doctor();
                        	$doc_id = (int) $npi;
             	           	$Doctor->sync($doc_id); //use it to load the current record
				$this->view_data = $Doctor->data_array;
                        	$this->view_data['npi'] = $npi;
			}

		}


		return($this->_render('pdfmapper_index'));
	}

	public function post_index(){

		if(
				!isset($_POST['npi']) ||
				!isset($_POST['name_first']) ||
				!isset($_POST['name_last']) 
		){

			echo "I really need to have at least npi, name_first and name_last to make a record... try again";
			exit();

		}


		$npi = $_POST['npi']; //get my id from the post	
		if(is_numeric($npi) && strlen($npi) == 10){
			$Doctor = new Doctor();
			$doc_id = (int) $npi;
			$Doctor->sync($doc_id); //use it to load the current record
			$Doctor->data_array =$_POST; //smash the input ontop 
			$Doctor->sync($doc_id); //save it.

			$this->view_data['npi'] = $npi;

			return($this->_render('pdfmapper_index_post'));
		}else{

			echo "we require a 10 digit numerical NPI to work";
			exit();
		}
	
	}

	public function get_list(){

		$Doctor = new Doctor();
		$DoctorList = $Doctor->get_all();
		
		$select_array = array();
		foreach($DoctorList as $id => $doc_array){

			
			$select_array[$doc_array['npi']] = array(
				'first_name' => $doc_array['name_first'],
				'last_name' => $doc_array['name_last'],
					);
		}	

		$this->view_data['list'] = $select_array;

		return($this->_render('doctors_list'));
		

	}

	public function get_dash(){
	
                if(isset($_GET['npi'])){
                        //load the NPI back...
                        $npi = $_GET['npi'];
                        if(is_numeric($npi) && strlen($npi) == 10){
                                $Doctor = new Doctor();
                                $doc_id = (int) $npi;
                                $Doctor->sync($doc_id); //use it to load the current record
                                $this->view_data = $Doctor->data_array;
                                $this->view_data['npi'] = $npi;
                        }

                }else{
			echo "how did you get to the doctor dashboard without an npi";	
			exit();
		}

		return($this->_render('doctors_dash'));

	}


}
