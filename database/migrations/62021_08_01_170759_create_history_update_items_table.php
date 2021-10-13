<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateHistoryUpdateItemsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('history_update_items', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->unsignedBigInteger('items_id');
            $table->foreign('items_id')->references('id')->on('items');
            $table->date('update_date');
            $table->string('update_title');
            $table->string('update_info');
            $table->string('update_description');
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
        Schema::dropIfExists('history_update_items');
    }
}
