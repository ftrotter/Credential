<?php
//Generated by buildORM from the cred:Hospitals

	

	class HospitalBase extends BaseORM{ //which extends Eloquent...

		var $table = 'Hospitals';

		protected $guarded = array(); //everything can be added via auto-fill... override this in custom code...
		

        //autogenerated this function... 
        public function Address()
        {
                return $this->belongs_to('Address','address_id');
        }


        //autogenerated this function... 
        public function Phone()
        {
                return $this->belongs_to('Phone','phone_id');
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


	}//the end of class Hospital		
?>