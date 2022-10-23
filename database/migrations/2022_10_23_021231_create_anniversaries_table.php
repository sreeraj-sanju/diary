<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateAnniversariesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('anniversaries', function (Blueprint $table) {
            $table->id();
            $table->integer("year")->nullable();
            $table->char("class", 10)->nullable();
            $table->string("program_name", 30)->nullable();
            $table->string("contastant")->nullable();
            $table->string('song_name')->nullable();
            $table->string('file_name')->nullable();
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
        Schema::dropIfExists('anniversaries');
    }
}
