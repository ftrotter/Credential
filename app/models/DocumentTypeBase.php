<?php
//Generated by buildORM from the cred:DocumentTypes

	

	class DocumentTypeBase extends BaseORM{ //which extends Eloquent...

		public static $table = 'DocumentTypes';
 

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
        public function Document_bunch()
        {
                return $this->has_many('Document',documenttype_id);
               // return $this->has_one('Document',documenttype_id);
        }


	}//the end of class DocumentType		
?>