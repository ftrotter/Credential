<?php
//Generated by buildORM from the cred:ProviderEducations

	

	class ProviderEducationBase extends BaseORM{ //which extends Eloquent...

		var $table = 'ProviderEducations';

		protected $guarded = array(); //everything can be added via auto-fill... override this in custom code...
		

        //autogenerated this function... 
        public function Provider()
        {
                return $this->belongs_to('Provider','provider_id');
        }


        //autogenerated this function... 
        public function ProviderSpeciality()
        {
                return $this->belongs_to('ProviderSpeciality','providerspeciality_id');
        }


        //autogenerated this function... 
        public function EducationInstitution()
        {
                return $this->belongs_to('EducationInstitution','educationinstitution_id');
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
        public function ProviderEducationsProviderEducation_bunch()
        {
                return $this->hasMany('ProviderEducationsProviderEducation',providereducation_id);
               // return $this->hasOne('ProviderEducationsProviderEducation',providereducation_id);
        }


	}//the end of class ProviderEducation		
?>