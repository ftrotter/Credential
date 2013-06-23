

<h1> Download Credentialing form for {$npi} </h1>
<form action='http://fff.ft1.us/fff/initPDF.php' method='POST'>

	{foreach from=$fields key=k item=v}
		<input type='hidden' name='{$k}' id='{$k}' value='{$v}'>
	{/foreach}

	<input type='submit' name='submit' value='Generate PDF'>
	
</form>


