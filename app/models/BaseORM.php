<?php 
//This is the base class for the ORM

//	namespace App\Models;

	class BaseORM extends Eloquent{ //which extends Eloquent...


		//we need to override the core ORM functions to be aware of the true/false
		//to 1/0 translation...

		public static function create(array $attributes){

			$attributes = BaseORM::fix_dates($attributes);

			return(parent::create($attributes));			

		}

		public function fill(array $attributes){

			$attributes = BaseORM::fix_dates($attributes);
		
			return(parent::fill($attributes));

		}


		static function fix_dates($input){

			if(count($input) == 0){
				return($input);
			}

			foreach($input as $field_name => $contents){

				if(BaseORM::detect_date($field_name)){	
					$input[$field_name] = date('Y-m-d',strtotime($contents));
				}
			}

			return($input);
		}


		static function detect_date($field_name){
			return(strpos($field_name,'_date'));
		}

		static function detect_id($field_name){
			return(preg_match('/_id$/',$field_name));
		}

		static function detect_is($field_name){

			$return_me = 	((       strpos($field_name,'is_') !== false ||
                                        	strpos($field_name,'_is') !== false
                                	) &&
                                	strpos($field_name,'_issue') === false

                                	);

			return($return_me);


		}



		static function listObjectTypes(){

			$class_list = array();

			if ($handle = opendir(dirname(__FILE__))) {
    				while (false !== ($entry = readdir($handle))) {
        				if ($entry != "." && $entry != "..") {
        			    		if(
							strpos($entry,'Base') && 
							//exludes BaseORM which is what we want..
							//because it starts with 'Base' so this returns 0
							//which is evaluated to false...
							!strpos($entry,'swp') && 
							//also exclude swp files from vim...
							strpos($entry,'php')
							//we only want php files..
							){
							$class_array = explode('Base',$entry);
							$class_name = array_shift($class_array);
							$class_list[] = $class_name;	
						}
        				}
    				}
    				closedir($handle);

			}

			return($class_list);

		}

		


		function get_field_types(){

			$sql = 'show columns from '. $this->table;
			$fields = DB::select($sql);

			$return_me = array();
			foreach($fields as  $this_field){
				$return_me[$this_field->Field] = $this_field->Type;
			}

			return($return_me);

		}


		function get_fields(){ 
			//why is DB reflection not in Laravel 3? hmmmph..

			$sql = 'show columns from '. $this->table;
			$fields = DB::select($sql);

			$return_me = array();
			foreach($fields as  $this_field){
				$return_me[] = $this_field->Field;
			}

			return($return_me);

		}


		function getMyNameField(){
			$fields = $this->get_field_types();	

			$best_field = null;
			foreach($fields as $field_name => $field_type){
				//we want a VARCHAR or CHAR with a _name in it
				if(strpos($field_name,'name') !== false && strpos(strtolower($field_type),'char')){
					$the_field = $field_name;
				}
				//but if the select_name is set.. well then obviously 
				//we want to choose that one over all the others...
				if(strpos($field_name,'select_name') !== false && strpos(strtolower($field_type),'char')){
					$best_field = $field_name;
				}

			}

			if(!isset($the_field)){
			/*	
				echo "Error, each object must have at least one _name field, but $this->table does not have one.  here is what I got..<br><pre>";
				var_export($fields);
				echo "</pre>";
				exit();
			*/
			return false;
			}

			if(!is_null($best_field)){
				$the_field = $best_field; //lets upgrade to the select_name
			}

			return($the_field);

		}

		function getSelectArray(){

			//OK lets load every instance of this class
			$this_class_name = get_class($this);
			$all_of_us = $this_class_name::all();

			$my_name_field = $this->getMyNameField();
			if($my_name_field){ //this is the simple case...
			
				$return_array = array();
				//and loop over them creating an array of ids => select name...
				foreach($all_of_us as $one_of_us){
					$return_array[$one_of_us->id] = $one_of_us->$my_name_field;
				}

				return($return_array);
			}else{
				//this shoudld be a join table
				//to qualify as a join table...
				//this table has to have ids that all link
				//to other tables with names...
			
			//	var_export($all_of_us->toArray());
				echo "Dynamic selection of join tables is not supported";
				exit();
	
			}
		}




		function getAlpacaJSON(){
				
			return json_encode($this->getAlpacaArray(),JSON_PRETTY_PRINT | JSON_UNESCAPED_SLASHES);

		}

		//This function returns a JSON form definition ala the Alpaca project
		//for this object. This function is smart enough to get the 
		// '_names' fields from related objects to power select drop downs...
		//but for now its all stubbed out...
		function getAlpacaArray(){
	
		$class_name = get_class($this);
	
		$form_array = array ();
		$properties_array = array();
		$fields_array = array();
		$data_array = array();

		$table_saved_data = $this->toArray(); 
		
		$fields = $this->get_fields();
		$table_data = array();
		foreach($fields as $field_name){
			//I cannot remember why I chose to not be case sensitive here
			//but it fucks everything up... 
			$lower_case_field_name = strtolower($field_name);
			if(isset($table_saved_data[$lower_case_field_name])){
				$table_data[$field_name] = $table_saved_data[$lower_case_field_name]; 
			}else{
				$table_data[$field_name] = null; 
			}

			if(isset($table_saved_data[$field_name])){
				$table_data[$field_name] = $table_saved_data[$field_name]; 
			}else{
				$table_data[$field_name] = null; 
			}

			

			
		}
		
		$hidden_values = array(
				'id',
				strtolower('createdAt'),
				strtolower('created_at'),
				strtolower('updatedAt'),	
				strtolower('updated_at'),	
				strtolower('created_by_User_id'),
				strtolower('modified_by_User_id'),
		);

		
		$data_check = array();

		foreach($table_data as $field_name => $current_value){


			$extra_prop = array();
			$extra_opt = array();

			$hidden = false;

			$type = 'string';
			$format = 'string';
			$required = false;

			$label_array = explode('_',$field_name);
			$label = ucwords(implode(' ',$label_array));


			if(in_array(strtolower($field_name),$hidden_values)){
				//then you cannot edit this...
				$extra_opt = array(
					'hidden' => true,
					);
				
				if(is_null($current_value)){
					$data_array[$field_name] = '0'; //this is currently ignored :(
				//https://github.com/gitana/alpaca/issues/57	
				}
				$hidden = true;	
			}

			if(BaseORM::detect_is($field_name)){ //this is a boolean and should have a checkbox 
				$type = 'boolean'; 


				$extra_opt = array("rightLabel"=> "$label?");
				$label_array = explode(' ',$label);
				if(isset($label_array[1])){
					$label = $label_array[1]; //loose the "Is" in the main label..
				}else{

					echo "Error: $label did not properly split for $field_name";
					exit();

				}
				if(is_null($current_value))	{
					$data_array[$field_name] = false;
				}else{
					// we need to translate between the db world of 0/1 to json true/false
					if($current_value){
						$data_array[$field_name] = true;
					}else{
						$data_array[$field_name] = false;
					}
							
				}
			}


			if(BaseORM::detect_date($field_name)){
				$type = 'string'; 
				$format = 'date';
				
				if(is_null($current_value)){
					$data_array[$field_name] = '01/01/2001';
				}else{
					$this_date = strtotime($current_value);
					$data_array[$field_name] = date('m/d/Y',$this_date);	
				}
			}

       		  //hidden means that it is one of the ids that do not show on the form
	          //like create_by_User_id etc
		      if(BaseORM::detect_id($field_name) && !$hidden){
				//lets loose the "ID" for the label..
				$data_check[$field_name] = $current_value;
				array_pop($label_array);
				$label = ucwords(implode(' ',$label_array));

				$type = 'text'; //counter intuitive... it should be 'select'
				if(!is_null($current_value)){
					//we will always be using intetgers underneath
					//we cast here to ensure proper JSON generation...
					$extra_prop['default'] = (int) $current_value;
					$data_array[$field_name] = (int) $current_value;
				}


				$field_name_array = explode('_',$field_name);
				$throw_away_the_id = array_pop($field_name_array);
				$object_name = array_pop($field_name_array);

				if(!class_exists($object_name)){
					die("There is no class $object_name which I got from $field_name");
				}

				$newObject = new $object_name();
				
				$select_array = $newObject->getSelectArray();

				$enum = array();
				$optionLabels = array();
				foreach($select_array as $id => $option_string){
					$enum[] = $id;
					if(true){
						$optionLabels[] = $option_string . " ($id)";
					}else{
						$optionLabels[] = $option_string;
					}
				}	

				$extra_prop['enum'] = $enum;
				$extra_opt = array(
					'type' => 'select',
					'multiple' => false,
				);
				$extra_opt['optionLabels'] = $optionLabels;
			}


			$tmp_prop_array = array(	
				'type' => $type,
				'format' => $format,
				'required' => $required,
				'title' => $label
			);

			$tmp_prop_array = array_merge($tmp_prop_array,$extra_prop);

			$tmp_opt_array = array(
				'label' => $label,
				
			);

			$tmp_opt_array = array_merge($extra_opt,$tmp_opt_array);

			//lets load our previous data!!
			if(!is_null($current_value) && !isset($data_array[$field_name])){
				$data_array[$field_name] = $current_value;
			}

			$properties_array[$field_name] = $tmp_prop_array;
			$fields_array[$field_name] = $tmp_opt_array;
		}

		$empty_json_object = json_decode ("{}"); //what hack!!
			//http://stackoverflow.com/questions/8595627/best-way-to-create-an-empty-object-in-json-with-php

		$form_array['data'] = $data_array;
		$form_array['schema']['properties'] = $properties_array;
		$form_array['options']['fields'] = $fields_array;
		$form_array['options']['renderForm'] = true; //required to get the submit button to appear...
		$form_array['options']['form'] = array(
			'attributes' => array(
				'method' => 'post'
				),
			'buttons' => array(
				'submit' => $empty_json_object
				),

			);

		//var_export($data_check);
		return($form_array);


		}
	}

?>
