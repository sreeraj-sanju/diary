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
        Schema::create('forex_trades', function (Blueprint $table) {
            $table->id();
            $table->foreignId('order_id')->constrained('forex_orders')->cascadeOnDelete();
            $table->float('entry')->nullable();
            $table->float('lot')->nullable();
            $table->float('type')->nullable();
            $table->float('exit')->nullable();
            $table->float('amount')->nullable();
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
        Schema::dropIfExists('forex_trades');
    }
};
