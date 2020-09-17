<div class="section section-padding">
    <div class="container">
        <div class="section-title">
            <h2 class="title">Featured Companies</h2>
            <p>Here's the most job listed by those companies.</p>
        </div>

        <!-- Company List Wrap Start -->
        <div class="company-slider row">
            @foreach ($all_employer as $employer)
            <!-- Company List Start -->
            <div class="col">
                <a href="{{ route('employer.show',$employer) }}" class="feature-company">
                    <span class="company-logo"><img src="{{ asset('frontend_assets') }}/images/companies/company-{{ $employer->id }}.png" alt="company-1"></span>
                    <h6 class="title">{{ $employer->business_name }}</h6>
                    <span class="open-job">
                        <span class="badge {{ $employer->jobs_count ? "badge-success":"badge-danger" }} badge-lg">{{ $employer->jobs_count }} </span>
                    open positions</span>
                </a>
            </div>
            <!-- Company List Start -->
            @endforeach
        </div>
        <!-- Company List Wrap Start -->
    </div>
</div>