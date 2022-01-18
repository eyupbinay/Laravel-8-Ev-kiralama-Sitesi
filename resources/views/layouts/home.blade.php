<!DOCTYPE html>
<html lang="zxx">
<head>
    <title>@yield('title')</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">

    <!-- External CSS libraries -->
    <link rel="stylesheet" type="text/css" href="{{ asset('assets')}}/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="{{ asset('assets')}}/css/animate.min.css">
    <link rel="stylesheet" type="text/css" href="{{ asset('assets')}}/css/bootstrap-submenu.css">
    <link rel="stylesheet" type="text/css" href="{{ asset('assets')}}/css/bootstrap-select.min.css">
    <link rel="stylesheet" href="{{ asset('assets')}}/css/leaflet.css" type="text/css">
    <link rel="stylesheet" href="{{ asset('assets')}}/css/map.css" type="text/css">
    <link rel="stylesheet" type="text/css" href="{{ asset('assets')}}/fonts/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="{{ asset('assets')}}/fonts/flaticon/font/flaticon.css">
    <link rel="stylesheet" type="text/css" href="{{ asset('assets')}}/fonts/linearicons/style.css">
    <link rel="stylesheet" type="text/css"  href="{{ asset('assets')}}/css/jquery.mCustomScrollbar.css">
    <link rel="stylesheet" type="text/css"  href="{{ asset('assets')}}/css/dropzone.css">
    <link rel="stylesheet" type="text/css"  href="{{ asset('assets')}}/css/slick.css">

    <!-- Custom stylesheet -->
    <link rel="stylesheet" type="text/css" href="{{ asset('assets')}}/css/style.css">
    <link rel="stylesheet" type="text/css" id="style_sheet" href="{{ asset('assets')}}/css/skins/default.css">

    <!-- Favicon icon -->
    <link rel="shortcut icon" href="{{ asset('assets')}}/img/favicon.ico" type="image/x-icon" >

    <!-- Google fonts -->
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700%7CRoboto:300,400,500,700&display=swap">

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link rel="stylesheet" type="text/css" href="{{ asset('assets')}}/css/ie10-viewport-bug-workaround.css">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
<!--[if lt IE 9]><script src="{{ asset('assets')}}/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="{{ asset('assets')}}/js/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
    <script src="{{ asset('assets')}}/js/html5shiv.min.js"></script>
    <script src="{{ asset('assets')}}/js/respond.min.js"></script>
    <![endif]-->
    @yield('css')
    @yield('headerjs')
</head>
<body>
<div class="page_loader"></div>

@section('content')
@show






@include('home._footer')
</body>
</html>


