<?php

namespace App;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

class Nomina extends Model
{
    protected $table = 'nominas';


    /*
     * Relaciones
     */

    public function ruta(){
        return $this->belongsTo(Rutas::class);
    }

    public function nomina_pasivo(){
        return $this->belongsTo(NominaPasivo::class);
    }

    public function nomina_activo(){
        return $this->belongsTo(NominaActivo::class);
    }

    /*
     * Accesores
     */
    public function getFormattedCreatedAtAttribute(){
        $fecha = Carbon::parse($this->created_at);
        return ucfirst($fecha->locale('es')->dayName) . " " . $fecha->day . " de " . ucfirst($fecha->locale('es')->monthName) . " del " . $fecha->year . " a las " . $fecha->format('H:i:s');
    }

    public function getFormattedUpdatedAtAttribute(){
        $fecha = Carbon::parse($this->updated_at);
        return ucfirst($fecha->locale('es')->dayName) . " " . $fecha->day . " de " . ucfirst($fecha->locale('es')->monthName) . " del " . $fecha->year . " a las " . $fecha->format('H:i:s');
    }

    public function getComienzoFormateadoAttribute(){
        $fecha = Carbon::parse($this->comienza_en);
        return ucfirst($fecha->locale('es')->dayName) . " " . $fecha->day . " de " . ucfirst($fecha->locale('es')->monthName) . " del " . $fecha->year . " a las " . $fecha->format('H:i:s');
    }

    public function getFinalFormateadoAttribute(){
        $fecha = Carbon::parse($this->finaliza_en);
        return ucfirst($fecha->locale('es')->dayName) . " " . $fecha->day . " de " . ucfirst($fecha->locale('es')->monthName) . " del " . $fecha->year . " a las " . $fecha->format('H:i:s');
    }

    public function getMesAttribute(){
        return $this->comienza_en .' to '. $this->finaliza_en;
    }
}
