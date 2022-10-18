package livekit_client.dist.src.proto.livekit_models;

@:jsRequire("livekit-client/dist/src/proto/livekit_models", "ConnectionQuality") @:enum extern abstract ConnectionQuality(Int) from Int to Int {
	var POOR;
	var GOOD;
	var EXCELLENT;
	var UNRECOGNIZED;
}