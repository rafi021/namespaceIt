<!-- Page Heading Section Start -->
<div class="page-heading-section section bg-parallax" data-bg-image="{{ asset('frontend_assets') }}/images/bg/bg-1.jpg" data-overlay="50">
    <div class="container">
        <div class="page-heading-content text-center">
            <h3 class="title">Browse Jobs</h3>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="{{ route('home') }}">Home</a></li>
                @if ($menu)
                    <li class="breadcrumb-item"><a href="{{ route('home') }}">{{$menu}}</a></li>
                @endif
                @if($submenu)
                    <li class="breadcrumb-item active">{{ $submenu }}</li>
                @endif
            </ol>
        </div>
    </div>
</div>
<!-- Page Heading Section End -->