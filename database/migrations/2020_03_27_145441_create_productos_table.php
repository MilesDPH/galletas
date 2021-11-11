<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateProductosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('productos', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('nombre',100);
            $table->string('descripcion',255);
            $table->unsignedBigInteger('fktipo');
            $table->float('costo',4,2);
            $table->float('precio_venta',4,2);
            $table->float('precio_menudeo',4,2);
            $table->float('precio_mayoreo',4,2);
            $table->float('existencia',8,2);
            $table->boolean('estatus_produ')->default(1);
            $table->unsignedBigInteger('fk_proveedor');
            $table->string('fecha_registro_prod');
            $table->string('motivo_baja_produ',512)->nullable();
            $table->string('fecha_baja_produ')->nullable();
            $table->timestamps();

            // $table->foreign('fktipo')->references('id_tipo')->on('tipo_productos');
            // $table->foreign('fk_proveedor')->references('id')->on('proveedores');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('productos');
    }
}
