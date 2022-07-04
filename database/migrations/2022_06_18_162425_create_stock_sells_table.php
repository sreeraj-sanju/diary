<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateStockSellsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('stock_sells', function (Blueprint $table) {
            $table->id();
            $table->foreignId('finyear')->constrained('financial_years')->cascadeOnDelete();
            $table->foreignId('stock_name')->constrained('stock_names')->cascadeOnDelete();
            $table->integer('sell_count')->nullable();
            $table->date('sell_date')->nullable();
            $table->float('sell_amount_single')->nullable();
            $table->float('total_sell_amount')->nullable();
            $table->float('buy_charge')->nullable()->default('0');
            $table->boolean('is_active')->default('1')->comment = '1=true 0=false';
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
        Schema::dropIfExists('stock_sells');
    }
}
