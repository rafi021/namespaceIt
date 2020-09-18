@extends('frontend.layout.frontend_layout')
@section('frontend_content')

@section('frontend_styles')
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.21/css/jquery.dataTables.css">
@endsection

    <!-- Page Heading Section Start -->
    @include('frontend.panel.breadcrumb', [
        'title' => 'Applicant Dashboard',
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
                            <th scope="col">Company Name</th>
                            <th scope="col">Last Date</th>
                            <th scope="col">Applied Date</th>
                        </tr>
                        </thead>
                        <tbody>
                            {{-- {{ $job_posts }} --}}
                            @foreach ($job_posts as $job)
                            <tr>
                                <th scope="row">{{ $loop->index+1 }}</th>
                                <td>{{ $job->job->position }}</td>
                                <td>
                                    {{ $job->employer->business_name }}
                                </td>
                                <td>
                                    {{  $job->job->last_date }}
                                </td>
                                <td>
                                    {{ $job->created_at }}
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