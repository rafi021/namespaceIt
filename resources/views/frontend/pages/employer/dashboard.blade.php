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
                            <th scope="col">First</th>
                            <th scope="col">Last</th>
                            <th scope="col">Handle</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <th scope="row">1</th>
                            <td>Mark</td>
                            <td>Otto</td>
                            <td>@mdo</td>
                        </tr>
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