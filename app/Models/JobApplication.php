<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class JobApplication extends Model
{
    use HasFactory,SoftDeletes;
    protected $fillable = [
        'jobs_id',
        'user_id',
        'employer_id',
        'applicant_id',
    ];

    // Every job application can have many users
    public function users()
    {
        return $this->hasMany(User::class, 'id', 'user_id');
    }

    // Every Job Application is belongs to a Job Post
    public function job(){
        return $this->belongsTo(Jobs::class, 'jobs_id', 'id');
    }

    // Every Job Application can have many applicants
    public function applicant(){
        return $this->hasMany(Applicant::class, 'id', 'applicant_id');
    }

    // Every Job application belongs to a employer 
    public function employer(){
        return $this->belongsTo(Employer::class, 'employer_id', 'id');
    }
}
