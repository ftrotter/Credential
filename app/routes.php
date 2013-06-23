<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the Closure to execute when that URI is requested.
|
*/


Route::get("doctors/list", "DoctorsController@get_list");


Route::get('/', function()
{
        return main_html_wrap(View::make('dashboard')); 
});

Route::get('/dashboard', function()
{
        return main_html_wrap(View::make('dashboard')); 
});

Route::get('/protected', function()
{
        return("You have to be logged in to see this");
});

Route::get('/unprotected', function()
{
        return("Everyone can see this");
});


Route::filter('before', function()
{
        // Do stuff before every request to your application...
            // Maintenance mode
    if(0) return Response::error( '503' );

    /*
        Secures parts of the application
        from public viewing.
    */
    $location = URI::segment(1) . '/' . URI::segment(2);
    if(Auth::guest() && !in_array( $location, Config::get('application.no_login_needed'))){

        //return Redirect::to( '/login' );

    }

});




function main_html_wrap($stuff){
        $view_data = standard_view_data();
        $stuff = "<div class='container'>\n$stuff\n</div>";
        $view_data['view_contents'] = $stuff;
        return View::make('html',$view_data);
}
//TODO pull intelligently from config...
function standard_view_data(){

        $base_url = URL::to('/');
        $view_data = array(
                'displayName' => 'UserName Here',
                'copyright' => '© Not Only Development 2013',
                'title' => 'NOD Cred',
                'base_url' => $base_url,
                'menu' => array( 0 => array(
                                'name' => 'Dashboard',
                                'url' => "$base_url/dashboard/",
                                'icon' => '',
                                ),
                                1 => array(
                                'name' => 'Data',
                                'url' => "$base_url/ORM",
                                'icon' => '',
                                ),



                        ),
        );

	return($view_data);
}

/// These are tests to make sure Smarty is working
Route::get('/smartybasictest', function()
{
        return View::make('smartybasictest');
});

Route::get('/smartyfulltest', function()
{
	$data = standard_view_data(); //normally this is only available to the parent...
        return main_html_wrap(View::make('smartyfulltest',$data));
});





// Social Sentry oauth controller mappings...
// To use it, in app/routes.php
//Route::controller('oauth', 'Cartalyst\SentrySocial\Controllers\OAuthController');

// To extend it, make a class which extends Cartalyst\SentrySocial\Controllers\OAuthController
//Route::controller('oauth', 'MyOAuthController');

