<!-- Slider -->
<div class="slider">
    <div class="callbacks_container">
        <ul class="rslides" id="slider">
            <li>
                <div class="w3layouts-banner-top w3layouts-banner-top1">
                    <div class="container">
                        <div class="slider-info" style="padding-top:3em;">
                            <div class="row text-center"><h3 style="color:black">Bekleyen Teklifler</h3></div>
                            <br>
                            @foreach($packets as $paket)
                                @php
                                    $packet_status_type = 'warning';
                                    $packet_status = 'Kargo Sahibinin Seçimi Bekleniyor';
                                    $isOwner = 1;
                                @endphp
                                @include('partials.packet_details', ['paket' => $paket, 'packet_status_type' => $packet_status_type, 'packet_status' => $packet_status, 'isOwner' => $isOwner])
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
