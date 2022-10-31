<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class BlogUserTableUpdation extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::connection('mysql2')->table('blog_users', function (Blueprint $table) {
            $table->string('device_name')->nullable();
            $table->string('version')->nullable();
            $table->string('identifier')->nullable();
            $table->string('user_name')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::connection('mysql2')->table('blog_users', function (Blueprint $table) {
            $table->string('device_name')->nullable();
            $table->string('version')->nullable();
            $table->string('identifier')->nullable();
            $table->string('user_name')->nullable();
        });
    }
}
