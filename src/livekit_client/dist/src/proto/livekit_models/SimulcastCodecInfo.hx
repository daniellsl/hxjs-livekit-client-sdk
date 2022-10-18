package livekit_client.dist.src.proto.livekit_models;

@:jsRequire("livekit-client/dist/src/proto/livekit_models", "SimulcastCodecInfo") extern class SimulcastCodecInfo {
	var mimeType : String;
	var mid : String;
	var cid : String;
	var layers : Array<VideoLayer>;
}