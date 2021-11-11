<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateMovimientoProductosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('movimiento_productos', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->integer('fk_producto');
            $table->float('cantidad',8,2);
            $table->string('tipo_mov',20);
            $table->string('fecha_mov',30);
            $table->boolean('estatus_mov')->default(1);
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
        Schema::dropIfExists('movimiento_productos');
    }
}
