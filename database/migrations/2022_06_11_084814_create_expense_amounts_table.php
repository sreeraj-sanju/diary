<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateExpenseAmountsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('expense_amounts', function (Blueprint $table) {
            $table->id();
            $table->date('expense_date')->nullable();
            $table->foreignId('fin_id')->constrained('financial_years')->cascadeOnDelete();
            $table->foreignId('expense_name_id')->constrained('expense_names')->cascadeOnDelete();
            $table->integer('expense_amount')->nullable();
            $table->tinyInteger('state')->default(0)->nullable();
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
        Schema::dropIfExists('expense_amounts');
    }
}
