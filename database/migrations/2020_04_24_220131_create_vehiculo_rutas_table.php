<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateVehiculoRutasTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('vehiculo_rutas', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->integer('fk_vehiculo_vr')->unsigned();
            $table->integer('fk_ruta_vr')->unsigned();
            $table->boolean('status_vehiculo_ruta')->default(1);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('vehiculo_rutas');
    }
}
