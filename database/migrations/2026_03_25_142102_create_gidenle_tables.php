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
        if (!Schema::hasTable('blog_cats')) {
            Schema::create('blog_cats', function (Blueprint $table) {
                $table->integer('blog_cats_id', true);
                $table->integer('blog_id');
                $table->integer('cat_id');
            });
        }

        if (!Schema::hasTable('categories')) {
            Schema::create('categories', function (Blueprint $table) {
                $table->integer('cat_id', true);
                $table->string('cat_type', 50)->default('item');
                $table->string('cat_name', 255)->default('0');
                $table->string('cat_url', 255);
                $table->integer('cat_parent_id');
                $table->string('cat_status', 50)->default('active');
            });
        }

        if (!Schema::hasTable('ekategori')) {
            Schema::create('ekategori', function (Blueprint $table) {
                $table->integer('cat_id', true);
                $table->string('katAdi', 255);
                $table->integer('turId');
                $table->integer('altkatoncelik')->default(0);
                $table->string('altkat_image', 255);
                $table->integer('silkat')->default(0);
            });
        }

        if (!Schema::hasTable('etur')) {
            Schema::create('etur', function (Blueprint $table) {
                $table->integer('id', true);
                $table->string('turadi', 255);
                $table->integer('katoncelik')->default(0);
                $table->string('kat_image', 255);
                $table->integer('siltur')->default(0);
            });
        }

        if (!Schema::hasTable('il')) {
            Schema::create('il', function (Blueprint $table) {
                $table->integer('il_id', true);
                $table->integer('il_kodu')->nullable();
                $table->string('il_adi', 255)->nullable();
            });
        }

        if (!Schema::hasTable('ilce')) {
            Schema::create('ilce', function (Blueprint $table) {
                $table->integer('ilce_id', true);
                $table->integer('il_kodu')->nullable();
                $table->integer('ilce_kodu')->nullable();
                $table->string('ilce_adi', 255)->nullable();
            });
        }

        if (!Schema::hasTable('level_target')) {
            Schema::create('level_target', function (Blueprint $table) {
                $table->integer('level_target_id', true);
                $table->integer('kategori_id');
                $table->integer('level_target_type_id');
            });
        }

        if (!Schema::hasTable('level_target_types')) {
            Schema::create('level_target_types', function (Blueprint $table) {
                $table->integer('level_target_types_id', true);
                $table->string('level_target_type_name', 255);
            });
        }

        if (!Schema::hasTable('place_types')) {
            Schema::create('place_types', function (Blueprint $table) {
                $table->integer('place_types_id', true);
                $table->string('place_type_name', 255);
            });
        }

        if (!Schema::hasTable('posts')) {
            Schema::create('posts', function (Blueprint $table) {
                $table->bigInteger('postid', true);
                $table->unsignedBigInteger('postauthor')->default(0);
                $table->timestamp('postdate')->useCurrent();
                $table->string('postitle', 255)->default('');
                $table->string('safe_url', 255);
                $table->string('posticon', 50)->nullable()->default('fa fa-book');
                $table->longText('postcontent');
                $table->string('post_main_photo', 255);
                $table->text('postkeywords');
                $table->string('poststatus', 20)->default('publish');
                $table->string('postviews', 11)->default('');
                $table->string('commentstatus', 20)->default('open');
                $table->string('pingstatus', 20)->default('open');
                $table->string('postseoname', 255)->default('');
                $table->unsignedInteger('postmodified')->default(0);
                $table->unsignedBigInteger('postparent')->default(0);
                $table->string('menuviews', 11)->default('top');
                $table->integer('menuorder')->default(0);
                $table->string('postype', 20)->default('post');
                $table->bigInteger('commentcount')->default(0);
                $table->string('langselect', 8)->default('tr_TR');
                $table->string('price', 255);
                $table->integer('hit');
                $table->dateTime('create_date')->useCurrent();
            });
        }

        if (!Schema::hasTable('requests')) {
            Schema::create('requests', function (Blueprint $table) {
                $table->integer('request_id', true);
                $table->integer('request_owner_id');
                $table->integer('request_cat_id');
                $table->integer('request_real_cat_id');
                $table->integer('level_target');
                $table->string('safe_url', 255);
                $table->string('request_title', 255);
                $table->text('request_details');
                $table->string('il', 255);
                $table->string('ilce', 255);
                $table->integer('first_lesson_free')->default(0);
                $table->string('offer_price', 255);
                $table->dateTime('request_date');
                $table->string('request_status', 255)->default('passive');
                $table->dateTime('create_date')->nullable()->useCurrent();
                $table->dateTime('expire_date');
            });
        }

        if (!Schema::hasTable('requests_offer')) {
            Schema::create('requests_offer', function (Blueprint $table) {
                $table->integer('requests_offer_id', true);
                $table->integer('request_id');
                $table->integer('offer_user_id');
                $table->string('offer', 255);
                $table->text('offer_details');
                $table->string('offer_egitim_name', 255);
                $table->dateTime('offer_egitim_start_date');
                $table->integer('offer_egitim_end_date');
                $table->string('offer_commission', 255);
                $table->integer('offer_first_lesson_free')->default(0);
                $table->integer('create_date');
                $table->string('offer_status', 50)->default('pending');
            });
        }

        if (!Schema::hasTable('request_offer_places')) {
            Schema::create('request_offer_places', function (Blueprint $table) {
                $table->integer('request_offer_places_id', true);
                $table->integer('request_offer_id');
                $table->integer('request_offer_place_id');
            });
        }

        if (!Schema::hasTable('request_offer_times')) {
            Schema::create('request_offer_times', function (Blueprint $table) {
                $table->integer('request_offer_times_id', true);
                $table->integer('request_offer_id');
                $table->integer('request_offer_time_types_id');
            });
        }

        if (!Schema::hasTable('request_places')) {
            Schema::create('request_places', function (Blueprint $table) {
                $table->integer('request_places_id', true);
                $table->integer('request_id');
                $table->integer('request_place_id');
            });
        }

        if (!Schema::hasTable('request_times')) {
            Schema::create('request_times', function (Blueprint $table) {
                $table->integer('request_times_id', true);
                $table->integer('request_id');
                $table->integer('time_types_id');
            });
        }

        if (!Schema::hasTable('time_types')) {
            Schema::create('time_types', function (Blueprint $table) {
                $table->integer('time_types_id', true);
                $table->string('time_type', 255);
            });
        }

        if (!Schema::hasTable('user_cats')) {
            Schema::create('user_cats', function (Blueprint $table) {
                $table->integer('user_cats_id', true);
                $table->integer('user_id');
                $table->integer('cat_id');
                $table->text('profile_desc');
                $table->text('diploma_cert');
                $table->integer('first_lesson_free');
            });
        }

        if (!Schema::hasTable('user_cats_levels')) {
            Schema::create('user_cats_levels', function (Blueprint $table) {
                $table->integer('user_cats_level_id', true);
                $table->integer('level_target_id');
                $table->integer('user_cats_id');
            });
        }
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('user_cats_levels');
        Schema::dropIfExists('user_cats');
        Schema::dropIfExists('time_types');
        Schema::dropIfExists('request_times');
        Schema::dropIfExists('request_places');
        Schema::dropIfExists('request_offer_times');
        Schema::dropIfExists('request_offer_places');
        Schema::dropIfExists('requests_offer');
        Schema::dropIfExists('requests');
        Schema::dropIfExists('posts');
        Schema::dropIfExists('place_types');
        Schema::dropIfExists('level_target_types');
        Schema::dropIfExists('level_target');
        Schema::dropIfExists('ilce');
        Schema::dropIfExists('il');
        Schema::dropIfExists('etur');
        Schema::dropIfExists('ekategori');
        Schema::dropIfExists('categories');
        Schema::dropIfExists('blog_cats');
    }
};
