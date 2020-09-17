<!-- Page Heading Section Start -->
<div class="page-heading-section section bg-parallax" data-bg-image="{{ asset('/') }}cover_photo/cover_photo.jpg" data-overlay="50">
    <div class="container">
        <div class="page-heading-content text-center">
            <h3 class="title">{{ $title ?? '' }}</h3>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="{{ route('home') }}">Home</a></li>
                @if ($menu)
                    <li class="breadcrumb-item"><a href="{{$menuLink ?? ''}}">{{$menu}}</a></li>
                @endif
                @if($submenu)
                    <li class="breadcrumb-item active">{{ $submenu }}</li>
                @endif
            </ol>`
        </div>
    </div>
</div>
<!-- Page Heading Section End -->