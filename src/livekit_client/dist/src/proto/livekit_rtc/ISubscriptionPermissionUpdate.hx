package livekit_client.dist.src.proto.livekit_rtc;

typedef ISubscriptionPermissionUpdate = {
	var participantSid : String;
	var trackSid : String;
	var allowed : Bool;
};