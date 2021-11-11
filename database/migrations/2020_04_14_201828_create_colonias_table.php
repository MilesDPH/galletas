<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateColoniasTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('colonias', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->integer('fk_codigo_postal');
            $table->string('colonia',100);
            $table->string('municipio',100);
            $table->string('ciudad',100);
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
        Schema::dropIfExists('colonias');
    }
}
