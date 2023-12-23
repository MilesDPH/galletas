<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateProveedoresTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('proveedores', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('nombre_pro');
            $table->string('apepat_pro');
            $table->string('apemat_pro')->nullable();
            $table->string('direccion_pro',512);
            $table->string('telefono_pro')->nullable();
            $table->string('email_pro')->unique();
            $table->string('fecha_ingreso_pro');
            $table->boolean('estatus_pro')->default(1);
            $table->string('motivo_baja_pro',512)->nullable();
            $table->string('fecha_baja_pro')->nullable();
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
        Schema::dropIfExists('proveedores');
    }
}
