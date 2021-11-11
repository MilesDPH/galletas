<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateNominaPasivosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('nomina_pasivos', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->float('infonavit', 8, 2);
            $table->float('prestamo', 8, 2);
            $table->float('faltante', 8, 2);
            $table->float('devolucion', 8, 2);
            $table->float('descuento_por_falta', 8, 2);

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
        Schema::dropIfExists('nomina_pasivos');
    }
}
