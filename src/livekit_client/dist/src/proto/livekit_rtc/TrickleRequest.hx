package livekit_client.dist.src.proto.livekit_rtc;

@:jsRequire("livekit-client/dist/src/proto/livekit_rtc", "TrickleRequest") extern class TrickleRequest {
	var candidateInit : String;
	var target : SignalTarget;
}