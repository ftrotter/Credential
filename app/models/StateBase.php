<?php
//Generated by buildORM from the cred:States

	

	class StateBase extends BaseORM{ //which extends Eloquent...

		var $table = 'States';

		protected $guarded = array(); //everything can be added via auto-fill... override this in custom code...
		

        //autogenerated this function... 
        public function Address_bunch()
        {
                return $this->hasMany('Address',state_id);
               // return $this->hasOne('Address',state_id);
        }


        //autogenerated this function... 
        public function ProviderCoverage_bunch()
        {
                return $this->hasMany('ProviderCoverage',state_id);
               // return $this->hasOne('ProviderCoverage',state_id);
        }


        //autogenerated this function... 
        public function ProviderHospital_bunch()
        {
                return $this->hasMany('ProviderHospital',state_id);
               // return $this->hasOne('ProviderHospital',state_id);
        }


        //autogenerated this function... 
        public function ProviderLicense_bunch()
        {
                return $this->hasMany('ProviderLicense',state_id);
               // return $this->hasOne('ProviderLicense',state_id);
        }


	}//the end of class State		
?>