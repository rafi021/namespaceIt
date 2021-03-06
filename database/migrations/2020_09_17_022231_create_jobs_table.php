<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateJobsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('jobs', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('user_id');
            $table->unsignedBigInteger('employer_id');
            $table->unsignedBigInteger('category_id');
            $table->string('job_title');
            $table->string('job_slug');
            $table->string('education_required')->nullable();
            $table->string('experience_required')->nullable();
            $table->longText('job_description');
            $table->string('gender')->nullable();
            $table->string('position')->nullable();
            $table->string('vacancy')->nullable();
            $table->string('salary');
            $table->longText('location')->nullable();
            $table->string('country')->nullable();
            $table->string('job_type')->nullable();
            $table->boolean('status')->default('1');
            $table->string('last_date');
            $table->timestamps();
            $table->softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('jobs');
    }
}
