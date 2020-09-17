<?php

namespace Database\Seeders;

use Database\Factories\ApplicantFactory;
use Illuminate\Database\Seeder;

class ApplicantSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $seedCount = (int) $this->command->ask('How many seeds would you like to generate ?', 50);
        ApplicantFactory::times($seedCount)->create();
    }
}
