<!-- Slider -->
<div class="slider">
	<div class="callbacks_container">
		<ul class="rslides" id="slider">
			<li>
				<div class="w3layouts-banner-top w3layouts-banner-top1">
					<div class="">
					<div class="container">
						<div class="slider-info" style="padding-top:3em;">
							<div class="col-md-8">
								<img class="img-responsive" src="<?php echo base_url('assets/images/nasil.png');?>">
								<!--<div class="w3ls-button">
									<a href="#" data-toggle="modal" data-target="#myModal">More About Our Transport</a>
								</div>
								<div class="bannergrids">
									<div class="col-md-4 grid1">
										<i class="fa fa-truck" aria-hidden="true"></i>
										<p>lorem ipsum dolor sit amet consectetur adipiscing</p>
									</div>
									<div class="col-md-4 grid1">
										<i class="fa fa-ship" aria-hidden="true"></i>
										<p>lorem ipsum dolor sit amet consectetur adipiscing</p>
									</div>
									<div class="col-md-4 grid1">
										<i class="fa fa-bus" aria-hidden="true"></i>
										<p>lorem ipsum dolor sit amet consectetur adipiscing</p>
									</div>
									<div class="clearfix"></div>
								</div>
								---->
							</div>
							<div class="col-md-4">
								<div class="banner-form-agileinfo">
									<h5>Hemen Paket Göndermek Mi <span>İstiyorsun</span>?</h5>
									<p>Ne Bekliyorsun, Paketini Biriyle Yolla ?</p>
									<form action="<?php echo site_url('gidenle/send');?>" method="GET">
										<?php if(!$this->session->userdata('Logged')):?>
										<input type="text" class="email" name="name" placeholder="İsim" required="">
										<input type="tel" class="tel" name="tel" placeholder="Telefon" required="">
										<?php endif;?>
										<select class="form-control option-w3ls" name="from">
										<option>Nereden</option>
										<?php foreach($Iller->result_array() as $il):?>
											<option value="<?php echo $il['il_adi'];?>"><?php echo $il['il_adi'];?></option>
										<?php endforeach;?>
										</select>
										<select class="form-control option-w3ls" name="to">
												<option>Nereye</option>
										<?php foreach($Iller->result_array() as $il):?>
											<option value="<?php echo $il['il_adi'];?>"><?php echo $il['il_adi'];?></option>
										<?php endforeach;?>
										</select>
										<input type="submit" class="hvr-shutter-in-vertical" value="Yolla">  	
									</form>
								</div>
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