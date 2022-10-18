package livekit_client.dist.src.proto.livekit_models;

@:jsRequire("livekit-client/dist/src/proto/livekit_models", "TrackSource") @:enum extern abstract TrackSource(Int) from Int to Int {
	var UNKNOWN;
	var CAMERA;
	var MICROPHONE;
	var SCREEN_SHARE;
	var SCREEN_SHARE_AUDIO;
	var UNRECOGNIZED;
}