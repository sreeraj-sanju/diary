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
        Schema::create('dividents', function (Blueprint $table) {
            $table->id();
            $table->date('date')->nullable();
            $table->foreignId('fin_id')->constrained('financial_years')->cascadeOnDelete();
            $table->string('stock_name', 50)->nullable();
            $table->float('divident_percentage')->nullable();
            $table->integer('stock_count')->nullable();
            $table->integer('divident_amount')->nullable();
            $table->date('issue_date')->nullable();
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
        Schema::dropIfExists('dividents');
    }
};
