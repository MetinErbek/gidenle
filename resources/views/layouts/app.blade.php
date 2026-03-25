<!DOCTYPE html>
<html lang="en">
<head>
    <title>@yield('title', 'Gidenle | Gidenle Gönder')</title>
    @include('partials.headercss')
    @yield('styles')
</head>
<body>
    @include('partials.menu')
    
    @yield('content')

    @include('partials.footer')
    @include('partials.footerjs')
    @yield('scripts')
</body>
</html>
