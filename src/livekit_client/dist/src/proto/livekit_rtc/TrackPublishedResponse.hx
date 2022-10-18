package livekit_client.dist.src.proto.livekit_rtc;

@:jsRequire("livekit-client/dist/src/proto/livekit_rtc", "TrackPublishedResponse") extern class TrackPublishedResponse {
	var cid : String;
	@:optional
	var track : livekit_client.dist.src.proto.livekit_models.TrackInfo;
}