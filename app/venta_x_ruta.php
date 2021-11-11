<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class venta_x_ruta extends Model
{
    public const VENTA = "Venta";
    public const DEVOLUCION = "Devolucion";

    //

    /*
     * Relaciones
     */

    public function ruta(){
        return $this->belongsTo(Rutas::class);
    }
}
