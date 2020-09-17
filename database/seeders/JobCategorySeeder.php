<?php

namespace Database\Seeders;

use App\Models\JobCategory;
use Illuminate\Database\Seeder;
use Illuminate\Support\Str;

class JobCategorySeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $jobCategories = [
            'Accounting/Finance',
            'Banking',
            'Commercial/Supply Chain',
            'Education/Trainning',
            'Engineer/Architects',
            'Garments/Textile',
            'HR/Org.Development',
            'Gen Mgt/Admin',
            'Design/Creative',
            'Production/Operation',
            'Hospitality/Travel/Tourism',
            'IT & Telecommunication',
            'Marketing/Sales',
            'Media/Ad./Event Mgt.',
            'Medical/Pharma',
            'NGO',
            'Others',
        ];

        foreach ($jobCategories as $category) {
            JobCategory::create([
                'job_category_name' => $category,
                'job_category_slug' => Str::slug($category). Str::random(5),
            ]);
        }
    }
}
