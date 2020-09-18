@extends('frontend.layout.frontend_layout')
@section('frontend_content')

@section('frontend_styles')
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.21/css/jquery.dataTables.css">
@endsection

    <!-- Page Heading Section Start -->
    @include('frontend.panel.breadcrumb', [
        'title' => 'Employer Dashboard',
        'menu' => 'dashboard',
        'menuLink' => "",
        'submenu' => "",
    ])
    <!-- Page Heading Section End -->
    <div class="section section-paddind">
        <div class="container">
            <div class="row mt-3">
                <div class="col-lg-12 mx-auto">
                    <table class="table table-bordered" id="myTable">
                        <thead>
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">Job Title</th>
                            <th scope="col">Applicant Name</th>
                            <th scope="col">Applicant Email</th>
                            <th scope="col">Applicant Resume</th>
                        </tr>
                        </thead>
                        <tbody>
                            {{-- {{ $job_posts->jobapplications }} --}}
                            @foreach ($job_posts as $job)
                            <tr>
                                <th scope="row">{{ $loop->index+1 }}</th>
                                <td>{{ $job->position }}</td>
                                <td>
                                    @foreach ($job->jobapplications as $application)
                                        @foreach ($application->users as $user)
                                            <li class="">{{ $user->first_name.' '. $user->last_name }}</li>                                
                                        @endforeach
                                    @endforeach
                                </td>
                                <td>
                                    @foreach ($job->jobapplications as $application)
                                        @foreach ($application->users as $user)
                                            <li>{{ $user->email }}</li>
                                        @endforeach
                                    @endforeach
                                </td>
                                <td>
                                    @foreach ($job->jobapplications as $application)
                                    <ul class="list-group">
                                        @foreach ($application->applicant as $applicant)
                                        <a class="list-group-item list-group-item-action" href="{{ route('resume.download', $applicant->id) }}">
                                            <i class="fa fa-download"></i>Resume
                                        </a>
                                        <a class="list-group-item list-group-item-action" href="{{ route('cover.download', $applicant->id) }}">
                                            <i class="fa fa-download"></i>Cover Letter
                                        </a>
                                        <br>
                                        @endforeach
                                    </ul>
                                    @endforeach
                                </td>
                            </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
@endsection
@section('frontend_scripts')
<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.js"></script>
<script>
    $(document).ready( function () {
    $('#myTable').DataTable();
} );
</script>
@endsection