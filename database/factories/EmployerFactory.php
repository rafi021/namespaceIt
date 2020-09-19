<?php

namespace Database\Factories;

use App\Models\Employer;
use App\Models\User;
use Carbon\Carbon;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;

class EmployerFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Employer::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */

    public function definition()
    {
        return [
            'user_id' => User::where('role_id',2)->get()->random()->id,
            'business_name' => $title = $this->faker->company,
            'slug' => Str::slug($title).Str::random(5),
            'company_address' => $this->faker->address,
            'phone' => $this->faker->phoneNumber,
            'website' => $this->faker->domainName,
            'logo' => 'logo.jpg',
            'cover_photo' => 'cover_photo.jpg',
            'description' => $this->faker->paragraph(rand(2,10)),
            'created_at' => Carbon::now(),
        ];
    }
}
