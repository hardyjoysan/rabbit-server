<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class UploadFiles extends Model
{
    use SoftDeletes;

    protected $fillable = [
        'name', 'filesrc'
    ];

    protected $hidden = [];
}

?>
