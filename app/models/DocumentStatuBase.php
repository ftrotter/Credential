<?php
//Generated by buildORM from the cred:DocumentStatus

	

	class DocumentStatuBase extends BaseORM{ //which extends Eloquent...

		public static $table = 'DocumentStatus';
 

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


	}//the end of class DocumentStatu		
?>