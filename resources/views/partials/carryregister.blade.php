<!-- Slider -->
<div class="slider">
    <div class="callbacks_container">
        <ul class="rslides" id="slider">
            <li>
                <div class="w3layouts-banner-top w3layouts-banner-top1">
                    <div class="container">
                        <div class="slider-info" style="padding-top:3em">
                            <div class="col-md-12">
                                <div class="banner-form-agileinfo">
                                    <h5>Taşıyıcı Kayıt <span>İsteği</span></h5>
                                    <p>Seyehat ediyorum ve kargo taşımak istiyorum.</p>
                                    <form action="{{ route('carry.register') }}" method="POST">
                                        @csrf
                                        <input type="text" class="email" name="user_name" placeholder="İsim" required="">
                                        <input type="tel" class="tel" name="user_phone" placeholder="Tel" required>
                                        <input type="email" class="email" name="user_email" placeholder="Email" required>
                                        <select class="form-control option-w3ls" name="arac_type">
                                            <option>Araç Tipi</option>
                                            <option value="-1">Yaya</option>
                                            @foreach($carModels as $model)
                                                <option value="{{ $model->cars_models_id }}">{{ $model->model_name }}</option>
                                            @endforeach
                                        </select>
                                        <input type="password" class="tel" name="user_pass" placeholder="Şifre" required>
                                        <input type="submit" class="hvr-shutter-in-vertical" value="Kayıt Ol">  	
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
