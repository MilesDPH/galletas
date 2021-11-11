<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class UserTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('users')->insert([
           'email' => 'milesdeveloper@hotmail.com',
            'password' => bcrypt(12345678),
            'name' => 'Hugo',
            'apepat' => 'Pedroza',
            'direccion' => \Faker\Provider\en_US\Address::country(),
            'fktiporol' => '1',
            'salario' => '6000',
            'infonavit' => '2000',
            'fecha_ingreso' => \Carbon\Carbon::now(),
            'fecha_nacimiento' => \Carbon\Carbon::now()->subYears(23),
        ]);
    }
}
