<?php

	require_once('setup.php');	
	//gives us the following arrays populated from the database...
	//$citys_array
	//$states_array 

	$id_types_array = array(
	'DEA' => 1,
	'DPS' => 2,
	'PAN' => 3,
	'ProviderNumber' => 4,
	'UPIN' => 5,
	'NPI' => 6,
	'GroupNPI' => 7,
	'Medicare' => 8,
	'Medicaid' => 9,
	'GroupMedicaid' => 10,
	'ECFMG' => 11,
	'GroupMedicare' => 12,
);

	$read_query = "SELECT * FROM $old_db.providercertificates";

	$result = mysql_query($read_query) or die("No certificates for you $read_query \n".mysql_error());

	$DEAnumber = null;
	$DEAIssueDate = null;	
	$DEAExpirationDate = null;
	$DPSnumber = null;
	$DPSIssueDate = null;
	$DPSExpirationDate = null;
	$PAN = null;
	$ProviderNumber  = null;
	$UPIN  = null;
	$NPI = null;
	$GroupNPI = null;
	$MedicareNumber = null;
	$MedicaidNumber = null;
	$GroupMedicaidNumber = null;
	$ECFMGNumber = null;
	$ECFMGIssueDate = null;
	

	while($row = mysql_fetch_assoc($result)){

		foreach($row as $name => $value){
			$$name = $value; //because I am too lazy for individual pulling out...
		}

		if(is_not_bullshit(($DEAnumber))){
			$dea_sql = get_sql($ProviderID,$id_types_array['DEA'],$DEANumber,$DEAIssueDate,$DEAExpirationDate);
			mysql_query($dea_sql) or die("Could not save dea sql $dea_sql".mysql_error());
		}

		if(is_not_bullshit($DPSNumber)){
			$dps_sql = get_sql($ProviderID,$id_types_array['DPS'],$DPSNumber,$DPSIssueDate,$DPSExpirationDate);
			mysql_query($dps_sql) or die("Could not save dea sql $dps_sql".mysql_error());
		}

		if(is_not_bullshit($PAN)){
			$pan_sql = get_sql($ProviderID,$id_types_array['PAN'],$PAN);
			mysql_query($pan_sql) or die("Could not save dea sql $pan_sql".mysql_error());
		}

		if(is_not_bullshit($ProviderNumber)){
			$sql = get_sql($ProviderID,$id_types_array['ProviderNumber'],$ProviderNumber);
			mysql_query($sql) or die("Could not save dea sql $sql".mysql_error());
		}

		if(is_not_bullshit($UPIN)){
			$sql = get_sql($ProviderID,$id_types_array['UPIN'],$UPIN);
			mysql_query($sql) or die("Could not save dea sql $sql".mysql_error());
		}

		if(is_not_bullshit($NPI)){
			$sql = get_sql($ProviderID,$id_types_array['NPI'],$NPI);
			mysql_query($sql) or die("Could not save dea sql $sql".mysql_error());
		}

		if(is_not_bullshit($GroupNPI)){
			$sql = get_sql($ProviderID,$id_types_array['GroupNPI'],$GroupNPI);
			mysql_query($sql) or die("Could not save dea sql $sql".mysql_error());
		}

		if(is_not_bullshit($MedicareNumber)){
			$sql = get_sql($ProviderID,$id_types_array['Medicare'],$MedicareNumber);
			mysql_query($sql) or die("Could not save dea sql $sql".mysql_error());
		}

		if(is_not_bullshit($MedicaidNumber)){
			$sql = get_sql($ProviderID,$id_types_array['Medicaid'],$MedicaidNumber);
			mysql_query($sql) or die("Could not save dea sql $sql".mysql_error());
		}

		if(is_not_bullshit($GroupMedicaidNumber)){
			$sql = get_sql($ProviderID,$id_types_array['GroupMedicaid'],$GroupMedicaidNumber);
			mysql_query($sql) or die("Could not save dea sql $sql".mysql_error());
		}

		if(is_not_bullshit($ECFMGNumber)){
			$sql = get_sql($ProviderID,$id_types_array['ECFMG'],$ECFMGNumber,$ECFMGIssueDate);
			mysql_query($sql) or die("Could not save dea sql $sql".mysql_error());
		}




	}

function is_not_bullshit($id){

	if(is_null($id)){
		return false;
	}

	$bad_ids = array(
		'n/a',
		'pending',
		'no',
		'none',

	);

	foreach($bad_ids as $badone){

		if(strcmp(strtolower($id),$badone) == 0){
			return false;
		}
	}

	return true;

}


function get_sql($provider_id,$id_type,$id,$issue_date = null,$expire_date = null){

		$id = mysql_real_escape_string($id);

		if(is_null($issue_date)){
		
			$issue_date = '0000-00-00 00:00:00';
			$expire_date = '0000-00-00 00:00:00';

		}

		$sql = "
INSERT INTO  `cred`.`Identifiers` (
`id` ,
`Provider_id` ,
`IdentifierType_id` ,
`name` ,
`issue_date` ,
`expire_date` ,
`created_by_User_id` ,
`modified_by_User_id` ,
`created_at` ,
`updated_at`
)
VALUES (
NULL ,  '$provider_id',  '$id_type',  '$id',  '$issue_date',  '$expire_date',  '0',  '0', NOW( ) , NOW( )
);
";

		return($sql);

}



?>
