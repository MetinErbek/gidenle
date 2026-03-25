<!-- Slider -->
<div class="slider">
    <div class="callbacks_container">
        <ul class="rslides" id="slider">
            <li>
                <div class="w3layouts-banner-top w3layouts-banner-top1">
                    <div class="container">
                        <div class="slider-info" style="padding-top:3em;">
                            <div class="row text-center"><h3 style="color:black">Taşıyabileceğiniz Paketler</h3></div>
                            <br>
                            @foreach($packets as $paket)
                                @include('partials.packet_details', ['paket' => $paket])
                            @endforeach
                        </div>
                    </div>
                </div>
            </li>
        </ul>
    </div>
    <div class="clearfix"></div>
</div>
<!-- //Slider -->
