<?php

namespace Database\Factories;

use App\Models\Applicant;
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
            'jobs_id' => Jobs::all()->random()->id,
            'applicant_id'=> $applicant_id = Applicant::all()->random()->id,
            'user_id' => Applicant::where('id', $applicant_id)->first()->user_id,
            'employer_id' => 2,
        ];
    }
}
