<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateRegistroKmsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('registro_kms', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->integer('fk_vehiculo')->unsigned();
            $table->float('km_actual_regveh',10,2)->nullable();
            $table->float('km_nuevo_regveh',10,2)->nullable();
            $table->string('fecha_regveh',100)->nullable();
            $table->timestamps();

            // $table->foreign('fk_vehivulo')->references('id')->on('vehiculos');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('registro_kms');
    }
}
