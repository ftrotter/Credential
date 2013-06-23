
    <div class='container-fluid'>
      <div class='row-fluid'>
        <div class='span3'>
          <div class='well sidebar-nav'>
		<ul class='nav nav-list'>
              <li class='nav-header'>Credential Data Menu</li>
<li><a href='#li_ID_1'>ID </a></li><li><a href='#li_address_1'>Address </a></li><li><a href='#li_citizenship_1'>Citizenship </a></li><li><a href='#li_coverage_1'>Coverage </a></li><li><a href='#li_degree_1'>Degree </a></li><li><a href='#li_disclosure_1'>Disclosure </a></li><li><a href='#li_formerhospital_1'>Formerhospital </a></li><li><a href='#li_hospital_1'>Hospital </a></li><li><a href='#li_insurance_1'>Insurance </a></li><li><a href='#li_insurancePrev_1'>InsurancePrev </a></li><li><a href='#li_license_1'>License </a></li><li><a href='#li_managed_1'>Managed </a></li><li><a href='#li_military_1'>Military </a></li><li><a href='#li_name_1'>Name </a></li><li><a href='#li_othergrad_1'>Othergrad </a></li><li><a href='#li_partner_1'>Partner </a></li><li><a href='#li_postgrad_1'>Postgrad </a></li><li><a href='#li_practice_1'>Practice </a></li><li><a href='#li_reference_1'>Reference </a></li><li><a href='#li_signature_1'>Signature </a></li><li><a href='#li_specialty_1'>Specialty </a></li><li><a href='#li_work_1'>Work </a></li><li><a href='#li_workhistory_1'>Workhistory </a></li></ul>
<br>
<h5> Save Form Data</h5>
<p>Current note: {$note} </p>
<textarea name='note' id='note' rows="3"></textarea>
<p> NPI </p>
<input type='text' name='npi' value='{$npi}'>
<br>
<br>
<input type='submit' name='submit' value='Save'>

<h5>Upload other documents</h5>
<form id="DocumentForm" action="http://api2.transloadit.com/assemblies" enctype="multipart/form-data" method="POST">
<input type="hidden" name="params" value="{$trans_params}" />
<input type="file" name="my_file" />
<input type="submit" value="Upload">
</form>


<ul>
{foreach from=$documents key=k item=this_document}
	<li><label>{$this_document.filename}</label>
	<a href='{$this_document.doc_url}'>
		<img width='50' src='{$this_document.img_url}'>
	</a>
	</li>	

{/foreach}
</ul>
          </div><!--/.well -->
        </div><!--/span-->
        <div class='span9'>
		<br><br><br><br><br>
		<ul id='ul_top_1'>
	<li id='li_ID_1'>
<h3> ID </h3><ul id='ul_ID_2'>
	<li id='li_medicare_2'>
<h4> Medicare </h4><ul id='ul_medicare_3'>
	<li id='li_is_3'>
<label> Is </label><label> Participating </label><label> Provider </label><input type='checkbox' name='ID_medicare_is_participating_provider' id='ID_medicare_is_participating_provider' {if $ID_medicare_is_participating_provider}CHECKED{/if}>
	</li>
	<li id='li_number_3'>
<label> Number </label><input type='text' name='ID_medicare_number' id='ID_medicare_number'value='{$ID_medicare_number}'> 
	</li>
</ul>
	</li>
	<li id='li_dea_2'>
<h4> Dea </h4><label> Number </label><ul id='ul_number_4'>
	<li id='li_is_4'>
<label> Is </label><label> Exist </label><input type='checkbox' name='ID_dea_number_is_exist' id='ID_dea_number_is_exist' {if $ID_dea_number_is_exist}CHECKED{/if}>
	</li>
	<li id='li_0_4'>
<label> 0 </label><input type='text' name='ID_dea_number' id='ID_dea_number'value='{$ID_dea_number}'> 
	</li>
</ul>
	</li>
	<li id='li_medicaid_2'>
<h4> Medicaid </h4><ul id='ul_medicaid_3'>
	<li id='li_number_3'>
<label> Number </label><input type='text' name='ID_medicaid_number' id='ID_medicaid_number'value='{$ID_medicaid_number}'> 
	</li>
	<li id='li_is_3'>
<label> Is </label><label> Participating </label><label> Provider </label><input type='checkbox' name='ID_medicaid_is_participating_provider' id='ID_medicaid_is_participating_provider' {if $ID_medicaid_is_participating_provider}CHECKED{/if}>
	</li>
</ul>
	</li>
	<li id='li_ecfmg_2'>
<h4> Ecfmg </h4><ul id='ul_ecfmg_3'>
	<li id='li_is_3'>
<label> Is </label><label> Foreign </label><label> Medical </label><label> Grad </label><ul id='ul_grad_7'>
	<li id='li_0_7'>
<label> 0 </label><input type='checkbox' name='ID_ecfmg_is_foreign_medical_grad' id='ID_ecfmg_is_foreign_medical_grad' {if $ID_ecfmg_is_foreign_medical_grad}CHECKED{/if}>
	</li>
	<li id='li_na_7'>
<label> Na </label><input type='checkbox' name='ID_ecfmg_is_foreign_medical_grad_na' id='ID_ecfmg_is_foreign_medical_grad_na' {if $ID_ecfmg_is_foreign_medical_grad_na}CHECKED{/if}>
	</li>
</ul>
	</li>
	<li id='li_number_3'>
<label> Number </label><input type='text' name='ID_ecfmg_number' id='ID_ecfmg_number'value='{$ID_ecfmg_number}'> 
	</li>
</ul>
	</li>
	<li id='li_upin_2'>
<h4> Upin </h4><input type='text' name='ID_upin' id='ID_upin'value='{$ID_upin}'> 
	</li>
	<li id='li_dps_2'>
<h4> Dps </h4><label> Number </label><ul id='ul_number_4'>
	<li id='li_0_4'>
<label> 0 </label><input type='text' name='ID_dps_number' id='ID_dps_number'value='{$ID_dps_number}'> 
	</li>
	<li id='li_is_4'>
<label> Is </label><label> Exist </label><input type='checkbox' name='ID_dps_number_is_exist' id='ID_dps_number_is_exist' {if $ID_dps_number_is_exist}CHECKED{/if}>
	</li>
</ul>
	</li>
	<li id='li_npi_2'>
<h4> Npi </h4><input type='text' name='ID_npi' id='ID_npi'value='{$ID_npi}'> 
	</li>
</ul>
	</li>
	<li id='li_address_1'>
<h3> Address </h3><ul id='ul_address_2'>
	<li id='li_home_2'>
<h4> Home </h4><ul id='ul_home_3'>
	<li id='li_city_3'>
<label> City </label><input type='text' name='address_home_city' id='address_home_city'value='{$address_home_city}'> 
	</li>
	<li id='li_state_3'>
<label> State </label><input type='text' name='address_home_state' id='address_home_state'value='{$address_home_state}'> 
	</li>
	<li id='li_line1_3'>
<label> Line1 </label><input type='text' name='address_home_line1' id='address_home_line1'value='{$address_home_line1}'> 
	</li>
	<li id='li_country_3'>
<label> Country </label><input type='text' name='address_home_country' id='address_home_country'value='{$address_home_country}'> 
	</li>
	<li id='li_postal_3'>
<label> Postal </label><input type='text' name='address_home_postal' id='address_home_postal'value='{$address_home_postal}'> 
	</li>
</ul>
	</li>
	<li id='li_correspondence_2'>
<h4> Correspondence </h4><ul id='ul_correspondence_3'>
	<li id='li_state_3'>
<label> State </label><input type='text' name='address_correspondence_state' id='address_correspondence_state'value='{$address_correspondence_state}'> 
	</li>
	<li id='li_fax_3'>
<label> Fax </label><input type='text' name='address_correspondence_fax' id='address_correspondence_fax'value='{$address_correspondence_fax}'> 
	</li>
	<li id='li_email_3'>
<label> Email </label><input type='text' name='address_correspondence_email' id='address_correspondence_email'value='{$address_correspondence_email}'> 
	</li>
	<li id='li_county_3'>
<label> County </label><input type='text' name='address_correspondence_county' id='address_correspondence_county'value='{$address_correspondence_county}'> 
	</li>
	<li id='li_phone_3'>
<label> Phone </label><input type='text' name='address_correspondence_phone' id='address_correspondence_phone'value='{$address_correspondence_phone}'> 
	</li>
	<li id='li_line1_3'>
<label> Line1 </label><input type='text' name='address_correspondence_line1' id='address_correspondence_line1'value='{$address_correspondence_line1}'> 
	</li>
	<li id='li_city_3'>
<label> City </label><input type='text' name='address_correspondence_city' id='address_correspondence_city'value='{$address_correspondence_city}'> 
	</li>
	<li id='li_postal_3'>
<label> Postal </label><input type='text' name='address_correspondence_postal' id='address_correspondence_postal'value='{$address_correspondence_postal}'> 
	</li>
</ul>
	</li>
	<li id='li_phone_2'>
<h4> Phone </h4><label> Home </label><input type='text' name='address_phone_home' id='address_phone_home'value='{$address_phone_home}'> 
	</li>
</ul>
	</li>
	<li id='li_citizenship_1'>
<h3> Citizenship </h3><ul id='ul_citizenship_2'>
	<li id='li_visa_2'>
<h4> Visa </h4><input type='text' name='citizenship_visa' id='citizenship_visa'value='{$citizenship_visa}'> 
	</li>
	<li id='li_status_2'>
<h4> Status </h4><input type='text' name='citizenship_status' id='citizenship_status'value='{$citizenship_status}'> 
	</li>
	<li id='li_country_2'>
<h4> Country </h4><input type='text' name='citizenship_country' id='citizenship_country'value='{$citizenship_country}'> 
	</li>
	<li id='li_birth_2'>
<h4> Birth </h4><label> Place </label><input type='text' name='citizenship_birth_place' id='citizenship_birth_place'value='{$citizenship_birth_place}'> 
	</li>
	<li id='li_is_2'>
<h4> Is </h4><label> Eligible </label><label> To </label><label> Work </label><input type='checkbox' name='citizenship_is_eligible_to_work' id='citizenship_is_eligible_to_work' {if $citizenship_is_eligible_to_work}CHECKED{/if}>
	</li>
</ul>
	</li>
	<li id='li_coverage_1'>
<h3> Coverage </h3><ul id='ul_coverage_2'>
	<li id='li_[2]_2'>
<h4> [2] </h4><ul id='ul_[2]_3'>
	<li id='li_specialty_3'>
<label> Specialty </label><input type='text' name='coverage_2_specialty' id='coverage_2_specialty'value='{$coverage_2_specialty}'> 
	</li>
	<li id='li_name_3'>
<label> Name </label><input type='text' name='coverage_2_name' id='coverage_2_name'value='{$coverage_2_name}'> 
	</li>
</ul>
	</li>
	<li id='li_[4]_2'>
<h4> [4] </h4><ul id='ul_[4]_3'>
	<li id='li_specialty_3'>
<label> Specialty </label><input type='text' name='coverage_4_specialty' id='coverage_4_specialty'value='{$coverage_4_specialty}'> 
	</li>
	<li id='li_name_3'>
<label> Name </label><input type='text' name='coverage_4_name' id='coverage_4_name'value='{$coverage_4_name}'> 
	</li>
</ul>
	</li>
	<li id='li_[1]_2'>
<h4> [1] </h4><ul id='ul_[1]_3'>
	<li id='li_specialty_3'>
<label> Specialty </label><input type='text' name='coverage_1_specialty' id='coverage_1_specialty'value='{$coverage_1_specialty}'> 
	</li>
	<li id='li_name_3'>
<label> Name </label><input type='text' name='coverage_1_name' id='coverage_1_name'value='{$coverage_1_name}'> 
	</li>
</ul>
	</li>
	<li id='li_[0]_2'>
<h4> [0] </h4><ul id='ul_[0]_3'>
	<li id='li_specialty_3'>
<label> Specialty </label><input type='text' name='coverage_0_specialty' id='coverage_0_specialty'value='{$coverage_0_specialty}'> 
	</li>
	<li id='li_name_3'>
<label> Name </label><input type='text' name='coverage_0_name' id='coverage_0_name'value='{$coverage_0_name}'> 
	</li>
</ul>
	</li>
	<li id='li_attached_2'>
<h4> Attached </h4><label> List </label><label> Is </label><input type='checkbox' name='coverage_attached_list_is' id='coverage_attached_list_is' {if $coverage_attached_list_is}CHECKED{/if}>
	</li>
	<li id='li_[3]_2'>
<h4> [3] </h4><ul id='ul_[3]_3'>
	<li id='li_name_3'>
<label> Name </label><input type='text' name='coverage_3_name' id='coverage_3_name'value='{$coverage_3_name}'> 
	</li>
	<li id='li_specialty_3'>
<label> Specialty </label><input type='text' name='coverage_3_specialty' id='coverage_3_specialty'value='{$coverage_3_specialty}'> 
	</li>
</ul>
	</li>
</ul>
	</li>
	<li id='li_degree_1'>
<h3> Degree </h3><ul id='ul_degree_2'>
	<li id='li_[0]_2'>
<h4> [0] </h4><ul id='ul_[0]_3'>
	<li id='li_city_3'>
<label> City </label><input type='text' name='degree_0_city' id='degree_0_city'value='{$degree_0_city}'> 
	</li>
	<li id='li_state_3'>
<label> State </label><input type='text' name='degree_0_state' id='degree_0_state'value='{$degree_0_state}'> 
	</li>
	<li id='li_address_3'>
<label> Address </label><label> Line1 </label><input type='text' name='degree_0_address_line1' id='degree_0_address_line1'value='{$degree_0_address_line1}'> 
	</li>
	<li id='li_type_3'>
<label> Type </label><input type='text' name='degree_0_type' id='degree_0_type'value='{$degree_0_type}'> 
	</li>
	<li id='li_postal_3'>
<label> Postal </label><input type='text' name='degree_0_postal' id='degree_0_postal'value='{$degree_0_postal}'> 
	</li>
	<li id='li_institution_3'>
<label> Institution </label><input type='text' name='degree_0_institution' id='degree_0_institution'value='{$degree_0_institution}'> 
	</li>
	<li id='li_country_3'>
<label> Country </label><input type='text' name='degree_0_country' id='degree_0_country'value='{$degree_0_country}'> 
	</li>
</ul>
	</li>
	<li id='li_is_2'>
<h4> Is </h4><label> More </label><label> Degrees </label><input type='checkbox' name='degree_is_more_degrees' id='degree_is_more_degrees' {if $degree_is_more_degrees}CHECKED{/if}>
	</li>
</ul>
	</li>
	<li id='li_disclosure_1'>
<h3> Disclosure </h3><ul id='ul_disclosure_2'>
	<li id='li_[16]_2'>
<h4> [16] </h4><ul id='ul_[16]_3'>
	<li id='li_number_3'>
<label> Number </label><input type='text' name='disclosure_16_number' id='disclosure_16_number'value='{$disclosure_16_number}'> 
	</li>
	<li id='li_is_3'>
<label> Is </label><input type='checkbox' name='disclosure_16_is' id='disclosure_16_is' {if $disclosure_16_is}CHECKED{/if}>
	</li>
</ul>
	</li>
	<li id='li_[17]_2'>
<h4> [17] </h4><ul id='ul_[17]_3'>
	<li id='li_number_3'>
<label> Number </label><input type='text' name='disclosure_17_number' id='disclosure_17_number'value='{$disclosure_17_number}'> 
	</li>
	<li id='li_is_3'>
<label> Is </label><input type='checkbox' name='disclosure_17_is' id='disclosure_17_is' {if $disclosure_17_is}CHECKED{/if}>
	</li>
</ul>
	</li>
	<li id='li_[21]_2'>
<h4> [21] </h4><label> Is </label><input type='checkbox' name='disclosure_21_is' id='disclosure_21_is' {if $disclosure_21_is}CHECKED{/if}>
	</li>
	<li id='li_[9]_2'>
<h4> [9] </h4><ul id='ul_[9]_3'>
	<li id='li_is_3'>
<label> Is </label><input type='checkbox' name='disclosure_9_is' id='disclosure_9_is' {if $disclosure_9_is}CHECKED{/if}>
	</li>
	<li id='li_number_3'>
<label> Number </label><input type='text' name='disclosure_9_number' id='disclosure_9_number'value='{$disclosure_9_number}'> 
	</li>
</ul>
	</li>
	<li id='li_[11]_2'>
<h4> [11] </h4><ul id='ul_[11]_3'>
	<li id='li_number_3'>
<label> Number </label><input type='text' name='disclosure_11_number' id='disclosure_11_number'value='{$disclosure_11_number}'> 
	</li>
	<li id='li_is_3'>
<label> Is </label><input type='checkbox' name='disclosure_11_is' id='disclosure_11_is' {if $disclosure_11_is}CHECKED{/if}>
	</li>
</ul>
	</li>
	<li id='li_[0]_2'>
<h4> [0] </h4><ul id='ul_[0]_3'>
	<li id='li_question_3'>
<label> Question </label><label> Explanation </label><input type='text' name='disclosure_0_question_explanation' id='disclosure_0_question_explanation'value='{$disclosure_0_question_explanation}'> 
	</li>
	<li id='li_is_3'>
<label> Is </label><input type='checkbox' name='disclosure_0_is' id='disclosure_0_is' {if $disclosure_0_is}CHECKED{/if}>
	</li>
	<li id='li_number_3'>
<label> Number </label><input type='text' name='disclosure_0_number' id='disclosure_0_number'value='{$disclosure_0_number}'> 
	</li>
</ul>
	</li>
	<li id='li_[5]_2'>
<h4> [5] </h4><ul id='ul_[5]_3'>
	<li id='li_is_3'>
<label> Is </label><input type='checkbox' name='disclosure_5_is' id='disclosure_5_is' {if $disclosure_5_is}CHECKED{/if}>
	</li>
	<li id='li_number_3'>
<label> Number </label><input type='text' name='disclosure_5_number' id='disclosure_5_number'value='{$disclosure_5_number}'> 
	</li>
</ul>
	</li>
	<li id='li_[6]_2'>
<h4> [6] </h4><ul id='ul_[6]_3'>
	<li id='li_is_3'>
<label> Is </label><input type='checkbox' name='disclosure_6_is' id='disclosure_6_is' {if $disclosure_6_is}CHECKED{/if}>
	</li>
	<li id='li_number_3'>
<label> Number </label><input type='text' name='disclosure_6_number' id='disclosure_6_number'value='{$disclosure_6_number}'> 
	</li>
</ul>
	</li>
	<li id='li_[1]_2'>
<h4> [1] </h4><ul id='ul_[1]_3'>
	<li id='li_number_3'>
<label> Number </label><input type='text' name='disclosure_1_number' id='disclosure_1_number'value='{$disclosure_1_number}'> 
	</li>
	<li id='li_is_3'>
<label> Is </label><input type='checkbox' name='disclosure_1_is' id='disclosure_1_is' {if $disclosure_1_is}CHECKED{/if}>
	</li>
</ul>
	</li>
	<li id='li_[14]_2'>
<h4> [14] </h4><ul id='ul_[14]_3'>
	<li id='li_is_3'>
<label> Is </label><input type='checkbox' name='disclosure_14_is' id='disclosure_14_is' {if $disclosure_14_is}CHECKED{/if}>
	</li>
	<li id='li_number_3'>
<label> Number </label><input type='text' name='disclosure_14_number' id='disclosure_14_number'value='{$disclosure_14_number}'> 
	</li>
</ul>
	</li>
	<li id='li_[2]_2'>
<h4> [2] </h4><ul id='ul_[2]_3'>
	<li id='li_is_3'>
<label> Is </label><input type='checkbox' name='disclosure_2_is' id='disclosure_2_is' {if $disclosure_2_is}CHECKED{/if}>
	</li>
	<li id='li_number_3'>
<label> Number </label><input type='text' name='disclosure_2_number' id='disclosure_2_number'value='{$disclosure_2_number}'> 
	</li>
</ul>
	</li>
	<li id='li_[19]_2'>
<h4> [19] </h4><ul id='ul_[19]_3'>
	<li id='li_is_3'>
<label> Is </label><input type='checkbox' name='disclosure_19_is' id='disclosure_19_is' {if $disclosure_19_is}CHECKED{/if}>
	</li>
	<li id='li_number_3'>
<label> Number </label><input type='text' name='disclosure_19_number' id='disclosure_19_number'value='{$disclosure_19_number}'> 
	</li>
</ul>
	</li>
	<li id='li_[4]_2'>
<h4> [4] </h4><ul id='ul_[4]_3'>
	<li id='li_is_3'>
<label> Is </label><input type='checkbox' name='disclosure_4_is' id='disclosure_4_is' {if $disclosure_4_is}CHECKED{/if}>
	</li>
	<li id='li_number_3'>
<label> Number </label><input type='text' name='disclosure_4_number' id='disclosure_4_number'value='{$disclosure_4_number}'> 
	</li>
</ul>
	</li>
	<li id='li_[22]_2'>
<h4> [22] </h4><label> Is </label><input type='checkbox' name='disclosure_22_is' id='disclosure_22_is' {if $disclosure_22_is}CHECKED{/if}>
	</li>
	<li id='li_[3]_2'>
<h4> [3] </h4><ul id='ul_[3]_3'>
	<li id='li_is_3'>
<label> Is </label><input type='checkbox' name='disclosure_3_is' id='disclosure_3_is' {if $disclosure_3_is}CHECKED{/if}>
	</li>
	<li id='li_number_3'>
<label> Number </label><input type='text' name='disclosure_3_number' id='disclosure_3_number'value='{$disclosure_3_number}'> 
	</li>
</ul>
	</li>
	<li id='li_[8]_2'>
<h4> [8] </h4><ul id='ul_[8]_3'>
	<li id='li_is_3'>
<label> Is </label><input type='checkbox' name='disclosure_8_is' id='disclosure_8_is' {if $disclosure_8_is}CHECKED{/if}>
	</li>
	<li id='li_number_3'>
<label> Number </label><input type='text' name='disclosure_8_number' id='disclosure_8_number'value='{$disclosure_8_number}'> 
	</li>
</ul>
	</li>
	<li id='li_[15]_2'>
<h4> [15] </h4><label> Number </label><input type='text' name='disclosure_15_number' id='disclosure_15_number'value='{$disclosure_15_number}'> 
	</li>
	<li id='li_[18]_2'>
<h4> [18] </h4><ul id='ul_[18]_3'>
	<li id='li_is_3'>
<label> Is </label><input type='checkbox' name='disclosure_18_is' id='disclosure_18_is' {if $disclosure_18_is}CHECKED{/if}>
	</li>
	<li id='li_number_3'>
<label> Number </label><input type='text' name='disclosure_18_number' id='disclosure_18_number'value='{$disclosure_18_number}'> 
	</li>
</ul>
	</li>
	<li id='li_is_2'>
<h4> Is </h4><label> Malpractice </label><label> Claims </label><label> Last5year </label><input type='checkbox' name='disclosure_is_malpractice_claims_last5year' id='disclosure_is_malpractice_claims_last5year' {if $disclosure_is_malpractice_claims_last5year}CHECKED{/if}>
	</li>
	<li id='li_[10]_2'>
<h4> [10] </h4><ul id='ul_[10]_3'>
	<li id='li_is_3'>
<label> Is </label><input type='checkbox' name='disclosure_10_is' id='disclosure_10_is' {if $disclosure_10_is}CHECKED{/if}>
	</li>
	<li id='li_number_3'>
<label> Number </label><input type='text' name='disclosure_10_number' id='disclosure_10_number'value='{$disclosure_10_number}'> 
	</li>
</ul>
	</li>
	<li id='li_[7]_2'>
<h4> [7] </h4><ul id='ul_[7]_3'>
	<li id='li_number_3'>
<label> Number </label><input type='text' name='disclosure_7_number' id='disclosure_7_number'value='{$disclosure_7_number}'> 
	</li>
	<li id='li_is_3'>
<label> Is </label><input type='checkbox' name='disclosure_7_is' id='disclosure_7_is' {if $disclosure_7_is}CHECKED{/if}>
	</li>
</ul>
	</li>
	<li id='li_[20]_2'>
<h4> [20] </h4><ul id='ul_[20]_3'>
	<li id='li_is_3'>
<label> Is </label><input type='checkbox' name='disclosure_20_is' id='disclosure_20_is' {if $disclosure_20_is}CHECKED{/if}>
	</li>
	<li id='li_number_3'>
<label> Number </label><input type='text' name='disclosure_20_number' id='disclosure_20_number'value='{$disclosure_20_number}'> 
	</li>
</ul>
	</li>
	<li id='li_[13]_2'>
<h4> [13] </h4><ul id='ul_[13]_3'>
	<li id='li_number_3'>
<label> Number </label><input type='text' name='disclosure_13_number' id='disclosure_13_number'value='{$disclosure_13_number}'> 
	</li>
	<li id='li_is_3'>
<label> Is </label><input type='checkbox' name='disclosure_13_is' id='disclosure_13_is' {if $disclosure_13_is}CHECKED{/if}>
	</li>
</ul>
	</li>
	<li id='li_[12]_2'>
<h4> [12] </h4><ul id='ul_[12]_3'>
	<li id='li_is_3'>
<label> Is </label><input type='checkbox' name='disclosure_12_is' id='disclosure_12_is' {if $disclosure_12_is}CHECKED{/if}>
	</li>
	<li id='li_number_3'>
<label> Number </label><input type='text' name='disclosure_12_number' id='disclosure_12_number'value='{$disclosure_12_number}'> 
	</li>
</ul>
	</li>
</ul>
	</li>
	<li id='li_formerhospital_1'>
<h3> Formerhospital </h3><ul id='ul_formerhospital_2'>
	<li id='li_is_2'>
<h4> Is </h4><label> More </label><label> Formerhospitals </label><input type='checkbox' name='formerhospital_is_more_formerhospitals' id='formerhospital_is_more_formerhospitals' {if $formerhospital_is_more_formerhospitals}CHECKED{/if}>
	</li>
	<li id='li_[0]_2'>
<h4> [0] </h4><ul id='ul_[0]_3'>
	<li id='li_address_3'>
<label> Address </label><ul id='ul_address_4'>
	<li id='li_postal_4'>
<label> Postal </label><input type='text' name='formerhospital_0_address_postal' id='formerhospital_0_address_postal'value='{$formerhospital_0_address_postal}'> 
	</li>
	<li id='li_country_4'>
<label> Country </label><input type='text' name='formerhospital_0_address_country' id='formerhospital_0_address_country'value='{$formerhospital_0_address_country}'> 
	</li>
	<li id='li_line1_4'>
<label> Line1 </label><input type='text' name='formerhospital_0_address_line1' id='formerhospital_0_address_line1'value='{$formerhospital_0_address_line1}'> 
	</li>
	<li id='li_city_4'>
<label> City </label><input type='text' name='formerhospital_0_address_city' id='formerhospital_0_address_city'value='{$formerhospital_0_address_city}'> 
	</li>
	<li id='li_state_4'>
<label> State </label><input type='text' name='formerhospital_0_address_state' id='formerhospital_0_address_state'value='{$formerhospital_0_address_state}'> 
	</li>
</ul>
	</li>
	<li id='li_is_3'>
<label> Is </label><label> Have </label><ul id='ul_have_5'>
	<li id='li_temp_5'>
<label> Temp </label><label> Privileges </label><input type='checkbox' name='formerhospital_0_is_have_temp_privileges' id='formerhospital_0_is_have_temp_privileges' {if $formerhospital_0_is_have_temp_privileges}CHECKED{/if}>
	</li>
	<li id='li_full_5'>
<label> Full </label><label> Privileges </label><input type='checkbox' name='formerhospital_0_is_have_full_privileges' id='formerhospital_0_is_have_full_privileges' {if $formerhospital_0_is_have_full_privileges}CHECKED{/if}>
	</li>
</ul>
	</li>
	<li id='li_name_3'>
<label> Name </label><input type='text' name='formerhospital_0_name' id='formerhospital_0_name'value='{$formerhospital_0_name}'> 
	</li>
	<li id='li_admission_3'>
<label> Admission </label><label> Precent </label><input type='text' name='formerhospital_0_admission_precent' id='formerhospital_0_admission_precent'value='{$formerhospital_0_admission_precent}'> 
	</li>
	<li id='li_type_3'>
<label> Type </label><label> Of </label><label> Privileges </label><input type='text' name='formerhospital_0_type_of_privileges' id='formerhospital_0_type_of_privileges'value='{$formerhospital_0_type_of_privileges}'> 
	</li>
</ul>
	</li>
</ul>
	</li>
	<li id='li_hospital_1'>
<h3> Hospital </h3><ul id='ul_hospital_2'>
	<li id='li_[1]_2'>
<h4> [1] </h4><ul id='ul_[1]_3'>
	<li id='li_is_3'>
<label> Is </label><label> Have </label><ul id='ul_have_5'>
	<li id='li_temp_5'>
<label> Temp </label><label> Privileges </label><input type='checkbox' name='hospital_1_is_have_temp_privileges' id='hospital_1_is_have_temp_privileges' {if $hospital_1_is_have_temp_privileges}CHECKED{/if}>
	</li>
	<li id='li_full_5'>
<label> Full </label><label> Privileges </label><input type='checkbox' name='hospital_1_is_have_full_privileges' id='hospital_1_is_have_full_privileges' {if $hospital_1_is_have_full_privileges}CHECKED{/if}>
	</li>
</ul>
	</li>
	<li id='li_address_3'>
<label> Address </label><ul id='ul_address_4'>
	<li id='li_country_4'>
<label> Country </label><input type='text' name='hospital_1_address_country' id='hospital_1_address_country'value='{$hospital_1_address_country}'> 
	</li>
	<li id='li_city_4'>
<label> City </label><input type='text' name='hospital_1_address_city' id='hospital_1_address_city'value='{$hospital_1_address_city}'> 
	</li>
	<li id='li_line1_4'>
<label> Line1 </label><input type='text' name='hospital_1_address_line1' id='hospital_1_address_line1'value='{$hospital_1_address_line1}'> 
	</li>
	<li id='li_postal_4'>
<label> Postal </label><input type='text' name='hospital_1_address_postal' id='hospital_1_address_postal'value='{$hospital_1_address_postal}'> 
	</li>
	<li id='li_state_4'>
<label> State </label><input type='text' name='hospital_1_address_state' id='hospital_1_address_state'value='{$hospital_1_address_state}'> 
	</li>
</ul>
	</li>
	<li id='li_name_3'>
<label> Name </label><input type='text' name='hospital_1_name' id='hospital_1_name'value='{$hospital_1_name}'> 
	</li>
	<li id='li_email_3'>
<label> Email </label><input type='text' name='hospital_1_email' id='hospital_1_email'value='{$hospital_1_email}'> 
	</li>
	<li id='li_phone_3'>
<label> Phone </label><input type='text' name='hospital_1_phone' id='hospital_1_phone'value='{$hospital_1_phone}'> 
	</li>
	<li id='li_fax_3'>
<label> Fax </label><input type='text' name='hospital_1_fax' id='hospital_1_fax'value='{$hospital_1_fax}'> 
	</li>
	<li id='li_type_3'>
<label> Type </label><label> Of </label><label> Privileges </label><input type='text' name='hospital_1_type_of_privileges' id='hospital_1_type_of_privileges'value='{$hospital_1_type_of_privileges}'> 
	</li>
	<li id='li_admission_3'>
<label> Admission </label><label> Precent </label><input type='text' name='hospital_1_admission_precent' id='hospital_1_admission_precent'value='{$hospital_1_admission_precent}'> 
	</li>
</ul>
	</li>
	<li id='li_[0]_2'>
<h4> [0] </h4><ul id='ul_[0]_3'>
	<li id='li_is_3'>
<label> Is </label><label> Have </label><ul id='ul_have_5'>
	<li id='li_privileges_5'>
<label> Privileges </label><input type='checkbox' name='hospital_0_is_have_privileges' id='hospital_0_is_have_privileges' {if $hospital_0_is_have_privileges}CHECKED{/if}>
	</li>
	<li id='li_full_5'>
<label> Full </label><label> Privileges </label><input type='checkbox' name='hospital_0_is_have_full_privileges' id='hospital_0_is_have_full_privileges' {if $hospital_0_is_have_full_privileges}CHECKED{/if}>
	</li>
	<li id='li_temp_5'>
<label> Temp </label><label> Privileges </label><input type='checkbox' name='hospital_0_is_have_temp_privileges' id='hospital_0_is_have_temp_privileges' {if $hospital_0_is_have_temp_privileges}CHECKED{/if}>
	</li>
</ul>
	</li>
	<li id='li_address_3'>
<label> Address </label><ul id='ul_address_4'>
	<li id='li_country_4'>
<label> Country </label><input type='text' name='hospital_0_address_country' id='hospital_0_address_country'value='{$hospital_0_address_country}'> 
	</li>
	<li id='li_state_4'>
<label> State </label><input type='text' name='hospital_0_address_state' id='hospital_0_address_state'value='{$hospital_0_address_state}'> 
	</li>
	<li id='li_postal_4'>
<label> Postal </label><input type='text' name='hospital_0_address_postal' id='hospital_0_address_postal'value='{$hospital_0_address_postal}'> 
	</li>
	<li id='li_line1_4'>
<label> Line1 </label><input type='text' name='hospital_0_address_line1' id='hospital_0_address_line1'value='{$hospital_0_address_line1}'> 
	</li>
	<li id='li_city_4'>
<label> City </label><input type='text' name='hospital_0_address_city' id='hospital_0_address_city'value='{$hospital_0_address_city}'> 
	</li>
</ul>
	</li>
	<li id='li_fax_3'>
<label> Fax </label><input type='text' name='hospital_0_fax' id='hospital_0_fax'value='{$hospital_0_fax}'> 
	</li>
	<li id='li_admission_3'>
<label> Admission </label><label> Precent </label><input type='text' name='hospital_0_admission_precent' id='hospital_0_admission_precent'value='{$hospital_0_admission_precent}'> 
	</li>
	<li id='li_name_3'>
<label> Name </label><input type='text' name='hospital_0_name' id='hospital_0_name'value='{$hospital_0_name}'> 
	</li>
	<li id='li_email_3'>
<label> Email </label><input type='text' name='hospital_0_email' id='hospital_0_email'value='{$hospital_0_email}'> 
	</li>
	<li id='li_ifnotadmit_3'>
<label> Ifnotadmit </label><label> Privileges </label><input type='text' name='hospital_0_ifnotadmit_privileges' id='hospital_0_ifnotadmit_privileges'value='{$hospital_0_ifnotadmit_privileges}'> 
	</li>
	<li id='li_phone_3'>
<label> Phone </label><input type='text' name='hospital_0_phone' id='hospital_0_phone'value='{$hospital_0_phone}'> 
	</li>
	<li id='li_type_3'>
<label> Type </label><label> Of </label><label> Privileges </label><input type='text' name='hospital_0_type_of_privileges' id='hospital_0_type_of_privileges'value='{$hospital_0_type_of_privileges}'> 
	</li>
</ul>
	</li>
	<li id='li_is_2'>
<h4> Is </h4><label> More </label><label> Current </label><label> Hospitals </label><input type='checkbox' name='hospital_is_more_current_hospitals' id='hospital_is_more_current_hospitals' {if $hospital_is_more_current_hospitals}CHECKED{/if}>
	</li>
</ul>
	</li>
	<li id='li_insurance_1'>
<h3> Insurance </h3><ul id='ul_insurance_2'>
	<li id='li_address_2'>
<h4> Address </h4><ul id='ul_address_3'>
	<li id='li_country_3'>
<label> Country </label><input type='text' name='insurance_address_country' id='insurance_address_country'value='{$insurance_address_country}'> 
	</li>
	<li id='li_line1_3'>
<label> Line1 </label><input type='text' name='insurance_address_line1' id='insurance_address_line1'value='{$insurance_address_line1}'> 
	</li>
	<li id='li_state_3'>
<label> State </label><input type='text' name='insurance_address_state' id='insurance_address_state'value='{$insurance_address_state}'> 
	</li>
	<li id='li_postal_3'>
<label> Postal </label><input type='text' name='insurance_address_postal' id='insurance_address_postal'value='{$insurance_address_postal}'> 
	</li>
	<li id='li_city_3'>
<label> City </label><input type='text' name='insurance_address_city' id='insurance_address_city'value='{$insurance_address_city}'> 
	</li>
</ul>
	</li>
	<li id='li_name_2'>
<h4> Name </h4><input type='text' name='insurance_name' id='insurance_name'value='{$insurance_name}'> 
	</li>
	<li id='li_coverage_2'>
<h4> Coverage </h4><ul id='ul_coverage_3'>
	<li id='li_per_3'>
<label> Per </label><label> Occurrence </label><input type='text' name='insurance_coverage_per_occurrence' id='insurance_coverage_per_occurrence'value='{$insurance_coverage_per_occurrence}'> 
	</li>
	<li id='li_aggregate_3'>
<label> Aggregate </label><input type='text' name='insurance_coverage_aggregate' id='insurance_coverage_aggregate'value='{$insurance_coverage_aggregate}'> 
	</li>
</ul>
	</li>
	<li id='li_type_2'>
<h4> Type </h4><label> Coverage </label><ul id='ul_coverage_4'>
	<li id='li_indvidual_4'>
<label> Indvidual </label><label> Yes </label><input type='text' name='insurance_type_coverage_indvidual_yes' id='insurance_type_coverage_indvidual_yes'value='{$insurance_type_coverage_indvidual_yes}'> 
	</li>
	<li id='li_shared_4'>
<label> Shared </label><label> Yes </label><input type='text' name='insurance_type_coverage_shared_yes' id='insurance_type_coverage_shared_yes'value='{$insurance_type_coverage_shared_yes}'> 
	</li>
</ul>
	</li>
	<li id='li_phone_2'>
<h4> Phone </h4><input type='text' name='insurance_phone' id='insurance_phone'value='{$insurance_phone}'> 
	</li>
	<li id='li_length_2'>
<h4> Length </h4><label> Time </label><label> With </label><label> Carrier </label><input type='text' name='insurance_length_time_with_carrier' id='insurance_length_time_with_carrier'value='{$insurance_length_time_with_carrier}'> 
	</li>
	<li id='li_policy_2'>
<h4> Policy </h4><label> Number </label><input type='text' name='insurance_policy_number' id='insurance_policy_number'value='{$insurance_policy_number}'> 
	</li>
	<li id='li_is_2'>
<h4> Is </h4><label> Self </label><label> Insured </label><input type='checkbox' name='insurance_is_self_insured' id='insurance_is_self_insured' {if $insurance_is_self_insured}CHECKED{/if}>
	</li>
</ul>
	</li>
	<li id='li_insurancePrev_1'>
<h3> InsurancePrev </h3><ul id='ul_insurancePrev_2'>
	<li id='li_address_2'>
<h4> Address </h4><ul id='ul_address_3'>
	<li id='li_country_3'>
<label> Country </label><input type='text' name='insurancePrev_address_country' id='insurancePrev_address_country'value='{$insurancePrev_address_country}'> 
	</li>
	<li id='li_state_3'>
<label> State </label><input type='text' name='insurancePrev_address_state' id='insurancePrev_address_state'value='{$insurancePrev_address_state}'> 
	</li>
	<li id='li_postal_3'>
<label> Postal </label><input type='text' name='insurancePrev_address_postal' id='insurancePrev_address_postal'value='{$insurancePrev_address_postal}'> 
	</li>
	<li id='li_line1_3'>
<label> Line1 </label><input type='text' name='insurancePrev_address_line1' id='insurancePrev_address_line1'value='{$insurancePrev_address_line1}'> 
	</li>
	<li id='li_city_3'>
<label> City </label><input type='text' name='insurancePrev_address_city' id='insurancePrev_address_city'value='{$insurancePrev_address_city}'> 
	</li>
</ul>
	</li>
	<li id='li_length_2'>
<h4> Length </h4><label> Time </label><label> With </label><label> Carrier </label><input type='text' name='insurancePrev_length_time_with_carrier' id='insurancePrev_length_time_with_carrier'value='{$insurancePrev_length_time_with_carrier}'> 
	</li>
	<li id='li_type_2'>
<h4> Type </h4><label> Coverage </label><ul id='ul_coverage_4'>
	<li id='li_indvidual_4'>
<label> Indvidual </label><label> Yes </label><input type='text' name='insurancePrev_type_coverage_indvidual_yes' id='insurancePrev_type_coverage_indvidual_yes'value='{$insurancePrev_type_coverage_indvidual_yes}'> 
	</li>
	<li id='li_shared_4'>
<label> Shared </label><label> Yes </label><input type='text' name='insurancePrev_type_coverage_shared_yes' id='insurancePrev_type_coverage_shared_yes'value='{$insurancePrev_type_coverage_shared_yes}'> 
	</li>
</ul>
	</li>
	<li id='li_phone_2'>
<h4> Phone </h4><input type='text' name='insurancePrev_phone' id='insurancePrev_phone'value='{$insurancePrev_phone}'> 
	</li>
	<li id='li_name_2'>
<h4> Name </h4><input type='text' name='insurancePrev_name' id='insurancePrev_name'value='{$insurancePrev_name}'> 
	</li>
	<li id='li_coverage_2'>
<h4> Coverage </h4><ul id='ul_coverage_3'>
	<li id='li_per_3'>
<label> Per </label><label> Occurance </label><input type='text' name='insurancePrev_coverage_per_occurance' id='insurancePrev_coverage_per_occurance'value='{$insurancePrev_coverage_per_occurance}'> 
	</li>
	<li id='li_aggregate_3'>
<label> Aggregate </label><input type='text' name='insurancePrev_coverage_aggregate' id='insurancePrev_coverage_aggregate'value='{$insurancePrev_coverage_aggregate}'> 
	</li>
</ul>
	</li>
	<li id='li_policy_2'>
<h4> Policy </h4><label> Number </label><input type='text' name='insurancePrev_policy_number' id='insurancePrev_policy_number'value='{$insurancePrev_policy_number}'> 
	</li>
</ul>
	</li>
	<li id='li_license_1'>
<h3> License </h3><ul id='ul_license_2'>
	<li id='li_other_2'>
<h4> Other </h4><label> Cds </label><ul id='ul_cds_4'>
	<li id='li_is_4'>
<label> Is </label><label> Practice </label><label> In </label><label> State </label><input type='checkbox' name='license_other_cds_is_practice_in_state' id='license_other_cds_is_practice_in_state' {if $license_other_cds_is_practice_in_state}CHECKED{/if}>
	</li>
	<li id='li_number_4'>
<label> Number </label><input type='text' name='license_other_cds_number' id='license_other_cds_number'value='{$license_other_cds_number}'> 
	</li>
	<li id='li_type_4'>
<label> Type </label><input type='text' name='license_other_cds_type' id='license_other_cds_type'value='{$license_other_cds_type}'> 
	</li>
	<li id='li_state_4'>
<label> State </label><label> Registration </label><input type='text' name='license_other_cds_state_registration' id='license_other_cds_state_registration'value='{$license_other_cds_state_registration}'> 
	</li>
</ul>
	</li>
	<li id='li_[0]_2'>
<h4> [0] </h4><ul id='ul_[0]_3'>
	<li id='li_is_3'>
<label> Is </label><label> Practice </label><label> In </label><label> State </label><input type='checkbox' name='license_0_is_practice_in_state' id='license_0_is_practice_in_state' {if $license_0_is_practice_in_state}CHECKED{/if}>
	</li>
	<li id='li_state_3'>
<label> State </label><input type='text' name='license_0_state' id='license_0_state'value='{$license_0_state}'> 
	</li>
	<li id='li_type_3'>
<label> Type </label><input type='text' name='license_0_type' id='license_0_type'value='{$license_0_type}'> 
	</li>
	<li id='li_number_3'>
<label> Number </label><input type='text' name='license_0_number' id='license_0_number'value='{$license_0_number}'> 
	</li>
</ul>
	</li>
	<li id='li_[2]_2'>
<h4> [2] </h4><ul id='ul_[2]_3'>
	<li id='li_state_3'>
<label> State </label><input type='text' name='license_2_state' id='license_2_state'value='{$license_2_state}'> 
	</li>
	<li id='li_number_3'>
<label> Number </label><input type='text' name='license_2_number' id='license_2_number'value='{$license_2_number}'> 
	</li>
	<li id='li_type_3'>
<label> Type </label><input type='text' name='license_2_type' id='license_2_type'value='{$license_2_type}'> 
	</li>
	<li id='li_is_3'>
<label> Is </label><label> Practice </label><label> In </label><label> State </label><input type='checkbox' name='license_2_is_practice_in_state' id='license_2_is_practice_in_state' {if $license_2_is_practice_in_state}CHECKED{/if}>
	</li>
</ul>
	</li>
	<li id='li_[1]_2'>
<h4> [1] </h4><ul id='ul_[1]_3'>
	<li id='li_is_3'>
<label> Is </label><label> Practice </label><label> In </label><label> State </label><input type='checkbox' name='license_1_is_practice_in_state' id='license_1_is_practice_in_state' {if $license_1_is_practice_in_state}CHECKED{/if}>
	</li>
	<li id='li_type_3'>
<label> Type </label><input type='text' name='license_1_type' id='license_1_type'value='{$license_1_type}'> 
	</li>
	<li id='li_number_3'>
<label> Number </label><input type='text' name='license_1_number' id='license_1_number'value='{$license_1_number}'> 
	</li>
	<li id='li_state_3'>
<label> State </label><input type='text' name='license_1_state' id='license_1_state'value='{$license_1_state}'> 
	</li>
</ul>
	</li>
</ul>
	</li>
	<li id='li_managed_1'>
<h3> Managed </h3><h4> Care </h4><label> Company </label><label> Hospital </label><label> Entity </label><input type='text' name='managed_care_company_hospital_entity' id='managed_care_company_hospital_entity'value='{$managed_care_company_hospital_entity}'> 
	</li>
	<li id='li_military_1'>
<h3> Military </h3><ul id='ul_military_2'>
	<li id='li_is_2'>
<h4> Is </h4><ul id='ul_is_3'>
	<li id='li_current_3'>
<label> Current </label><label> Military </label><input type='checkbox' name='military_is_current_military' id='military_is_current_military' {if $military_is_current_military}CHECKED{/if}>
	</li>
	<li id='li_public_3'>
<label> Public </label><label> Health </label><input type='checkbox' name='military_is_public_health' id='military_is_public_health' {if $military_is_public_health}CHECKED{/if}>
	</li>
</ul>
	</li>
	<li id='li_service_2'>
<h4> Service </h4><ul id='ul_service_3'>
	<li id='li_last_3'>
<label> Last </label><label> Location </label><input type='text' name='military_service_last_location' id='military_service_last_location'value='{$military_service_last_location}'> 
	</li>
	<li id='li_branch_3'>
<label> Branch </label><input type='text' name='military_service_branch' id='military_service_branch'value='{$military_service_branch}'> 
	</li>
</ul>
	</li>
</ul>
	</li>
	<li id='li_name_1'>
<h3> Name </h3><ul id='ul_name_2'>
	<li id='li_suffix_2'>
<h4> Suffix </h4><input type='text' name='name_suffix' id='name_suffix'value='{$name_suffix}'> 
	</li>
	<li id='li_middle_2'>
<h4> Middle </h4><input type='text' name='name_middle' id='name_middle'value='{$name_middle}'> 
	</li>
	<li id='li_is_2'>
<h4> Is </h4><ul id='ul_is_3'>
	<li id='li_female_3'>
<label> Female </label><input type='checkbox' name='name_is_female' id='name_is_female' {if $name_is_female}CHECKED{/if}>
	</li>
	<li id='li_male_3'>
<label> Male </label><input type='checkbox' name='name_is_male' id='name_is_male' {if $name_is_male}CHECKED{/if}>
	</li>
</ul>
	</li>
	<li id='li_maiden_2'>
<h4> Maiden </h4><input type='text' name='name_maiden' id='name_maiden'value='{$name_maiden}'> 
	</li>
	<li id='li_other_2'>
<h4> Other </h4><input type='text' name='name_other' id='name_other'value='{$name_other}'> 
	</li>
	<li id='li_last_2'>
<h4> Last </h4><input type='text' name='name_last' id='name_last'value='{$name_last}'> 
	</li>
	<li id='li_type_2'>
<h4> Type </h4><label> Of </label><label> Professional </label><input type='text' name='name_type_of_professional' id='name_type_of_professional'value='{$name_type_of_professional}'> 
	</li>
	<li id='li_social_2'>
<h4> Social </h4><label> Security </label><input type='text' name='name_social_security' id='name_social_security'value='{$name_social_security}'> 
	</li>
	<li id='li_first_2'>
<h4> First </h4><input type='text' name='name_first' id='name_first'value='{$name_first}'> 
	</li>
</ul>
	</li>
	<li id='li_othergrad_1'>
<h3> Othergrad </h3><ul id='ul_othergrad_2'>
	<li id='li_[1]_2'>
<h4> [1] </h4><label> Address </label><label> City </label><input type='text' name='othergrad_1_address_city' id='othergrad_1_address_city'value='{$othergrad_1_address_city}'> 
	</li>
	<li id='li_[0]_2'>
<h4> [0] </h4><ul id='ul_[0]_3'>
	<li id='li_address_3'>
<label> Address </label><ul id='ul_address_4'>
	<li id='li_city_4'>
<label> City </label><input type='text' name='othergrad_0_address_city' id='othergrad_0_address_city'value='{$othergrad_0_address_city}'> 
	</li>
	<li id='li_country_4'>
<label> Country </label><input type='text' name='othergrad_0_address_country' id='othergrad_0_address_country'value='{$othergrad_0_address_country}'> 
	</li>
	<li id='li_postal_4'>
<label> Postal </label><input type='text' name='othergrad_0_address_postal' id='othergrad_0_address_postal'value='{$othergrad_0_address_postal}'> 
	</li>
	<li id='li_state_4'>
<label> State </label><input type='text' name='othergrad_0_address_state' id='othergrad_0_address_state'value='{$othergrad_0_address_state}'> 
	</li>
	<li id='li_line1_4'>
<label> Line1 </label><input type='text' name='othergrad_0_address_line1' id='othergrad_0_address_line1'value='{$othergrad_0_address_line1}'> 
	</li>
</ul>
	</li>
	<li id='li_institution_3'>
<label> Institution </label><input type='text' name='othergrad_0_institution' id='othergrad_0_institution'value='{$othergrad_0_institution}'> 
	</li>
	<li id='li_degree_3'>
<label> Degree </label><input type='text' name='othergrad_0_degree' id='othergrad_0_degree'value='{$othergrad_0_degree}'> 
	</li>
</ul>
	</li>
</ul>
	</li>
	<li id='li_partner_1'>
<h3> Partner </h3><ul id='ul_partner_2'>
	<li id='li_[3]_2'>
<h4> [3] </h4><label> Name </label><input type='text' name='partner_3_name' id='partner_3_name'value='{$partner_3_name}'> 
	</li>
	<li id='li_[2]_2'>
<h4> [2] </h4><label> Name </label><input type='text' name='partner_2_name' id='partner_2_name'value='{$partner_2_name}'> 
	</li>
	<li id='li_[1]_2'>
<h4> [1] </h4><label> Name </label><input type='text' name='partner_1_name' id='partner_1_name'value='{$partner_1_name}'> 
	</li>
	<li id='li_[0]_2'>
<h4> [0] </h4><label> Name </label><input type='text' name='partner_0_name' id='partner_0_name'value='{$partner_0_name}'> 
	</li>
	<li id='li_[7]_2'>
<h4> [7] </h4><label> Name </label><input type='text' name='partner_7_name' id='partner_7_name'value='{$partner_7_name}'> 
	</li>
	<li id='li_[6]_2'>
<h4> [6] </h4><label> Name </label><input type='text' name='partner_6_name' id='partner_6_name'value='{$partner_6_name}'> 
	</li>
	<li id='li_[5]_2'>
<h4> [5] </h4><label> Name </label><input type='text' name='partner_5_name' id='partner_5_name'value='{$partner_5_name}'> 
	</li>
	<li id='li_[4]_2'>
<h4> [4] </h4><label> Name </label><input type='text' name='partner_4_name' id='partner_4_name'value='{$partner_4_name}'> 
	</li>
</ul>
	</li>
	<li id='li_postgrad_1'>
<h3> Postgrad </h3><ul id='ul_postgrad_2'>
	<li id='li_[0]_2'>
<h4> [0] </h4><ul id='ul_[0]_3'>
	<li id='li_program_3'>
<label> Program </label><label> Director </label><label> Then </label><input type='text' name='postgrad_0_program_director_then' id='postgrad_0_program_director_then'value='{$postgrad_0_program_director_then}'> 
	</li>
	<li id='li_is_3'>
<label> Is </label><ul id='ul_is_4'>
	<li id='li_internship_4'>
<label> Internship </label><input type='checkbox' name='postgrad_0_is_internship' id='postgrad_0_is_internship' {if $postgrad_0_is_internship}CHECKED{/if}>
	</li>
	<li id='li_fellowship_4'>
<label> Fellowship </label><input type='checkbox' name='postgrad_0_is_fellowship' id='postgrad_0_is_fellowship' {if $postgrad_0_is_fellowship}CHECKED{/if}>
	</li>
	<li id='li_teaching_4'>
<label> Teaching </label><label> Position </label><input type='checkbox' name='postgrad_0_is_teaching_position' id='postgrad_0_is_teaching_position' {if $postgrad_0_is_teaching_position}CHECKED{/if}>
	</li>
	<li id='li_program_4'>
<label> Program </label><label> Successfully </label><label> Completed </label><input type='checkbox' name='postgrad_0_is_program_successfully_completed' id='postgrad_0_is_program_successfully_completed' {if $postgrad_0_is_program_successfully_completed}CHECKED{/if}>
	</li>
	<li id='li_residency_4'>
<label> Residency </label><input type='checkbox' name='postgrad_0_is_residency' id='postgrad_0_is_residency' {if $postgrad_0_is_residency}CHECKED{/if}>
	</li>
</ul>
	</li>
	<li id='li_adddress_3'>
<label> Adddress </label><label> City </label><input type='text' name='postgrad_0_adddress_city' id='postgrad_0_adddress_city'value='{$postgrad_0_adddress_city}'> 
	</li>
	<li id='li_address_3'>
<label> Address </label><ul id='ul_address_4'>
	<li id='li_postal_4'>
<label> Postal </label><input type='text' name='postgrad_0_address_postal' id='postgrad_0_address_postal'value='{$postgrad_0_address_postal}'> 
	</li>
	<li id='li_country_4'>
<label> Country </label><input type='text' name='postgrad_0_address_country' id='postgrad_0_address_country'value='{$postgrad_0_address_country}'> 
	</li>
	<li id='li_line1_4'>
<label> Line1 </label><input type='text' name='postgrad_0_address_line1' id='postgrad_0_address_line1'value='{$postgrad_0_address_line1}'> 
	</li>
	<li id='li_state_4'>
<label> State </label><input type='text' name='postgrad_0_address_state' id='postgrad_0_address_state'value='{$postgrad_0_address_state}'> 
	</li>
</ul>
	</li>
	<li id='li_institution_3'>
<label> Institution </label><input type='text' name='postgrad_0_institution' id='postgrad_0_institution'value='{$postgrad_0_institution}'> 
	</li>
	<li id='li_speciality_3'>
<label> Speciality </label><input type='text' name='postgrad_0_speciality' id='postgrad_0_speciality'value='{$postgrad_0_speciality}'> 
	</li>
</ul>
	</li>
	<li id='li_[1]_2'>
<h4> [1] </h4><ul id='ul_[1]_3'>
	<li id='li_address_3'>
<label> Address </label><ul id='ul_address_4'>
	<li id='li_country_4'>
<label> Country </label><input type='text' name='postgrad_1_address_country' id='postgrad_1_address_country'value='{$postgrad_1_address_country}'> 
	</li>
	<li id='li_line1_4'>
<label> Line1 </label><input type='text' name='postgrad_1_address_line1' id='postgrad_1_address_line1'value='{$postgrad_1_address_line1}'> 
	</li>
	<li id='li_state_4'>
<label> State </label><input type='text' name='postgrad_1_address_state' id='postgrad_1_address_state'value='{$postgrad_1_address_state}'> 
	</li>
	<li id='li_postal_4'>
<label> Postal </label><input type='text' name='postgrad_1_address_postal' id='postgrad_1_address_postal'value='{$postgrad_1_address_postal}'> 
	</li>
	<li id='li_city_4'>
<label> City </label><input type='text' name='postgrad_1_address_city' id='postgrad_1_address_city'value='{$postgrad_1_address_city}'> 
	</li>
</ul>
	</li>
	<li id='li_program_3'>
<label> Program </label><label> Director </label><ul id='ul_director_5'>
	<li id='li_then_5'>
<label> Then </label><input type='text' name='postgrad_1_program_director_then' id='postgrad_1_program_director_then'value='{$postgrad_1_program_director_then}'> 
	</li>
	<li id='li_now_5'>
<label> Now </label><input type='text' name='postgrad_1_program_director_now' id='postgrad_1_program_director_now'value='{$postgrad_1_program_director_now}'> 
	</li>
</ul>
	</li>
	<li id='li_is_3'>
<label> Is </label><ul id='ul_is_4'>
	<li id='li_residency_4'>
<label> Residency </label><input type='checkbox' name='postgrad_1_is_residency' id='postgrad_1_is_residency' {if $postgrad_1_is_residency}CHECKED{/if}>
	</li>
	<li id='li_internship_4'>
<label> Internship </label><input type='checkbox' name='postgrad_1_is_internship' id='postgrad_1_is_internship' {if $postgrad_1_is_internship}CHECKED{/if}>
	</li>
	<li id='li_teaching_4'>
<label> Teaching </label><label> Position </label><input type='checkbox' name='postgrad_1_is_teaching_position' id='postgrad_1_is_teaching_position' {if $postgrad_1_is_teaching_position}CHECKED{/if}>
	</li>
	<li id='li_fellowship_4'>
<label> Fellowship </label><input type='checkbox' name='postgrad_1_is_fellowship' id='postgrad_1_is_fellowship' {if $postgrad_1_is_fellowship}CHECKED{/if}>
	</li>
</ul>
	</li>
	<li id='li_institution_3'>
<label> Institution </label><input type='text' name='postgrad_1_institution' id='postgrad_1_institution'value='{$postgrad_1_institution}'> 
	</li>
	<li id='li_speciality_3'>
<label> Speciality </label><input type='text' name='postgrad_1_speciality' id='postgrad_1_speciality'value='{$postgrad_1_speciality}'> 
	</li>
</ul>
	</li>
	<li id='li_is_2'>
<h4> Is </h4><label> Additional </label><label> Postgrad </label><input type='checkbox' name='postgrad_is_additional_postgrad' id='postgrad_is_additional_postgrad' {if $postgrad_is_additional_postgrad}CHECKED{/if}>
	</li>
</ul>
	</li>
	<li id='li_practice_1'>
<h3> Practice </h3><ul id='ul_practice_2'>
	<li id='li_is_2'>
<h4> Is </h4><label> More </label><label> Practices </label><input type='checkbox' name='practice_is_more_practices' id='practice_is_more_practices' {if $practice_is_more_practices}CHECKED{/if}>
	</li>
	<li id='li_[0]_2'>
<h4> [0] </h4><ul id='ul_[0]_3'>
	<li id='li_non_3'>
<label> Non </label><ul id='ul_non_4'>
	<li id='li_physician_4'>
<label> Physician </label><label> Provider </label><ul id='ul_provider_6'>
	<li id='li_[0]_6'>
<label> [0] </label><ul id='ul_[0]_7'>
	<li id='li_designation_7'>
<label> Designation </label><input type='text' name='practice_0_non_physician_provider_0_designation' id='practice_0_non_physician_provider_0_designation'value='{$practice_0_non_physician_provider_0_designation}'> 
	</li>
	<li id='li_state_7'>
<label> State </label><input type='text' name='practice_0_non_physician_provider_0_state' id='practice_0_non_physician_provider_0_state'value='{$practice_0_non_physician_provider_0_state}'> 
	</li>
	<li id='li_license_7'>
<label> License </label><label> Number </label><input type='text' name='practice_0_non_physician_provider_0_license_number' id='practice_0_non_physician_provider_0_license_number'value='{$practice_0_non_physician_provider_0_license_number}'> 
	</li>
</ul>
	</li>
	<li id='li_[2]_6'>
<label> [2] </label><ul id='ul_[2]_7'>
	<li id='li_license_7'>
<label> License </label><label> Number </label><input type='text' name='practice_0_non_physician_provider_2_license_number' id='practice_0_non_physician_provider_2_license_number'value='{$practice_0_non_physician_provider_2_license_number}'> 
	</li>
	<li id='li_state_7'>
<label> State </label><input type='text' name='practice_0_non_physician_provider_2_state' id='practice_0_non_physician_provider_2_state'value='{$practice_0_non_physician_provider_2_state}'> 
	</li>
	<li id='li_designation_7'>
<label> Designation </label><input type='text' name='practice_0_non_physician_provider_2_designation' id='practice_0_non_physician_provider_2_designation'value='{$practice_0_non_physician_provider_2_designation}'> 
	</li>
</ul>
	</li>
	<li id='li_[5]_6'>
<label> [5] </label><ul id='ul_[5]_7'>
	<li id='li_license_7'>
<label> License </label><label> Number </label><input type='text' name='practice_0_non_physician_provider_5_license_number' id='practice_0_non_physician_provider_5_license_number'value='{$practice_0_non_physician_provider_5_license_number}'> 
	</li>
	<li id='li_state_7'>
<label> State </label><input type='text' name='practice_0_non_physician_provider_5_state' id='practice_0_non_physician_provider_5_state'value='{$practice_0_non_physician_provider_5_state}'> 
	</li>
	<li id='li_designation_7'>
<label> Designation </label><input type='text' name='practice_0_non_physician_provider_5_designation' id='practice_0_non_physician_provider_5_designation'value='{$practice_0_non_physician_provider_5_designation}'> 
	</li>
</ul>
	</li>
	<li id='li_[1]_6'>
<label> [1] </label><ul id='ul_[1]_7'>
	<li id='li_state_7'>
<label> State </label><input type='text' name='practice_0_non_physician_provider_1_state' id='practice_0_non_physician_provider_1_state'value='{$practice_0_non_physician_provider_1_state}'> 
	</li>
	<li id='li_license_7'>
<label> License </label><label> Number </label><input type='text' name='practice_0_non_physician_provider_1_license_number' id='practice_0_non_physician_provider_1_license_number'value='{$practice_0_non_physician_provider_1_license_number}'> 
	</li>
	<li id='li_designation_7'>
<label> Designation </label><input type='text' name='practice_0_non_physician_provider_1_designation' id='practice_0_non_physician_provider_1_designation'value='{$practice_0_non_physician_provider_1_designation}'> 
	</li>
</ul>
	</li>
	<li id='li_[3]_6'>
<label> [3] </label><ul id='ul_[3]_7'>
	<li id='li_license_7'>
<label> License </label><label> Number </label><input type='text' name='practice_0_non_physician_provider_3_license_number' id='practice_0_non_physician_provider_3_license_number'value='{$practice_0_non_physician_provider_3_license_number}'> 
	</li>
	<li id='li_state_7'>
<label> State </label><input type='text' name='practice_0_non_physician_provider_3_state' id='practice_0_non_physician_provider_3_state'value='{$practice_0_non_physician_provider_3_state}'> 
	</li>
	<li id='li_designation_7'>
<label> Designation </label><input type='text' name='practice_0_non_physician_provider_3_designation' id='practice_0_non_physician_provider_3_designation'value='{$practice_0_non_physician_provider_3_designation}'> 
	</li>
</ul>
	</li>
	<li id='li_[4]_6'>
<label> [4] </label><ul id='ul_[4]_7'>
	<li id='li_state_7'>
<label> State </label><input type='text' name='practice_0_non_physician_provider_4_state' id='practice_0_non_physician_provider_4_state'value='{$practice_0_non_physician_provider_4_state}'> 
	</li>
	<li id='li_license_7'>
<label> License </label><label> Number </label><input type='text' name='practice_0_non_physician_provider_4_license_number' id='practice_0_non_physician_provider_4_license_number'value='{$practice_0_non_physician_provider_4_license_number}'> 
	</li>
	<li id='li_designation_7'>
<label> Designation </label><input type='text' name='practice_0_non_physician_provider_4_designation' id='practice_0_non_physician_provider_4_designation'value='{$practice_0_non_physician_provider_4_designation}'> 
	</li>
</ul>
	</li>
	<li id='li_name_6'>
<label> Name </label><ul id='ul_name_7'>
	<li id='li_[0]_7'>
<label> [0] </label><input type='text' name='practice_0_non_physician_provider_name_0' id='practice_0_non_physician_provider_name_0'value='{$practice_0_non_physician_provider_name_0}'> 
	</li>
	<li id='li_[1]_7'>
<label> [1] </label><input type='text' name='practice_0_non_physician_provider_name_1' id='practice_0_non_physician_provider_name_1'value='{$practice_0_non_physician_provider_name_1}'> 
	</li>
	<li id='li_[2]_7'>
<label> [2] </label><input type='text' name='practice_0_non_physician_provider_name_2' id='practice_0_non_physician_provider_name_2'value='{$practice_0_non_physician_provider_name_2}'> 
	</li>
	<li id='li_[3]_7'>
<label> [3] </label><input type='text' name='practice_0_non_physician_provider_name_3' id='practice_0_non_physician_provider_name_3'value='{$practice_0_non_physician_provider_name_3}'> 
	</li>
	<li id='li_[4]_7'>
<label> [4] </label><input type='text' name='practice_0_non_physician_provider_name_4' id='practice_0_non_physician_provider_name_4'value='{$practice_0_non_physician_provider_name_4}'> 
	</li>
	<li id='li_[5]_7'>
<label> [5] </label><input type='text' name='practice_0_non_physician_provider_name_5' id='practice_0_non_physician_provider_name_5'value='{$practice_0_non_physician_provider_name_5}'> 
	</li>
</ul>
	</li>
</ul>
	</li>
	<li id='li_english_4'>
<label> English </label><label> Spokenby </label><ul id='ul_spokenby_6'>
	<li id='li_provider_6'>
<label> Provider </label><input type='text' name='practice_0_non_english_spokenby_provider' id='practice_0_non_english_spokenby_provider'value='{$practice_0_non_english_spokenby_provider}'> 
	</li>
	<li id='li_staff_6'>
<label> Staff </label><input type='text' name='practice_0_non_english_spokenby_staff' id='practice_0_non_english_spokenby_staff'value='{$practice_0_non_english_spokenby_staff}'> 
	</li>
</ul>
	</li>
</ul>
	</li>
	<li id='li_is_3'>
<label> Is </label><ul id='ul_is_4'>
	<li id='li_xray_4'>
<label> Xray </label><label> Services </label><ul id='ul_services_6'>
	<li id='li_list_6'>
<label> List </label><label> Cert </label><input type='checkbox' name='practice_0_is_xray_services_list_cert' id='practice_0_is_xray_services_list_cert' {if $practice_0_is_xray_services_list_cert}CHECKED{/if}>
	</li>
	<li id='li_following_6'>
<label> Following </label><input type='checkbox' name='practice_0_is_xray_services_following' id='practice_0_is_xray_services_following' {if $practice_0_is_xray_services_following}CHECKED{/if}>
	</li>
</ul>
	</li>
	<li id='li_childcare_4'>
<label> Childcare </label><label> Services </label><input type='checkbox' name='practice_0_is_childcare_services' id='practice_0_is_childcare_services' {if $practice_0_is_childcare_services}CHECKED{/if}>
	</li>
	<li id='li_provider_4'>
<label> Provider </label><label> Cert </label><ul id='ul_cert_6'>
	<li id='li_advanced_6'>
<label> Advanced </label><label> Ob </label><label> Life </label><label> Support </label><input type='checkbox' name='practice_0_is_provider_cert_advanced_ob_life_support' id='practice_0_is_provider_cert_advanced_ob_life_support' {if $practice_0_is_provider_cert_advanced_ob_life_support}CHECKED{/if}>
	</li>
	<li id='li_other_6'>
<label> Other </label><input type='checkbox' name='practice_0_is_provider_cert_other' id='practice_0_is_provider_cert_other' {if $practice_0_is_provider_cert_other}CHECKED{/if}>
	</li>
	<li id='li_basic_6'>
<label> Basic </label><label> Life </label><label> Support </label><input type='checkbox' name='practice_0_is_provider_cert_basic_life_support' id='practice_0_is_provider_cert_basic_life_support' {if $practice_0_is_provider_cert_basic_life_support}CHECKED{/if}>
	</li>
	<li id='li_adv_6'>
<label> Adv </label><ul id='ul_adv_7'>
	<li id='li_neonatal_7'>
<label> Neonatal </label><label> Life </label><label> Support </label><input type='checkbox' name='practice_0_is_provider_cert_adv_neonatal_life_support' id='practice_0_is_provider_cert_adv_neonatal_life_support' {if $practice_0_is_provider_cert_adv_neonatal_life_support}CHECKED{/if}>
	</li>
	<li id='li_cardiac_7'>
<label> Cardiac </label><label> Life </label><label> Support </label><input type='checkbox' name='practice_0_is_provider_cert_adv_cardiac_life_support' id='practice_0_is_provider_cert_adv_cardiac_life_support' {if $practice_0_is_provider_cert_adv_cardiac_life_support}CHECKED{/if}>
	</li>
	<li id='li_trauma_7'>
<label> Trauma </label><label> Life </label><label> Support </label><input type='checkbox' name='practice_0_is_provider_cert_adv_trauma_life_support' id='practice_0_is_provider_cert_adv_trauma_life_support' {if $practice_0_is_provider_cert_adv_trauma_life_support}CHECKED{/if}>
	</li>
</ul>
	</li>
	<li id='li_pediatric_6'>
<label> Pediatric </label><label> Adv </label><label> Life </label><label> Support </label><input type='checkbox' name='practice_0_is_provider_cert_pediatric_adv_life_support' id='practice_0_is_provider_cert_pediatric_adv_life_support' {if $practice_0_is_provider_cert_pediatric_adv_life_support}CHECKED{/if}>
	</li>
	<li id='li_cardio_6'>
<label> Cardio </label><label> Pulmonary </label><label> Resuscitation </label><input type='checkbox' name='practice_0_is_provider_cert_cardio_pulmonary_resuscitation' id='practice_0_is_provider_cert_cardio_pulmonary_resuscitation' {if $practice_0_is_provider_cert_cardio_pulmonary_resuscitation}CHECKED{/if}>
	</li>
</ul>
	</li>
	<li id='li_lab_4'>
<label> Lab </label><label> Services </label><ul id='ul_services_6'>
	<li id='li_following_6'>
<label> Following </label><input type='checkbox' name='practice_0_is_lab_services_following' id='practice_0_is_lab_services_following' {if $practice_0_is_lab_services_following}CHECKED{/if}>
	</li>
	<li id='li_list_6'>
<label> List </label><label> Cert </label><input type='checkbox' name='practice_0_is_lab_services_list_cert' id='practice_0_is_lab_services_list_cert' {if $practice_0_is_lab_services_list_cert}CHECKED{/if}>
	</li>
</ul>
	</li>
	<li id='li_osteopathic_4'>
<label> Osteopathic </label><label> Manipulations </label><label> Services </label><input type='checkbox' name='practice_0_is_osteopathic_manipulations_services' id='practice_0_is_osteopathic_manipulations_services' {if $practice_0_is_osteopathic_manipulations_services}CHECKED{/if}>
	</li>
	<li id='li_other_4'>
<label> Other </label><label> Services </label><input type='checkbox' name='practice_0_is_other_services' id='practice_0_is_other_services' {if $practice_0_is_other_services}CHECKED{/if}>
	</li>
	<li id='li_trans_4'>
<label> Trans </label><ul id='ul_trans_5'>
	<li id='li_other_5'>
<label> Other </label><label> Accessible </label><input type='checkbox' name='practice_0_is_trans_other_accessible' id='practice_0_is_trans_other_accessible' {if $practice_0_is_trans_other_accessible}CHECKED{/if}>
	</li>
	<li id='li_bus_5'>
<label> Bus </label><label> Accessible </label><input type='checkbox' name='practice_0_is_trans_bus_accessible' id='practice_0_is_trans_bus_accessible' {if $practice_0_is_trans_bus_accessible}CHECKED{/if}>
	</li>
	<li id='li_train_5'>
<label> Train </label><label> Accessible </label><input type='checkbox' name='practice_0_is_trans_train_accessible' id='practice_0_is_trans_train_accessible' {if $practice_0_is_trans_train_accessible}CHECKED{/if}>
	</li>
</ul>
	</li>
	<li id='li_services_4'>
<label> Services </label><ul id='ul_services_5'>
	<li id='li_other_5'>
<label> Other </label><label> Disabled </label><input type='checkbox' name='practice_0_is_services_other_disabled' id='practice_0_is_services_other_disabled' {if $practice_0_is_services_other_disabled}CHECKED{/if}>
	</li>
	<li id='li_TTY_5'>
<label> TTY </label><label> Disabled </label><input type='checkbox' name='practice_0_is_services_TTY_disabled' id='practice_0_is_services_TTY_disabled' {if $practice_0_is_services_TTY_disabled}CHECKED{/if}>
	</li>
	<li id='li_mental_5'>
<label> Mental </label><label> Physical </label><label> Disabled </label><input type='checkbox' name='practice_0_is_services_mental_physical_disabled' id='practice_0_is_services_mental_physical_disabled' {if $practice_0_is_services_mental_physical_disabled}CHECKED{/if}>
	</li>
	<li id='li_ASL_5'>
<label> ASL </label><label> Disabled </label><input type='checkbox' name='practice_0_is_services_ASL_disabled' id='practice_0_is_services_ASL_disabled' {if $practice_0_is_services_ASL_disabled}CHECKED{/if}>
	</li>
</ul>
	</li>
	<li id='li_drawing_4'>
<label> Drawing </label><label> Blood </label><label> Services </label><input type='checkbox' name='practice_0_is_drawing_blood_services' id='practice_0_is_drawing_blood_services' {if $practice_0_is_drawing_blood_services}CHECKED{/if}>
	</li>
	<li id='li_iv_4'>
<label> Iv </label><label> Hydration </label><label> Treatments </label><label> Services </label><input type='checkbox' name='practice_0_is_iv_hydration_treatments_services' id='practice_0_is_iv_hydration_treatments_services' {if $practice_0_is_iv_hydration_treatments_services}CHECKED{/if}>
	</li>
	<li id='li_ada_4'>
<label> Ada </label><label> Accessibility </label><input type='checkbox' name='practice_0_is_ada_accessibility' id='practice_0_is_ada_accessibility' {if $practice_0_is_ada_accessibility}CHECKED{/if}>
	</li>
	<li id='li_allergy_4'>
<label> Allergy </label><ul id='ul_allergy_5'>
	<li id='li_injections_5'>
<label> Injections </label><label> Services </label><input type='checkbox' name='practice_0_is_allergy_injections_services' id='practice_0_is_allergy_injections_services' {if $practice_0_is_allergy_injections_services}CHECKED{/if}>
	</li>
	<li id='li_skin_5'>
<label> Skin </label><label> Tests </label><label> Services </label><input type='checkbox' name='practice_0_is_allergy_skin_tests_services' id='practice_0_is_allergy_skin_tests_services' {if $practice_0_is_allergy_skin_tests_services}CHECKED{/if}>
	</li>
</ul>
	</li>
	<li id='li_interpreters_4'>
<label> Interpreters </label><ul id='ul_interpreters_5'>
	<li id='li_[4]_5'>
<label> [4] </label><label> Lang </label><input type='checkbox' name='practice_0_is_interpreters_4_lang' id='practice_0_is_interpreters_4_lang' {if $practice_0_is_interpreters_4_lang}CHECKED{/if}>
	</li>
	<li id='li_[3]_5'>
<label> [3] </label><label> Lang </label><input type='checkbox' name='practice_0_is_interpreters_3_lang' id='practice_0_is_interpreters_3_lang' {if $practice_0_is_interpreters_3_lang}CHECKED{/if}>
	</li>
	<li id='li_[2]_5'>
<label> [2] </label><label> Lang </label><input type='checkbox' name='practice_0_is_interpreters_2_lang' id='practice_0_is_interpreters_2_lang' {if $practice_0_is_interpreters_2_lang}CHECKED{/if}>
	</li>
	<li id='li_[1]_5'>
<label> [1] </label><label> Lang </label><input type='checkbox' name='practice_0_is_interpreters_1_lang' id='practice_0_is_interpreters_1_lang' {if $practice_0_is_interpreters_1_lang}CHECKED{/if}>
	</li>
	<li id='li_[0]_5'>
<label> [0] </label><label> Lang </label><input type='checkbox' name='practice_0_is_interpreters_0_lang' id='practice_0_is_interpreters_0_lang' {if $practice_0_is_interpreters_0_lang}CHECKED{/if}>
	</li>
	<li id='li_avail_5'>
<label> Avail </label><input type='checkbox' name='practice_0_is_interpreters_avail' id='practice_0_is_interpreters_avail' {if $practice_0_is_interpreters_avail}CHECKED{/if}>
	</li>
</ul>
	</li>
	<li id='li_staff_4'>
<label> Staff </label><label> Cert </label><ul id='ul_cert_6'>
	<li id='li_other_6'>
<label> Other </label><input type='checkbox' name='practice_0_is_staff_cert_other' id='practice_0_is_staff_cert_other' {if $practice_0_is_staff_cert_other}CHECKED{/if}>
	</li>
	<li id='li_adv_6'>
<label> Adv </label><ul id='ul_adv_7'>
	<li id='li_cardiac_7'>
<label> Cardiac </label><label> Life </label><label> Support </label><input type='checkbox' name='practice_0_is_staff_cert_adv_cardiac_life_support' id='practice_0_is_staff_cert_adv_cardiac_life_support' {if $practice_0_is_staff_cert_adv_cardiac_life_support}CHECKED{/if}>
	</li>
	<li id='li_trauma_7'>
<label> Trauma </label><label> Life </label><label> Support </label><input type='checkbox' name='practice_0_is_staff_cert_adv_trauma_life_support' id='practice_0_is_staff_cert_adv_trauma_life_support' {if $practice_0_is_staff_cert_adv_trauma_life_support}CHECKED{/if}>
	</li>
	<li id='li_neonatal_7'>
<label> Neonatal </label><label> Life </label><label> Support </label><input type='checkbox' name='practice_0_is_staff_cert_adv_neonatal_life_support' id='practice_0_is_staff_cert_adv_neonatal_life_support' {if $practice_0_is_staff_cert_adv_neonatal_life_support}CHECKED{/if}>
	</li>
</ul>
	</li>
	<li id='li_advanced_6'>
<label> Advanced </label><label> Ob </label><label> Life </label><label> Support </label><input type='checkbox' name='practice_0_is_staff_cert_advanced_ob_life_support' id='practice_0_is_staff_cert_advanced_ob_life_support' {if $practice_0_is_staff_cert_advanced_ob_life_support}CHECKED{/if}>
	</li>
	<li id='li_basic_6'>
<label> Basic </label><label> Life </label><label> Support </label><input type='checkbox' name='practice_0_is_staff_cert_basic_life_support' id='practice_0_is_staff_cert_basic_life_support' {if $practice_0_is_staff_cert_basic_life_support}CHECKED{/if}>
	</li>
	<li id='li_cardio_6'>
<label> Cardio </label><label> Pulmonary </label><label> Resuscitation </label><input type='checkbox' name='practice_0_is_staff_cert_cardio_pulmonary_resuscitation' id='practice_0_is_staff_cert_cardio_pulmonary_resuscitation' {if $practice_0_is_staff_cert_cardio_pulmonary_resuscitation}CHECKED{/if}>
	</li>
	<li id='li_pediatric_6'>
<label> Pediatric </label><label> Adv </label><label> Life </label><label> Support </label><input type='checkbox' name='practice_0_is_staff_cert_pediatric_adv_life_support' id='practice_0_is_staff_cert_pediatric_adv_life_support' {if $practice_0_is_staff_cert_pediatric_adv_life_support}CHECKED{/if}>
	</li>
</ul>
	</li>
	<li id='li_flexible_4'>
<label> Flexible </label><label> Sigmoidoscopy </label><label> Services </label><input type='checkbox' name='practice_0_is_flexible_sigmoidoscopy_services' id='practice_0_is_flexible_sigmoidoscopy_services' {if $practice_0_is_flexible_sigmoidoscopy_services}CHECKED{/if}>
	</li>
	<li id='li_asthma_4'>
<label> Asthma </label><label> Treatments </label><label> Services </label><input type='checkbox' name='practice_0_is_asthma_treatments_services' id='practice_0_is_asthma_treatments_services' {if $practice_0_is_asthma_treatments_services}CHECKED{/if}>
	</li>
	<li id='li_physical_4'>
<label> Physical </label><label> Therapies </label><label> Services </label><input type='checkbox' name='practice_0_is_physical_therapies_services' id='practice_0_is_physical_therapies_services' {if $practice_0_is_physical_therapies_services}CHECKED{/if}>
	</li>
	<li id='li_age_4'>
<label> Age </label><label> Appropriate </label><label> Immunizations </label><label> Services </label><input type='checkbox' name='practice_0_is_age_appropriate_immunizations_services' id='practice_0_is_age_appropriate_immunizations_services' {if $practice_0_is_age_appropriate_immunizations_services}CHECKED{/if}>
	</li>
	<li id='li_anesthesia_4'>
<label> Anesthesia </label><label> Admin </label><input type='checkbox' name='practice_0_is_anesthesia_admin' id='practice_0_is_anesthesia_admin' {if $practice_0_is_anesthesia_admin}CHECKED{/if}>
	</li>
	<li id='li_minority_4'>
<label> Minority </label><label> Business </label><input type='checkbox' name='practice_0_is_minority_business' id='practice_0_is_minority_business' {if $practice_0_is_minority_business}CHECKED{/if}>
	</li>
	<li id='li_radiology_4'>
<label> Radiology </label><label> Services </label><input type='checkbox' name='practice_0_is_radiology_services' id='practice_0_is_radiology_services' {if $practice_0_is_radiology_services}CHECKED{/if}>
	</li>
	<li id='li_tympanometry_4'>
<label> Tympanometry </label><label> Audiometry </label><label> Services </label><input type='checkbox' name='practice_0_is_tympanometry_audiometry_services' id='practice_0_is_tympanometry_audiometry_services' {if $practice_0_is_tympanometry_audiometry_services}CHECKED{/if}>
	</li>
	<li id='li_routine_4'>
<label> Routine </label><label> Office </label><label> Gynecology </label><label> Services </label><input type='checkbox' name='practice_0_is_routine_office_gynecology_services' id='practice_0_is_routine_office_gynecology_services' {if $practice_0_is_routine_office_gynecology_services}CHECKED{/if}>
	</li>
	<li id='li_care_4'>
<label> Care </label><label> Minor </label><label> Lacerations </label><label> Services </label><input type='checkbox' name='practice_0_is_care_minor_lacerations_services' id='practice_0_is_care_minor_lacerations_services' {if $practice_0_is_care_minor_lacerations_services}CHECKED{/if}>
	</li>
	<li id='li_pulmonary_4'>
<label> Pulmonary </label><label> Function </label><label> Tests </label><label> Services </label><input type='checkbox' name='practice_0_is_pulmonary_function_tests_services' id='practice_0_is_pulmonary_function_tests_services' {if $practice_0_is_pulmonary_function_tests_services}CHECKED{/if}>
	</li>
	<li id='li_cardiac_4'>
<label> Cardiac </label><label> Stress </label><label> Test </label><label> Services </label><input type='checkbox' name='practice_0_is_cardiac_stress_test_services' id='practice_0_is_cardiac_stress_test_services' {if $practice_0_is_cardiac_stress_test_services}CHECKED{/if}>
	</li>
	<li id='li_ekg_4'>
<label> Ekg </label><input type='checkbox' name='practice_0_is_ekg' id='practice_0_is_ekg' {if $practice_0_is_ekg}CHECKED{/if}>
	</li>
</ul>
	</li>
	<li id='li_address_3'>
<label> Address </label><ul id='ul_address_4'>
	<li id='li_postal_4'>
<label> Postal </label><input type='text' name='practice_0_address_postal' id='practice_0_address_postal'value='{$practice_0_address_postal}'> 
	</li>
	<li id='li_is_4'>
<label> Is </label><label> Primary </label><input type='checkbox' name='practice_0_address_is_primary' id='practice_0_address_is_primary' {if $practice_0_address_is_primary}CHECKED{/if}>
	</li>
	<li id='li_city_4'>
<label> City </label><input type='text' name='practice_0_address_city' id='practice_0_address_city'value='{$practice_0_address_city}'> 
	</li>
	<li id='li_line1_4'>
<label> Line1 </label><input type='text' name='practice_0_address_line1' id='practice_0_address_line1'value='{$practice_0_address_line1}'> 
	</li>
	<li id='li_country_4'>
<label> Country </label><input type='text' name='practice_0_address_country' id='practice_0_address_country'value='{$practice_0_address_country}'> 
	</li>
	<li id='li_state_4'>
<label> State </label><input type='text' name='practice_0_address_state' id='practice_0_address_state'value='{$practice_0_address_state}'> 
	</li>
</ul>
	</li>
	<li id='li_accepts_3'>
<label> Accepts </label><ul id='ul_accepts_4'>
	<li id='li_all_4'>
<label> All </label><label> New </label><label> Patients </label><label> Is </label><input type='checkbox' name='practice_0_accepts_all_new_patients_is' id='practice_0_accepts_all_new_patients_is' {if $practice_0_accepts_all_new_patients_is}CHECKED{/if}>
	</li>
	<li id='li_new_4'>
<label> New </label><ul id='ul_new_5'>
	<li id='li_patients_5'>
<label> Patients </label><label> Referral </label><label> Is </label><input type='checkbox' name='practice_0_accepts_new_patients_referral_is' id='practice_0_accepts_new_patients_referral_is' {if $practice_0_accepts_new_patients_referral_is}CHECKED{/if}>
	</li>
	<li id='li_medicaid_5'>
<label> Medicaid </label><label> Patients </label><label> Is </label><input type='checkbox' name='practice_0_accepts_new_medicaid_patients_is' id='practice_0_accepts_new_medicaid_patients_is' {if $practice_0_accepts_new_medicaid_patients_is}CHECKED{/if}>
	</li>
	<li id='li_medicare_5'>
<label> Medicare </label><label> Patients </label><label> Is </label><input type='checkbox' name='practice_0_accepts_new_medicare_patients_is' id='practice_0_accepts_new_medicare_patients_is' {if $practice_0_accepts_new_medicare_patients_is}CHECKED{/if}>
	</li>
</ul>
	</li>
	<li id='li_vary_4'>
<label> Vary </label><label> By </label><label> Plan </label><label> New </label><label> Patients </label><label> Explanation </label><input type='text' name='practice_0_accepts_vary_by_plan_new_patients_explanation' id='practice_0_accepts_vary_by_plan_new_patients_explanation'value='{$practice_0_accepts_vary_by_plan_new_patients_explanation}'> 
	</li>
	<li id='li_existing_4'>
<label> Existing </label><label> Patients </label><label> Payor </label><label> Change </label><label> Is </label><input type='checkbox' name='practice_0_accepts_existing_patients_payor_change_is' id='practice_0_accepts_existing_patients_payor_change_is' {if $practice_0_accepts_existing_patients_payor_change_is}CHECKED{/if}>
	</li>
</ul>
	</li>
	<li id='li_limitations_3'>
<label> Limitations </label><ul id='ul_limitations_4'>
	<li id='li_age_4'>
<label> Age </label><label> Top </label><input type='text' name='practice_0_limitations_age_top' id='practice_0_limitations_age_top'value='{$practice_0_limitations_age_top}'> 
	</li>
	<li id='li_female_4'>
<label> Female </label><label> Only </label><label> Is </label><input type='checkbox' name='practice_0_limitations_female_only_is' id='practice_0_limitations_female_only_is' {if $practice_0_limitations_female_only_is}CHECKED{/if}>
	</li>
	<li id='li_other_4'>
<label> Other </label><ul id='ul_other_5'>
	<li id='li_is_5'>
<label> Is </label><input type='checkbox' name='practice_0_limitations_other_is' id='practice_0_limitations_other_is' {if $practice_0_limitations_other_is}CHECKED{/if}>
	</li>
	<li id='li_explanation_5'>
<label> Explanation </label><input type='text' name='practice_0_limitations_other_explanation' id='practice_0_limitations_other_explanation'value='{$practice_0_limitations_other_explanation}'> 
	</li>
</ul>
	</li>
	<li id='li_male_4'>
<label> Male </label><label> Only </label><label> Is </label><input type='checkbox' name='practice_0_limitations_male_only_is' id='practice_0_limitations_male_only_is' {if $practice_0_limitations_male_only_is}CHECKED{/if}>
	</li>
</ul>
	</li>
	<li id='li_billing_3'>
<label> Billing </label><label> Company </label><ul id='ul_company_5'>
	<li id='li_bill_5'>
<label> Bill </label><label> Electronic </label><label> Is </label><input type='checkbox' name='practice_0_billing_company_bill_electronic_is' id='practice_0_billing_company_bill_electronic_is' {if $practice_0_billing_company_bill_electronic_is}CHECKED{/if}>
	</li>
	<li id='li_fax_5'>
<label> Fax </label><input type='text' name='practice_0_billing_company_fax' id='practice_0_billing_company_fax'value='{$practice_0_billing_company_fax}'> 
	</li>
	<li id='li_billing_5'>
<label> Billing </label><label> Representative </label><input type='text' name='practice_0_billing_company_billing_representative' id='practice_0_billing_company_billing_representative'value='{$practice_0_billing_company_billing_representative}'> 
	</li>
	<li id='li_name_5'>
<label> Name </label><input type='text' name='practice_0_billing_company_name' id='practice_0_billing_company_name'value='{$practice_0_billing_company_name}'> 
	</li>
	<li id='li_address_5'>
<label> Address </label><ul id='ul_address_6'>
	<li id='li_state_6'>
<label> State </label><input type='text' name='practice_0_billing_company_address_state' id='practice_0_billing_company_address_state'value='{$practice_0_billing_company_address_state}'> 
	</li>
	<li id='li_city_6'>
<label> City </label><input type='text' name='practice_0_billing_company_address_city' id='practice_0_billing_company_address_city'value='{$practice_0_billing_company_address_city}'> 
	</li>
	<li id='li_line1_6'>
<label> Line1 </label><input type='text' name='practice_0_billing_company_address_line1' id='practice_0_billing_company_address_line1'value='{$practice_0_billing_company_address_line1}'> 
	</li>
	<li id='li_postal_6'>
<label> Postal </label><input type='text' name='practice_0_billing_company_address_postal' id='practice_0_billing_company_address_postal'value='{$practice_0_billing_company_address_postal}'> 
	</li>
	<li id='li_country_6'>
<label> Country </label><input type='text' name='practice_0_billing_company_address_country' id='practice_0_billing_company_address_country'value='{$practice_0_billing_company_address_country}'> 
	</li>
</ul>
	</li>
	<li id='li_phone_5'>
<label> Phone </label><input type='text' name='practice_0_billing_company_phone' id='practice_0_billing_company_phone'value='{$practice_0_billing_company_phone}'> 
	</li>
	<li id='li_email_5'>
<label> Email </label><input type='text' name='practice_0_billing_company_email' id='practice_0_billing_company_email'value='{$practice_0_billing_company_email}'> 
	</li>
	<li id='li_check_5'>
<label> Check </label><label> Payable </label><input type='text' name='practice_0_billing_company_check_payable' id='practice_0_billing_company_check_payable'value='{$practice_0_billing_company_check_payable}'> 
	</li>
</ul>
	</li>
	<li id='li_hours_3'>
<label> Hours </label><ul id='ul_hours_4'>
	<li id='li_monday_4'>
<label> Monday </label><label> Is </label><input type='checkbox' name='practice_0_hours_monday_is' id='practice_0_hours_monday_is' {if $practice_0_hours_monday_is}CHECKED{/if}>
	</li>
	<li id='li_thurday_4'>
<label> Thurday </label><label> Is </label><input type='checkbox' name='practice_0_hours_thurday_is' id='practice_0_hours_thurday_is' {if $practice_0_hours_thurday_is}CHECKED{/if}>
	</li>
	<li id='li_sunday_4'>
<label> Sunday </label><label> Is </label><input type='checkbox' name='practice_0_hours_sunday_is' id='practice_0_hours_sunday_is' {if $practice_0_hours_sunday_is}CHECKED{/if}>
	</li>
	<li id='li_friday_4'>
<label> Friday </label><label> Is </label><input type='checkbox' name='practice_0_hours_friday_is' id='practice_0_hours_friday_is' {if $practice_0_hours_friday_is}CHECKED{/if}>
	</li>
	<li id='li_saturday_4'>
<label> Saturday </label><label> Is </label><input type='checkbox' name='practice_0_hours_saturday_is' id='practice_0_hours_saturday_is' {if $practice_0_hours_saturday_is}CHECKED{/if}>
	</li>
	<li id='li_tuesday_4'>
<label> Tuesday </label><label> Is </label><input type='checkbox' name='practice_0_hours_tuesday_is' id='practice_0_hours_tuesday_is' {if $practice_0_hours_tuesday_is}CHECKED{/if}>
	</li>
	<li id='li_wednesday_4'>
<label> Wednesday </label><label> Is </label><input type='checkbox' name='practice_0_hours_wednesday_is' id='practice_0_hours_wednesday_is' {if $practice_0_hours_wednesday_is}CHECKED{/if}>
	</li>
</ul>
	</li>
	<li id='li_current_3'>
<label> Current </label><label> Practice </label><label> Location </label><label> Is </label><input type='checkbox' name='practice_0_current_practice_location_is' id='practice_0_current_practice_location_is' {if $practice_0_current_practice_location_is}CHECKED{/if}>
	</li>
	<li id='li_credentialing_3'>
<label> Credentialing </label><label> Contact </label><ul id='ul_contact_5'>
	<li id='li_address_5'>
<label> Address </label><ul id='ul_address_6'>
	<li id='li_city_6'>
<label> City </label><input type='text' name='practice_0_credentialing_contact_address_city' id='practice_0_credentialing_contact_address_city'value='{$practice_0_credentialing_contact_address_city}'> 
	</li>
	<li id='li_state_6'>
<label> State </label><input type='text' name='practice_0_credentialing_contact_address_state' id='practice_0_credentialing_contact_address_state'value='{$practice_0_credentialing_contact_address_state}'> 
	</li>
	<li id='li_line1_6'>
<label> Line1 </label><input type='text' name='practice_0_credentialing_contact_address_line1' id='practice_0_credentialing_contact_address_line1'value='{$practice_0_credentialing_contact_address_line1}'> 
	</li>
	<li id='li_postal_6'>
<label> Postal </label><input type='text' name='practice_0_credentialing_contact_address_postal' id='practice_0_credentialing_contact_address_postal'value='{$practice_0_credentialing_contact_address_postal}'> 
	</li>
	<li id='li_country_6'>
<label> Country </label><input type='text' name='practice_0_credentialing_contact_address_country' id='practice_0_credentialing_contact_address_country'value='{$practice_0_credentialing_contact_address_country}'> 
	</li>
</ul>
	</li>
	<li id='li_0_5'>
<label> 0 </label><input type='text' name='practice_0_credentialing_contact' id='practice_0_credentialing_contact'value='{$practice_0_credentialing_contact}'> 
	</li>
	<li id='li_fax_5'>
<label> Fax </label><input type='text' name='practice_0_credentialing_contact_fax' id='practice_0_credentialing_contact_fax'value='{$practice_0_credentialing_contact_fax}'> 
	</li>
	<li id='li_email_5'>
<label> Email </label><input type='text' name='practice_0_credentialing_contact_email' id='practice_0_credentialing_contact_email'value='{$practice_0_credentialing_contact_email}'> 
	</li>
	<li id='li_phone_5'>
<label> Phone </label><input type='text' name='practice_0_credentialing_contact_phone' id='practice_0_credentialing_contact_phone'value='{$practice_0_credentialing_contact_phone}'> 
	</li>
</ul>
	</li>
	<li id='li_group_3'>
<label> Group </label><ul id='ul_group_4'>
	<li id='li_name_4'>
<label> Name </label><label> Corresponding </label><label> Tax </label><label> Id </label><input type='text' name='practice_0_group_name_corresponding_tax_id' id='practice_0_group_name_corresponding_tax_id'value='{$practice_0_group_name_corresponding_tax_id}'> 
	</li>
	<li id='li_number_4'>
<label> Number </label><label> Corresponding </label><label> Tax </label><label> Id </label><input type='text' name='practice_0_group_number_corresponding_tax_id' id='practice_0_group_number_corresponding_tax_id'value='{$practice_0_group_number_corresponding_tax_id}'> 
	</li>
</ul>
	</li>
	<li id='li_handicapped_3'>
<label> Handicapped </label><label> Access </label><ul id='ul_access_5'>
	<li id='li_other_5'>
<label> Other </label><ul id='ul_other_6'>
	<li id='li_0_6'>
<label> 0 </label><input type='text' name='practice_0_handicapped_access_other' id='practice_0_handicapped_access_other'value='{$practice_0_handicapped_access_other}'> 
	</li>
	<li id='li_is_6'>
<label> Is </label><input type='checkbox' name='practice_0_handicapped_access_other_is' id='practice_0_handicapped_access_other_is' {if $practice_0_handicapped_access_other_is}CHECKED{/if}>
	</li>
</ul>
	</li>
	<li id='li_building_5'>
<label> Building </label><label> Is </label><input type='checkbox' name='practice_0_handicapped_access_building_is' id='practice_0_handicapped_access_building_is' {if $practice_0_handicapped_access_building_is}CHECKED{/if}>
	</li>
	<li id='li_parking_5'>
<label> Parking </label><label> Is </label><input type='checkbox' name='practice_0_handicapped_access_parking_is' id='practice_0_handicapped_access_parking_is' {if $practice_0_handicapped_access_parking_is}CHECKED{/if}>
	</li>
	<li id='li_restroom_5'>
<label> Restroom </label><label> Is </label><input type='checkbox' name='practice_0_handicapped_access_restroom_is' id='practice_0_handicapped_access_restroom_is' {if $practice_0_handicapped_access_restroom_is}CHECKED{/if}>
	</li>
</ul>
	</li>
	<li id='li_office_3'>
<label> Office </label><ul id='ul_office_4'>
	<li id='li_manager_4'>
<label> Manager </label><label> Or </label><ul id='ul_or_6'>
	<li id='li_contact_6'>
<label> Contact </label><input type='text' name='practice_0_office_manager_or_contact' id='practice_0_office_manager_or_contact'value='{$practice_0_office_manager_or_contact}'> 
	</li>
	<li id='li_cantact_6'>
<label> Cantact </label><ul id='ul_cantact_7'>
	<li id='li_phone_7'>
<label> Phone </label><input type='text' name='practice_0_office_manager_or_cantact_phone' id='practice_0_office_manager_or_cantact_phone'value='{$practice_0_office_manager_or_cantact_phone}'> 
	</li>
	<li id='li_fax_7'>
<label> Fax </label><input type='text' name='practice_0_office_manager_or_cantact_fax' id='practice_0_office_manager_or_cantact_fax'value='{$practice_0_office_manager_or_cantact_fax}'> 
	</li>
</ul>
	</li>
</ul>
	</li>
	<li id='li_phone_4'>
<label> Phone </label><input type='text' name='practice_0_office_phone' id='practice_0_office_phone'value='{$practice_0_office_phone}'> 
	</li>
</ul>
	</li>
	<li id='li_anesthesia_3'>
<label> Anesthesia </label><label> Admin </label><ul id='ul_admin_5'>
	<li id='li_name_5'>
<label> Name </label><input type='text' name='practice_0_anesthesia_admin_name' id='practice_0_anesthesia_admin_name'value='{$practice_0_anesthesia_admin_name}'> 
	</li>
	<li id='li_classes_5'>
<label> Classes </label><input type='text' name='practice_0_anesthesia_admin_classes' id='practice_0_anesthesia_admin_classes'value='{$practice_0_anesthesia_admin_classes}'> 
	</li>
</ul>
	</li>
	<li id='li_24hour_3'>
<label> 24hour </label><ul id='ul_24hour_4'>
	<li id='li_coverage_4'>
<label> Coverage </label><ul id='ul_coverage_5'>
	<li id='li_voicemail_5'>
<label> Voicemail </label><label> Service </label><ul id='ul_service_7'>
	<li id='li_other_7'>
<label> Other </label><label> Is </label><input type='checkbox' name='practice_0_24hour_coverage_voicemail_service_other_is' id='practice_0_24hour_coverage_voicemail_service_other_is' {if $practice_0_24hour_coverage_voicemail_service_other_is}CHECKED{/if}>
	</li>
	<li id='li_is_7'>
<label> Is </label><input type='checkbox' name='practice_0_24hour_coverage_voicemail_service_is' id='practice_0_24hour_coverage_voicemail_service_is' {if $practice_0_24hour_coverage_voicemail_service_is}CHECKED{/if}>
	</li>
</ul>
	</li>
	<li id='li_answering_5'>
<label> Answering </label><label> Service </label><label> Is </label><input type='checkbox' name='practice_0_24hour_coverage_answering_service_is' id='practice_0_24hour_coverage_answering_service_is' {if $practice_0_24hour_coverage_answering_service_is}CHECKED{/if}>
	</li>
</ul>
	</li>
	<li id='li_coveragene_4'>
<label> Coveragene </label><label> Is </label><input type='checkbox' name='practice_0_24hour_coveragene_is' id='practice_0_24hour_coveragene_is' {if $practice_0_24hour_coveragene_is}CHECKED{/if}>
	</li>
</ul>
	</li>
	<li id='li_lab_3'>
<label> Lab </label><label> Services </label><label> Cert </label><label> List </label><input type='text' name='practice_0_lab_services_cert_list' id='practice_0_lab_services_cert_list'value='{$practice_0_lab_services_cert_list}'> 
	</li>
	<li id='li_name_3'>
<label> Name </label><ul id='ul_name_4'>
	<li id='li_IRS_4'>
<label> IRS </label><input type='text' name='practice_0_name_IRS' id='practice_0_name_IRS'value='{$practice_0_name_IRS}'> 
	</li>
	<li id='li_0_4'>
<label> 0 </label><input type='text' name='practice_0_name' id='practice_0_name'value='{$practice_0_name}'> 
	</li>
</ul>
	</li>
	<li id='li_service_3'>
<label> Service </label><label> Type </label><ul id='ul_type_5'>
	<li id='li_solo_5'>
<label> Solo </label><ul id='ul_solo_6'>
	<li id='li_specialty_6'>
<label> Specialty </label><label> Is </label><input type='checkbox' name='practice_0_service_type_solo_specialty_is' id='practice_0_service_type_solo_specialty_is' {if $practice_0_service_type_solo_specialty_is}CHECKED{/if}>
	</li>
	<li id='li_primary_6'>
<label> Primary </label><label> Is </label><input type='checkbox' name='practice_0_service_type_solo_primary_is' id='practice_0_service_type_solo_primary_is' {if $practice_0_service_type_solo_primary_is}CHECKED{/if}>
	</li>
</ul>
	</li>
	<li id='li_group_5'>
<label> Group </label><ul id='ul_group_6'>
	<li id='li_primary_6'>
<label> Primary </label><label> Is </label><input type='checkbox' name='practice_0_service_type_group_primary_is' id='practice_0_service_type_group_primary_is' {if $practice_0_service_type_group_primary_is}CHECKED{/if}>
	</li>
	<li id='li_multi_6'>
<label> Multi </label><label> Speciality </label><label> Is </label><input type='checkbox' name='practice_0_service_type_group_multi_speciality_is' id='practice_0_service_type_group_multi_speciality_is' {if $practice_0_service_type_group_multi_speciality_is}CHECKED{/if}>
	</li>
	<li id='li_single_6'>
<label> Single </label><label> Specialty </label><label> Is </label><input type='checkbox' name='practice_0_service_type_group_single_specialty_is' id='practice_0_service_type_group_single_specialty_is' {if $practice_0_service_type_group_single_specialty_is}CHECKED{/if}>
	</li>
</ul>
	</li>
</ul>
	</li>
	<li id='li_trans_3'>
<label> Trans </label><label> Other </label><label> Accessible </label><label> Explanation </label><input type='text' name='practice_0_trans_other_accessible_explanation' id='practice_0_trans_other_accessible_explanation'value='{$practice_0_trans_other_accessible_explanation}'> 
	</li>
	<li id='li_xray_3'>
<label> Xray </label><label> Services </label><label> Cert </label><label> List </label><input type='text' name='practice_0_xray_services_cert_list' id='practice_0_xray_services_cert_list'value='{$practice_0_xray_services_cert_list}'> 
	</li>
	<li id='li_if_3'>
<label> If </label><label> Hospital </label><label> Based </label><label> Department </label><label> Name </label><input type='text' name='practice_0_if_hospital_based_department_name' id='practice_0_if_hospital_based_department_name'value='{$practice_0_if_hospital_based_department_name}'> 
	</li>
	<li id='li_location_3'>
<label> Location </label><label> Listed </label><label> In </label><label> Dir </label><label> Is </label><input type='checkbox' name='practice_0_location_listed_in_dir_is' id='practice_0_location_listed_in_dir_is' {if $practice_0_location_listed_in_dir_is}CHECKED{/if}>
	</li>
	<li id='li_provider_3'>
<label> Provider </label><label> Cert </label><label> Other </label><label> Specify </label><input type='text' name='practice_0_provider_cert_other_specify' id='practice_0_provider_cert_other_specify'value='{$practice_0_provider_cert_other_specify}'> 
	</li>
	<li id='li_services_3'>
<label> Services </label><label> Other </label><label> Disabled </label><label> Explanation </label><input type='text' name='practice_0_services_other_disabled_explanation' id='practice_0_services_other_disabled_explanation'value='{$practice_0_services_other_disabled_explanation}'> 
	</li>
	<li id='li_additional_3'>
<label> Additional </label><label> Office </label><label> Procedures </label><input type='text' name='practice_0_additional_office_procedures' id='practice_0_additional_office_procedures'value='{$practice_0_additional_office_procedures}'> 
	</li>
	<li id='li_email_3'>
<label> Email </label><input type='text' name='practice_0_email' id='practice_0_email'value='{$practice_0_email}'> 
	</li>
	<li id='li_other_3'>
<label> Other </label><label> Services </label><label> Explanation </label><input type='text' name='practice_0_other_services_explanation' id='practice_0_other_services_explanation'value='{$practice_0_other_services_explanation}'> 
	</li>
	<li id='li_phone_3'>
<label> Phone </label><input type='text' name='practice_0_phone' id='practice_0_phone'value='{$practice_0_phone}'> 
	</li>
	<li id='li_site_3'>
<label> Site </label><label> Medicaid </label><label> Number </label><input type='text' name='practice_0_site_medicaid_number' id='practice_0_site_medicaid_number'value='{$practice_0_site_medicaid_number}'> 
	</li>
	<li id='li_fax_3'>
<label> Fax </label><input type='text' name='practice_0_fax' id='practice_0_fax'value='{$practice_0_fax}'> 
	</li>
	<li id='li_tax_3'>
<label> Tax </label><label> Id </label><label> Number </label><input type='text' name='practice_0_tax_id_number' id='practice_0_tax_id_number'value='{$practice_0_tax_id_number}'> 
	</li>
</ul>
	</li>
	<li id='li_0n_2'>
<h4> 0n </h4><label> Physician </label><label> Provider </label><label> Is </label><input type='checkbox' name='practice_0n_physician_provider_is' id='practice_0n_physician_provider_is' {if $practice_0n_physician_provider_is}CHECKED{/if}>
	</li>
</ul>
	</li>
	<li id='li_reference_1'>
<h3> Reference </h3><ul id='ul_reference_2'>
	<li id='li_[0]_2'>
<h4> [0] </h4><ul id='ul_[0]_3'>
	<li id='li_title_3'>
<label> Title </label><input type='text' name='reference_0_title' id='reference_0_title'value='{$reference_0_title}'> 
	</li>
	<li id='li_address_3'>
<label> Address </label><ul id='ul_address_4'>
	<li id='li_postal_4'>
<label> Postal </label><input type='text' name='reference_0_address_postal' id='reference_0_address_postal'value='{$reference_0_address_postal}'> 
	</li>
	<li id='li_city_4'>
<label> City </label><input type='text' name='reference_0_address_city' id='reference_0_address_city'value='{$reference_0_address_city}'> 
	</li>
	<li id='li_state_4'>
<label> State </label><input type='text' name='reference_0_address_state' id='reference_0_address_state'value='{$reference_0_address_state}'> 
	</li>
	<li id='li_country_4'>
<label> Country </label><input type='text' name='reference_0_address_country' id='reference_0_address_country'value='{$reference_0_address_country}'> 
	</li>
	<li id='li_line1_4'>
<label> Line1 </label><input type='text' name='reference_0_address_line1' id='reference_0_address_line1'value='{$reference_0_address_line1}'> 
	</li>
</ul>
	</li>
	<li id='li_phone_3'>
<label> Phone </label><input type='text' name='reference_0_phone' id='reference_0_phone'value='{$reference_0_phone}'> 
	</li>
	<li id='li_name_3'>
<label> Name </label><input type='text' name='reference_0_name' id='reference_0_name'value='{$reference_0_name}'> 
	</li>
</ul>
	</li>
	<li id='li_[2]_2'>
<h4> [2] </h4><ul id='ul_[2]_3'>
	<li id='li_phone_3'>
<label> Phone </label><input type='text' name='reference_2_phone' id='reference_2_phone'value='{$reference_2_phone}'> 
	</li>
	<li id='li_address_3'>
<label> Address </label><ul id='ul_address_4'>
	<li id='li_state_4'>
<label> State </label><input type='text' name='reference_2_address_state' id='reference_2_address_state'value='{$reference_2_address_state}'> 
	</li>
	<li id='li_line1_4'>
<label> Line1 </label><input type='text' name='reference_2_address_line1' id='reference_2_address_line1'value='{$reference_2_address_line1}'> 
	</li>
	<li id='li_country_4'>
<label> Country </label><input type='text' name='reference_2_address_country' id='reference_2_address_country'value='{$reference_2_address_country}'> 
	</li>
	<li id='li_postal_4'>
<label> Postal </label><input type='text' name='reference_2_address_postal' id='reference_2_address_postal'value='{$reference_2_address_postal}'> 
	</li>
</ul>
	</li>
	<li id='li_name_3'>
<label> Name </label><input type='text' name='reference_2_name' id='reference_2_name'value='{$reference_2_name}'> 
	</li>
</ul>
	</li>
	<li id='li_[1]_2'>
<h4> [1] </h4><ul id='ul_[1]_3'>
	<li id='li_address_3'>
<label> Address </label><ul id='ul_address_4'>
	<li id='li_line1_4'>
<label> Line1 </label><input type='text' name='reference_1_address_line1' id='reference_1_address_line1'value='{$reference_1_address_line1}'> 
	</li>
	<li id='li_state_4'>
<label> State </label><input type='text' name='reference_1_address_state' id='reference_1_address_state'value='{$reference_1_address_state}'> 
	</li>
	<li id='li_postal_4'>
<label> Postal </label><input type='text' name='reference_1_address_postal' id='reference_1_address_postal'value='{$reference_1_address_postal}'> 
	</li>
	<li id='li_city_4'>
<label> City </label><input type='text' name='reference_1_address_city' id='reference_1_address_city'value='{$reference_1_address_city}'> 
	</li>
	<li id='li_country_4'>
<label> Country </label><input type='text' name='reference_1_address_country' id='reference_1_address_country'value='{$reference_1_address_country}'> 
	</li>
</ul>
	</li>
	<li id='li_name_3'>
<label> Name </label><input type='text' name='reference_1_name' id='reference_1_name'value='{$reference_1_name}'> 
	</li>
	<li id='li_title_3'>
<label> Title </label><input type='text' name='reference_1_title' id='reference_1_title'value='{$reference_1_title}'> 
	</li>
	<li id='li_phone_3'>
<label> Phone </label><input type='text' name='reference_1_phone' id='reference_1_phone'value='{$reference_1_phone}'> 
	</li>
</ul>
	</li>
</ul>
	</li>
	<li id='li_signature_1'>
<h3> Signature </h3><ul id='ul_signature_2'>
	<li id='li_0_2'>
<h4> 0 </h4><input type='text' name='signature' id='signature'value='{$signature}'> 
	</li>
	<li id='li_last4_2'>
<h4> Last4 </h4><label> Ssn </label><input type='text' name='signature_last4_ssn' id='signature_last4_ssn'value='{$signature_last4_ssn}'> 
	</li>
	<li id='li_name_2'>
<h4> Name </h4><input type='text' name='signature_name' id='signature_name'value='{$signature_name}'> 
	</li>
	<li id='li_initial_2'>
<h4> Initial </h4><input type='text' name='signature_initial' id='signature_initial'value='{$signature_initial}'> 
	</li>
	<li id='li_npi_2'>
<h4> Npi </h4><input type='text' name='signature_npi' id='signature_npi'value='{$signature_npi}'> 
	</li>
</ul>
	</li>
	<li id='li_specialty_1'>
<h3> Specialty </h3><ul id='ul_specialty_2'>
	<li id='li_[1]_2'>
<h4> [1] </h4><ul id='ul_[1]_3'>
	<li id='li_pos_3'>
<label> Pos </label><label> Listed </label><ul id='ul_listed_5'>
	<li id='li_yes_5'>
<label> Yes </label><input type='text' name='specialty_1_pos_listed_yes' id='specialty_1_pos_listed_yes'value='{$specialty_1_pos_listed_yes}'> 
	</li>
	<li id='li_no_5'>
<label> No </label><input type='text' name='specialty_1_pos_listed_no' id='specialty_1_pos_listed_no'value='{$specialty_1_pos_listed_no}'> 
	</li>
</ul>
	</li>
	<li id='li_is_3'>
<label> Is </label><ul id='ul_is_4'>
	<li id='li_taken_4'>
<label> Taken </label><label> Exam </label><label> Results </label><label> Pending </label><input type='checkbox' name='specialty_1_is_taken_exam_results_pending' id='specialty_1_is_taken_exam_results_pending' {if $specialty_1_is_taken_exam_results_pending}CHECKED{/if}>
	</li>
	<li id='li_board_4'>
<label> Board </label><label> Certified </label><input type='checkbox' name='specialty_1_is_board_certified' id='specialty_1_is_board_certified' {if $specialty_1_is_board_certified}CHECKED{/if}>
	</li>
	<li id='li_intending_4'>
<label> Intending </label><label> Sit </label><label> Boards </label><input type='checkbox' name='specialty_1_is_intending_sit_boards' id='specialty_1_is_intending_sit_boards' {if $specialty_1_is_intending_sit_boards}CHECKED{/if}>
	</li>
	<li id='li_takenpart1_4'>
<label> Takenpart1 </label><label> Eligiblefor2 </label><input type='checkbox' name='specialty_1_is_takenpart1_eligiblefor2' id='specialty_1_is_takenpart1_eligiblefor2' {if $specialty_1_is_takenpart1_eligiblefor2}CHECKED{/if}>
	</li>
</ul>
	</li>
	<li id='li_ppo_3'>
<label> Ppo </label><label> Listed </label><ul id='ul_listed_5'>
	<li id='li_yes_5'>
<label> Yes </label><input type='text' name='specialty_1_ppo_listed_yes' id='specialty_1_ppo_listed_yes'value='{$specialty_1_ppo_listed_yes}'> 
	</li>
	<li id='li_no_5'>
<label> No </label><input type='text' name='specialty_1_ppo_listed_no' id='specialty_1_ppo_listed_no'value='{$specialty_1_ppo_listed_no}'> 
	</li>
</ul>
	</li>
	<li id='li_type_3'>
<label> Type </label><input type='text' name='specialty_1_type' id='specialty_1_type'value='{$specialty_1_type}'> 
	</li>
	<li id='li_hmo_3'>
<label> Hmo </label><label> Listed </label><ul id='ul_listed_5'>
	<li id='li_no_5'>
<label> No </label><input type='text' name='specialty_1_hmo_listed_no' id='specialty_1_hmo_listed_no'value='{$specialty_1_hmo_listed_no}'> 
	</li>
	<li id='li_yes_5'>
<label> Yes </label><input type='text' name='specialty_1_hmo_listed_yes' id='specialty_1_hmo_listed_yes'value='{$specialty_1_hmo_listed_yes}'> 
	</li>
</ul>
	</li>
	<li id='li_ist_3'>
<label> Ist </label><label> Planning </label><label> Takeboards </label><input type='checkbox' name='specialty_1_ist_planning_takeboards' id='specialty_1_ist_planning_takeboards' {if $specialty_1_ist_planning_takeboards}CHECKED{/if}>
	</li>
	<li id='li_certifying_3'>
<label> Certifying </label><label> Board </label><input type='text' name='specialty_1_certifying_board' id='specialty_1_certifying_board'value='{$specialty_1_certifying_board}'> 
	</li>
</ul>
	</li>
	<li id='li_[0]_2'>
<h4> [0] </h4><ul id='ul_[0]_3'>
	<li id='li_is_3'>
<label> Is </label><ul id='ul_is_4'>
	<li id='li_takenpart1_4'>
<label> Takenpart1 </label><label> Eligiblefor2 </label><input type='checkbox' name='specialty_0_is_takenpart1_eligiblefor2' id='specialty_0_is_takenpart1_eligiblefor2' {if $specialty_0_is_takenpart1_eligiblefor2}CHECKED{/if}>
	</li>
	<li id='li_taken_4'>
<label> Taken </label><label> Exam </label><label> Results </label><label> Pending </label><input type='checkbox' name='specialty_0_is_taken_exam_results_pending' id='specialty_0_is_taken_exam_results_pending' {if $specialty_0_is_taken_exam_results_pending}CHECKED{/if}>
	</li>
	<li id='li_intending_4'>
<label> Intending </label><label> Sit </label><label> Boards </label><input type='checkbox' name='specialty_0_is_intending_sit_boards' id='specialty_0_is_intending_sit_boards' {if $specialty_0_is_intending_sit_boards}CHECKED{/if}>
	</li>
	<li id='li_board_4'>
<label> Board </label><label> Certified </label><input type='checkbox' name='specialty_0_is_board_certified' id='specialty_0_is_board_certified' {if $specialty_0_is_board_certified}CHECKED{/if}>
	</li>
</ul>
	</li>
	<li id='li_type_3'>
<label> Type </label><input type='text' name='specialty_0_type' id='specialty_0_type'value='{$specialty_0_type}'> 
	</li>
	<li id='li_ppo_3'>
<label> Ppo </label><label> Listed </label><ul id='ul_listed_5'>
	<li id='li_yes_5'>
<label> Yes </label><input type='text' name='specialty_0_ppo_listed_yes' id='specialty_0_ppo_listed_yes'value='{$specialty_0_ppo_listed_yes}'> 
	</li>
	<li id='li_no_5'>
<label> No </label><input type='text' name='specialty_0_ppo_listed_no' id='specialty_0_ppo_listed_no'value='{$specialty_0_ppo_listed_no}'> 
	</li>
</ul>
	</li>
	<li id='li_hmo_3'>
<label> Hmo </label><label> Listed </label><ul id='ul_listed_5'>
	<li id='li_yes_5'>
<label> Yes </label><input type='text' name='specialty_0_hmo_listed_yes' id='specialty_0_hmo_listed_yes'value='{$specialty_0_hmo_listed_yes}'> 
	</li>
	<li id='li_no_5'>
<label> No </label><input type='text' name='specialty_0_hmo_listed_no' id='specialty_0_hmo_listed_no'value='{$specialty_0_hmo_listed_no}'> 
	</li>
</ul>
	</li>
	<li id='li_certifying_3'>
<label> Certifying </label><label> Board </label><input type='text' name='specialty_0_certifying_board' id='specialty_0_certifying_board'value='{$specialty_0_certifying_board}'> 
	</li>
	<li id='li_pos_3'>
<label> Pos </label><label> Listed </label><ul id='ul_listed_5'>
	<li id='li_yes_5'>
<label> Yes </label><input type='text' name='specialty_0_pos_listed_yes' id='specialty_0_pos_listed_yes'value='{$specialty_0_pos_listed_yes}'> 
	</li>
	<li id='li_no_5'>
<label> No </label><input type='text' name='specialty_0_pos_listed_no' id='specialty_0_pos_listed_no'value='{$specialty_0_pos_listed_no}'> 
	</li>
</ul>
	</li>
	<li id='li_ist_3'>
<label> Ist </label><label> Planning </label><label> Takeboards </label><input type='checkbox' name='specialty_0_ist_planning_takeboards' id='specialty_0_ist_planning_takeboards' {if $specialty_0_ist_planning_takeboards}CHECKED{/if}>
	</li>
</ul>
	</li>
	<li id='li_[2]_2'>
<h4> [2] </h4><ul id='ul_[2]_3'>
	<li id='li_type_3'>
<label> Type </label><input type='text' name='specialty_2_type' id='specialty_2_type'value='{$specialty_2_type}'> 
	</li>
	<li id='li_is_3'>
<label> Is </label><ul id='ul_is_4'>
	<li id='li_intending_4'>
<label> Intending </label><label> Sit </label><label> Boards </label><input type='checkbox' name='specialty_2_is_intending_sit_boards' id='specialty_2_is_intending_sit_boards' {if $specialty_2_is_intending_sit_boards}CHECKED{/if}>
	</li>
	<li id='li_board_4'>
<label> Board </label><label> Certified </label><input type='checkbox' name='specialty_2_is_board_certified' id='specialty_2_is_board_certified' {if $specialty_2_is_board_certified}CHECKED{/if}>
	</li>
	<li id='li_takenpart1_4'>
<label> Takenpart1 </label><label> Eligiblefor2 </label><input type='checkbox' name='specialty_2_is_takenpart1_eligiblefor2' id='specialty_2_is_takenpart1_eligiblefor2' {if $specialty_2_is_takenpart1_eligiblefor2}CHECKED{/if}>
	</li>
	<li id='li_taken_4'>
<label> Taken </label><label> Exam </label><label> Results </label><label> Pending </label><input type='checkbox' name='specialty_2_is_taken_exam_results_pending' id='specialty_2_is_taken_exam_results_pending' {if $specialty_2_is_taken_exam_results_pending}CHECKED{/if}>
	</li>
</ul>
	</li>
	<li id='li_certifying_3'>
<label> Certifying </label><label> Board </label><input type='text' name='specialty_2_certifying_board' id='specialty_2_certifying_board'value='{$specialty_2_certifying_board}'> 
	</li>
	<li id='li_ppo_3'>
<label> Ppo </label><label> Listed </label><ul id='ul_listed_5'>
	<li id='li_yes_5'>
<label> Yes </label><input type='text' name='specialty_2_ppo_listed_yes' id='specialty_2_ppo_listed_yes'value='{$specialty_2_ppo_listed_yes}'> 
	</li>
	<li id='li_no_5'>
<label> No </label><input type='text' name='specialty_2_ppo_listed_no' id='specialty_2_ppo_listed_no'value='{$specialty_2_ppo_listed_no}'> 
	</li>
</ul>
	</li>
	<li id='li_hmo_3'>
<label> Hmo </label><label> Listed </label><ul id='ul_listed_5'>
	<li id='li_yes_5'>
<label> Yes </label><input type='text' name='specialty_2_hmo_listed_yes' id='specialty_2_hmo_listed_yes'value='{$specialty_2_hmo_listed_yes}'> 
	</li>
	<li id='li_no_5'>
<label> No </label><input type='text' name='specialty_2_hmo_listed_no' id='specialty_2_hmo_listed_no'value='{$specialty_2_hmo_listed_no}'> 
	</li>
</ul>
	</li>
	<li id='li_pos_3'>
<label> Pos </label><label> Listed </label><ul id='ul_listed_5'>
	<li id='li_yes_5'>
<label> Yes </label><input type='text' name='specialty_2_pos_listed_yes' id='specialty_2_pos_listed_yes'value='{$specialty_2_pos_listed_yes}'> 
	</li>
	<li id='li_no_5'>
<label> No </label><input type='text' name='specialty_2_pos_listed_no' id='specialty_2_pos_listed_no'value='{$specialty_2_pos_listed_no}'> 
	</li>
</ul>
	</li>
	<li id='li_ist_3'>
<label> Ist </label><label> Planning </label><label> Takeboards </label><input type='checkbox' name='specialty_2_ist_planning_takeboards' id='specialty_2_ist_planning_takeboards' {if $specialty_2_ist_planning_takeboards}CHECKED{/if}>
	</li>
</ul>
	</li>
	<li id='li_otherfocus_2'>
<h4> Otherfocus </h4><label> Interests </label><input type='text' name='specialty_otherfocus_interests' id='specialty_otherfocus_interests'value='{$specialty_otherfocus_interests}'> 
	</li>
</ul>
	</li>
	<li id='li_work_1'>
<h3> Work </h3><ul id='ul_work_2'>
	<li id='li_[1]_2'>
<h4> [1] </h4><ul id='ul_[1]_3'>
	<li id='li_address_3'>
<label> Address </label><ul id='ul_address_4'>
	<li id='li_city_4'>
<label> City </label><input type='text' name='work_1_address_city' id='work_1_address_city'value='{$work_1_address_city}'> 
	</li>
	<li id='li_postal_4'>
<label> Postal </label><input type='text' name='work_1_address_postal' id='work_1_address_postal'value='{$work_1_address_postal}'> 
	</li>
	<li id='li_line1_4'>
<label> Line1 </label><input type='text' name='work_1_address_line1' id='work_1_address_line1'value='{$work_1_address_line1}'> 
	</li>
	<li id='li_country_4'>
<label> Country </label><input type='text' name='work_1_address_country' id='work_1_address_country'value='{$work_1_address_country}'> 
	</li>
	<li id='li_state_4'>
<label> State </label><input type='text' name='work_1_address_state' id='work_1_address_state'value='{$work_1_address_state}'> 
	</li>
</ul>
	</li>
	<li id='li_reason_3'>
<label> Reason </label><label> For </label><label> Discontinuance </label><input type='text' name='work_1_reason_for_discontinuance' id='work_1_reason_for_discontinuance'value='{$work_1_reason_for_discontinuance}'> 
	</li>
	<li id='li_practice_3'>
<label> Practice </label><label> Employer </label><label> Name </label><input type='text' name='work_1_practice_employer_name' id='work_1_practice_employer_name'value='{$work_1_practice_employer_name}'> 
	</li>
</ul>
	</li>
	<li id='li_[2]_2'>
<h4> [2] </h4><ul id='ul_[2]_3'>
	<li id='li_address_3'>
<label> Address </label><ul id='ul_address_4'>
	<li id='li_postal_4'>
<label> Postal </label><input type='text' name='work_2_address_postal' id='work_2_address_postal'value='{$work_2_address_postal}'> 
	</li>
	<li id='li_city_4'>
<label> City </label><input type='text' name='work_2_address_city' id='work_2_address_city'value='{$work_2_address_city}'> 
	</li>
	<li id='li_country_4'>
<label> Country </label><input type='text' name='work_2_address_country' id='work_2_address_country'value='{$work_2_address_country}'> 
	</li>
	<li id='li_state_4'>
<label> State </label><input type='text' name='work_2_address_state' id='work_2_address_state'value='{$work_2_address_state}'> 
	</li>
	<li id='li_line1_4'>
<label> Line1 </label><input type='text' name='work_2_address_line1' id='work_2_address_line1'value='{$work_2_address_line1}'> 
	</li>
</ul>
	</li>
	<li id='li_practice_3'>
<label> Practice </label><label> Employer </label><label> Name </label><input type='text' name='work_2_practice_employer_name' id='work_2_practice_employer_name'value='{$work_2_practice_employer_name}'> 
	</li>
	<li id='li_reason_3'>
<label> Reason </label><label> For </label><label> Discontinuance </label><input type='text' name='work_2_reason_for_discontinuance' id='work_2_reason_for_discontinuance'value='{$work_2_reason_for_discontinuance}'> 
	</li>
</ul>
	</li>
	<li id='li_[3]_2'>
<h4> [3] </h4><ul id='ul_[3]_3'>
	<li id='li_address_3'>
<label> Address </label><ul id='ul_address_4'>
	<li id='li_state_4'>
<label> State </label><input type='text' name='work_3_address_state' id='work_3_address_state'value='{$work_3_address_state}'> 
	</li>
	<li id='li_line1_4'>
<label> Line1 </label><input type='text' name='work_3_address_line1' id='work_3_address_line1'value='{$work_3_address_line1}'> 
	</li>
	<li id='li_country_4'>
<label> Country </label><input type='text' name='work_3_address_country' id='work_3_address_country'value='{$work_3_address_country}'> 
	</li>
	<li id='li_postal_4'>
<label> Postal </label><input type='text' name='work_3_address_postal' id='work_3_address_postal'value='{$work_3_address_postal}'> 
	</li>
	<li id='li_city_4'>
<label> City </label><input type='text' name='work_3_address_city' id='work_3_address_city'value='{$work_3_address_city}'> 
	</li>
</ul>
	</li>
	<li id='li_reason_3'>
<label> Reason </label><label> For </label><label> Discontinuance </label><input type='text' name='work_3_reason_for_discontinuance' id='work_3_reason_for_discontinuance'value='{$work_3_reason_for_discontinuance}'> 
	</li>
	<li id='li_practice_3'>
<label> Practice </label><label> Employer </label><label> Name </label><input type='text' name='work_3_practice_employer_name' id='work_3_practice_employer_name'value='{$work_3_practice_employer_name}'> 
	</li>
</ul>
	</li>
	<li id='li_[0]_2'>
<h4> [0] </h4><ul id='ul_[0]_3'>
	<li id='li_address_3'>
<label> Address </label><ul id='ul_address_4'>
	<li id='li_state_4'>
<label> State </label><input type='text' name='work_0_address_state' id='work_0_address_state'value='{$work_0_address_state}'> 
	</li>
	<li id='li_line1_4'>
<label> Line1 </label><input type='text' name='work_0_address_line1' id='work_0_address_line1'value='{$work_0_address_line1}'> 
	</li>
	<li id='li_postal_4'>
<label> Postal </label><input type='text' name='work_0_address_postal' id='work_0_address_postal'value='{$work_0_address_postal}'> 
	</li>
	<li id='li_country_4'>
<label> Country </label><input type='text' name='work_0_address_country' id='work_0_address_country'value='{$work_0_address_country}'> 
	</li>
	<li id='li_city_4'>
<label> City </label><input type='text' name='work_0_address_city' id='work_0_address_city'value='{$work_0_address_city}'> 
	</li>
</ul>
	</li>
	<li id='li_practice_3'>
<label> Practice </label><label> Employer </label><label> Name </label><input type='text' name='work_0_practice_employer_name' id='work_0_practice_employer_name'value='{$work_0_practice_employer_name}'> 
	</li>
</ul>
	</li>
</ul>
	</li>
	<li id='li_workhistory_1'>
<h3> Workhistory </h3><h4> Is </h4><label> More </label><label> Work </label><label> History </label><input type='checkbox' name='workhistory_is_more_work_history' id='workhistory_is_more_work_history' {if $workhistory_is_more_work_history}CHECKED{/if}>
	</li>
</ul>

	</div>
      <hr>

      <footer>
        <p>&copy; Not Only Dev 2013</p>
      </footer>

    </div><!--/.fluid-container-->


