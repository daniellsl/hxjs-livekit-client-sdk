package livekit_client.dist.src.proto.livekit_models;

/**
	server provided client configuration
**/
@:jsRequire("livekit-client/dist/src/proto/livekit_models", "ClientConfiguration") extern class ClientConfiguration {
	@:optional
	var video : VideoConfiguration;
	@:optional
	var screen : VideoConfiguration;
	var resumeConnection : ClientConfigSetting;
	@:optional
	var disabledCodecs : DisabledCodecs;
	var forceRelay : ClientConfigSetting;
}