<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('users', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('name');
            $table->string('apepat');
            $table->string('apemat')->nullable();
            $table->string('direccion', 512);
            $table->string('telefono')->nullable();
            $table->unsignedBigInteger('fktiporol');
            $table->string('fecha_ingreso');
            $table->boolean('estatus')->default(1);
            $table->string('urlfoto')->nullable();
            $table->string('fecha_nacimiento');
            $table->string('fecha_baja')->nullable();
            $table->string('motivo_baja', 512)->nullable();
            $table->string('email')->unique();
            $table->timestamp('email_verified_at')->nullable();
            $table->string('password');
            $table->float('salario', 8, 2);
            $table->float('infonavit', 8, 2);
            $table->rememberToken();
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
        Schema::dropIfExists('users');
    }
}
