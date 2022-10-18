package livekit_client.dist.src.proto.livekit_rtc;

typedef ISessionDescription = {
	/**
		"answer" | "offer" | "pranswer" | "rollback"
	**/
	var type : String;
	var sdp : String;
};