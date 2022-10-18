package livekit_client.dist.src.proto.livekit_rtc;

@:jsRequire("livekit-client/dist/src/proto/livekit_rtc", "ConnectionQualityInfo") extern class ConnectionQualityInfo {
	var participantSid : String;
	var quality : livekit_client.dist.src.proto.livekit_models.ConnectionQuality;
	var score : Float;
}