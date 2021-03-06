<?php
//Generated by buildORM from the cred:ProviderPartners

	

	class ProviderPartnerBase extends BaseORM{ //which extends Eloquent...

		var $table = 'ProviderPartners';

		protected $guarded = array(); //everything can be added via auto-fill... override this in custom code...
		

        //autogenerated this function... 
        public function Provider()
        {
                return $this->belongs_to('Provider','provider_id');
        }


        //autogenerated this function... 
        public function Partner_Provider()
        {
                return $this->belongs_to('Provider','partner_provider_id');
        }


        //autogenerated this function... 
        public function created_by_User()
        {
                return $this->belongs_to('User','created_by_user_id');
        }


        //autogenerated this function... 
        public function modified_by_User()
        {
                return $this->belongs_to('User','modified_by_user_id');
        }


	}//the end of class ProviderPartner		
?>