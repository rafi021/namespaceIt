<?php

namespace Database\Seeders;

use Database\Factories\JobApplicationFactory;
use Illuminate\Database\Seeder;

class JobApplicationSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $seedCount = (int) $this->command->ask('How many seeds would you like to generate ?', 50);
        JobApplicationFactory::times($seedCount)->create();
    }
}
