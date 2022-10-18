package livekit_client.dist.src.proto.livekit_rtc;

typedef IAddTrackRequest = {
	/**
		client ID of track, to match it when RTC track is received
	**/
	var cid : String;
	var name : String;
	var type : livekit_client.dist.src.proto.livekit_models.TrackType;
	/**
		to be deprecated in favor of layers
	**/
	var width : Float;
	var height : Float;
	/**
		true to add track and initialize to muted
	**/
	var muted : Bool;
	/**
		true if DTX (Discontinuous Transmission) is disabled for audio
	**/
	var disableDtx : Bool;
	var source : livekit_client.dist.src.proto.livekit_models.TrackSource;
	var layers : Array<livekit_client.dist.src.proto.livekit_models.VideoLayer>;
	var simulcastCodecs : Array<SimulcastCodec>;
	/**
		server ID of track, publish new codec to exist track
	**/
	var sid : String;
};