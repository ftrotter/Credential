<div class='container'>
<h1> {$npi} {$sql_file}</h1>

<form method='POST' action='/doctors?npi={$npi}'>
 <button type='submit' class='btn btn-primary'>Save changes</button>
	<ul>
	{foreach from=$results key=loop item=sub_array}
		{foreach from=$sub_array key=field item=value}
		<li>
		Field: {$field} <br>
		Value: {$value} <br>
		<input type='text' name='{$field}' value='{$value}'>
		</li>
		{/foreach}
	{/foreach}
	</ul>
 <button type='submit' class='btn btn-primary'>Save changes</button>
</form>

</div>
