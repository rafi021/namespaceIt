<?php

namespace Database\Factories;

use App\Models\Applicant;
use App\Models\User;
use Carbon\Carbon;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;

class ApplicantFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Applicant::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'user_id' => User::where('role_id', 3)->get()->random()->id,
            'address' => $this->faker->address,
            'gender' => $this->faker->title($gender ='male'|'female'),
            'experience' => $this->faker->numberBetween(1,10),
            'cover_letter' => NULL,
            'resume_file' => NULL,
            'profile_photo' => 'default_photo.jpg',
            'created_at' => Carbon::now(),
        ];
    }
}
