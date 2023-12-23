<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateNominaPasivoDescuentoExtrasTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('nomina_pasivo_descuento_extras', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->float('cantidad', 8, 2);
            $table->string('descripcion', 50);
            $table->unsignedBigInteger('nomina_pasivo_id');


            $table->timestamps();
            $table->foreign('nomina_pasivo_id')->on('nomina_pasivos')->references('id');

        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('nomina_pasivo_descuento_extras');
    }
}
