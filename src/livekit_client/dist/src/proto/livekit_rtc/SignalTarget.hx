package livekit_client.dist.src.proto.livekit_rtc;

@:jsRequire("livekit-client/dist/src/proto/livekit_rtc", "SignalTarget") @:enum extern abstract SignalTarget(Int) from Int to Int {
	var PUBLISHER;
	var SUBSCRIBER;
	var UNRECOGNIZED;
}