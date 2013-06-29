<?php


	$password = mysql_real_escape_string(getInput("give me root password, I will only use it to do db dumps... promise:"));

#Get the structure of everything using the -d flag


$big_one = "mysqldump -d -u root -p$password cred > cred_structure.sql";
#Get the contents of the following tables
run_sql($big_one);



run_sql("mysqldump -u root -p$password cred Medicalboards > Medicalboards.sql");
run_sql("mysqldump -u root -p$password cred Carriers > Carriers.sql");
run_sql("mysqldump -u root -p$password cred EducationInstitutions > EducationInstitutions.sql");
run_sql("mysqldump -u root -p$password cred EducationLevels > EducationLevels.sql");
run_sql("mysqldump -u root -p$password cred Ethniccodes > Ethniccodes.sql");
run_sql("mysqldump -u root -p$password cred Genders > Genders.sql");
run_sql("mysqldump -u root -p$password cred Specialitys > Specialitys.sql");
run_sql("mysqldump -u root -p$password cred Languages > Languages.sql");
run_sql("mysqldump -u root -p$password cred Licensecodes > Licensecodes.sql");
run_sql("mysqldump -u root -p$password cred CredentialOrganizations > CredentialOrganizations.sql");
run_sql("mysqldump -u root -p$password cred Licensecodes > Licensecodes.sql");
run_sql("mysqldump -u root -p$password cred Hospitals > Hospitals.sql");
run_sql("mysqldump -u root -p$password cred Medicalboards > Medicalboards.sql");
run_sql("mysqldump -u root -p$password cred Notetypes > Notetypes.sql");
run_sql("mysqldump -u root -p$password cred Panels > Panels.sql");
run_sql("mysqldump -u root -p$password cred Patientacceptcodes > Patientacceptcodes.sql");
run_sql("mysqldump -u root -p$password cred Phonecoveragecodes > Phonecoveragecodes.sql");
run_sql("mysqldump -u root -p$password cred Privileges > Privileges.sql");
run_sql("mysqldump -u root -p$password cred Professioncodes > Professioncodes.sql");
run_sql("mysqldump -u root -p$password cred Servicecodes > Servicecodes.sql");
run_sql("mysqldump -u root -p$password cred Specialitys > Specialitys.sql");
run_sql("mysqldump -u root -p$password cred Countrys > Countrys.sql");

function run_sql($sql){
	echo "running $sql\n";
	exec($sql,$output, $return_var);
	if(count($output) > 0){
		echo "returned: \n";
		var_export($output);

	}
}


function getInput($msg){
  fwrite(STDOUT, "$msg: ");
  $varin = trim(fgets(STDIN));
  return $varin;
}

?>
