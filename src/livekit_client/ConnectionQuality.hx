package livekit_client;

@:jsRequire("livekit-client", "ConnectionQuality") @:enum extern abstract ConnectionQuality(String) from String to String {
	var Excellent;
	var Good;
	var Poor;
	var Unknown;
}