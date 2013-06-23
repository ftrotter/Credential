<?php

class BaseController extends Controller {

	/**
	 * Catch-all method for requests that can't be matched.
	 *
	 * @param  string    $method
	 * @param  array     $parameters
	 * @return Response
	 */
	public function __call($method, $parameters)
	{
		return Response::error('404');
	}

	//NOD custom code...


	var $view_data = array(); ///where we store the view data!!

        public function _render($template_name){

                $base_url = URL::to('/');
                $this->view_data['base_url'] = $base_url;

                $this->view_data['title'] = Config::get('application.site_name');
                $this->view_data['copyright'] = Config::get('application.copyright');
		
                //build the menu
                $menu = array (
                        0 => array (
                                'name' => 'Home',
                                'url' => $base_url,
                                'icon' => '',
                                ),
                        1 => array (
                                'name' => 'Something',
                                'url' => "$base_url"."something/list",
                                'icon' => '',
                                ),
                        2 => array (
                                'name' => 'Else',
                                'url' => "$base_url"."else/list",
                                'icon' => '',
                                ),

                        );

                $this->view_data['menu'] = $menu;

                $menu_contents = View::make('menu',$this->view_data);
		$this->view_data['menu_contents'] = $menu_contents;

                $view_contents = View::make($template_name,$this->view_data);
                $this->view_data['view_contents'] = $view_contents;

                $return_me = View::make('html',$this->view_data);
	
		return($return_me);
		
        }

}
