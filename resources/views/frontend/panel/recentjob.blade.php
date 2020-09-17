<div class="section section-padding">
        <div class="container">
            <div class="section-title">
                <h2 class="title">Latest Jobs</h2>
                <p>Here's the most recent job listed on the website.</p>
            </div>

            <!-- Job List Wrap Start -->
            <div class="job-list-wrap">
                @foreach ($job_posts as $job_post)
                <!-- Job List Start -->
                <a href="{{ route('job.show', $job_post) }}" class="job-list">
                    <div class="company-logo col-auto">
                        <img src="{{ asset('frontend_assets') }}/images/companies/company-{{ $job_post->id }}.png" alt="Company Logo">
                    </div>
                    <div class="salary-type col-auto order-sm-3">
                        <span class="salary-range">Tk {{ $job_post->salary }}</span>
                        <span class="badge badge-success">{{ $job_post->job_type }}</span>
                    </div>
                    <div class="content col">
                        <h6 class="title">{{ $job_post->position }}</h6>
                        <ul class="meta">
                            <li><strong class="text-primary">{{ $job_post->employer->business_name }}</strong></li>
                            <li><i class="fa fa-map-marker"></i> {{ $job_post->location }}</li>
                        </ul>
                    </div>
                </a>
                <!-- Job List Start -->
                @endforeach
            </div>
            <!-- Job List Wrap Start -->

            <div class="text-center mt-4 mt-lg-5">
                <a href="job-list.html" class="btn btn-primary">View All Jobs</a>
            </div>

        </div>
    </div>