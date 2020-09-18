@extends('frontend.layout.frontend_layout')
@section('frontend_content')
    <!-- Page Heading Section Start -->
    @include('frontend.panel.breadcrumb', [
        'title' => 'Applicant Profile',
        'menu' => 'profile-edit',
        'menuLink' => "",
        'submenu' => "",
    ])
    <!-- Page Heading Section End -->
    <div class="section section-padding">
        <div class="container">
            <div class="row">
                <x-alert :type="session('type')" :message="session('profile_status')"/>
                <div class="col-lg-10 mx-auto" >
                    <div class="media">
                        <form action="{{ route('applicant.photoupdate', $applicant_info) }}" method="POST" enctype="multipart/form-data" id="profile-photo-upload">
                            @csrf 
                            @method('POST')
                        <a href="javascript: void(0);">
                            <img id="new-image" src="{{ asset('avater') }}/{{ $applicant_info->profile_photo }}" class="rounded mr-75" alt="profile image" height="100" width="100">
                            <script>
                                var loadFile = function(event) {
                                    var image = document.getElementById('new-image');
                                    image.src = URL.createObjectURL(event.target.files[0]);
                                };
                            </script>
                        </a>
                            <div class="custom-file col-12 mb-3">
                                <input type="file" class="custom-file-input" id="profile-photo" accept="image/*" name="profile_photo" onchange="loadFile(event)">
                                <label class="custom-file-label" for="profile-photo">Photo Upload: File must be a Image (.jpg, .png, .jpeg)</label>
                            </div>
                            <button type="submit" class="btn btn-sm btn-info">Upload</button>
                        </form>
                    </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="create-job-form col-lg-10 mx-auto">
                    <form action="{{ route('applicant.update', $applicant_info) }}" method="POST" enctype="multipart/form-data">
                        @csrf
                        @method('PUT')
                        <div class="row mb-3">
                            <div class="col-md-4 col-12 mb-3">
                                <span  style="color:red"> *</span>
                                <x-inputbox type="text" labelName="First Name" placeholderName="Enter First Name" varName="first_name" :dbvalue="$user_info->first_name"/>
                            </div>
                            <div class="col-md-4 col-12 mb-3">
                                <span  style="color:red"> *</span>
                                <x-inputbox type="text" labelName="Last Name" placeholderName="Enter Last Name" varName="last_name" :dbvalue="$user_info->last_name"/>
                            </div>
                            <div class="col-md-4 col-12 mb-3">
                                <span  style="color:red"> *</span>
                                <x-inputbox type="text" labelName="Email" placeholderName="Enter Email" varName="email" :dbvalue="$user_info->email"/>
                            </div>
                            <div class="col-md-6 col-12 mb-3">
                                <x-inputbox type="text" labelName="Experience" placeholderName="Enter Experience" varName="experience" :dbvalue="$applicant_info->experience"/>
                            </div>
                            <div class="col-md-6 col-12 mb-3">
                                {{-- {{ $applicant_info->skills }} --}}
                                @php
                                $skills="";
                                    foreach ($applicant_info->skills as $skill) {
                                        $skills .= $skill->skills_name.', ';
                                    }
                                    // print_r($skills);
                                @endphp
                                <x-inputbox type="text" labelName="Skils" placeholderName="Enter Skils with comma separation" varName="skills" :dbvalue="$skills"/>
                            </div>
                            <div class="col-12 mb-3">
                                {{-- <span  style="color:red"> *</span> --}}
                                <label for="Address">Address</label>
                                <textarea id="Address" rows="5" name="address" class="@error('address') is-invalid @enderror">{{ $applicant_info->address }}</textarea>
                                @error('address')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                            <div class="col-md-6 col-12 mb-3">
                                <label for="applicantGender">Gender</label>
                                <select id="applicantGender" name="gender">
                                    <option value="male">Male</option>
                                    <option value="female">Female</option>
                                    <option value="other">Other</option>
                                </select>
                            </div>
                            <div class="custom-file col-12 mb-3">
                                <input type="file" class="custom-file-input" id="cover-letter" accept=".doc,.docx,.pdf" name="cover_letter">
                                <label class="custom-file-label" for="cover-letter">Cover_Letter Upload: File must be a Doc or PDF</label>
                            </div>
                            <span  style="color:red"> * (no resume-no apply)</span>
                            <div class="custom-file col-12 mb-3">
                                <input type="file" class="custom-file-input" id="resume-file" accept=".doc,.docx,.pdf" name="resume_file">
                                <label class="custom-file-label" for="resume-file">Resume/CV Upload: File must be a Doc or PDF</label>
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
