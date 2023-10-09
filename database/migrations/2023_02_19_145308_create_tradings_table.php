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
        Schema::create('tradings', function (Blueprint $table) {
            $table->id();
            $table->foreignId('finyear')->constrained('financial_years')->cascadeOnDelete();
            $table->string('stock_name', 50)->nullable();
            $table->integer('buy_count')->nullable();
            $table->date('buy_date')->nullable();
            $table->date('sell_date')->nullable();
            $table->float('single_stock_amount')->nullable();
            $table->float('total_buy_amount')->nullable();
            $table->float('total_sell_amount')->nullable();
            $table->float('buy_brocker')->nullable()->default('0');
            $table->float('sell_brocker')->nullable()->default('0');
            $table->float('profit')->nullable()->default('0');
            $table->text('buy_reason')->nullable();
            $table->text('loss_reason')->nullable();
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
        Schema::dropIfExists('tradings');
    }
};
