<!-- Slider -->
<div class="slider">
    <div class="callbacks_container">
        <ul class="rslides" id="slider">
            <li>
                <div class="w3layouts-banner-top w3layouts-banner-top1">
                    <div class="container">
                        <div class="slider-info" style="padding-top:3em;">
                            <div class="row text-center"><h3 style="color:black">Pakete Gelen Teklifler</h3></div>
                            <br>
                            <div class="row">
                                <div class="col-md-10 col-md-offset-1">
                                    <div class="banner-form-agileinfo">
                                        <div class="row">
                                            <div class="col-md-3 col-xs-6">
                                                <label class="label label-info">Alıcı :</label>
                                                <p>{{ $packet->to_user_name }}</p>
                                                <h6>{{ $packet->packet_from }}-{{ $packet->packet_to }}</h6>
                                            </div>
                                            <div class="col-md-3 col-xs-6">
                                                <label class="label label-info">Paket :</label>
                                                <p>
                                                    <h5><span>{{ $packet->packet_name }}</h5></span>
                                                </p>
                                            </div>
                                            <div class="col-md-3 col-xs-12">
                                                <label class="label label-info">Detaylar</label>
                                                <p>{{ $packet->packet_details }}</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="text-center" style="margin-top:2em;padding-bottom:1em;"><p><h2>Teklifler</h2></p></div>

                            @foreach($offers as $offer)
                                <div class="row">
                                    <div class="col-md-10 col-md-offset-1">
                                        <div class="banner-form-agileinfo">
                                            <div class="row">
                                                <div class="col-md-3 col-xs-12">
                                                    <label class="label label-info">Taşıyan</label>
                                                    <p>{{ $offer->user_name }}</p>
                                                </div>
                                                <div class="col-md-3 col-xs-12">
                                                    <label class="label label-info">Tahmini Ulaştırma Tarihi</label>
                                                    <p>{{ $offer->offer_egitim_start_date }}</p>
                                                </div>
                                                <div class="col-md-3 col-xs-12">
                                                    <label class="label label-info">Fiyat (TL)</label>
                                                    <p>{{ $offer->offer }} TL</p>
                                                </div>
                                                <div class="col-md-3 col-xs-12">
                                                    <a href="{{ route('sender.selectoffer', $offer->requests_offer_id) }}" class="btn btn-info">Teklif Seç</a>
                                                </div>
                                            </div>	
                                        </div>
                                    </div>
                                </div>
                            @endforeach
                        </div>	
                    </div>	
                </div>	
            </li>
        </ul>
    </div>
    <div class="clearfix"></div>	
</div>
