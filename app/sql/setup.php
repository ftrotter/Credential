<?php

	$old_db = "ipa_dbo_backup";

	$database_config = require "../config/database.php";
	$mysql = $database_config['connections']['mysql'];

	mysql_connect($mysql['host'],$mysql['username'],$mysql['password']);

	$new_db = $mysql['database'];
	mysql_select_db($new_db);	


	$state_sql = "SELECT * FROM States ";
	$results = mysql_query($state_sql) or die("No refresh states");
	$states_array = array();
	while($row = mysql_fetch_assoc($results)){
		$states_array[$row['state_abbr']] = $row['id'];
	}

        $city_sql = "SELECT * FROM Citys ";
        $results = mysql_query($city_sql) or die("No refresh citys");
        $citys_array = array();
        while($row = mysql_fetch_assoc($results)){
                $citys_array[$row['name']] = $row['id'];
        }


?>
