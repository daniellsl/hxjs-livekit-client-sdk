package livekit_client.dist.src.proto.livekit_models;

/**
	server provided client configuration
**/
typedef IClientConfiguration = {
	@:optional
	var video : VideoConfiguration;
	@:optional
	var screen : VideoConfiguration;
	var resumeConnection : ClientConfigSetting;
	@:optional
	var disabledCodecs : DisabledCodecs;
	var forceRelay : ClientConfigSetting;
};