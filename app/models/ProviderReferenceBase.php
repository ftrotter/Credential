<?php
//Generated by buildORM from the cred:ProviderReferences

	

	class ProviderReferenceBase extends BaseORM{ //which extends Eloquent...

		var $table = 'ProviderReferences';

		protected $guarded = array(); //everything can be added via auto-fill... override this in custom code...
		

        //autogenerated this function... 
        public function Provider()
        {
                return $this->belongs_to('Provider','provider_id');
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


	}//the end of class ProviderReference		
?>