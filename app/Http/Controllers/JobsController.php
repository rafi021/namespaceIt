<?php

namespace App\Http\Controllers;

use App\Models\Jobs;
use Illuminate\Http\Request;

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
    public function store(Request $request)
    {
        // dd($request->all());
        
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
