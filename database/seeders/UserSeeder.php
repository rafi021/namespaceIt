<?php

namespace Database\Seeders;

use App\Models\Admin;
use App\Models\User;
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
        $user_id = User::insertGetId(
            'first_name' => 'admin',
            'last_name' => 'admin',
            'email' => 'admin@admin.com',
            'password' => Hash::make('1234'),
        ]);

        // Assign this user in Admin Table
        Admin::insert([
            'role_id' => 1,
            'user_id' => $user_id,
        ]);
    }
}
