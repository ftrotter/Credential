<?php
	require_once('npi_functions.php');
	

	class Provider extends  ProviderBase{ 
		//put custom code here... look in the base class for generated relations..
		

		static public function create(array $attributes){
		
			Provider::check_attributes_for_npi($attributes);
			
                        $npi = (int) $attributes['npi'];
			$attributes['id'] = $npi; //lets always use the npi as the id!!
			return(parent::create($attributes));	
		}


		static function check_attributes_for_npi(array $attributes){
                        if(!isset($attributes['npi'])){
                                echo "I must have an npi. Try again.";
                                die();
                        }

                        $npi = (int) $attributes['npi'];
                        if(!is_valid_npi($npi,false,true)){
                                echo "This is not a valid NPI";
                                die();
                        }


		}


	}

?>
