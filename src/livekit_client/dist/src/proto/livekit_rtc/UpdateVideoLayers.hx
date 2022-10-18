package livekit_client.dist.src.proto.livekit_rtc;

/**
	message to indicate published video track dimensions are changing
**/
@:jsRequire("livekit-client/dist/src/proto/livekit_rtc", "UpdateVideoLayers") extern class UpdateVideoLayers {
	var trackSid : String;
	var layers : Array<livekit_client.dist.src.proto.livekit_models.VideoLayer>;
}