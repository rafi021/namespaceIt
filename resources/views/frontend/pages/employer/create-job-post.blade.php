@extends('frontend.layout.frontend_layout')
@section('frontend_content')

    <!-- Page Heading Section Start -->
    @include('frontend.panel.breadcrumb', [
        'title' => 'Add a new job',
        'menu' => 'Create Job',
        'menuLink' => "",
        'submenu' => "",
    ])
    <!-- Page Heading Section End -->
    <!-- Create Job Start -->
    <div class="section section-padding">
        <div class="container">
            <div class="row">
                <div class="create-job-form col-lg-10 mx-auto">

                {{-- Laravel 7 Blade Component Feature --}}
                <x-alert :type="session('type')" :message="session('profile_status')"/>
                
                    <form action="{{ route('jobs.store') }}" method="POST">
                        @csrf
                        <div class="row mb-3">
                            <div class="col-md-6 col-12 mb-3">
                                <span  style="color:red"> *</span>
                                <x-inputbox type="text" labelName="Job Title" placeholderName="Enter Job Title" varName="job_title" dbvalue=""/>
                            </div>
                            <div class="col-md-6 col-12 mb-3">
                                <span  style="color:red"> *</span>
                                <x-inputbox type="date" labelName="Application Deadline" placeholderName="Enter Application Deadline" varName="last_date" dbvalue=""/>
                            </div>
                            <div class="col-md-6 col-12 mb-3">
                                <x-inputbox type="text" labelName="Required Education" placeholderName="Enter Required Education" varName="education_required" dbvalue=""/>
                            </div>
                            <div class="col-md-6 col-12 mb-3">
                                <label for="jobType">Job Type</label>
                                <select id="jobType" name="job_type">
                                    <option value="Full Time">Full Time</option>
                                    <option value="Part Time">Part Time</option>
                                    <option value="Freelance">Freelance</option>
                                </select>
                            </div>
                            <div class="col-md-6 col-12 mb-3">
                                <label for="jobCategory">Job Category</label>
                                <select id="jobCategory" name="category_id">
                                    @foreach ($job_categories as $category)    
                                        <option value="{{ $category->id }}">{{ $category->job_category_name }}</option>
                                    @endforeach
                                </select>
                            </div>
                            <div class="col-md-6 col-12 mb-3">
                                <span  style="color:red"> *</span>
                                <x-inputbox type="text" labelName="Salary range" placeholderName="Enter Salary range" varName="salary" dbvalue=""/>
                            </div>
                            <div class="col-md-6 col-12 mb-3">
                                <label for="jobGender">Gender</label>
                                <select id="jobGender" name="gender">
                                    <option value="any">Any</option>
                                    <option value="male">Male</option>
                                    <option value="female">Female</option>
                                </select>
                            </div>
                            <div class="col-md-6 col-12 mb-3">
                                <label for="jobExperience">Experience</label>
                                <select id="jobExperience" name="experience_required">
                                    <option value="1 Year to 2 Year">1 Year to 2 Year</option>
                                    <option value="2 Year to 3 Year">2 Year to 3 Year</option>
                                    <option value="3 Year to 4 Year">3 Year to 4 Year</option>
                                    <option value="4 Year to 5 Year">4 Year to 5 Year</option>
                                </select>
                            </div>
                            <div class="col-md-6 col-12 mb-3">
                                <x-inputbox type="text" labelName="Country" placeholderName="Enter Country" varName="country" dbvalue=""/>
                            </div>
                            <div class="col-md-6 col-12 mb-3">
                                <x-inputbox type="number" labelName="Vacancy" placeholderName="Enter No of Vacancy" varName="vacancy" dbvalue=""/>
                            </div>
                            <div class="col-12 mb-3">
                                <span  style="color:red"> *</span>
                                <label for="jobDescription">Job Description</label>
                                <textarea id="jobDescription" rows="5" name="job_description" class="@error('job_description') is-invalid @enderror">{{ old('job_description') }}</textarea>
                                @error('job_description')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                            <div class="col-12 mb-3">
                                <label for="jobLocation">Job Location</label>
                                <textarea id="jobLocation" rows="5" name="location">{{ old('location') }}</textarea>
                            </div>
                            <div class="col-12 mb-3">
                                <button type="submit" class="btn btn-primary px-5">Post Job</button>
                            </div>
                        </div>
                        <div class="row"></div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- Create Job End -->
@endsection