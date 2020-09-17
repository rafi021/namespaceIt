@extends('frontend.layout.frontend_layout')
@section('frontend_content')

    <!-- Page Heading Section Start -->
    @include('frontend.panel.breadcrumb', [
        'title' => 'Browse Companies',
        'menu' => "Companines",
        'menuLink' => "route('employer.index')",
        'submenu' => ""
    ])
    <!-- Page Heading Section End -->
    <!-- Company List Start -->
    <div class="section section-padding">
        <div class="container">
            <div class="row mb-n5">

                <div class="col-lg-8 col-12 mb-5 pr-lg-5">

                    <!-- Company List Wrap Start -->
                    <div class="company-list-wrap row">
                        @foreach ($employers as $employer)
                        <!-- Company List Start -->
                        <div class="col-xl-4 col-lg-6 col-md-4 col-sm-6 col-12">
                            <a href="{{ route('employer.show',$employer) }}" class="company-list">
                                <span class="company-logo"><img src="{{ asset('/') }}{{ $employer->logo }}" alt="Company Logo" width="80"></span>
                                <h6 class="title">{{ $employer->business_name }}</h6>
                                <span class="open-job">
                                    <span class="badge {{ $employer->jobs_count ? "badge-success":"badge-danger" }} badge-lg">{{ $employer->jobs_count }} </span>
                                open positions</span>
                                <span class="location"><i class="fa fa-map-o"></i>{{ $employer->company_address }}</span>
                            </a>
                        </div>
                        <!-- Company List Start -->
                        @endforeach

                    </div>
                    <!-- Company List Wrap Start -->

                    <!-- Pagination Start -->
                    <ul class="pagination pagination-center mt-5">
                        <li class="page-item"><a class="page-link" href="#"><i class="fa fa-angle-left"></i></a></li>
                        <li class="page-item active"><a class="page-link" href="#">1</a></li>
                        <li class="page-item"><a class="page-link" href="#">2</a></li>
                        <li class="page-item"><a class="page-link" href="#">3</a></li>
                        <li class="page-item"><a class="page-link" href="#">4</a></li>
                        <li class="page-item"><a class="page-link" href="#"><i class="fa fa-angle-right"></i></a></li>
                    </ul>
                    <!-- Pagination End -->

                </div>

                <!-- Company Sidebar Wrap Start -->
                <div class="col-lg-4 col-12 mb-5">
                    <div class="sidebar-wrap">
                        <!-- Sidebar (Search) Start -->
                        <div class="sidebar-widget">
                            <div class="inner">
                                <h6 class="title">Search Company</h6>
                                <form action="#">
                                    <div class="row">
                                        <div class="col-12 mb-3"><input type="text" placeholder="Keyword"></div>
                                        <div class="col-12 mb-3">
                                            <label>Category</label>
                                            <select>
                                                <option value="1">Any category</option>
                                                <option value="2">Web Designer</option>
                                                <option value="3">Web Developer</option>
                                                <option value="4">Graphic Designer</option>
                                                <option value="5">App Developer</option>
                                                <option value="6">UI &amp; UX Expert</option>
                                            </select>
                                        </div>
                                        <div class="col-12 mb-3">
                                            <label>Location</label>
                                            <input type="text" placeholder="Location">
                                        </div>
                                        <div class="col-12 mb-3">
                                            <label>Company Sizes</label>
                                            <select>
                                                <option>All Company Size</option>
                                                <option>&lt; 10 employees</option>
                                                <option>10 ~ 50 employees</option>
                                                <option>50 ~ 200 employees</option>
                                                <option>200 ~ 500 employees</option>
                                                <option>500 ~ 2000 employees</option>
                                                <option>&gt; 2000 employees</option>
                                            </select>
                                        </div>
                                        <div class="col-12 mb-3">
                                            <input class="btn btn-primary w-100" type="submit" value="Search">
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <!-- Sidebar (Search) End -->

                        <!-- Sidebar (Search) Start -->
                        <div class="sidebar-widget">
                            <div class="inner">
                                <a class="banner" href="https://hasthemes.com/plugins/ht-mega-pro/" target="_blank"><img src="assets/images/banner/banner-1.jpg" alt="Banner"></a>
                            </div>
                        </div>
                        <!-- Sidebar (Search) End -->
                    </div>
                </div>
                <!-- Company Sidebar Wrap End -->

            </div>
        </div>
    </div>
    <!-- Company List End -->
@endsection