package livekit_client.dist.src.proto.livekit_rtc;

typedef ISubscribedCodec = {
	var codec : String;
	var qualities : Array<SubscribedQuality>;
};