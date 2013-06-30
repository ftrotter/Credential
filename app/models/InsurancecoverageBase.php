<?php
//Generated by buildORM from the cred:Insurancecoverages

	

	class InsurancecoverageBase extends BaseORM{ //which extends Eloquent...

		var $table = 'Insurancecoverages';

		protected $guarded = array(); //everything can be added via auto-fill... override this in custom code...
		

        //autogenerated this function... 
        public function Insurancecarrier()
        {
                return $this->belongs_to('Insurancecarrier','insurancecarrier_id');
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


        //autogenerated this function... 
        public function Malpracticeaward_bunch()
        {
                return $this->hasMany('Malpracticeaward',insurancecoverage_id);
               // return $this->hasOne('Malpracticeaward',insurancecoverage_id);
        }


	}//the end of class Insurancecoverage		
?>