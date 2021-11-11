<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateInventarioRutasTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('inventario_rutas', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->integer('id_ruta')->unsigned();
            $table->integer('id_producto')->unsigned();
            $table->integer('cantidad')->unsigned();
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
        Schema::dropIfExists('inventario_rutas');
    }
}
