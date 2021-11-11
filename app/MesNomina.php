<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class MesNomina extends Model
{
    public function nominas(){
        return $this->hasMany(Nomina::class);
    }
}
