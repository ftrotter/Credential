
<h1>Template Variables</h1>

<table>
<tr>
	<td> Username</td>
	<td> {$displayName} </td>
</tr>

<tr>
	<td> Copyright</td>
	<td> {$copyright} </td>
</tr>

<tr>
	<td> Title</td>
	<td> {$title} </td>
</tr>

<tr>
	<td> Base URL </td>
	<td> {$base_url} </td>
</tr>
</table>

<h1> Menu </h1>
<ul>
{foreach from=$menu item=menu_item}
	<li><a href='{$menu_item.url}'>{$menu_item.name} </a> </li>
{/foreach}
</ul>
