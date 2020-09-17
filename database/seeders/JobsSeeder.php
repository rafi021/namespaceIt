<?php

namespace Database\Seeders;

use Database\Factories\JobsFactory;
use Illuminate\Database\Seeder;

class JobsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $seedCount = (int) $this->command->ask('How many seeds would you like to generate ?', 20);
        JobsFactory::times($seedCount)->create();
    }
}
