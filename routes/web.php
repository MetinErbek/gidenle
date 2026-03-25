<?php

use Illuminate\Support\Facades\Route;

use App\Http\Controllers\HomeController;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\SenderController;
use App\Http\Controllers\CarrierController;

Route::get('/', [HomeController::class, 'index'])->name('home');

Route::get('/login', [LoginController::class, 'index'])->name('login');
Route::post('/login', [LoginController::class, 'postLogin']);
Route::get('/logout', [LoginController::class, 'logout'])->name('logout');

Route::get('/carry/register', [LoginController::class, 'carryRegister'])->name('carry.register');
Route::post('/carry/register', [LoginController::class, 'postCarryRegister']);

Route::get('/sender/register', [LoginController::class, 'senderRegister'])->name('sender.register');
Route::post('/sender/register', [LoginController::class, 'postSenderRegister']);

Route::get('/sender/send', [SenderController::class, 'send'])->name('sender.send');
Route::get('/sender/pending', [SenderController::class, 'pendingPackets'])->name('sender.pending');
Route::get('/sender/success', [SenderController::class, 'successPackets'])->name('sender.success');

Route::get('/carry/search', [CarrierController::class, 'searchPacket'])->name('carry.search');
Route::get('/carry/pending', [CarrierController::class, 'pendingPackets'])->name('carry.pending');
Route::get('/sender/offers/{id}', [SenderController::class, 'offers'])->name('sender.offers');
Route::get('/sender/selectoffer/{id}', [SenderController::class, 'selectOffer'])->name('sender.selectoffer');
Route::get('/carry/addoffer/{id}', [CarrierController::class, 'addOffer'])->name('carry.addoffer');

Route::post('/carry/addoffer/{id}', [CarrierController::class, 'postAddOffer']);


