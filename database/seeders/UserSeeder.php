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
            'first_name' => 'admin',
            'last_name' => 'admin',
            'email' => 'admin@admin.com',
            'email_verified_at' => now(),
            'password' => Hash::make('1234'),
        ]);

        // Assign this user in Admin Table
        Admin::insert([
            'role_id' => 1,
            'user_id' => $user_id,
        ]);

        $seedCount = (int) $this->command->ask('How many seeds would you like to generate ?', 20);
        UserFactory::times($seedCount)->create();
    }
}
