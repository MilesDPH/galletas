<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddDiasVisitasToRutaTiendas extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('ruta_tiendas', function (Blueprint $table) {
            $table->string('dias_visita_tienda',255)->nullable()->after('fk_ruta');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('ruta_tiendas', function (Blueprint $table) {
            //
        });
    }
}
