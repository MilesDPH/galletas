<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTiendasTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tiendas', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('nombre_tienda',100);
            $table->integer('fk_codigo_postal')->unsigned();
            $table->string('colonia',100);
            $table->string('direccion_tienda',100);
            $table->string('responsable_tienda',100);
            $table->string('tel_tienda',100)->nullable();
            $table->string('fechaalta_tienda',100)->nullable();
            $table->boolean('estatus_tienda')->default(1);
            $table->string('fechabaja_tienda',100)->nullable();
            $table->string('motivobaja_tienda',255)->nullable();
            $table->timestamps();

            //$table->foreign('fk_codigo_postal')->references('fk_codigo_postal')->on('colonias');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('tiendas');
    }
}
