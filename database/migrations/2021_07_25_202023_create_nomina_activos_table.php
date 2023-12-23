<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateNominaActivosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('nomina_activos', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->float('sueldo_base', 8, 2);
            $table->float('ayuda_transporte', 8, 2);
            $table->float('ayuda_despensa', 8, 2);
            $table->float('comision', 8, 2);
            $table->float('bono_servicio_cliente', 8, 2);
            $table->float('bono_personal', 8, 2);
            $table->float('bono_devolucion', 8, 2);


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
        Schema::dropIfExists('nomina_activos');
    }
}
