<?php

namespace App\Http\Controllers;

use App\Models\Applicant;
use App\Models\Employer;
use App\Models\JobCategory;
use App\Models\Jobs;
use Database\Seeders\JobApplicationSeeder;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Storage;
use Image;

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
    public function update(Request $request, Employer $employer)
    {
        // dd($request->all());
        // First update the model with other request info
        $employer->update([
            'business_name' => $request->input('business_name'),
            'company_address' => $request->input('company_address'),
            'phone' => $request->input('phone'),
            'website' => $request->input('website'),
            'description' => $request->input('description'),
        ]);
        // Then process any logo image file 
        $this->image_upload($request,$employer,'logo','logo','public/logo/');
        // Then process any cover_photo image file 
        $this->image_upload($request,$employer,'cover_photo','cover_photo','public/cover_photo/');
        return back()->with([
                'type' => 'success',
                'profile_status' => 'Successfully updated profile!!!',
            ]);
    }

    public function image_upload($request, $model_instance, $model_field,$default_file_name, $store_path){
        // First Check if photo uploaded or not
        if($request->hasFile($default_file_name))
        {
            $request->validate([
                $default_file_name => 'image|mimes:jpeg,jpg,png|max:2000'
            ]);
        }
        // Then process the old profile photo
        if ($request->hasFile($default_file_name)) {
            //dd($request->file($default_file_name), $model_instance[$model_field], $default_file_name, $store_path);
            if ($model_instance[$model_field] != $default_file_name.'.jpg') {
                //delete old photo
                $photo_location = $store_path;
                $old_photo_location = $photo_location . $model_instance[$model_field];
                unlink(base_path($old_photo_location));
            }
            // Finally upload image
            $photo_location = $store_path;
            $uploaded_photo = $request->file($default_file_name);
            $new_photo_name = $model_instance->id.'_'.$default_file_name.'.'.$uploaded_photo->getClientOriginalExtension();
            $new_photo_location = $photo_location . $new_photo_name;
            Image::make($uploaded_photo)->resize(600, 622)->save(base_path($new_photo_location), 40);
            // check if successfull
            $check =  $model_instance->update([
                $default_file_name => $new_photo_name,
            ]);
            return $check; 
        }
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
        $job_posts = Jobs::where('user_id', Auth::user()->id)->latest()->with(['jobapplications'])->get();
        return view('frontend.pages.employer.dashboard',[
            'job_posts' => $job_posts,
        ]);
    }

    public function profile()
    {
        $employer = Employer::where('user_id', Auth::id())->first();
        return view('frontend.pages.employer.profile', compact('employer'));
    }

    public function createjobpost()
    {
        $job_categories = JobCategory::all();
        return view('frontend.pages.employer.create-job-post',[
            'job_categories' => $job_categories,
        ]);
    }
    public function resumedownload($id){
        //dd(Applicant::findOrFail($id)->resume_file);
        return Storage::download(Applicant::findOrFail($id)->resume_file);
    }
    public function coverdownload($id){
        return Storage::download(Applicant::findOrFail($id)->cover_letter);
    }
}
