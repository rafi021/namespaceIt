<?php

namespace Database\Factories;

use App\Models\Employer;
use App\Models\JobCategory;
use App\Models\Jobs;
use App\Models\User;
use Carbon\Carbon;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;

class JobsFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Jobs::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'user_id' => User::where('role_id',2)->get()->random()->id,
            'employer_id' => Employer::all()->random()->id,
            'category_id' => JobCategory::all()->random()->id,
            'job_title' => $name = $this->faker->text(),
            'job_slug' => Str::slug($name).Str::random(5),
            'experience_required' => '2 Year to 3 Year',
            'education_required' => 'Bacelor/Master/s',
            'gender' => 'Any',
            'vacancy' => rand(1,5),
            'job_description' => $this->faker->paragraph(rand(2,10)),
            'position' => $this->faker->jobTitle,
            'salary' => $this->faker->numberBetween(10000, 1000000),
            'location' => $this->faker->address,
            'country' => $this->faker->country,
            'job_type' => 'Full time',
            'status' => rand(0,1),
            'last_date' => Carbon::now()->addWeeks(rand(0,10)),
            'created_at' => Carbon::now(),
        ];
    }
}
