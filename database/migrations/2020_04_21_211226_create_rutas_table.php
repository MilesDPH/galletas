<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateRutasTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('rutas', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('nombre_ruta',100);
            $table->unsignedBigInteger('user_id')->nullable();
            $table->boolean('estatus_ruta')->default(1);
            $table->string('fechabaja_ruta',100)->nullable();
            $table->string('motivobaja_ruta',255)->nullable();
            $table->timestamps();
            $table->foreign('user_id')->on('users')->references('id');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('rutas');
    }
}
