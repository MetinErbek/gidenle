@extends('layouts.app')

@section('title', 'Gidenle | Gidenle Gönder')

@section('content')
    @include('partials.slider')
    
    <div class="row">
        @include('partials.clients')
        @include('partials.counter')
    </div>
@endsection
