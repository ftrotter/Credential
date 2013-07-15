<div class='container'>
<h2>Upload documents for</h2>
<form id="DocumentForm" action="{$post_url}" enctype="multipart/form-data" method="POST">
<input type="hidden" name="params" value="{$trans_params}" />

    <div class="control-group">
      <label class="control-label">Which provider?</label>

      <div class="controls">
        <select name='provider_id'>
{foreach from=$provider_list key=id item=select_name}
	<option value='{$id}' {if $id eq $provider_id} selected {/if}>{$select_name}</option>
{/foreach}
        </select>
      </div>
    </div>

    <div class="control-group">
      <label class="control-label">Which document type?</label>

      <div class="controls">
        <select name='document_type'>
{foreach from=$document_type key=id item=select_name}
	<option value='{$id}'>{$select_name}</option>
{/foreach}
        </select>
      </div>
    </div>

    <div class="control-group">
      <div class="controls">
        <div class="control-group">
          <label class="control-label" for='select_name'>Document Name</label>

          <div class="controls">
            <input type="text" name='select_name' id='select_name'>
          </div>
        </div>
      </div>
    </div>

    <div class="control-group">
      <label class="control-label" for='expire_date'>Expiration Date</label>

      <div class="controls">
        <input type="date" name='expire_date' id='expire_date'>
      </div>
    </div>

    <div class="control-group">
      <label class="control-label" for='my_file'>Upload your file:</label>
      <div class="controls">
        <input type="file" name='my_file' id='my_file'>
      </div>
    </div>
    <div class="control-group">
      <div class="controls">
        <input type="submit" name='submit' id='submit'>
      </div>

  </div>
</form>
</div>
