package livekit_client.dist.src.proto.livekit_models;

@:jsRequire("livekit-client/dist/src/proto/livekit_models", "TrackInfo") extern class TrackInfo {
	var sid : String;
	var type : TrackType;
	var name : String;
	var muted : Bool;
	/**
		original width of video (unset for audio)
		clients may receive a lower resolution version with simulcast
	**/
	var width : Float;
	/**
		original height of video (unset for audio)
	**/
	var height : Float;
	/**
		true if track is simulcasted
	**/
	var simulcast : Bool;
	/**
		true if DTX (Discontinuous Transmission) is disabled for audio
	**/
	var disableDtx : Bool;
	/**
		source of media
	**/
	var source : TrackSource;
	var layers : Array<VideoLayer>;
	/**
		mime type of codec
	**/
	var mimeType : String;
	var mid : String;
	var codecs : Array<SimulcastCodecInfo>;
}