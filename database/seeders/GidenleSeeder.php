<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;

class GidenleSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // Sample data from SQL
        DB::table('etur')->insert([
            ['id' => 1, 'turadi' => 'Yönetim', 'katoncelik' => 20, 'kat_image' => '', 'siltur' => 0],
            ['id' => 2, 'turadi' => 'Dil Eğitimleri', 'katoncelik' => 200, 'kat_image' => '', 'siltur' => 0],
            ['id' => 3, 'turadi' => 'Müzik', 'katoncelik' => 500, 'kat_image' => '', 'siltur' => 0],
            ['id' => 4, 'turadi' => 'Bilişim', 'katoncelik' => 10, 'kat_image' => '', 'siltur' => 0],
        ]);

        DB::table('il')->insert([
            ['il_id' => 1, 'il_kodu' => 1, 'il_adi' => 'Adana'],
            ['il_id' => 6, 'il_kodu' => 6, 'il_adi' => 'Ankara'],
            ['il_id' => 34, 'il_kodu' => 34, 'il_adi' => 'İstanbul'],
            ['il_id' => 35, 'il_kodu' => 35, 'il_adi' => 'İzmir'],
        ]);

        DB::table('users')->insert([
            [
                'user_id' => 1,
                'user_name' => 'Admin',
                'user_email' => 'admin@admin.com',
                'user_phone' => '5374494800',
                'user_pass' => md5('123456'),
                'user_status' => 1,
                'user_type' => 3,
                'email_verify' => 1,
                'gender' => '',
                'phone_verify' => 0,
                'short_info' => '',
                'il' => '',
                'ilce' => '',
                'kayit_tarihi' => now(),
            ]
        ]);
    }
}
