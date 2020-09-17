<?php

namespace Database\Seeders;

use App\Models\Admin;
use App\Models\User;
use Database\Factories\UserFactory;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

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
        User::insertGetId([
            'role_id' => 2,
            'first_name' => 'Job',
            'last_name' => 'Employer',
            'email' => 'employer@login.com',
            'email_verified_at' => now(),
            'password' => Hash::make('1234'),
        ]);
        // Special Applicant Login Credential
        User::insertGetId([
            'role_id' => 3,
            'first_name' => 'Job',
            'last_name' => 'Applicant',
            'email' => 'applicant@login.com',
            'email_verified_at' => now(),
            'password' => Hash::make('1234'),
        ]);

        $seedCount = (int) $this->command->ask('How many seeds would you like to generate ?', 20);
        UserFactory::times($seedCount)->create();
    }
}