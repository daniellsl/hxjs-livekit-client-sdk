package livekit_client.dist.src.proto.livekit_rtc;

typedef IUpdateSubscription = {
	var trackSids : Array<String>;
	var subscribe : Bool;
	var participantTracks : Array<livekit_client.dist.src.proto.livekit_models.ParticipantTracks>;
};