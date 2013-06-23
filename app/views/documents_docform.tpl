

<h2>Upload other documents for {$doctor_name}</h2>
<form id="DocumentForm" action="http://api2.transloadit.com/assemblies" enctype="multipart/form-data" method="POST">
<input type="hidden" name="params" value="{$trans_params}" />
<input type="file" name="my_file" />
<input type='hidden' name='doctor_id' value='{$doctor_id}' />
<input type="submit" value="Upload">
</form>

