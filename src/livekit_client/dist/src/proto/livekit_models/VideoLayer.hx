package livekit_client.dist.src.proto.livekit_models;

/**
	provide information about available spatial layers
**/
@:jsRequire("livekit-client/dist/src/proto/livekit_models", "VideoLayer") extern class VideoLayer {
	/**
		for tracks with a single layer, this should be HIGH
	**/
	var quality : livekit_client.VideoQuality;
	var width : Float;
	var height : Float;
	/**
		target bitrate, server will measure actual
	**/
	var bitrate : Float;
	var ssrc : Float;
}