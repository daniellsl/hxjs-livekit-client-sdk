package livekit_client.dist.src.proto.livekit_rtc;

typedef ITrackPublishedResponse = {
	var cid : String;
	@:optional
	var track : livekit_client.dist.src.proto.livekit_models.TrackInfo;
};