<?php

	$old_db = "ipa_dbo_backup";

	$database_config = require "../config/database.php";
	$mysql = $database_config['connections']['mysql'];

	mysql_connect($mysql['host'],$mysql['username'],$mysql['password']);

	mysql_select_db($mysql['database']);	


	$read_query = "SELECT * FROM $old_db.hospitals";

	$result = mysql_query($read_query) or die("No hospitals for you $read_query \n".mysql_error());

	$city_id_array = array();

	while($row = mysql_fetch_assoc($result)){


  $HospitalID = $row['HospitalID'];
  $HospitalName = mysql_real_escape_string($row['HospitalName']);
  $HospitalStreet1 = mysql_real_escape_string($row['HospitalStreet1']); 
  $HospitalStreet2 = mysql_real_escape_string($row['HospitalStreet2']);
  $HospitalCity = $row['HospitalCity'];
  $HospitalState = $row['HospitalState'];
  $HospitalZip = $row['HospitalZip'];
  $HospitalPlus = $row['HospitalPlus'];
  $HospitalCounty = $row['HospitalCounty'];
  $HospitalPhone = $row['HospitalPhone'];

	
		if(!isset($city_id_array[$HospitalCity])){

		$new_city_sql = "INSERT INTO  `cred`.`Citys` (
`id` ,
`name` ,
`created_by_User_id` ,
`modified_by_User_id` ,
`created_at` ,
`updated_at`
)
VALUES (
NULL ,  '$HospitalCity',  '0',  '0',  NOW(),  NOW()
);";

			mysql_query($new_city_sql) or die("no new city for you");
			$city_id = mysql_insert_id();
			$city_id_array[$HospitalCity] = $city_id;
	
		}else{
			$city_id = $city_id_array[$HospitalCity];	
		}

		$texas_state_id = 44;

		$new_address_sql = "
INSERT INTO `cred`.`Addresss` 
(`id`, `name`, `line1`, `line2`, `zip`, `State_id`, `City_id`, `County_id`, 
`Country_id`, `created_by_User_id`, `modified_by_User_id`, `created_at`, `updated_at`) 
VALUES 
(NULL, 'import ($HospitalName)', 
'$HospitalStreet1', 
'$HospitalStreet2', 
'$HospitalZip', 
'$texas_state_id', 
'1', '0', '1', '0', '0', NOW(), NOW());
";
		
		mysql_query($new_address_sql) or die("no address for you! \n $new_address_sql \n".mysql_error());
		$address_id = mysql_insert_id();

		$new_phone_sql = "
INSERT INTO `cred`.`Phones` (`id`, `name`, `phone`, `created_by_User_id`, `modified_by_User_id`, `created_at`, `updated_at`) 
VALUES (NULL, 
'import ($HospitalName)', 
'$HospitalPhone', 
'0', '0', NOW(), NOW());
";

		mysql_query($new_phone_sql) or die("no phone for you!");
		$phone_id = mysql_insert_id();

		$new_hospital_sql = "
INSERT INTO `cred`.`Hospitals` (`id`, `name`, `Address_id`, `Phone_id`, `created_by_User_id`, `modified_by_User_id`, `created_at`, `updated_at`) VALUES 
(NULL, '$HospitalName', '$address_id', '$phone_id', '0', '0', NOW(), NOW());
";

		mysql_query($new_hospital_sql) or die("no new hospital for you");

	}


?>
