<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateComprasProductosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('compras-productos', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->integer('fk_lote')->unsigned();
            $table->integer('id_producto')->unsigned();
            $table->integer('cantidad')->unsigned();
            $table->float('costo',8,2);
            $table->float('subtotal',8,2);
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
        Schema::dropIfExists('compras-productos');
    }
}
