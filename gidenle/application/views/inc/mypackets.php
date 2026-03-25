<!-- Slider -->
<div class="slider">
	<div class="callbacks_container">
		<ul class="rslides" id="slider">
			<li>
			
				<div class="w3layouts-banner-top w3layouts-banner-top1">
					<div class="">
					<div class="container">
						<div class="slider-info" style="padding-top:3em;">
						<div class="row text-center"><h3  style="color:black">Paketlerim</h3></div>
						<br>
						<?php if(count($Packets) > 0):?>
						<?php foreach($Packets as $paket):?>
							<?php
							$isOwner = 1;
							$this->load->view('inc/packet_details', get_defined_vars());?>
						<?php endforeach;?>
						<?php else:?>
						<div style="margin-top:50px;color:black" class="col-md-8 col-md-offset-2 alert alert-warning text-center">Paket Oluşturmamışsınız.</div>
						<?php endif;?>
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