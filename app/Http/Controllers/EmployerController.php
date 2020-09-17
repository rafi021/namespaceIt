<?php

namespace App\Http\Controllers;

use App\Models\Employer;
use App\Models\JobCategory;
use Illuminate\Http\Request;

class EmployerController extends Controller
{
    public function __construct()
    {
        return $this->middleware('auth')->except('index', 'show');
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $all_employer = Employer::with('jobs')->withCount(['jobs'])->get();
        return view('frontend.pages.employer-list',[
            'employers' => $all_employer,
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
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(Employer $employer)
    {
        return view('frontend.pages.single-employer', compact('employer'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }

    public function dashboard()
    {
        return view('frontend.pages.employer.dashboard');
    }

    public function profile()
    {
        return view('frontend.pages.employer.profile');
    }

    public function createjobpost()
    {
        $job_categories = JobCategory::all();
        return view('frontend.pages.employer.create-job-post',[
            'job_categories' => $job_categories,
        ]);
    }
}
