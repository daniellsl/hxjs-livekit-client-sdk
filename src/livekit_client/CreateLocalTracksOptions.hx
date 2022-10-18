package livekit_client;

typedef CreateLocalTracksOptions = {
	/**
		audio track options, true to create with defaults. false if audio shouldn't be created
		default true
	**/
	@:optional
	var audio : ts.AnyOf2<Bool, AudioCaptureOptions>;
	/**
		video track options, true to create with defaults. false if video shouldn't be created
		default true
	**/
	@:optional
	var video : ts.AnyOf2<Bool, VideoCaptureOptions>;
};