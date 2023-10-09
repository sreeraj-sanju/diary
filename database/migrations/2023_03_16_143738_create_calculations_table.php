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
        Schema::create('calculations', function (Blueprint $table) {
            $table->id();
            $table->date('calc_date')->nullable();
            $table->foreignId('fin_id')->constrained('financial_years')->cascadeOnDelete();
            $table->string('stock_name', 50)->nullable();
            $table->float('amount_avail')->nullable();
            $table->float('buy_amount')->nullable();
            $table->integer('buy_count')->nullable();
            $table->float('total_buy_amount')->nullable();
            $table->float('stop_loss')->nullable();
            $table->float('target')->nullable();
            $table->float('expected_profit')->nullable();
            $table->float('expected_loss')->nullable();
            $table->integer('divident_amount')->nullable();
            $table->date('issue_date')->nullable();
            $table->float('amount_accnt')->nullable();
            $table->string('ratio')->nullable();
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
        Schema::dropIfExists('calculations');
    }
};
