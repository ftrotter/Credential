<h1> {$name_first}, {$name_last} {$npi} Dashboard </h1>
<ul>
		<ul>
		<li>
			<a href='/doctors/?npi={$npi}'>Edit {$npi}</a> 
		</li>
		<li>
			<a href='/ORM/Document/new?npi={$npi}'>Add document for {$npi}</a> 
		</li>
		</ul>
		<ul>
		{foreach from=$doctors_list key=id item=document_array}
			
			<li> <a href='/ORM/Document/{$id}/'>{$document_array.select_name} </a> </li>	

		{/foreach}
		</ul>
</ul>
