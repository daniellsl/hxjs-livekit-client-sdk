package livekit_client;

typedef InternalRoomOptions = {
	/**
		AdaptiveStream lets LiveKit automatically manage quality of subscribed
		video tracks to optimize for bandwidth and CPU.
		When attached video elements are visible, it'll choose an appropriate
		resolution based on the size of largest video element it's attached to.
		
		When none of the video elements are visible, it'll temporarily pause
		the data flow until they are visible again.
	**/
	var adaptiveStream : Dynamic;
	/**
		enable Dynacast, off by default. With Dynacast dynamically pauses
		video layers that are not being consumed by any subscribers, significantly
		reducing publishing CPU and bandwidth usage.
	**/
	var dynacast : Bool;
	/**
		default options to use when capturing user's audio
	**/
	@:optional
	var audioCaptureDefaults : Dynamic;
	/**
		default options to use when capturing user's video
	**/
	@:optional
	var videoCaptureDefaults : Dynamic;
	/**
		default options to use when publishing tracks
	**/
	@:optional
	var publishDefaults : Dynamic;
	/**
		should local tracks be stopped when they are unpublished. defaults to true
		set this to false if you would prefer to clean up unpublished local tracks manually.
	**/
	var stopLocalTrackOnUnpublish : Bool;
	/**
		policy to use when attempting to reconnect
	**/
	var reconnectPolicy : Dynamic;
	@:optional
	var expSignalLatency : Float;
	var expWebAudioMix : Bool;
};