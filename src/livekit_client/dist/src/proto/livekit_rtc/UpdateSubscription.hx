package livekit_client.dist.src.proto.livekit_rtc;

@:jsRequire("livekit-client/dist/src/proto/livekit_rtc", "UpdateSubscription") extern class UpdateSubscription {
	var trackSids : Array<String>;
	var subscribe : Bool;
	var participantTracks : Array<livekit_client.dist.src.proto.livekit_models.ParticipantTracks>;
}