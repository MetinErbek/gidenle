<!-- Slider -->
<div class="slider">
    <div class="callbacks_container">
        <ul class="rslides" id="slider">
            <li>
                <div class="w3layouts-banner-top w3layouts-banner-top1">
                    <div class="container">
                        <div class="slider-info" style="padding-top:3em;">
                            <div class="col-md-8">
                                <img class="img-responsive" src="{{ asset('assets/images/nasil.png') }}">
                            </div>
                            <div class="col-md-4">
                                <div class="banner-form-agileinfo">
                                    <h5>Hemen Paket Göndermek Mi <span>İstiyorsun</span>?</h5>
                                    <p>Ne Bekliyorsun, Paketini Biriyle Yolla ?</p>
                                    <form action="{{ route('sender.send') }}" method="GET">
                                        @if(!session('user_id'))
                                            <input type="text" class="email" name="name" placeholder="İsim" required="">
                                            <input type="tel" class="tel" name="tel" placeholder="Telefon" required="">
                                        @endif
                                        <select class="form-control option-w3ls" name="from">
                                            <option>Nereden</option>
                                            @foreach($cities as $city)
                                                <option value="{{ $city->il_adi }}">{{ $city->il_adi }}</option>
                                            @endforeach
                                        </select>
                                        <select class="form-control option-w3ls" name="to">
                                            <option>Nereye</option>
                                            @foreach($cities as $city)
                                                <option value="{{ $city->il_adi }}">{{ $city->il_adi }}</option>
                                            @endforeach
                                        </select>
                                        <input type="submit" class="hvr-shutter-in-vertical" value="Yolla">  	
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </li>
        </ul>
    </div>
    <div class="clearfix"></div>
</div>
<!-- //Slider -->
