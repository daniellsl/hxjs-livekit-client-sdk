package livekit_client.dist.src.proto.livekit_rtc;

@:jsRequire("livekit-client/dist/src/proto/livekit_rtc", "SessionDescription") extern class SessionDescription {
	/**
		"answer" | "offer" | "pranswer" | "rollback"
	**/
	var type : String;
	var sdp : String;
}