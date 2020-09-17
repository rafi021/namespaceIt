<?php

namespace App\Http\Controllers;

use App\Models\Employer;
use App\Models\Jobs;
use App\Models\User;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Http\Request;

class FrontendController extends Controller
{
    public function index()
    {
        $job_posts = Jobs::with(['employer'])->get()->take(10);
        $all_employer = Employer::withCount(['jobs'])->get();
        return view('frontend.pages.index',[
            'job_posts' => $job_posts,
            'job_post_count' => Jobs::count(),
            'members_count' => User::count(),
            'resume_count' => 0,
            'employer_count' => Employer::count(),
            'all_employer' => $all_employer,
        ]);
    }
}
