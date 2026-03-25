<!-- Slider -->
<div class="slider">
	<div class="callbacks_container">
		<ul class="rslides" id="slider">
			<li>
					<div class="w3layouts-banner-top w3layouts-banner-top1">
						<div class="">
							<div class="container">
								
								<div class="slider-info" style="padding-top:3em;">
										<div class="row text-center"><h3  style="color:black">Pakete Gelen Teklifler</h3></div>
									<br>
									<div class="row">
									<div class="col-md-10 col-md-offset-1">
										<div class="banner-form-agileinfo">
											<div class="row">
												<div class="col-md-3 col-xs-6">
												<label  class="label label-info">Alıcı :</label>
												<p><?php echo $paket['to_user_name'];?></p><h6><?php echo $paket['packet_from'].'-'.$paket['packet_to'];?></h6></div>
												<div class="col-md-3 col-xs-6">
													<label  class="label label-info">Paket :</label>
													<p>
														<h5><span><?php echo $paket['packet_name'];?></h5></span>
													</p>
												</div>
												<div class="col-md-3 col-xs-12">
													<label class="label label-info">Detaylar</label>
													<p><?php echo $paket['packet_details'];?></p>
												</div>
												<div class="col-md-3  col-xs-12 text-right">
													<label class="info">&nbsp;</label>
													<p>
													
													</p>
												</div>
											</div>

										</div>
									</div>
									<div class="col-md-1"></div>
									</div>
									<div class="text-center" style="margin-top:2em;padding-bottom:1em;"><p><h2>Teklifler</h2></p></div>

									<?php foreach($Offers->result_array() as $offer):?>
									<div class="row">
										<div class="col-md-10 col-md-offset-1">
											<div class="banner-form-agileinfo">
											<div class="row">
												<div class="col-md-3 col-xs-12">
													<label class="label label-info">Taşıyan</label>
													<p><?php echo $offer['user_name'];?></p>
												</div>
												<div class="col-md-3 col-xs-12">
													<label class="label label-info">Tahmini Ulaştırma Tarihi</label>
													<p><?php echo $offer['offer_arrive_day'];?></p>
												</div>
												<div class="col-md-3 col-xs-12">
													<label class="label label-info">Fiyat (TL)</label>
													<p><?php echo $offer['offer_price']. ' TL';?></p>
												</div>
												<div class="col-md-3 col-xs-12">
													<a href="<?php echo base_url('sender/selectoffer/'.$offer['packet_offers_id']);?>" class="btn btn-info">Teklif Seç</a>
												</div>
											</div>	
												
											</div>
										</div>
									</div>
									<?php endforeach;?>
								</div>	
							</div>	
					</div>	


			</li>
		</ul>
	</div>
	<div class="clearfix"></div>	
</div>	