<!-- Slider -->
<div class="slider">
	<div class="callbacks_container">
		<ul class="rslides" id="slider">
			<li>
				<div class="w3layouts-banner-top w3layouts-banner-top1">
					<div class="">
					<div class="container">
						<div class="slider-info" style="">
							<form action="<?php echo site_url('login/index');?>" method="POST">,
								<div class="col-md-6 col-md-offset-3">
									<div class="banner-form-agileinfo">
										<h5>Giriş <span>Yap</span></h5>
										<p></p>
										<form action="<?php echo base_url('gidenle/send');?>" method="GET">
											<input type="text" class="email" name="user_email" placeholder="Kullanıcı Adı" required="">
											<input type="password" class="password" name="user_pass" placeholder="Şifre" required="">
											<input type="submit" class="hvr-shutter-in-vertical" value="Giriş">  	
										</form>
									</div>
								</div>
							</form>
							<!--
							<form action="<?php echo site_url('gidenle/senderregister');?>" method="POST">
								<div class="col-md-6">
									<div class="banner-form-agileinfo">
										<h5>Kayıt <span>Ol</span></h5>
										<p></p>
											<input type="text" class="email" name="user_name" placeholder="İsim" required="">
											<input type="email" class="email" name="user_email" placeholder="Email" required="">
											<input type="password" class="tel" name="user_pass" placeholder="Şifre" required="">

											<input type="submit" class="hvr-shutter-in-vertical" value="Kayıt Ol">  	
									</div>
								</div>
							</form>
							---->
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