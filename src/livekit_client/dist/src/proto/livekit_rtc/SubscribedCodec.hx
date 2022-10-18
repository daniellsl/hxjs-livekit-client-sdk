package livekit_client.dist.src.proto.livekit_rtc;

@:jsRequire("livekit-client/dist/src/proto/livekit_rtc", "SubscribedCodec") extern class SubscribedCodec {
	var codec : String;
	var qualities : Array<SubscribedQuality>;
}