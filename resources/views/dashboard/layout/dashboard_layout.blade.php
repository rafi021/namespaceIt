<!DOCTYPE html>
<html class="loading" lang="en" data-textdirection="ltr">
<!-- BEGIN: Head-->

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta name="description" content="Vuexy admin is super flexible, powerful, clean &amp; modern responsive bootstrap 4 admin template with unlimited possibilities.">
    <meta name="keywords" content="admin template, Vuexy admin template, dashboard template, flat admin template, responsive admin template, web app">
    <meta name="author" content="PIXINVENT">
    <title>{{ env('APP_NAME') }}</title>
    
    {{-- Include Style Sheets Start --}}
    @include('dashboard.panel.styles')
    {{-- Include Style Sheets End --}}

</head>
<!-- END: Head-->

<!-- BEGIN: Body-->

<body class="vertical-layout vertical-menu-modern 2-columns  navbar-floating footer-static  " data-open="click" data-menu="vertical-menu-modern" data-col="2-columns">

    <!-- BEGIN: Header-->
    @include('dashboard.panel.header')
    <!-- END: Header-->


    <!-- BEGIN: Main Menu-->
    @include('dashboard.panel.menubar')
    <!-- END: Main Menu-->

    <!-- BEGIN: Content-->
    <div class="app-content content">
        <div class="content-overlay"></div>
        <div class="header-navbar-shadow"></div>
                    {{-- Yeild Section Start --}}
                    @yield('dashboard_content')
                    {{-- Yeild Section End --}}
                    {{-- <div class="content-wrapper">
                        <div class="content-header row"></div>
                        <div class="content-body">
                            
                        </div>
                    </div> --}}
    </div>
    <!-- END: Content-->

    <div class="sidenav-overlay"></div>
    <div class="drag-target"></div>

    <!-- BEGIN: Footer-->
    {{-- @include('dashboard.panel.footer') --}}
    <!-- END: Footer-->

    {{-- Script Section Start --}}
    @include('dashboard.panel.scripts')
    {{-- Script Section End --}}
</body>
<!-- END: Body-->

</html>