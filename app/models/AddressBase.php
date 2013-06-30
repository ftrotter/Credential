<?php
//Generated by buildORM from the cred:Addresss

	

	class AddressBase extends BaseORM{ //which extends Eloquent...

		var $table = 'Addresss';

		protected $guarded = array(); //everything can be added via auto-fill... override this in custom code...
		

        //autogenerated this function... 
        public function State()
        {
                return $this->belongs_to('State','state_id');
        }


        //autogenerated this function... 
        public function City()
        {
                return $this->belongs_to('City','city_id');
        }


        //autogenerated this function... 
        public function County()
        {
                return $this->belongs_to('County','county_id');
        }


        //autogenerated this function... 
        public function Country()
        {
                return $this->belongs_to('Country','country_id');
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
        public function Billingcompany_bunch()
        {
                return $this->hasMany('Billingcompany',address_id);
               // return $this->hasOne('Billingcompany',address_id);
        }


        //autogenerated this function... 
        public function CredentialOrganization_bunch()
        {
                return $this->hasMany('CredentialOrganization',address_id);
               // return $this->hasOne('CredentialOrganization',address_id);
        }


        //autogenerated this function... 
        public function EducationInstitution_bunch()
        {
                return $this->hasMany('EducationInstitution',address_id);
               // return $this->hasOne('EducationInstitution',address_id);
        }


        //autogenerated this function... 
        public function FormTest_bunch()
        {
                return $this->hasMany('FormTest',address_id);
               // return $this->hasOne('FormTest',address_id);
        }


        //autogenerated this function... 
        public function Hospital_bunch()
        {
                return $this->hasMany('Hospital',address_id);
               // return $this->hasOne('Hospital',address_id);
        }


        //autogenerated this function... 
        public function Insurancecarrier_bunch()
        {
                return $this->hasMany('Insurancecarrier',address_id);
               // return $this->hasOne('Insurancecarrier',address_id);
        }


        //autogenerated this function... 
        public function Medicalboard_bunch()
        {
                return $this->hasMany('Medicalboard',address_id);
               // return $this->hasOne('Medicalboard',address_id);
        }


        //autogenerated this function... 
        public function Practice_bunch()
        {
                return $this->hasMany('Practice',address_id);
               // return $this->hasOne('Practice',address_id);
        }


        //autogenerated this function... 
        public function Provider_from_Birth_bunch()
        {
                return $this->hasMany('Provider',birth_provider_id);
               // return $this->hasOne('Provider',birth_provider_id);
        }


        //autogenerated this function... 
        public function Provider_from_Home_bunch()
        {
                return $this->hasMany('Provider',home_provider_id);
               // return $this->hasOne('Provider',home_provider_id);
        }


        //autogenerated this function... 
        public function Provider_from_Corr_bunch()
        {
                return $this->hasMany('Provider',corr_provider_id);
               // return $this->hasOne('Provider',corr_provider_id);
        }


	}//the end of class Address		
?>