<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateCheckListVehiculosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('check_list_vehiculos', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->integer('fk_registro')->unsigned();
            $table->string('aspecto',20);
            $table->string('estado',10)->default('mtto');
            $table->string('observaciones',1024)->nullable();
        });

    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('check_list_vehiculos');
    }
}
