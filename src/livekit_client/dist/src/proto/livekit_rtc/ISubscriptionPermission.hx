package livekit_client.dist.src.proto.livekit_rtc;

typedef ISubscriptionPermission = {
	var allParticipants : Bool;
	var trackPermissions : Array<TrackPermission>;
};