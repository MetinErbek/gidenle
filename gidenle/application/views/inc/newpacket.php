<!-- Slider -->
<div class="slider">
	<div class="callbacks_container">
		<ul class="rslides" id="slider">
			<li>
			
				<div class="w3layouts-banner-top w3layouts-banner-top1">
					<div class="">
					<div class="container">
						<div class="slider-info" style="padding-top:3em;">
							<div class="col-md-8 col-md-offset-2">
								<div class="banner-form-agileinfo">
									<h5>Paket <span>Kaydı</span></h5>
									<p>Paketinizi kaydetmek ve taşıyabilecek birilerini bulabilmek ve takip edebilmek için bilgileri doldurun.</p>
									<form action="<?php echo site_url('gidenle/send');?>" method="POST">
										<select class="form-control option-w3ls" name="packet_from">
										<option>Nereden</option>
										<?php foreach($Iller->result_array() as $il):?>
											<option <?php echo (isset($from) &&  $from == $il['il_adi']) ? 'selected':NULL;?> value="<?php echo $il['il_adi'];?>"><?php echo $il['il_adi'];?></option>
										<?php endforeach;?>
										</select>
										<select class="form-control option-w3ls" name="packet_to">
												<option>Nereye</option>
										<?php foreach($Iller->result_array() as $il):?>
											<option <?php echo (isset($to) &&  $to == $il['il_adi']) ? 'selected':NULL;?> value="<?php echo $il['il_adi'];?>"><?php echo $il['il_adi'];?></option>
										<?php endforeach;?>
										</select>
										<input type="text" class="email" name="packet_name" placeholder="Paket Adı" required>

										
										<p>Alıcı Bilgileri</p>
										<div class="row">
											<div class="col-md-6">
												<input type="text" class="email" name="to_user_name" placeholder="Alıcı İsim" required="">
											</div>
											<div class="col-md-6">
												<input type="text" class="tel" name="to_user_phone" placeholder="Alıcı Telefon" required="">
											</div>
										</div>
										<textarea name="packet_details" placeholder="Adres ve Paket Detayları"></textarea>

										<?php if(!$this->session->userdata('Logged')):?>
										<p>Sizin Bilgileriniz</p>
										<div class="row">
											<div class="col-md-6">
												<input type="text" value="<?php echo isset($name) ? $name:NULL; ?>" class="email" name="user_name" placeholder="İsim" required="">
											</div>
											<div class="col-md-6">
												<input type="text" value="<?php echo isset($tel) ? $tel:NULL; ?>" class="tel" name="user_phone" placeholder="Telefon" required="">
											</div>
										</div>										

										<div class="row">
											<div class="col-md-6">
												<input type="email" class="tel" name="user_email" placeholder="Email" required>
											</div>
											<div class="col-md-6">
												<input type="password" class="tel" name="user_pass" placeholder="Şifre" required>
											</div>
										</div>
										
										<?php endif;?>
										<input type="submit" class="hvr-shutter-in-vertical" value="Yolla">  	
									</form>
									
								</div>
								<br><br>
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