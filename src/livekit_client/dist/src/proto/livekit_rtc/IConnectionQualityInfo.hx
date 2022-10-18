package livekit_client.dist.src.proto.livekit_rtc;

typedef IConnectionQualityInfo = {
	var participantSid : String;
	var quality : livekit_client.dist.src.proto.livekit_models.ConnectionQuality;
	var score : Float;
};