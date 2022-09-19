<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateStockAnalysTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('stock_analys', function (Blueprint $table) {
            $table->id();
            $table->string('stock_name', 25)->nullable();
            $table->double('current_price',7,3)->nullable();
            $table->double('debt_equity',7,3)->nullable();
            $table->double('promoter_holding',4,2)->nullable();
            $table->double('roe',4,2)->nullable();
            $table->double('roce',4,2)->nullable();
            $table->double('profit_aft_tax',7,3)->nullable();
            $table->double('divident',4,2)->nullable();
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
        Schema::dropIfExists('stock_analys');
    }
}
