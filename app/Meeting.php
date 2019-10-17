<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Meeting extends Model
{
    
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'id_meeting_room',
        'email',
        'start_meeting',
        'finish_meeting',
        'situation',
        'description',
    ];

    /**
     * The attributes excluded from the model's JSON form.
     *
     * @var array
     */
    protected $hidden = [
        'password',
    ];
}
