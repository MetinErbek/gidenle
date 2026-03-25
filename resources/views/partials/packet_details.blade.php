<div class="row">
    <div class="col-md-10 col-md-offset-1">
        <div class="banner-form-agileinfo">
            <div class="row">
                <div class="col-md-3 col-xs-6">
                    <label class="label label-info">Alıcı :</label>
                    <p>{{ $paket->to_user_name }}</p>
                    <h6>{{ $paket->packet_from }}-{{ $paket->packet_to }}</h6>
                </div>
                <div class="col-md-3 col-xs-6">
                    <label class="label label-info">Paket :</label>
                    <p>
                        <h5><span>{{ $paket->packet_name }}</h5></span>
                    </p>
                </div>
                <div class="col-md-3 col-xs-12">
                    <label class="label label-info">Detaylar</label>
                    <p>{{ $paket->packet_details }}</p>
                </div>
                <div class="col-md-3 col-xs-12 text-right">
                    <label class="info">&nbsp;</label>
                    <p>
                    @if(isset($isOwner) && $isOwner == 1)
                        <a href="{{ route('sender.offers', $paket->packet_id) }}" class="btn btn-info"><i class="fa fa-bell-o" style="font-size:1em"></i> Götürme Teklifleri</a>
                    @else
                        @if(!isset($packet_status))
                            <a href="{{ route('carry.addoffer', $paket->packet_id) }}" class="btn btn-info"><i class="fa fa-plane" style="font-size:1em"></i> Götür</a>
                        @else
                            <label class="label label-{{ $packet_status_type ?? 'success' }}">{{ $packet_status }}</label>
                        @endif
                    @endif
                    </p>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-1"></div>
</div>
<div class="clearfix"></div>
<br>
