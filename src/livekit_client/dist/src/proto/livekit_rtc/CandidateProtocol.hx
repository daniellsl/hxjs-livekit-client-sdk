package livekit_client.dist.src.proto.livekit_rtc;

@:jsRequire("livekit-client/dist/src/proto/livekit_rtc", "CandidateProtocol") @:enum extern abstract CandidateProtocol(Int) from Int to Int {
	var UDP;
	var TCP;
	var TLS;
	var UNRECOGNIZED;
}