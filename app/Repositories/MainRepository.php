<?php

namespace App\Repositories;

use App\Models\City;
use App\Models\District;
use App\Models\Category;
use App\Models\Tur;

class MainRepository
{
    public function getCities()
    {
        return City::all();
    }

    public function getDistricts($cityCode)
    {
        return District::where('il_kodu', $cityCode)->get();
    }

    public function getCategories()
    {
        return Category::all();
    }

    public function getTurs()
    {
        return Tur::all();
    }

    public function getCarModels()
    {
        // Check if table exists, otherwise return empty array
        if (\Illuminate\Support\Facades\Schema::hasTable('cars_models')) {
            return \Illuminate\Support\Facades\DB::table('cars_models')->get();
        }
        return collect([]);
    }
}
