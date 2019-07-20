<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateEnviromentTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('enviroment', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->timestamps();
            $table->string('name');
            $table->integer('fk_user');
            $table->integer('estado');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('enviroment');
    }
}
