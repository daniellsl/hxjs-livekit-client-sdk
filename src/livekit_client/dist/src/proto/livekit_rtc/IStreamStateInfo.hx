package livekit_client.dist.src.proto.livekit_rtc;

typedef IStreamStateInfo = {
	var participantSid : String;
	var trackSid : String;
	var state : StreamState;
};