<?php

namespace Database\Seeders;

use App\Models\Role;
use Illuminate\Database\Seeder;

class RoleSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $roles = [

            [
                'role_name' => 'Admin',
                'role_slug' => 'admin',
            ],
            [
                'role_name' => 'Employer',
                'role_slug' => 'Employer',
            ],
            [
                'role_name' => 'Applicant',
                'role_slug' => 'Applicant',
            ],
        ];

        foreach ($roles as $role) {
            Role::create($role);
        }
    }
}
