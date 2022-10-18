package livekit_client.dist.src.proto.livekit_models;

@:jsRequire("livekit-client/dist/src/proto/livekit_models", "ServerInfo_Edition") @:enum extern abstract ServerInfo_Edition(Int) from Int to Int {
	var Standard;
	var Cloud;
	var UNRECOGNIZED;
}