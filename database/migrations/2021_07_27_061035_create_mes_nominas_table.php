<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateMesNominasTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('mes_nominas', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->float('meta_minima', 8, 2);
            $table->float('meta_maxima', 8, 2);
            $table->unsignedBigInteger('ruta_id');

            $table->date('mes');

            $table->timestamps();
            $table->foreign('ruta_id')->on('rutas')->references('id');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('mes_nominas');
    }
}
