<div class="header">
		<nav class="navbar navbar-default">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
						<h1><a  style="background:none;" href="<?php echo site_url();?>"><h2>  <i class="fa fa-car"></i> Gidenle <small class="hide-small hide-tiny hidden-xs"> | Bir Kargodan Fazlası</small></h2></a></h1>
					</div>

					<!-- navbar-header -->
					<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav navbar-right">
						<?php if(!$this->session->userdata('Logged')){?>
							<li><a class="hvr-underline-from-center active" href="<?php echo site_url('login/carryregister');?>"><i class="fa fa-car"></i> Kargo taşımak istiyorum </a></li>
							<li><a href="<?php echo site_url('login/index');?>" class="hvr-underline-from-center">Giriş</a>
						<?php } else if($this->session->userdata('user_type') == 1){?>
						 	<li>
								<a href="#" data-toggle="dropdown"><span data-hover="ShortCodes">Paketlerim</span><span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="<?php echo site_url('sender/pendingpackets');?>"><span data-hover="Icons">Bekleyen Paketlerim</span></a></li>
									<li><a href="<?php echo site_url('sender/successpackets');?>"><span data-hover="Typograpghy">Gönderdiğim Paketlerim</span></a></li>
								</ul>
						 	</li>
							<li><a href="<?php echo site_url('gidenle/logout');?>" class="hvr-underline-from-center">Çıkış</a>
						<?php } else if($this->session->userdata('user_type') == 2){?>
								
							<li><a href="<?php echo site_url('carry/searchpacket');?>" class="hvr-underline-from-center">Paket Götür</a>
						 	<li>
								<a href="#" data-toggle="dropdown"><span data-hover="ShortCodes">Paketler</span><span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="<?php echo site_url('carry/pendingpackets');?>"><span data-hover="Icons">Bekleyen Paketler</span></a></li>
									<li><a href="<?php echo site_url('carry/pendingpackets');?>"><span data-hover="Icons">Bekleyen Paketler</span></a></li>
									<li><a href="<?php echo site_url('carry/successpackets');?>"><span data-hover="Typograpghy">Götürdüğüm Paketler</span></a></li>
								</ul>
						 	</li>
							<li><a href="<?php echo site_url('gidenle/logout');?>" class="hvr-underline-from-center">Çıkış</a>
						
						<?php } ?>
						</ul>
					</div>

					<div class="clearfix"> </div>	
				</nav>
	
	</div>