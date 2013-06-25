<?php

	require_once('setup.php');	
	//gives us the following arrays populated from the database...
	//$citys_array
	//$states_array 

	$read_query = "SELECT * FROM $old_db.medicalboards";

	$result = mysql_query($read_query) or die("No hospitals for you $read_query \n".mysql_error());

	while($row = mysql_fetch_assoc($result)){


  $MedicalBoardID = $row['MedicalBoardID'];
  $MedicalBoardName = mysql_real_escape_string($row['MedicalBoardName']);
  $MedicalBoardStreet1 = mysql_real_escape_string($row['MedicalBoardStreet1']); 
  $MedicalBoardStreet2 = mysql_real_escape_string($row['MedicalBoardStreet2']);
  $MedicalBoardCity = $row['MedicalBoardCity'];
  $MedicalBoardState = $row['MedicalBoardState'];
  $MedicalBoardZip = $row['MedicalBoardZip'];
  $MedicalBoardPlus = $row['MedicalBoardPlus'];
  $MedicalBoardPhone = $row['MedicalBoardPhone'];
  $MedicalBoardFax = $row['MedicalBoardFax'];
  $MedicalBoardWebSite = $row['MedicalBoardWebSite'];
  $MedicalBoardEmail = $row['MedicalBoardEmail'];

		if(is_null($MedicalBoardState)){
			$address_id = 0;
			$phone_id = 0;
			$fax_id = 0;
		}else{
	
		if(!isset($citys_array[$MedicalBoardCity])){

		$new_city_sql = "INSERT INTO  `cred`.`Citys` (
`id` ,
`name` ,
`created_by_User_id` ,
`modified_by_User_id` ,
`created_at` ,
`updated_at`
)
VALUES (
NULL ,  '$MedicalBoardCity',  '0',  '0',  NOW(),  NOW()
);";

			mysql_query($new_city_sql) or die("no new city for you");
			$city_id = mysql_insert_id();
			$citys_array[$MedicalBoardCity] = $city_id;
	
		}else{
			$city_id = $citys_array[$MedicalBoardCity];	
		}


		$state_id = $states_array[$MedicalBoardState];
		$new_address_sql = "
INSERT INTO `cred`.`Addresss` 
(`id`, `name`, `line1`, `line2`, `zip`, `State_id`, `City_id`, `County_id`, 
`Country_id`, `created_by_User_id`, `modified_by_User_id`, `created_at`, `updated_at`) 
VALUES 
(NULL, 'import ($MedicalBoardName)', 
'$MedicalBoardStreet1', 
'$MedicalBoardStreet2', 
'$MedicalBoardZip', 
'$state_id', 
'$city_id', '0', '1', '0', '0', NOW(), NOW());
";
		
		mysql_query($new_address_sql) or die("no address for you! \n $new_address_sql \n".mysql_error());
		$address_id = mysql_insert_id();

		$new_phone_sql = "
INSERT INTO `cred`.`Phones` (`id`, `name`, `phone`, `created_by_User_id`, `modified_by_User_id`, `created_at`, `updated_at`) 
VALUES (NULL, 
'import ($MedicalBoardName)', 
'$MedicalBoardPhone', 
'0', '0', NOW(), NOW());
";

		mysql_query($new_phone_sql) or die("no phone for you!");
		$phone_id = mysql_insert_id();

                $new_fax_sql = "
INSERT INTO `cred`.`Phones` (`id`, `name`, `phone`, `created_by_User_id`, `modified_by_User_id`, `created_at`, `updated_at`)
VALUES (NULL,
'import fax ($MedicalBoardName)',
'$MedicalBoardFax',
'0', '0', NOW(), NOW());
";

                mysql_query($new_fax_sql) or die("no fax for you!");
                $fax_id = mysql_insert_id();


		}//state is not null...
		$new_medicalboard_sql = "
INSERT INTO `Medicalboards` 
(`id`, `name`, `Address_id`, `Phone_id`, `FaxPhone_id`, 
`website`, `email`, `created_by_User_id`, `modified_by_User_id`, `created_at`, `updated_at`) 
VALUES (NULL, 
'$MedicalBoardName', 
'$address_id', 
'$phone_id', 
'$fax_id', 
'$MedicalBoardWebSite', 
'$MedicalBoardEmail', 
'0', '0', NOW(), NOW());
";

		mysql_query($new_medicalboard_sql) or die("no new hospital for you");

	}


?>
