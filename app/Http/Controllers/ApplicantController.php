<?php

namespace App\Http\Controllers;

use App\Models\Applicant;
use App\Models\JobApplication;
use App\Models\Jobs;
use App\Models\Skills;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Str;
use Image;

class ApplicantController extends Controller
{

    public function __construct()
    {
        return $this->middleware('auth');
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
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
    public function show($id)
    {
        //
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
    public function update(Request $request, Applicant $applicant)
    {
        // dd($request->all());
        // First Update User basic information on User Tabale 
        $user = User::find(Auth::id());
        $user->update([
            'first_name' => $request->input('first_name'),
            'last_name' => $request->input('last_name'),
            'email' => $request->input('email'),
        ]);
        // Then upload files to storage path and update applicant table with path info
        if($request->hasFile('cover_letter')){
            $cover_letter_file = $request->file('cover_letter');
            $new_cover_letter_name = $applicant->id.'_cover_letter'.'.'.$cover_letter_file->getClientOriginalExtension();
            $path_name = "/applicant/resume_file";
            $cover_letter_path = $cover_letter_file->storeAs($path_name,$new_cover_letter_name);
             // dd($cover_letter_path); 
            $applicant->update([
                'cover_letter' => $cover_letter_path,
            ]);
        
        }
        if($request->hasFile('resume_file')){
            $resume_file_file = $request->file('resume_file');
            $new_resume_file_name = $applicant->id.'_resume_file'.'.'.$resume_file_file->getClientOriginalExtension();
            $path_name = "/applicant/resume_file";
            $resume_file_path = $resume_file_file->storeAs($path_name,$new_resume_file_name);
            // dd($resume_file_path); 
            $applicant->update([
                'resume_file' => $resume_file_path,
            ]);
        }

        // Then Update Skills table with new skills sets
        $skills = explode(',',$request->input('skills'));
        foreach ($skills as $skill) {
            // Delete old skills first then update new skills
            Skills::updateOrCreate(
                [
                    'skills_name' => $skill,
                ],
                [
                    'skills_name' => $skill,
                    'skills_slug' => Str::slug($skill).Str::random(5),
                    'applicant_id' => $applicant->id,
                ]
            );
            }

        // Then finally Update the applicant information on applicant table
        $applicant->update([
            'experience' => $request->input('experience'),
            'address' => $request->input('address'),
            'gender' => $request->input('gender'),
        ]);

        return redirect()->back()->with([
            'type' => 'success',
            'profile_status' => 'Profile Updated Successfully!!!',
        ]);
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
        $job_posts = JobApplication::where('user_id', Auth::id())->with(['job','employer','applicant'])->get();
        return view('frontend.pages.applicant.dashboard',[
            'job_posts' => $job_posts,
        ]);
    }

    public function profile()
    {   $user_info = Auth::user();
        $applicant_info = Applicant::where('user_id', $user_info->id)->with(['skills'])->first();
        // $skills = Skills::where('applicant_id' , $applicant_info->id)->get();
        //dd($applicant_info,$skills);
        return view('frontend.pages.applicant.profile', [
            'user_info' => $user_info,
            'applicant_info' => $applicant_info,
            // 'skills' => $skills,
        ]);
    }

    public function photoupdate(Request $request, Applicant $applicant)
    {
        // First Check if photo uploaded or not
        if($request->hasFile('profile_photo'))
        {
            $request->validate([
                'profile_photo' => 'image|mimes:jpeg,jpg,png|max:2000'
            ]);
        }
        // Then process the old profile photo
        if ($request->hasFile('profile_photo')) {
            if ($applicant->profile_photo != 'default_photo.jpg') {
                //delete old photo
                $photo_location = 'public/avater/';
                $old_photo_location = $photo_location . $applicant->profile_photo;
                unlink(base_path($old_photo_location));
            }
            $photo_location = 'public/avater/';
            $uploaded_photo = $request->file('profile_photo');
            $new_photo_name = $applicant->id.'_profile_photo'.'.' . $uploaded_photo->getClientOriginalExtension();
            $new_photo_location = $photo_location . $new_photo_name;
            Image::make($uploaded_photo)->resize(600, 622)->save(base_path($new_photo_location), 40);
        
            $check =  $applicant->update([
                'profile_photo' => $new_photo_name,
            ]);
            if($check)
            return redirect()->back()->with([
                'type' => 'success',
                'profile_status' => 'Profile Photo Updated Successfully!!!',
            ]);
        } else {
            return back()->with([
                'type' => 'danger',
                'profile_status' => 'Please upload a valid image file',
            ]);
        }
    }

    public function applicationsubmit($jobs_id)
    {
        if(!Auth::check()){
            return redirect()->back()->with([
                'type' => 'danger',
                'login_status' => 'Please login to apply Job',
            ]);
        }else{
            $user_id = Auth::id();
            // First check if he has been uploaded his resume or not
            $resume_check = Applicant::where('user_id', $user_id)->pluck('resume_file')->first();
            if($resume_check)
            {
                $employer_id = Jobs::findOrFail($jobs_id)->employer_id;
                $applicant_id = Applicant::where('user_id', $user_id)->first()->id;

                //dd($employer_id, $applicant_id);
                // If so the proceed to apply
                JobApplication::create([
                    'jobs_id' => $jobs_id,
                    'user_id' => $user_id,
                    'employer_id' => $employer_id,
                    'applicant_id' => $applicant_id,
                ]);
                return redirect()->back()->with([
                    'type' => 'success',
                    'profile_status' => 'You have successfully applied for this job!!!',
                ]);
            }
            else{
                // or else proceed him to profile update page with flash message of resume upload
                return redirect()->route('applicant.profile')->with([
                    'type' => 'danger',
                    'profile_status' => 'Please Update you profile with Resume file',
                ]);
            }
            
        }
    }
}
