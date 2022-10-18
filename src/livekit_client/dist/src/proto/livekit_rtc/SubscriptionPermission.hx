package livekit_client.dist.src.proto.livekit_rtc;

@:jsRequire("livekit-client/dist/src/proto/livekit_rtc", "SubscriptionPermission") extern class SubscriptionPermission {
	var allParticipants : Bool;
	var trackPermissions : Array<TrackPermission>;
}