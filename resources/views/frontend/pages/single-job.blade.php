@extends('frontend.layout.frontend_layout')
@section('frontend_content')

    <!-- Page Heading Section Start -->
    @include('frontend.panel.breadcrumb', [
        'title' => $jobs->position,
        'menu' => "Jobs",
        'menuLink' => "route('job.index')",
        'submenu' => "$jobs->job_title"
    ])
    <!-- Page Heading Section End -->
<!-- Recent Jobs Start -->
<div class="section section-padding">
    <div class="container">
        <div class="row mb-n5">

            <!-- Job List Details Start -->
            <div class="col-lg-8 col-12 mb-5 pr-lg-5">
                <div class="job-list-details">
                    <div class="job-details-head row mx-0">
                        <div class="company-logo col-auto">
                            <a href="company-single.html">
                                <img src="{{ asset('logo') }}/{{ $jobs->employer->logo }}" alt="Company Logo" width="80">
                            </a>
                        </div>
                        <div class="salary-type col-auto order-sm-3">
                            <span class="salary-range">Tk {{ $jobs->salary }}</span>
                            <span class="badge badge-success">{{ $jobs->job_type }}</span>
                        </div>
                        <div class="content col">
                            <h5 class="title">{{ $jobs->position }}</h5>
                            <ul class="meta">
                                <li><strong class="text-primary"><a href="{{ route('employer.show', $jobs->employer->id) }}">{{ $jobs->employer->business_name }}</a></strong></li>
                                <li><i class="fa fa-map-marker"></i> {{ $jobs->employer->company_address }}</li>
                            </ul>
                        </div>
                    </div>
                    <div class="job-details-body">
                        <h6 class="mb-3">Job Description</h6>
                        <p>{{ $jobs->job_description }}</p>
                        <h6 class="mb-3 mt-4">Responsibilities</h6>
                        <ul>
                            <li>Proven work experienceas a web designer</li>
                            <li>Demonstrable graphic design skills with a strong portfolio</li>
                            <li>Proficiency in HTML, CSS and JavaScript for rapid prototyping</li>
                            <li>Experience working in an Agile/Scrum development process</li>
                            <li>Proven work experienceas a web designer</li>
                            <li>Excellent visual design skills with sensitivity to user-system interaction</li>
                            <li>Ability to solve problems creatively and effectively</li>
                            <li>Proven work experienceas a web designer</li>
                            <li>Up-to-date with the latest Web trends, techniques and technologies</li>
                            <li>BS/MS in Human-Computer Interaction, Interaction Design or a Visual Arts subject</li>
                        </ul>
                        <h6 class="mb-3 mt-4">Education + Experience</h6>
                        <ul>
                            <li>Advanced degree or equivalent experience in graphic and web design</li>
                            <li>3 or more years of professional design experience</li>
                            <li>Direct response email experience</li>
                            <li>Ecommerce website design experience</li>
                            <li>Familiarity with mobile and web apps preferred</li>
                            <li>Excellent communication skills, most notably a demonstrated ability to solicit and address creative and design feedback</li>
                            <li>Must be able to work under pressure and meet deadlines while maintaining a positive attitude and providing exemplary customer service</li>
                            <li>Ability to work independently and to carry out assignments to completion within parameters of instructions given, prescribed routines, and standard accepted practices</li>
                        </ul>
                        <h6 class="mb-3 mt-4">Benefits</h6>
                        <ul>
                            <li>Medical insurance</li>
                            <li>Dental insurance</li>
                            <li>Vision insurance</li>
                            <li>Supplemental benefits (Short Term Disability, Cancer & Accident).</li>
                            <li>Employer-sponsored Basic Life & AD&D Insurance</li>
                            <li>Employer-sponsored Long Term Disability</li>
                            <li>Employer-sponsored Value Adds – Fresh Beanies</li>
                            <li>401(k)with matching</li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- Job List Details End -->

            <!-- Job Sidebar Wrap Start -->
            <div class="col-lg-4 col-12 mb-5">
                <div class="sidebar-wrap">
                    <!-- Sidebar (Apply Buttons) Start -->
                    <div class="sidebar-widget">
                        <div class="inner">
                            <div class="row m-n2">
                                <x-alert :type="session('type')" :message="session('login_status')"/>
                                <div class="col-xl-auto col-lg-12 col-sm-auto col-12 p-2">
                                    <a href="#" class="d-block btn btn-group-sm btn-outline-secondary"><i class="fa fa-heart-o mr-1"></i> Save Job</a>
                                </div>
                                <div class="col-xl-auto col-lg-12 col-sm-auto col-12 p-2">
                                    @auth
                                    <a href="{{ route('application.sbumit', ['jobs_id'=>$jobs->id]) }}" class="d-block btn-group-sm btn btn-primary">Apply Now</a>
                                    @else 
                                    <a href="#" class="d-block btn btn-group-sm btn-warning disabled">Apply Now (Login)</a>
                                    @endauth
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Sidebar (Apply Buttons) End -->

                    <!-- Sidebar (Job Overview) Start -->
                    <div class="sidebar-widget">
                        <div class="inner">
                            <x-alert :type="session('type')" :message="session('profile_status')"/>
                            <h6 class="title">Job Overview</h6>
                            <ul class="job-overview list-unstyled">
                                <li><strong>Published on:</strong> {{ $jobs->created_at->format('M d,Y') }}</li>
                                <li><strong>Vacancy:</strong>{{ $jobs->vacancy }}</li>
                                <li><strong>Employment Status:</strong> {{ $jobs->job_type }}</li>
                                <li><strong>Experience:</strong> {{ $jobs->experience_required }}</li>
                                <li><strong>Job Location:</strong>{{ $jobs->location }}</li>
                                <li><strong>Salary:</strong> TK {{ $jobs->salary }}</li>
                                <li><strong>Gender:</strong> {{ $jobs->gender }}</li>
                                <li><strong>Application Deadline:</strong>{{ $jobs->last_date }}</li>
                            </ul>
                        </div>
                    </div>
                    <!-- Sidebar (Job Overview) End -->

                    <!-- Sidebar (Job Location) Start -->
                    <div class="sidebar-widget">
                        <div class="inner">
                            <h6 class="title">Job Location</h6>
                            <div class="job-location-map google-map" id="job-location-map" data-lat="-37.8172835" data-long="144.9560768" data-zoom="12">
                                <span class="sr-only">Job Location Map</span>
                            </div>
                        </div>
                    </div>
                    <!-- Sidebar (Job Location) End -->
                </div>
            </div>
            <!-- Job Sidebar Wrap End -->

        </div>
    </div>
</div>
<!-- Recent Jobs End -->

@endsection