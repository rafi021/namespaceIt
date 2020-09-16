@extends('frontend.layout.frontend_layout')
@section('frontend_content')
     <!-- Slider Section Start -->
     @include('frontend.panel.slider')
     <!-- Slider Section End -->
 
     <!-- Job Search Section Start -->
     @include('frontend.panel.jobsearch')
     <!-- Job Search Section End -->
 
     <!-- Recent Jobs Start -->
     @include('frontend.panel.recentjob')
     <!-- Recent Jobs End -->
 
     <!-- Funfact Section Start -->
     @include('frontend.panel.funfact')
     <!-- Funfact Section End -->
 
     <!-- Featured Conpanies Start -->
     @include('frontend.panel.feature_company')
     <!-- Featured Conpanies End -->
 
     <!-- Testimonial Section Start -->
     @include('frontend.panel.testimonial')
     <!-- Testimonial Section End -->
 
     <!-- Blog Section Start -->
     @include('frontend.panel.blog')
     <!-- Blog Section End -->
@endsection