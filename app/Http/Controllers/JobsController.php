<?php

namespace App\Http\Controllers;

use App\Http\Requests\JobStoreRequest;
use App\Models\Employer;
use App\Models\Jobs;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Str;

class JobsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {   
        $job_posts = Jobs::with(['employer'])->get();
        return view('frontend.pages.job-list',[
            'job_posts' => $job_posts,
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(JobStoreRequest $request)
    {
        //dd($request->all());
        //dd(Auth::user()->id, Employer::where('user_id', Auth::user()->id)->first());
        Jobs::create([
            'user_id' => $user_id = Auth::user()->id,
            'employer_id' => Employer::where('user_id', $user_id)->first()->id,
            'category_id' => $request->input('category_id'),
            'job_title' => $title = $request->input('job_title'),
            'job_slug' => Str::slug($title) . Str::random(5),
            'education_required' => $request->input('education_required'),  
            'experience_required' => $request->input('experience_required'),  
            'job_description' => $request->input('job_description'),  
            'gender' => $request->input('gender'),  
            'position' => $request->input('job_title'),  
            'vacancy' => $request->input('vacancy'),  
            'salary' => $request->input('salary'),  
            'location' => $request->input('location'),  
            'country' => $request->input('country'),  
            'job_type' => $request->input('job_type'),  
            'last_date' => $request->input('last_date'),  
        ]);

        return redirect()->back()->with([
            'type' => 'success',
            'profile_status' => 'Successfully created new job post.!!!',
        ]);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Jobs  $jobs
     * @return \Illuminate\Http\Response
     */
    public function show(Jobs $jobs)
    {
        return view('frontend.pages.single-job',compact('jobs'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Jobs  $jobs
     * @return \Illuminate\Http\Response
     */
    public function edit(Jobs $jobs)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Jobs  $jobs
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Jobs $jobs)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Jobs  $jobs
     * @return \Illuminate\Http\Response
     */
    public function destroy(Jobs $jobs)
    {
        //
    }
}
