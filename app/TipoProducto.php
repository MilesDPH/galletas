<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class TipoProducto extends Model
{
    protected $fillable = [
        'nombre_produc', 'id_tipo','descripcion_produc'
    ];
}
