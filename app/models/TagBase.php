<?php
//Generated by buildORM from the cred:Tags

	

	class TagBase extends BaseORM{ //which extends Eloquent...

		var $table = 'Tags';

		protected $guarded = array(); //everything can be added via auto-fill... override this in custom code...
		

        //autogenerated this function... 
        public function TagLink_bunch()
        {
                return $this->hasMany('TagLink',tag_id);
               // return $this->hasOne('TagLink',tag_id);
        }


	}//the end of class Tag		
?>