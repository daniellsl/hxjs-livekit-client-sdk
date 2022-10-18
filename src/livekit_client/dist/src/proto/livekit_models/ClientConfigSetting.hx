package livekit_client.dist.src.proto.livekit_models;

@:jsRequire("livekit-client/dist/src/proto/livekit_models", "ClientConfigSetting") @:enum extern abstract ClientConfigSetting(Int) from Int to Int {
	var UNSET;
	var DISABLED;
	var ENABLED;
	var UNRECOGNIZED;
}