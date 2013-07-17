<h1> Compile from SQL to Mongo for {$npi} </h1>
<ul>
{foreach from=$reports item=this_report}
<li>
	<a href='/compile/practiceform/{$npi}/{$this_report}/'>{$this_report}</a> 
</li>

{/foreach}
</ul>
