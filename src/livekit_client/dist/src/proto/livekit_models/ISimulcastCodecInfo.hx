package livekit_client.dist.src.proto.livekit_models;

typedef ISimulcastCodecInfo = {
	var mimeType : String;
	var mid : String;
	var cid : String;
	var layers : Array<VideoLayer>;
};