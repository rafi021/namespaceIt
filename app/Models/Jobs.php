<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Jobs extends Model
{
    use HasFactory,SoftDeletes;
    protected $fillable = [
        'user_id',
        'employer_id',
        'category_id',
        'job_title',
        'job_slug',
        'job_description',
        'position',
        'salary',
        'location',
        'country',
        'job_type',
        'status',
        'last_date',
    ];

    // One to Many Relationship inverse
    public function employer(){
        return $this->belongsTo(Employer::class);
    }

    // route show slug
    public function getRouteKeyName()
    {
        return 'job_slug';
    }

}
