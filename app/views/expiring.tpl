<div class='container'>
<h1> Expiring </h1>
  <script>


$(document).ready(function() 
    { 
        $('#results_table').tablesorter(); 
    } 
); 
   
    </script>

<table  id='results_table' class='tablesorter'>
                        <thead>
                        <tr>
                        <th> Provider id </th>
                        <th> Type </th>
                        <th> Name </th>
                        <th> Expiration </th>
                        <th> Type </th>
                        </tr>
                        </thead>
                        <tbody>
                
{foreach from=$results item=result_array}

<tr id='$result_array.id' class=''>
	<td> {$result_array.Provider_id} </td>
	<td> {$result_array.data_type} </td>
	<td><a href='/ORM/{$result_array.data_type}/{$result_array.id}'> {$result_array.name}</a> </td>
	<td> {$result_array.expire_date} </td>
	<td> {$result_array.type} </td>
</tr>
{/foreach}

</table>
</div>
