<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateRutaTiendasTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('ruta_tiendas', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->integer('fk_tienda')->unsigned();
            $table->integer('fk_ruta')->unsigned();
            $table->boolean('status_tienda_ruta')->default(1);
            $table->timestamps();

            // $table->foreign('fk_tienda')->references('id')->on('tiendas');
            // $table->foreign('fk_ruta')->references('id')->on('rutas');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('ruta_tiendas');
    }
}
