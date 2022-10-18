package livekit_client.dist.src.proto.livekit_rtc;

@:jsRequire("livekit-client/dist/src/proto/livekit_rtc", "SubscriptionPermissionUpdate") extern class SubscriptionPermissionUpdate {
	var participantSid : String;
	var trackSid : String;
	var allowed : Bool;
}