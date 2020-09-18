@extends('frontend.layout.frontend_layout')
@section('frontend_content')

    <!-- Page Heading Section Start -->
    @include('frontend.panel.breadcrumb', [
        'title' => 'Employer Profile',
        'menu' => 'profile-edit',
        'menuLink' => "",
        'submenu' => "",
    ])
    <!-- Page Heading Section End -->
    <div class="section section-padding">
        <div class="container">
            <div class="row">

                <div class="create-job-form col-lg-10 mx-auto">
                    {{-- Laravel 7 Blade Component Feature --}}
                    <x-alert :type="session('type')" :message="session('profile_status')"/>
                    <form action="{{ route('employer.update', $employer) }}" method="POST" enctype="multipart/form-data">
                        @csrf
                        @method('PUT')
                        <div class="row mb-3">
                            <div class="col-md-6 col-12 mb-3">
                                <x-inputbox type="text" labelName="Business Name" placeholderName="Enter Business Name" varName="business_name" :dbvalue="$employer->business_name"/>
                            </div>
                            <div class="col-md-6 col-12 mb-3">
                                <x-inputbox type="text" labelName="Company Address" placeholderName="Enter Company Address" varName="company_address" :dbvalue="$employer->company_address"/>
                            </div>
                            <div class="col-md-6 col-12 mb-3">
                                <x-inputbox type="phone" labelName="Phone Number" placeholderName="Enter Phone Number" varName="phone" :dbvalue="$employer->phone"/>
                            </div>
                            <div class="col-md-6 col-12 mb-3">
                                <x-inputbox type="text" labelName="Website" placeholderName="Enter Website" varName="website" :dbvalue="$employer->website"/>
                            </div>
                            <div class="col-12 mb-3">
                                {{-- <span  style="color:red"> *</span> --}}
                                <label for="Description">Company Description</label>
                                <textarea id="Description" rows="5" name="description" class="@error('description') is-invalid @enderror">{{ old('description',$employer->description) }}</textarea>
                                @error('description')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                            <div class="custom-file col-12 mb-3">
                                <input type="file" class="custom-file-input" id="logo" accept="image/*" name="logo">
                                <label class="custom-file-label" for="logo">Choose Company Logo</label>
                            </div>
                            <div class="custom-file col-12 mb-3">
                                <input type="file" class="custom-file-input" id="logo" accept="image/*" name="cover_photo">
                                <label class="custom-file-label" for="logo">Choose Company Cover Photo</label>
                            </div>
                            <div class="col-12 mb-3">
                                <button type="submit" class="btn btn-primary px-5">Update Profile</button>
                            </div>
                        </div>
                        <div class="row"></div>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection