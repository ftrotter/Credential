<?php



	$core_sql = "
FROM `Providers`
LEFT JOIN ProviderPractices ON ProviderPractices.Provider_id = Providers.id
LEFT JOIN Practices ON ProviderPractices.Practice_id = Practices.id
LEFT JOIN ProviderStates ON Providers.ProviderState_id = ProviderStates.id
LEFT JOIN Genders ON Gender_id = Genders.id
LEFT JOIN Addresss AS Birth_Addresss ON Birth_Address_id = Birth_Addresss.id
LEFT JOIN States AS Birth_States ON Birth_Addresss.State_id = Birth_States.id
LEFT JOIN Addresss AS Home_Addresss ON Home_Address_id = Home_Addresss.id
LEFT JOIN States AS Home_States ON Home_Addresss.State_id = Home_States.id
LEFT JOIN Citys AS Home_Citys ON Home_Addresss.City_id = Home_States.id
LEFT JOIN Countys AS Home_Countys ON Home_Addresss.County_id = Home_States.id
LEFT JOIN Countrys AS Home_Countrys ON Home_Addresss.Country_id = Home_States.id
LEFT JOIN Addresss AS Corr_Addresss ON Corr_Address_id = Corr_Addresss.id
LEFT JOIN States AS Corr_States ON Corr_Addresss.State_id = Corr_States.id
LEFT JOIN Citys AS Corr_Citys ON Corr_Addresss.State_id = Corr_Citys.id
LEFT JOIN Countys AS Corr_Countys ON Corr_Addresss.State_id = Corr_Countys.id
LEFT JOIN Countrys AS Corr_Countrys ON Corr_Addresss.Country_id = Corr_Countrys.id
LEFT JOIN Addresss AS Provider_Addresss ON Address_id = Provider_Addresss.id
LEFT JOIN States AS Provider_States ON Provider_Addresss.State_id = Provider_States.id
LEFT JOIN Citys AS Provider_Citys ON Provider_Addresss.City_id = Provider_Citys.id
LEFT JOIN Countys AS Provider_Countys ON Provider_Addresss.County_id = Provider_Countys.id
LEFT JOIN Countrys AS Provider_Countrys ON Provider_Addresss.Country_id = Provider_Countrys.id
LEFT JOIN Phones AS Corr_Phones ON Corr_Phone_id = Corr_Phones.id
LEFT JOIN Phones AS Corr_Fax_Phones ON Corr_Fax_Phone_id = Corr_Fax_Phones.id
LEFT JOIN Phones AS Provider_Phones ON Phone_id = Provider_Phones.id
LEFT JOIN Phones AS Provider_Fax_Phones ON Fax_Phone_id = Provider_Fax_Phones.id
LEFT JOIN CredentialOrganizations ON CredentialOrganization_id  = CredentialOrganizations.id
LEFT JOIN Servicecodes ON Servicecodes.id = Servicecode_id
LEFT JOIN Providers AS non_Providers_0 ON non_physician_0_Provider_id = non_Providers_0.id
LEFT JOIN Providers AS non_Providers_1 ON non_physician_1_Provider_id = non_Providers_1.id
LEFT JOIN Providers AS non_Providers_2 ON non_physician_2_Provider_id = non_Providers_2.id
LEFT JOIN Providers AS non_Providers_3 ON non_physician_3_Provider_id = non_Providers_3.id
LEFT JOIN Providers AS non_Providers_4 ON non_physician_4_Provider_id = non_Providers_4.id
LEFT JOIN Providers AS non_Providers_5 ON non_physician_5_Provider_id = non_Providers_5.id
LEFT JOIN Languages AS Provider_0_Languages ON Provider_0_Language_id = Provider_0_Languages.id
LEFT JOIN Languages AS Provider_1_Languages ON Provider_1_Language_id = Provider_1_Languages.id
LEFT JOIN Languages AS Provider_2_Languages ON Provider_2_Language_id = Provider_2_Languages.id
LEFT JOIN Languages AS Staff_0_Languages ON Staff_0_Language_id = Staff_0_Languages.id
LEFT JOIN Languages AS Staff_1_Languages ON Staff_1_Language_id = Staff_1_Languages.id
LEFT JOIN Languages AS Staff_2_Languages ON Staff_2_Language_id = Staff_2_Languages.id
";




	if(isset($_POST['fields'])){

		$fields = $_POST['fields'];
		echo "<pre>";
		echo "\nSELECT \n";
		$comma = "\n";	
		foreach($fields as $a_field){
			echo "$comma $a_field";
			$comma = ",\n";
		}
		echo "\n$core_sql\n";
		echo "</pre>";


	}else{


	// CONNECT TO THE DATABASE
	$DB_NAME = 'cred';
	$DB_HOST = 'localhost';
	$DB_USER = 'root';
	$DB_PASS = 'password';
	
	$mysqli = new mysqli($DB_HOST, $DB_USER, $DB_PASS, $DB_NAME);
	
	if (mysqli_connect_errno()) {
		printf("Connect failed: %s\n", mysqli_connect_error());
		exit();
	}

// A QUICK QUERY ON A FAKE USER TABLE
	$query = "
SELECT *
$core_sql
";

	$result = $mysqli->query($query) or die($mysqli->error.__LINE__);

// GOING THROUGH THE DATA
	$html = "<html><head></head><body><form method='POST'><h1>Choose wisely</h1><ul>";

	$ignore_these_endings = array(
		'updated_at',
		'created_at',
		'created_by_user_id',
		'modified_by_user_id',
		'_id'

	);

	if($result->num_rows > 0) {
		$row = $result->fetch_fields(); 
		$fields = array();
		foreach($row as $val){
			if(!isset($fields[$val->name])){
				$fields[$val->name] = 1;
			}else{
				$fields[$val->name]++;
			}
		}

		foreach($row as $val){

			$ignore = false;

			if(strcmp($val->name,'id') == 0){
				$ignore = true;
			}

			foreach($ignore_these_endings as $an_ending){
				if(preg_match("/$an_ending$/",strtolower($val->name))){
					//then this is meta_data...
					$ignore = true;
				}
			}

			if(!$ignore){
				if($fields[$val->name] > 1){
					$field_text = $val->table .".".$val->name ." AS ".$val->table. "_".$val->name;
				}else{
					$field_text = $val->table .".".$val->name;
				}
				//lets just always use "AS"...
				$field_text = $val->table .".".$val->name ." AS ".$val->table. "_".$val->name;
	
				$html .= "<li> <input 	type='checkbox' 
							name='fields[]' 
							value='$field_text'
							checked > 
							$field_text </li>";

			}
		}

	}
	else {
		echo 'NO RESULTS';	
	}
	

	$html .= "</ul><input type='submit'></form></body></html>";

// CLOSE CONNECTION
	mysqli_close($mysqli);

	echo $html;
	}
?>
