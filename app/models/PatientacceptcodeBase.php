<?php
//Generated by buildORM from the cred:Patientacceptcodes

	

	class PatientacceptcodeBase extends BaseORM{ //which extends Eloquent...

		var $table = 'Patientacceptcodes';

		protected $guarded = array(); //everything can be added via auto-fill... override this in custom code...
		

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


	}//the end of class Patientacceptcode		
?>