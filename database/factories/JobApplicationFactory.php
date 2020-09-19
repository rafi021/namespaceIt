<?php

namespace Database\Factories;

use App\Models\Applicant;
use App\Models\Employer;
use App\Models\JobApplication;
use App\Models\Jobs;
use App\Models\User;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;

class JobApplicationFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = JobApplication::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
            return [
                'jobs_id' => $jobs_id = Jobs::all()->random()->id,
                'user_id' => $user_id = User::where('role_id',3)->get()->random()->id,
                'employer_id' => Jobs::findOrFail($jobs_id)->employer_id,
                'applicant_id'=> Applicant::where('user_id', $user_id)->first()->id,
            ];
    }
}
