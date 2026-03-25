<!-- Slider -->
<div class="slider">
    <div class="callbacks_container">
        <ul class="rslides" id="slider">
            <li>
                <div class="w3layouts-banner-top w3layouts-banner-top1">
                    <div class="container">
                        <div class="slider-info">
                            <form action="{{ route('login') }}" method="POST">
                                @csrf
                                <div class="col-md-6 col-md-offset-3">
                                    <div class="banner-form-agileinfo">
                                        <h5>Giriş <span>Yap</span></h5>
                                        <p></p>
                                        <input type="text" class="email" name="user_email" placeholder="Kullanıcı Adı" required="">
                                        <input type="password" class="password" name="user_pass" placeholder="Şifre" required="">
                                        <input type="submit" class="hvr-shutter-in-vertical" value="Giriş">  	
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </li>
        </ul>
    </div>
    <div class="clearfix"></div>
</div>
<!-- //Slider -->
