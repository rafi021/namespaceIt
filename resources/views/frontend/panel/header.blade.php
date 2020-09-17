<header class="header">
    <div class="container">
        <div class="row justify-content-between align-items-center">

            <!-- Header Logo Start -->
            <div class="col">
                <div class="header-logo">
                    <a href="index.html"><img src="{{ asset('frontend_assets') }}/images/logo/logo-light.png" alt="Site Logo"></a>
                </div>
            </div><!-- Header Logo End -->

            <!-- Offcanvas Toggle Start -->
            <div class="col-auto d-lg-none d-flex align-items-center">
                <button class="offcanvas-toggle">
                    <span></span>
                </button>
            </div>
            <!-- Offcanvas Toggle End -->

            <!-- Header Links Start -->
            @guest
            <div class="header-links col-auto order-lg-3">
                <a href="#" data-toggle="modal" data-target="#loginSignupModal" data-target-sub="#login">Login</a>
                <span>or</span>
                <a href="#" data-toggle="modal" data-target="#loginSignupModal" data-target-sub="#signup">Sign up</a>
                {{-- <a href="{{ route('register') }}">Sign up</a> --}}
            </div><!-- Header Links End -->
            @endguest
           
            <!-- Header Menu Start -->
            <nav id="main-menu" class="main-menu col-lg-auto order-lg-2">
                <ul>
                    <li class="has-children"><a href="{{ route('home') }}">Home</a>
                    </li>
                    <li class="has-children"><a href="{{ route('job.index') }}">Jobs</a>
                    </li>
                    <li><a href="{{ route('employer.index') }}">Company</a>
                    </li>
                    <li><a href="#">Pages</a>
                        <ul class="sub-menu">
                            <li><a href="about-us.html">About Us</a></li>
                            <li><a href="faq.html">FAQ'S</a></li>
                            <li><a href="pricing.html">Pricing</a></li>
                        </ul>
                    </li>
                    <li><a href="blog.html">Blog</a>
                        <ul class="sub-menu">
                            <li><a href="blog.html">Blog</a></li>
                            <li><a href="blog-right-sidebar.html">Blog Right Sidebar</a></li>
                            <li><a href="blog-single.html">Blog Single</a></li>
                        </ul>
                    </li>
                    <li><a href="contact.html">Contact us</a></li>
                    @auth
                    <li><a href="#">{{ Auth::user()->first_name }} {{ Auth::user()->last_name }}</a>
                        <ul class="sub-menu">
                            <li><a href="{{ route('employer.index') }}">Profile</a></li>
                            <li>
                                <a href="{{ route('logout') }}" onclick="event.preventDefault(); document.getElementById('logout-form').submit();"> {{ __('Logout') }}</a>
                                <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                                    @csrf
                                </form>
                            </li>
                        </ul>
                    </li>
                    @endauth
                </ul>
            </nav>
            <!-- Header Menu End -->

        </div>

    </div>
</header>
