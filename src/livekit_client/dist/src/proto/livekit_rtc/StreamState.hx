package livekit_client.dist.src.proto.livekit_rtc;

@:jsRequire("livekit-client/dist/src/proto/livekit_rtc", "StreamState") @:enum extern abstract StreamState(Int) from Int to Int {
	var ACTIVE;
	var PAUSED;
	var UNRECOGNIZED;
}