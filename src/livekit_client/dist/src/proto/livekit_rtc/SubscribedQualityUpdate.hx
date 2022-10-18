package livekit_client.dist.src.proto.livekit_rtc;

@:jsRequire("livekit-client/dist/src/proto/livekit_rtc", "SubscribedQualityUpdate") extern class SubscribedQualityUpdate {
	var trackSid : String;
	var subscribedQualities : Array<SubscribedQuality>;
	var subscribedCodecs : Array<SubscribedCodec>;
}