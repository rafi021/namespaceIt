
<!DOCTYPE html>
<html class="no-js" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Keller - Job Board HTML Template</title>
    <meta name="robots" content="noindex, follow" />
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    {{-- Include Style Sheets Start --}}
    @include('frontend.panel.styles')
    {{-- Include Style Sheets End --}}
</head>

<body>

    {{-- Include frontend Header Start --}}
    @include('frontend.panel.header')
    {{-- Include frontend Header End --}}

    <!--Offcanvas Section Start-->
    <div id="offcanvas" class="offcanvas-section">
        <button class="offcanvas-close" data-target="#offcanvas">&times;</button>
        <div class="offcanvas-wrap">
            <div class="inner">

                <!-- Offcanvas user Start -->
                <div class="offcanvas-user">
                    <a href="#" data-toggle="modal" data-target="#loginSignupModal" data-target-sub="#login">Login</a>
                    <span>or</span>
                    <a href="#" data-toggle="modal" data-target="#loginSignupModal" data-target-sub="#signup">Sign up</a>
                </div>
                <!-- Offcanvas user End -->

                <!-- Offcanvas Menu Start -->
                @include('frontend.panel.menubar')
                <!-- Offcanvas Menu End -->

            </div>
        </div>
    </div>
    <!--Offcanvas Section End-->
    <!--OffCanvas Overlay-->
    <div class="offcanvas-overlay"></div>

    {{-- Login and SignUp Modal Start --}}
    @include('frontend.panel.login_signup_modal')
    {{-- Login and SignUp Modal End --}}

    @yield('frontend_content')

    <!-- Footer Top Section Start -->
    @include('frontend.panel.footer_top')
    <!-- Footer Top Section End -->

    <!-- Footer Bottom Section Start -->
    @include('frontend.panel.footer')
    <!-- Footer Bottom Section End -->

    {{-- Include Frontend Scripts Start --}}
    @include('frontend.panel.scripts')
    {{-- Include Frontend Scripts End --}}
</body>

</html>