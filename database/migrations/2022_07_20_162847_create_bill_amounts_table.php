<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateBillAmountsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('bill_amounts', function (Blueprint $table) {
            $table->id();
            $table->date('date')->nullable();
            $table->string('user_name')->nullable();
            $table->integer('component_price')->nullable();
            $table->integer('service_charge')->nullable();
            $table->integer('total_price')->nullable();
            $table->integer('amount_got')->nullable();
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
        Schema::dropIfExists('bill_amounts');
    }
}
