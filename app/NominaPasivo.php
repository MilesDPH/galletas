<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class NominaPasivo extends Model
{


    public function nomina_pasivo_descuento_extra(){
        return $this->hasMany(NominaPasivoDescuentoExtra::class);
    }
}
