<h1> The list of doctors </h1>
<ul>

	{foreach from=$list key=npi item=doc_array}
	<li>		
		<a href='/doctors/dash/?npi={$npi}'>{$npi}</a> {$doc_array.first_name} {$doc_array.last_name}

	</li>
	{/foreach}
</ul>
