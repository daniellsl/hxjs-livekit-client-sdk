package livekit_client.dist.src.proto.livekit_models;

@:jsRequire("livekit-client/dist/src/proto/livekit_models", "TrackType") @:enum extern abstract TrackType(Int) from Int to Int {
	var AUDIO;
	var VIDEO;
	var DATA;
	var UNRECOGNIZED;
}