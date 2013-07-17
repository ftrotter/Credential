<h1> The list of compiled forms </h1>
<ul>
	{foreach from=$list key=npi item=doc_array}
	<li>		
		<a href='/doctors/dash/?npi={$npi}'>{$npi}</a> {$doc_array.first_name} {$doc_array.last_name}
	</li>
	{/foreach}
</ul>
<h1> The list of providers available for compile </h1>
<ul>
	{foreach from=$data_list key=npi item=doc_array}
	<li>		
		<a href='/compile/dashboard/{$npi}/'>{$npi}</a> {$doc_array.first_name} {$doc_array.last_name}
	</li>
	{/foreach}
</ul>
