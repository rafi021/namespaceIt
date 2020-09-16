<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Applicant extends Model
{
    use HasFactory,SoftDeletes;

    protected $fillable = [
        'role_id',
        'user_id',
        'address',
        'gender',
        'experience',
        'cover_letter',
        'resume_file',
        'profile_photo',
    ];
}
