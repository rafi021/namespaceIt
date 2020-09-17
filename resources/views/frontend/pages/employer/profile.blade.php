@extends('frontend.layout.frontend_layout')
@section('frontend_content')

    <!-- Page Heading Section Start -->
    @include('frontend.panel.breadcrumb', [
        'title' => 'Profile',
        'menu' => 'profile-edit',
        'menuLink' => "",
        'submenu' => "",
    ])
    <!-- Page Heading Section End -->
    <div class="section section-padding">
        <div class="container">
            <div class="row">
                {{-- Laravel 7 Blade Component Feature --}}
                <x-alert type="success" :message="session('profile_status')"/>

                <div class="create-job-form col-lg-10 mx-auto">
                    <form action="#">
                        <div class="row mb-3">
                            <div class="col-md-6 col-12 mb-3">
                                <x-inputbox type="text" labelName="Job Title" placeholderName="Enter Job Title" varName="job_title" dbvalue=""/>
                            </div>
                            <div class="col-md-6 col-12 mb-3">
                                <x-inputbox type="date" labelName="Application Deadline" placeholderName="Enter Application Deadline" varName="last_date" dbvalue=""/>
                            </div>
                            <div class="col-12 mb-3">
                                <button type="submit" class="btn btn-primary px-5">Edit Profile</button>
                            </div>
                        </div>
                        <div class="row"></div>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection