<!-- Slider -->
<div class="slider">
    <div class="callbacks_container">
        <ul class="rslides" id="slider">
            <li>
                <div class="w3layouts-banner-top w3layouts-banner-top1">
                    <div class="container">
                        <div class="slider-info" style="padding-top:3em;">
                            <div class="row text-center"><h3 style="color:black">Paketlerim</h3></div>
                            <br>
                            @if(count($packets) > 0)
                                @foreach($packets as $paket)
                                    @include('partials.packet_details', ['paket' => $paket, 'isOwner' => 1])
                                @endforeach
                            @else
                                <div style="margin-top:50px;color:black" class="col-md-8 col-md-offset-2 alert alert-warning text-center">Paket Oluşturmamışsınız.</div>
                            @endif
                        </div>
                    </div>
                </div>
            </li>
        </ul>
    </div>
    <div class="clearfix"></div>
</div>
<!-- //Slider -->
