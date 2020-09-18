<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Jobs extends Model
{
    use HasFactory,SoftDeletes;
    // protected $fillable = [
    //     'user_id',
    //     'employer_id',
    //     'category_id',
    //     'job_title',
    //     'job_slug',
    //     'job_description',
    //     'education_required',
    //     'experience_required',
    //     'position',
    //     'vacancy',
    //     'salary',
    //     'location',
    //     'country',
    //     'job_type',
    //     'status',
    //     'last_date',
    // ];
    protected $guarded = []; // Time Save

    // One to Many Relationship inverse
    public function employer(){
        return $this->belongsTo(Employer::class);
    }

    // route show slug
    public function getRouteKeyName()
    {
        return 'job_slug';
    }

    // Every job has been applied by many applicant user
    public function users()
    {
        return $this->hasMany(User::class);
    }

    // Every job has many job application
    public function jobapplications()
    {
        return $this->hasMany(JobApplication::class, 'jobs_id', 'id');
    }

}
