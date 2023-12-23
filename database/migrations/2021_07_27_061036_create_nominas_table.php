<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateNominasTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('nominas', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->date('comienza_en');
            $table->date('finaliza_en');
            $table->float('total_activos', 8, 2);
            $table->float('total_pasivos', 8, 2);
            $table->float('total', 8, 2);
            $table->float('venta_semanal', 8, 2);
            $table->string('direccion_pdf', 255);
            $table->unsignedBigInteger('ruta_id');
            $table->unsignedBigInteger('nomina_pasivo_id');
            $table->unsignedBigInteger('nomina_activo_id');
            $table->unsignedBigInteger('mes_nomina_id');

            $table->date('inicio_en');
            $table->date('final_en');
            $table->timestamps();
            $table->foreign('ruta_id')->on('rutas')->references('id');
            $table->foreign('nomina_pasivo_id')->on('nomina_pasivos')->references('id');
            $table->foreign('nomina_activo_id')->on('nomina_activos')->references('id');
            $table->foreign('mes_nomina_id')->on('mes_nominas')->references('id');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('nominas');
    }
}
