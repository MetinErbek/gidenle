<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('users', function (Blueprint $table) {
            $table->unsignedInteger('user_id', true);
            $table->string('user_name', 255);
            $table->string('user_email', 255)->unique();
            $table->string('user_phone', 255)->nullable();
            $table->string('user_pass', 255);
            $table->integer('user_status')->default(0);
            $table->integer('user_type')->nullable();
            $table->integer('email_verify')->default(0);
            $table->string('gender', 50)->nullable();
            $table->integer('phone_verify')->default(0);
            $table->text('short_info')->nullable();
            $table->string('il', 255)->nullable();
            $table->string('ilce', 255)->nullable();
            $table->dateTime('kayit_tarihi')->useCurrent();
            $table->dateTime('last_online_time')->nullable();
            $table->integer('silinme_tarihi')->nullable();
            $table->rememberToken();
        });

        Schema::create('password_reset_tokens', function (Blueprint $table) {
            $table->string('email')->primary();
            $table->string('token');
            $table->timestamp('created_at')->nullable();
        });

        Schema::create('sessions', function (Blueprint $table) {
            $table->string('id')->primary();
            $table->foreignId('user_id')->nullable()->index();
            $table->string('ip_address', 45)->nullable();
            $table->text('user_agent')->nullable();
            $table->longText('payload');
            $table->integer('last_activity')->index();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('users');
        Schema::dropIfExists('password_reset_tokens');
        Schema::dropIfExists('sessions');
    }
};
