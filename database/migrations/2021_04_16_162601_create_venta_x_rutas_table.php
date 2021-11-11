<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateVentaXRutasTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('venta_x_rutas', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->integer('id_ruta')->unsigned();
            $table->integer('id_producto')->unsigned();
            $table->integer('cantidad')->unsigned();
            $table->float('costo',8,2);
            $table->float('subtotal',8,2);
            $table->float('total',8,2);
            $table->string('tipo_movi',20);
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
        Schema::dropIfExists('venta_x_rutas');
    }
}
