<?php
//Generated by buildORM from the cred:ProviderCallcoverage

	

	class ProviderCallcoverageBase extends BaseORM{ //which extends Eloquent...

		var $table = 'ProviderCallcoverage';

		protected $guarded = array(); //everything can be added via auto-fill... override this in custom code...
		

        //autogenerated this function... 
        public function Provider()
        {
                return $this->belongs_to('Provider','provider_id');
        }


        //autogenerated this function... 
        public function CallCoverage_Provider()
        {
                return $this->belongs_to('Provider','callcoverage_provider_id');
        }


	}//the end of class ProviderCallcoverage		
?>