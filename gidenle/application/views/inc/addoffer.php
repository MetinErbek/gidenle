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
									<h5>Paket Götürme <span>İsteği</span></h5>
									<p>Paketi taşıma isteğinde bulunabilmek için bilgileri doldurun ve paket sahibinin cevabını bekleyin.</p>
									
									<div class="row">
										<div class="col-md-4 col-xs-4">
										<label  class="label label-info">Adres :</label>
										<p><h5><?php echo $paket['packet_from'].'-'.$paket['packet_to'];?></h5>
										<?php echo $paket['to_user_name'];?></p></div>
										<div class="col-md-3 col-xs-4">
											<label  class="label label-info">Paket :</label>
											<p>
												<h5><span><?php echo $paket['packet_name'];?></h5></span>
											</p>
										</div>
										<div class="col-md-5  col-xs-4">
											<label class="label label-info">Detaylar</label>
											<p><?php echo $paket['packet_details'];?></p>
										</div>

									</div>
									
									<p>Götürme Teklifiniz</p>
									
									<form action="" method="POST">
										<div class="row">
											<div class="col-md-12">
												<label class="label label-warning">Ücret (TL)</label>
												<input type="number" class="email info" name="offer_price" placeholder="Teklifiniz" required>
											</div>
										</div>
										<div class="row">
											<div class="col-md-12">
												<label class="label label-warning">Tahmini Ulaştırma Tarihi</label>
												<input type="text" class="datepicker" name="offer_arrive_day" placeholder="Tahmini Ulaştırma Tarihi" required>
											</div>
										</div>
										<div class="row">
											<div class="col-md-12">
											    <label class="label label-warning">Teklif Detayları</label>
												<textarea name="offer_details" placeholder="Teklif Detaylarınız"></textarea>
											</div>
										</div>
										<input type="submit" class="hvr-shutter-in-vertical" value="Teklifi Yolla">  	
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