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
					<?php ?>
					<?php if(isset($isOwner) && $isOwner == 1):?>
						<a href="<?php echo site_url('sender/offers/'.$paket['packet_id']);?>" class="btn btn-info"><i class="fa fa-bell-o" style="font-size:1em"></i> Götürme Teklifleri</a>
					<?php else:?>
						<?php if(!isset($packet_status)):?>
							<a href="<?php echo site_url('carry/addoffer/'.$paket['packet_id']);?>" class="btn btn-info"><i class="fa fa-plane" style="font-size:1em"></i> Götür</a>
						<?php else:?>
							<label class="label label-<?php echo isset($packet_status_type) ? $packet_status_type:'success'?>"><?php echo $packet_status;?></label>
						<?php endif;?>
					<?php endif;?>
					</p>
				</div>
			</div>

		</div>
	</div>
	<div class="col-md-1"></div>
</div>

<div class="clearfix"></div>
<br>