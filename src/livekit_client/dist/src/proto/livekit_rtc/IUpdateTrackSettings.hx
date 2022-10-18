package livekit_client.dist.src.proto.livekit_rtc;

typedef IUpdateTrackSettings = {
	var trackSids : Array<String>;
	/**
		when true, the track is placed in a paused state, with no new data returned
	**/
	var disabled : Bool;
	/**
		deprecated in favor of width & height
	**/
	var quality : livekit_client.VideoQuality;
	/**
		for video, width to receive
	**/
	var width : Float;
	/**
		for video, height to receive
	**/
	var height : Float;
};