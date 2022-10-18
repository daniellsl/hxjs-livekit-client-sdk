package livekit_client.dist.src.proto.livekit_rtc;

typedef ISubscribedQualityUpdate = {
	var trackSid : String;
	var subscribedQualities : Array<SubscribedQuality>;
	var subscribedCodecs : Array<SubscribedCodec>;
};