<!-- Slider -->
<div class="slider">
	<div class="callbacks_container">
		<ul class="rslides" id="slider">
			<li>
			
				<div class="w3layouts-banner-top w3layouts-banner-top1">
					<div class="">
					<div class="container">
						<div class="slider-info" style="padding-top:3em;">
						<div class="row text-center"><h3  style="color:black">Taşıyabileceğiniz Paketler</h3></div>
						<br>
						<?php foreach($Packets as $paket):?>
							<?php
							
							$this->load->view('inc/packet_details', get_defined_vars());?>
							
						<?php endforeach;?>
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