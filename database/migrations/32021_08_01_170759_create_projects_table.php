<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProjectsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('projects', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->unsignedBigInteger('customers_id');
            $table->foreign('customers_id')->references('id')->on('customers');
            $table->unsignedBigInteger('programmers_id')->nullable();
            $table->foreign('programmers_id')->references('id')->on('programmers');
            $table->string('project_name');
            $table->string('progress_status');
            $table->integer('project_progress');
            $table->date('project_start')->nullable();
            $table->date('project_deadline');
            $table->date('project_finished')->nullable();
            $table->string('project_URL')->nullable();
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
        Schema::dropIfExists('projects');
    }
}
