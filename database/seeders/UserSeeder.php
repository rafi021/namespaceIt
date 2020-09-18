<?php

namespace Database\Seeders;

use App\Models\Admin;
use App\Models\Applicant;
use App\Models\Employer;
use App\Models\User;
use Carbon\Carbon;
use Database\Factories\UserFactory;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str; 

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // Create Admin User of this Application
        $user_id = User::insertGetId([
            'role_id' => 1,
            'first_name' => 'admin',
            'last_name' => 'admin',
            'email' => 'admin@admin.com',
            'email_verified_at' => now(),
            'password' => Hash::make('1234'),
        ]);

        // Assign this user in Admin Table
        Admin::insert([
            'user_id' => $user_id,
        ]);


        // Special Employer Login Credential
        $employer_user_id = User::insertGetId([
            'role_id' => 2,
            'first_name' => 'Job',
            'last_name' => 'Employer',
            'email' => 'employer@login.com',
            'email_verified_at' => now(),
            'password' => Hash::make('1234'),
        ]);
        Employer::insert([
            'user_id' => $employer_user_id,
            'business_name' => "ABC Company",
            'slug' => Str::slug('ABC Company').Str::random(5),
            'company_address' => "ABC Company, Dhaka, BD",
            'phone' => "02-555-5555",
            'website' => "www.abc.com",
            'logo' => 'logo.jpg',
            'cover_photo' => 'cover_photo.jpg',
            'description' => 'its a demo company',
            'created_at' => Carbon::now(),
        ]);
        // Special Applicant Login Credential
        $applicant_user_id = User::insertGetId([
            'role_id' => 3,
            'first_name' => 'Job',
            'last_name' => 'Applicant',
            'email' => 'applicant@login.com',
            'email_verified_at' => now(),
            'password' => Hash::make('1234'),
        ]);

        Applicant::insert([
            'user_id' => $applicant_user_id,
            'address' => 'Dhaka, BD',
            'gender' => 'Male',
            'experience' => '10',
            'profile_photo' => 'default_photo.jpg',
            'created_at' => Carbon::now(),
        ]);

        // $seedCount = (int) $this->command->ask('How many seeds would you like to generate ?', 20);
        // UserFactory::times($seedCount)->create();
    }
}
