<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Employer extends Model
{
    use HasFactory, SoftDeletes;

    protected $fillable = [
        'role_id',
        'user_id',
        'business_name',
        'slug',
        'company_address',
        'phone',
        'website',
        'logo',
        'cover_photo',
        'description',
    ];

    public function jobs(){
        return $this->hasMany(Jobs::class);
    }

    // route show slug
    public function getRouteKeyName()
    {
        return 'id';
    }

    public function jobapplications(){
        return $this->hasMany(JobApplication::class);
    }
}
