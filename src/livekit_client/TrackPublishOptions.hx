package livekit_client;

/**
	Options when publishing tracks
**/
typedef TrackPublishOptions = {
	/**
		set a track name
	**/
	@:optional
	var name : String;
	/**
		Source of track, camera, microphone, or screen
	**/
	@:optional
	var source : Dynamic;
	/**
		encoding parameters for camera track
	**/
	@:optional
	var videoEncoding : VideoEncoding;
	@:optional
	var backupCodec : ts.AnyOf2<Bool, {
		var codec : String;
		var encoding : VideoEncoding;
	}>;
	/**
		encoding parameters for screen share track
	**/
	@:optional
	var screenShareEncoding : VideoEncoding;
	/**
		codec, defaults to vp8; for svc codecs, auto enable vp8
		as backup. (TBD)
	**/
	@:optional
	var videoCodec : String;
	/**
		max audio bitrate, defaults to [[AudioPresets.speech]]
	**/
	@:optional
	var audioBitrate : Float;
	/**
		dtx (Discontinuous Transmission of audio), defaults to true
	**/
	@:optional
	var dtx : Bool;
	/**
		use simulcast, defaults to true.
		When using simulcast, LiveKit will publish up to three versions of the stream
		at various resolutions.
	**/
	@:optional
	var simulcast : Bool;
	/**
		scalability mode for svc codecs, defaults to 'L3T3'.
		for svc codecs, simulcast is disabled.
	**/
	@:optional
	var scalabilityMode : String;
	/**
		custom video simulcast layers for camera tracks, defaults to h180, h360, h540
		You can specify up to two custom layers that will be used instead of
		the LiveKit default layers.
		Note: the layers need to be ordered from lowest to highest quality
	**/
	@:optional
	var videoSimulcastLayers : Array<VideoPreset>;
	/**
		custom video simulcast layers for screen tracks
		Note: the layers need to be ordered from lowest to highest quality
	**/
	@:optional
	var screenShareSimulcastLayers : Array<VideoPreset>;
	/**
		For local tracks, stop the underlying MediaStreamTrack when the track is muted (or paused)
		on some platforms, this option is necessary to disable the microphone recording indicator.
		Note: when this is enabled, and BT devices are connected, they will transition between
		profiles (e.g. HFP to A2DP) and there will be an audible difference in playback.
		
		defaults to false
	**/
	@:optional
	var stopMicTrackOnMute : Bool;
};