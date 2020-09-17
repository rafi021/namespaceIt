<?php

namespace Database\Seeders;

use Carbon\Factory;
use Database\Factories\EmployerFactory;
use Illuminate\Database\Seeder;

class EmployerSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $seedCount = (int) $this->command->ask('How many seeds would you like to generate ?', 20);
        EmployerFactory::times($seedCount)->create();
    }
}
