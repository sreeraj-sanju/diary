<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('forex_trades', function (Blueprint $table) {
            $table->float('entry', 8, 6)->nullable()->change();
            $table->float('exit', 8, 6)->nullable()->change();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('forex_trades', function (Blueprint $table) {
            $table->float('entry', 8, 6)->nullable()->change();
            $table->float('exit', 8, 6)->nullable()->change();
        });
    }
};
