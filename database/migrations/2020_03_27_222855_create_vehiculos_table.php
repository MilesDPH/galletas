<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateVehiculosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('vehiculos', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->integer('vehiculo')->nullable();
            $table->string('marca_veh',100)->nullable();
            $table->string('modelo_veh',100)->nullable();
            $table->string('placas_veh',10)->nullable();
            $table->string('desc_veh',255)->nullable();

            $table->integer('poliza_veh')->nullable();
            $table->integer('tel_seg_veh')->nullable();
            $table->string('inicio_seg_veh')->nullable();
            $table->string('fin_seg_veh',30)->nullable();
            $table->string('fecha_com_veh',30)->nullable();
            $table->string('fecha_alta_veh',30)->nullable();
            $table->string('fecha_baja_veh',30)->nullable();
            $table->string('motivo_baja_veh',255)->nullable();
            $table->float('km_actual_veh',10,2)->nullable();
            $table->boolean('estatus_veh')->default(1);
            
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
        Schema::dropIfExists('vehiculos');
    }
}
