
<div class='container'>
<h1>{$report_name} </h1>
<a href='/REPORTCSV/{$view_name}'>download report as csv</a>
<table  id='results_table' class='tablesorter'>
<thead>
<tr>
	{foreach from=$labels item=this_label}
		<th>{$this_label}</th>
	{/foreach}
</tr>
</thead>
{foreach from=$data item=this_data_array}
<tr>
	{foreach from=$this_data_array item=this_data}
		<td>{$this_data}</td>
	{/foreach}
</tr>
{/foreach}
</table>
</div>

<script type="text/javascript">
        $('#results_table').tablesorter(); 
    </script>


