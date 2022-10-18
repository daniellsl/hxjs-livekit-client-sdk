package livekit_client.dist.src.proto.livekit_rtc;

@:jsRequire("livekit-client/dist/src/proto/livekit_rtc", "StreamStateInfo") extern class StreamStateInfo {
	var participantSid : String;
	var trackSid : String;
	var state : StreamState;
}