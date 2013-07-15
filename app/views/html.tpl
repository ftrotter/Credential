<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>{$title}</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Le styles -->
    <link href="{$base_url}/css/bootstrap.css" rel="stylesheet">
    <style type="text/css">
      body {
        padding-top: 60px;
        padding-bottom: 40px;
      }
      .sidebar-nav {
        padding: 9px 0;
      }
    </style>
	<!--	JQuery  -->
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<!-- JQuery modules -->
	<script src='http://ajax.microsoft.com/ajax/jquery.templates/beta1/jquery.tmpl.min.js'></script>
    	<script language='javascript' src='/js/jquery.tablesorter.min.js' type='text/javascript'></script>
    	<script type='text/javascript' src='/js/util.js'></script>
	<script type="text/javascript" src="http://www.alpacajs.org/js/alpaca.min.js"></script>

	<script type="text/javascript" src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>

	<!-- JQuery Css -->
    	<link type="text/css" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" rel="stylesheet"/>
    	<link href='/css/tablesorter.css' rel='stylesheet' type='text/css'>
    	<link type="text/css" href="http://alpacajs.org/css/alpaca-bootstrap.css" rel="stylesheet"/>

	<!-- Bootstrap -->
    <script src="{$base_url}/js/bootstrap.js"></script>
    <link href="{$base_url}/css/bootstrap-responsive.css" rel="stylesheet">


    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <!-- Fav and touch icons -->
    <link rel="shortcut icon" href="{$base_url}/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="{$base_url}/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="{$base_url}/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="{$base_url}/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="{$base_url}/ico/apple-touch-icon-57-precomposed.png">
  </head>

  <body>

    <div class="navbar navbar-inverse navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container-fluid">
          <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </a>
          <a class="brand" href="#">{$title}</a>
          <div class="nav-collapse collapse">
            <p class="navbar-text pull-right">
              Logged in as {$displayName} (<a href="/logout" class="navbar-link"> logout</a>)
            </p>
	<!-- loading menu_contents -->
{$menu_contents}
	<!-- end menu_contents -->
          </div><!--/.nav-collapse -->
        </div>
      </div>
    </div>

	<!-- loading view_contents -->
        {$view_contents}
	<!-- end view_contents -->

      <hr>

      <footer>
        <p>{$copyright}</p>
      </footer>

    </div><!--/.fluid-container-->


  </body>
</html>
